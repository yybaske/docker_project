# perlについて

## myとlocalどうちがうか？？
  - myについて
  myを使って定義された変数は、**レキシカルスコープ変数**と呼びます。
  この変数を宣言することを**レキシカルスコープ宣言**と呼ぶ
  宣言の仕方は、
  ```
  my $var;
  my $var = 'hello';
  my($foo, $var);
  ```
  次の例を見てください
  ```
  $var = 'サブルーチンの外';
  print $var;
  &example;
  sub example {
    my $var = 'サブルーチンの中';
    print $var;
  }
  print $var;
  ```
  - localについて
