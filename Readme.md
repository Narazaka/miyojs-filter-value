value - Value
========================================

これはなにか
----------------------------------------

これは伺か用SHIORIサブシステムである美代(Miyo)の辞書フィルタプラグインです。

Valueを任意に変更したい場合に使います。

インストール
----------------------------------------

### 一般

    npm install miyojs-filter-value

### ゴーストに追加する場合

ghost/masterをカレントディレクトリとして同様に

    npm install miyojs-filter-value

含まれるフィルタ
----------------------------------------

### value

任意のValueを返します。

依存
----------------------------------------

このフィルタが依存するものはありません。

使用方法
----------------------------------------

MiyoのYAML辞書ファイルのエントリにフィルタを追加します。

    OnTest:
    	filters: [value]
    	argument:
    		value:
    			- \h\s[0]...

argument.valueのデータをMiyo.call_entry()に渡した値を返します。
つまりargument.valueの内容がエントリのトップレベルと同様に処理されます。

事務的な処理の後発話内容(Valueヘッダ)を適当に設定したい場合などに利用できます。
