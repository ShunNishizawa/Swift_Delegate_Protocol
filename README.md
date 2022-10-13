# Swift_Delegate_Protocol

## なぜdelegateを使うのか？
1. イベント発生する検知する処理
2. イベント後にさせたい処理
1が発生したら、2に処理を移譲する様な設計・・・（つまりdelegateを使う！！）

## 必要なもの
- プロトコルの実装
    - メソッドの定義。ただし、処理は記載しない。あくまで定義のみ

- 処理を任せる側の実装（デリゲートメソッドの実行）
    - 実行するとkぃにプロトコルを実装したクラスのインスタンスを設定

- 処理を任される側の実装（デリゲートメソッドを実装）
    - 実際に行いたい処理を実装する。

## 参考資料
[【Swift入門】難解なデリゲート(delegate)の使い方を理解しよう！](https://www.sejuku.net/blog/33867)
[【Swift】hogehoge.delegate = self は何をしているのか。](https://qiita.com/saka2jp/items/7667e0cc81ad91016f03)
