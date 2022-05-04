# layout_builder_align

LayoutBuilderとalignを勉強するためのリポジトリ

## LayoutBuilder

Widgetのサイズに応じて表示するコンテンツのレイアウトを切り替える時に使う。
例えば、縦画面・横画面ではそれぞれ高さと幅が異なるWidgetであり、縦画面の時は画像を1枚、横画面の時は画像を2枚表示するというふうにLayoutBuilderで表示を切り替えることができる
具体的には、LayoutBuilderのbuildrプロパティに、親Widgetのサイズを受け取るconstraintsを準備し、そのconstraintsを用いて条件分岐することによってretrunで返すWidgetをこちらで指定できる。

実際にcontainer(Width:400, height:300)の中でLayoutBuilderを呼び、printでcontainerを中身を見たところ、BoxConstraints(w=400.0, h=500.0)と出力されていた。
また、親widgetに何も指定しなかった場合、BoxConstraints(0.0<=w<=375.0, 0.0<=h<=591.0)と出力されていた。また、画面を横画面にしたときは BoxConstraints(0.0<=w<=667.0, 0.0<=h<=319.0)となっていた。なので、おそらく親widgetとして、スマホのmaxの横幅・高さが出力されていると考えられる。
よって今回の練習アプリでは横画面の大きさによって、表示するTextを切り替えるアプリを作成した
