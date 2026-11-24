# robosys

![test](https://github.com/yohei310sato/robosys2026/actions/workflows/test.yml/badge.svg)

標準入力の各行から整数および小数を抽出し、空白区切りで標準出力に出力するコマンドです。

## インストール

リポジトリをクローンし、スクリプトに実行権限を付与して使います。

```bash
$ git clone https://github.com/yohei310sato/robosys2026.git
$cd robosys2026$ chmod +x robosys
```

## 使い方

標準入力にテキストを渡すと、含まれる数値（負の数や小数を含む）を1行ごとに抽出して出力します。数値が含まれない行は出力されません。

```bash
$ printf "温度: 23.5度, 補正: -1.5\n数値なし\n値: 10, 20\n" | ./robosys
23.5 -1.5
10 20
```

## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境

- Ubuntu 24.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Yohei Sato
