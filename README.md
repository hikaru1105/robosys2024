# robosys2024
ロボットシステム学授業用

# binaryコマンド
[![test](https://github.com/hikaru1105/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/hikaru1105/robosys2024/actions/workflows/test.yml)

## 概要
 
- このコマンドは10進数で入力された整数を2進数の整数に変換して出力するものです。

## 使い方

### 準備
   
   1. リポジトリをクローンする
   ```
   $ git clone https://github.com/hikaru1105/robosys2024.git
   ```
   2. クローンしたディレクトリに移動する
   ```
   $ cd robosys2024
   ```
   3. 実行する権限を付与する
   ```
   $ chmod +x binary
   ```
### 実行方法

   - 実行方法の例
   ```
   $ echo 100 | ./binary
   1100100
   ```
## 必要なソフトウェア

- Pythonのバージョン
  - テスト済みバージョン: 3.7~3.10  
## テスト環境
- Ubuntu 22.04 LTS 
## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
## Copyright
- © 2024 Hikaru Nemoto
