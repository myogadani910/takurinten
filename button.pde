import controlP5.*;//ライブラリ
ControlP5[] system_btn = new ControlP5[4];
Button start_btn,startHover_btn,play_btn,playHover_btn;

class Button{
  int btn_num;
  String name;
  String text;
  int posX,posY;
  int sizeW,sizeH;
  PFont font;
  int[] text_color = new int[3];
  int[] nomal_color = new int[3];
  int[] hover_color = new int[3];
  int[] push_color = new int[3];
  
  Button(int num,String n,String t,int pX,int pY,int sW,int sH,PFont f,int tcR,int tcG,int tcB,int ncR,int ncG,int ncB,int hcR,int hcG,int hcB,int pcR,int pcG,int pcB){
    btn_num = num;
    name = n;
    text = t;
    posX = pX;
    posY = pY;
    sizeW = sW;
    sizeH = sH;
    font = f;
    text_color[0] = tcR;
    text_color[1] = tcG;
    text_color[2] = tcB;
    nomal_color[0] = ncR;
    nomal_color[1] = ncG;
    nomal_color[2] = ncB;
    hover_color[0] = hcR;
    hover_color[1] = hcG;
    hover_color[2] = hcB;
    push_color[0] = pcR;
    push_color[1] = pcG;
    push_color[2] = pcB;
  }

  void new_btn(){
    system_btn[btn_num].addButton(name)
      .setLabel(text)//表示されるテキスト
      .setPosition(posX,posY)//ボタンの配置
      .setSize(sizeW,sizeH)//サイズ
      .setFont(font)//テキストフォント
      .setColorCaptionLabel(color(text_color[0],text_color[1],text_color[2]))//テキストの色
      .setColorBackground(color(nomal_color[0],nomal_color[1],nomal_color[2]))//通常時の色
      .setColorForeground(color(hover_color[0],hover_color[1],hover_color[2]))//マウスを載せた時の色
      .setColorActive(color(push_color[0],push_color[1],push_color[2]));//押したときの色
  }
}
void set_btn(){
  PFont takurin_btnfont = createFont("HGSｺﾞｼｯｸE",30);
  //(キー,関数名,テキスト,x座標,y座標,width,height,フォント,テキストカラーR,G,B,通常時の色R,G,B,マウスオーバー時の色R,G,B,クリック時の色R,G,B)
  //スタート
  system_btn[0] = new ControlP5(this);
  start_btn = new Button(0,"play","スタート",555,680,170,45,takurin_btnfont,255,255,255,112,112,112,255,105,180,255,105,180);
  start_btn.new_btn();  
  //スタート（hover）
  system_btn[1] = new ControlP5(this);
  startHover_btn = new Button(1,"play","スタート",555,690,170,45,takurin_btnfont,255,255,255,255,105,180,255,105,180,255,105,180);
  startHover_btn.new_btn();
  //遊び方
  system_btn[2] = new ControlP5(this);
  play_btn = new Button(2,"how","遊び方",275,680,170,45,takurin_btnfont,255,255,255,112,112,112,112,112,112,255,105,180);
  play_btn.new_btn();
  //遊び方（hover）
  system_btn[3] = new ControlP5(this);
  playHover_btn = new Button(3,"how","遊び方",275,690,170,45,takurin_btnfont,255,255,255,255,105,180,255,105,180,255,105,180);
  playHover_btn.new_btn();
}
    
void draw_btn(){
  if(stage == "initial"){
    system_btn[0].getController("play").setVisible(false);
    system_btn[1].getController("play").setVisible(false);
    system_btn[2].getController("how").setVisible(false);
    system_btn[3].getController("how").setVisible(false);
     
    if((mouseX > 555 && mouseX < 725 && mouseY > 680 && mouseY < 725)){//マウスオーバーでボタンの位置を下げる
      system_btn[0].getController("play").setVisible(false);
      system_btn[1].getController("play").setVisible(true);
    }
    else{//スタートボタンの初期配置
      system_btn[0].getController("play").setVisible(true);
      system_btn[1].getController("play").setVisible(false);
    }
    
    if((mouseX > 275 && mouseX < 445 && mouseY > 680 && mouseY < 725)){//マウスオーバーでボタンの位置を下げる
      system_btn[2].getController("how").setVisible(false);
      system_btn[3].getController("how").setVisible(true);
    }
    else{//遊び方ボタンの初期配置
      system_btn[2].getController("how").setVisible(true);
      system_btn[3].getController("how").setVisible(false);
    }
  }
  if(stage == "how"){
    system_btn[0].getController("play").setVisible(false);
    system_btn[1].getController("play").setVisible(false);
    system_btn[2].getController("how").setVisible(false);
    system_btn[3].getController("how").setVisible(false);
  }
}
