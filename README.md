# 課題7 足し算と引き算を行うタブアプリ

## OverView<br>
<p>足し算と引き算アプリ。タブで計算方法が異なる画面に切り替わる。<br>
計算ボタンを押すとキーボードが下がる。</p>

<img width="673" alt="kadai7" src="https://user-images.githubusercontent.com/120438170/222597796-405aa92a-c229-43dc-8e0d-e7fe8b67d6fe.png">


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
  <li>警告：Result of call to calculationData.resultText is unusedがでたので _=(ワイルドカード)を入れてみたら直った。。。</li>
</ul>

