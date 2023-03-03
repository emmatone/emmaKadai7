# 課題7 足し算と引き算を行うタブアプリ

## OverView<br>
<p>足し算と引き算アプリ。タブで計算方法が異なる画面に切り替わる。<br>
入力が終わるとキーボードが下がる。</p>


<img width="709" alt="kadai7" src="https://user-images.githubusercontent.com/120438170/222594357-4548b9d8-afb9-42b8-956a-7201027b886f.png">


## Memo<br>

<ul>
  <li>SwiftUI</li>
  <li>tabView</li>
  <li>selectionを見て計算方法、色切り替え</li>
  <li>@FocusState テキストフィールドのフォーカスが外れるとキーボードが下がる(iOS15-) </li>
  <li>計算結果のTextをIntにしたら3桁区切りになった</li>
  <li>@State, @Binding</li>
  <li>.ignoresSafeArea(edges:)</li>
 
 </ul>

## Issue<br>

<ul>
  <li>Viewの分け方。計算画面とタブの枠組みで分けたつもりだが、可読性等はこれでよいのか疑問。</li>
  <li>structの分け方、作り方。</li>
  <li>関数の作り方</li>
  <li>実機でlandscapeにするとヘッダーやtabItem部分の表示が崩れる。シュミレータでは崩れない。</li>
  <li>警告：Result of call to calculationData.resultText is unusedがでたので _=(ワイルドカード)を入れてみた。。。</li>
</ul>

