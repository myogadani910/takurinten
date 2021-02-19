void textarea(){
  takurin = new ControlP5(this);
  takurin_area = takurin.addTextarea("takurin")
    .setPosition(300,200)
    .setSize(400,300)
    .setFont(takurin_btnfont)
    .setLineHeight(40)
    .setColor(color(black))//文字色
    .setScrollBackground(color(black))//スクロールバーの背景色
    .setColorBackground(color(180,180,180))//背景色
    .setColorForeground(color(255,105,180))//スクロールバーの色
    .setVisible(false);
}

void textfield(){
  takurin_field = new ControlP5(this);
  takurin_field.addTextfield("takurin")
    .setPosition(200,600)
    .setSize(600,60)
    .setFont(takurin_btnfont)
    .setColor(color(black))//文字色
    .setColorCaptionLabel(color(0,1))//takurinの文字色
    .setColorBackground(color(white))//入力ボックスの背景
    .setColorForeground(color(black))//入力ボックスの枠色
    .setColorCursor(color(black))//入力カーソルの色
    .keepFocus(true)
    .setFocus(true)
    .setVisible(false);//表示・非表示
}
