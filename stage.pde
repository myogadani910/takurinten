void initial(){
    background(127,213,234);
    
    rectMode(CORNER);
    //枠線の太さ
    strokeWeight(2);
    //左目
    fill(white);
    stroke(black);
    ellipse(380,200,200,200);
    fill(black);
    ellipse(380,260,70,70);
    fill(white);
    ellipse(380,270,20,20);
    //右目
    fill(white);
    stroke(black);
    ellipse(620,200,200,200);
    fill(black);
    ellipse(620,260,70,70);
    fill(white);
    ellipse(620,270,20,20);
    /****************
    タイトルメニュー
    *****************/
    //背景
    rectMode(CENTER);
    fill(white);
    stroke(168,88,0);
    rect(500,650,700,200,15);
    //紐
    noFill();
    stroke(168,88,0);
    strokeWeight(8);
    arc(500, 810, 820, 700, radians(220), radians(320));
    /***************
    紐と歯の重なり
    *****************/
    rectMode(CORNER);
    strokeWeight(5);
    //歯
    fill(white);
    stroke(black);
    rect(440,390,60,110,15);
    fill(white);
    stroke(black);
    rect(500,390,60,110,15);
    //鼻
    fill(255,215,173);
    noStroke();
    ellipse(500,380,170,110);
    fill(black);
    ellipse(500,340,110,80);
    /********************
    *********************/
    //留め具
    //右
    fill(255,215,173);
    noStroke();
    stroke(168,88,0);
    ellipse(190,590,40,40);
    //左
    fill(255,215,173);
    noStroke();
    stroke(168,88,0);
    ellipse(810,590,40,40);
    //文字
    textAlign(CENTER);
    fill(black);
    textFont(takurin_font);
    textSize(80);
    text("たくりん１０",500,650);
    
    /***************
    スタートボタン
    *****************/
    //影
    noStroke();
    if(!(mouseX > 545 && mouseX < 735 && mouseY > 670 && mouseY < 735)){//マウスを乗せた時以外は影を付ける
      fill(70,70,70);
      stroke(60);
      strokeWeight(1.5);
      rect(545,715,190,30,0,0,15,15);
    }
    //疑似ボタン
    if((mouseX > 545 && mouseX < 735 && mouseY > 670 && mouseY < 735)){//マウスオーバーでボタンの位置を下げる
      fill(255,105,180);
      noStroke();
      rect(545,680,190,65,15);
      //テキスト（スタート）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("スタート",545+190/2,680+65/2);
      if(startbtn == "off"){//クリック音を1回再生
        btn_sound.play();
        startbtn = "on";
      }
    }
    else{//スタートボタンの初期配置
      fill(112,112,112);
      stroke(120);
      strokeWeight(1.5);
      rect(545,670,190,65,15);
      startbtn= "off";
      //テキスト（スタート）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("スタート",545+190/2,670+65/2);
    }
    /******************
    遊び方ボタン
    *******************/
    //影
    if(!(mouseX > 265 && mouseX < 455 && mouseY > 670 && mouseY < 735)){//マウスオーバー以外は影を付ける
      fill(70,70,70);
      stroke(60);
      strokeWeight(1.5);
      rect(265,715,190,30,0,0,15,15);
    }
    //疑似ボタン
    if((mouseX > 265 && mouseX < 455 && mouseY > 670 && mouseY < 735)){//マウスオーバーでボタンの位置を下げる
      fill(255,105,180);
      noStroke();
      rect(265,680,190,65,15);
      //テキスト（遊び方）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("遊び方",360,680+65/2);
      if(howbtn == "off"){//クリック音を1回再生
        btn_sound.play();
        howbtn = "on";
      }
    }
    else{//スタートボタンの初期配置
      fill(112,112,112);
      stroke(120);
      strokeWeight(1.5);
      rect(265,670,190,65,15);
      //テキスト（遊び方）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("遊び方",360,670+65/2);
      howbtn = "off";
    }
    
    //初期画面でスタートボタンを押したかを判定
    if((mouseX > 545 && mouseX < 735 && mouseY > 680 && mouseY < 745) && (mousePressed == true)){
      stage = "play";
    }
    
    //初期画面で遊び方ボタンを押したかを判定
    if((mouseX > 265 && mouseX < 455 && mouseY > 680 && mouseY < 745) && (mousePressed == true)){
      stage = "how";
    }
}

void how(){
    background(127,213,234);//ウィンドウ背景色
    
    //見出し（遊び方）
    fill(black);
    textAlign(CENTER,CENTER);
    textFont(how_font);
    text("遊び方",500,50);
    
    //遊び方背景
    noStroke();
    rectMode(CORNER);
    fill(white);
    rect(50,100,900,650,30);
    
    /*****************
    遊び方説明文
    ********************/
    textAlign(LEFT,BASELINE);
    textFont(takurin_font);
    textSize(30);
    //目
    strokeWeight(2);
    fill(white);
    stroke(black);
    ellipse(85,290,40,40);
    fill(black);
    ellipse(95,290,20,20);
    fill(white);
    ellipse(100,290,10,10);
    fill(black);
    text(takurin_data.getString(1,1),120,300);
    //目
    strokeWeight(2);
    fill(white);
    stroke(black);
    ellipse(85,390,40,40);
    fill(black);
    ellipse(95,390,20,20);
    fill(white);
    ellipse(100,390,10,10);
    fill(black);
    text(takurin_data.getString(2,1),120,400);
    //目
    strokeWeight(2);
    fill(white);
    stroke(black);
    ellipse(85,490,40,40);
    fill(black);
    ellipse(95,490,20,20);
    fill(white);
    ellipse(100,490,10,10);
    fill(black);
    text(takurin_data.getString(3,1),120,500);
    //目
    strokeWeight(2);
    fill(white);
    stroke(black);
    ellipse(85,590,40,40);
    fill(black);
    ellipse(95,590,20,20);
    fill(white);
    ellipse(100,590,10,10);
    fill(black);
    text(takurin_data.getString(4,1),120,600);
     /***************
    スタートボタン
    *****************/
    //影
    noStroke();
    if(!(mouseX > 650 - (190 / 2) && mouseX < 650 + (190 / 2) && mouseY > 670 - (65 / 2) && mouseY < 670 + (65 / 2))){//マウスを乗せた時以外は影を付ける
      rectMode(CENTER);
      fill(70,70,70);
      stroke(60);
      strokeWeight(1.5);
      rect(650,695,190,30,0,0,15,15);
    }
    //疑似ボタン
    if((mouseX > 650 - (190 / 2) && mouseX < 650 + (190 / 2) && mouseY > 670 - (65 / 2) && mouseY < 670 + (65 / 2))){//マウスオーバーでボタンの位置を下げる
      rectMode(CENTER);
      fill(255,105,180);
      noStroke();
      rect(650,680,190,65,15);
      //テキスト（スタート）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("スタート",650,680);
      if(startbtn == "off"){//クリック音を1回再生
        btn_sound.play();
        startbtn = "on";
      }
    }
    else{//スタートボタンの初期配置
      rectMode(CENTER);
      fill(112,112,112);
      stroke(120);
      strokeWeight(1.5);
      rect(650,670,190,65,15);
      startbtn= "off";
      //テキスト（スタート）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("スタート",650,670);
    }
    if(mouseX > 650 - (190 /2) && mouseX < 650 + (190 / 2) && mouseY > 680 - (65 / 2) && mouseY < 680 + (65 / 2) && (mousePressed == true)){
      stage = "play";//スタート画面に遷移
    }
    /***************
    戻るボタン
    *****************/
    //影
    noStroke();
    if(!(mouseX > 350 - (190 / 2) && mouseX < 350 + (190 / 2) && mouseY > 670 - (65 / 2) && mouseY < 670 + (65 / 2))){//マウスを乗せた時以外は影を付ける
      rectMode(CENTER);
      fill(70,70,70);
      stroke(60);
      strokeWeight(1.5);
      rect(350,695,190,30,0,0,15,15);
    }
    //疑似ボタン
    if((mouseX > 350 - (190 / 2) && mouseX < 350 + (190 / 2) && mouseY > 670 - (65 / 2) && mouseY < 670 + (65 / 2))){//マウスオーバーでボタンの位置を下げる
      rectMode(CENTER);
      fill(255,105,180);
      noStroke();
      rect(350,680,190,65,15);
      //テキスト（戻る）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("戻る",350,680);
      if(backbtn == "off"){//クリック音を1回再生
        btn_sound.play();
        backbtn = "on";
      }
    }
    else{//戻るボタンの初期配置
      rectMode(CENTER);
      fill(112,112,112);
      stroke(120);
      strokeWeight(1.5);
      rect(350,670,190,65,15);
      backbtn= "off";
      //テキスト（戻る）
      textAlign(CENTER,CENTER);
      textFont(takurin_btnfont);
      fill(white);
      text("戻る",350,670);
    }
    if(mouseX > 350 - (190 / 2) && mouseX < 350 + (190 / 2) && mouseY > 680 - (65 / 2) && mouseY < 680 + (65 / 2) && (mousePressed == true)){
      stage = "initial";//初期画面に戻す
    }
}

void play(){
  background(127,213,234);
         
  if(timeup == 0){
    fill(255,105,180);
    noStroke();
    rectMode(CENTER);
    rect(500,50,800,50,50,50,50,50);
  }
  if(score_check == 0){
    /********************
    GOキャラ
    *******************/
    strokeWeight(2);
    //左目
    fill(white);
    stroke(black);
    ellipse(380,200,200,200);
    fill(black);
    ellipse(380,260,70,70);
    fill(white);
    ellipse(380,270,20,20);
    //右目
    fill(white);
    stroke(black);
    ellipse(620,200,200,200);
    fill(black);
    ellipse(620,260,70,70);
    fill(white);
    ellipse(620,270,20,20);
    //入力スペース
    fill(112,112,112);
    rectMode(CENTER);
    rect(500,570,700,300,50);
    if(textfield_check == 0 || textfield_check == 2){//疑似入力欄
      fill(white);
      stroke(black);
      strokeWeight(1);
      rect(500,630,600,60);
      fill(100,100,100,130);
      textAlign(LEFT,CENTER);
      textFont(takurin_btnfont);
      text("takurinton",200,630);
    }
    //歯
    rectMode(CORNER);
    strokeWeight(5);
    fill(white);
    stroke(black);
    rect(440,390,60,110,15);
    fill(white);
    stroke(black);
    rect(500,390,60,110,15);
    //鼻
    fill(255,215,173);
    noStroke();
    ellipse(500,380,170,110);
    fill(black);
    ellipse(500,340,110,80);
  }
  
  ////カウントダウン
  int time = millis()/1000;//プログラム経過時間用変数（int）
  float float_time = millis();//プログラム経過時間用変数（float）
  if(play_check == 0){//play()の呼び出しから初回のdraw()の時だけ通過
    play_time = millis()/1000 + 5;//スタートボタンを押した時点のプログラム経過時間+5秒
    play_check = 1;//初回draw()判定用
  }
  if(play_time - time > 0){//5秒のカウントダウン
    fill(100,100,100,150);
    rectMode(CENTER);
    rect(500,400,1000,800);
    fill(255,105,180);
    textAlign(CENTER);
    textFont(count_font);
    text(play_time - time,500,400);
  }
  else{
    if(play_time - time == 0){//カウント0秒の場合
      fill(255,105,180);
      textAlign(CENTER,CENTER);
      textFont(takurin_font);
      textSize(120);
      text("スタート",500,400);
    }
    else{
       if(start_check == 0){//スタート後初回のdraw()のみ通過
         start_time = millis()/1000 + 10;//スタート後時点のプログラム経過時間+10秒
         time_gage = millis() + 10;//スタート後時点のプログラム経過時間+10秒（float）
         start_check = 1;//初回draw()判定用
         textfield_check = 1;//疑似入力欄削除用
       }
       if(start_time - time > 0){//10秒タイムゲージ
         fill(112,112,112);
         noStroke();
         rectMode(CORNER);
         translate(900,25);
         rotate(PI);
         if((11 - (time_gage - float_time)) / 1000 > 9.9){
           rect(0,-50,80*((11 - (time_gage - float_time))/ 1000),50,50,50,50,50);//タイムゲージ
           timeup = 1;
         }
         else{
           rect(0,-50,80*((11 - (time_gage - float_time))/ 1000),50,50,0,0,50);//タイムゲージ
         }
         //translateとrotateを元に戻し、textfieldを正しい位置に配置
         translate(900,25);
         rotate(PI);
         takurin_field.getController("takurin").setVisible(true);
       }
       else{//ゲーム終了
         if(end_check == 0){
           end_time = millis()/1000 + 3;
           end_check = 1;
           for(int i = 0;i < takurin_list.size();i++){//入力内容の正誤判定
             if(takurin_list.get(i).equals("takurinton")){
               takurin_point += 1;
             }
             else{
               takurin_misspoint += 1;
             }
           }
         }
         if(end_time - time < 0){
           score_check = 1;
           noStroke();
           fill(white);
           rectMode(CENTER);
           rect(500,400,800,600,30);
           fill(black);
           textAlign(CENTER,CENTER);
           textFont(takurin_font);
           textSize(60);
           text("結果",500,50);
           fill(255,105,180);
           textFont(takurin_font);
           textSize(60);
           text(takurin_point+"ポイント",500,200);
           text("ミスタイプ"+takurin_misspoint+"回",500,400);
           /***************
            戻るボタン
            *****************/
            rectMode(CENTER);
            //影
            noStroke();
            if(!(mouseX > 300 - (190 / 2) && mouseX < (300 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスを乗せた時以外は影を付ける
              fill(70,70,70);
              stroke(60);
              strokeWeight(1.5);
              rect(300,625,190,30,0,0,15,15);
            }
            //疑似ボタン
            if((mouseX > (300 - (190 / 2)) && mouseX < (300 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスオーバーでボタンの位置を下げる
              fill(255,105,180);
              noStroke();
              rect(300,610,190,65,15);
              //テキスト（戻る）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("戻る",300,610);
              if(backbtn == "off"){//クリック音を1回再生
                btn_sound.play();
                backbtn = "on";
              }
            }
            else{//戻るボタンの初期配置
              fill(112,112,112);
              stroke(120);
              strokeWeight(1.5);
              rect(300,600,190,65,15);
              backbtn= "off";
              //テキスト（戻る）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("戻る",300,600);
            }
            if(mouseX > 300 - (190 / 2) && mouseX < 300 + (190 / 2) && mouseY > 610 - (65 / 2) && mouseY < 610 + (65 / 2) && (mousePressed == true)){
              stage = "initial";
              takurin_area.clear();//textareaの初期化
              takurin_list.clear();//takurin_listの初期化
              takurin_field.get(Textfield.class,"takurin").clear();//textfieldの初期化
              takurin_area.setVisible(false);//入力内容表示状態で戻るボタンを押したときに、入力内容を非表示にする
            }
           /***************
            入力内容ボタン
            *****************/
            rectMode(CENTER);
            //影
            noStroke();
            if(!(mouseX > 500 - (190 / 2) && mouseX < (500 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスを乗せた時以外は影を付ける
              fill(70,70,70);
              stroke(60);
              strokeWeight(1.5);
              rect(500,625,190,30,0,0,15,15);
            }
            //疑似ボタン
            if((mouseX > (500 - (190 / 2)) && mouseX < (500 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスオーバーでボタンの位置を下げる
              fill(255,105,180);
              noStroke();
              rect(500,610,190,65,15);
              //テキスト（入力内容）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("入力内容",500,610);
              if(inputbtn == "off"){//クリック音を1回再生
                btn_sound.play();
                inputbtn = "on";
              }
            }
            else{//入力内容ボタンの初期配置
              fill(112,112,112);
              stroke(120);
              strokeWeight(1.5);
              rect(500,600,190,65,15);
              inputbtn= "off";
              //テキスト（入力内容）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("入力内容",500,600);
            }
            if((mouseX > 500 - (190 / 2) && mouseX < 500 + (190 / 2) && mouseY > 610 - (65 / 2) && mouseY < 610 + (65 / 2) && (mousePressed == true))){
              takurin_area.setVisible(true);//入力内容の表示
              area = 1;
            }
            if(area == 1){
              //入力内容の表示の非表示バー
                noStroke();
                fill(170,170,170);
                rectMode(CORNER);
                rect(300,150,350,50);
                //バツボタン
                fill(150,150,150);
                if( mouseX > 650 && mouseX < 700 && mouseY > 150 && mouseY < 200){
                  fill(255,105,180);
                }
                rect(650,150,50,50);
                fill(100,100,100);
                textAlign(CENTER,CENTER);
                textSize(40);
                text("×",675,175);
                if(mouseX > 650 && mouseX < 700 && mouseY > 150 && mouseY < 200 && mousePressed == true){//入力内容を非表示
                  takurin_area.setVisible(false);
                  area = 0;
                }
            }
            /***************
            もう一度ボタン
            *****************/
            rectMode(CENTER);
            //影
            noStroke();
            if(!(mouseX > 700 - (190 / 2) && mouseX < (700 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスを乗せた時以外は影を付ける
              fill(70,70,70);
              stroke(60);
              strokeWeight(1.5);
              rect(700,625,190,30,0,0,15,15);
            }
            //疑似ボタン
            if((mouseX > (700 - (190 / 2)) && mouseX < (700 + (190 / 2)) && mouseY > (600 - (65 / 2)) && mouseY < (600 + (65 / 2)))){//マウスオーバーでボタンの位置を下げる
              fill(255,105,180);
              noStroke();
              rect(700,610,190,65,15);
              //テキスト（もう一度）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("もう一度",700,610);
              if(restartbtn == "off"){//クリック音を1回再生
                btn_sound.play();
                restartbtn = "on";
              }
            }
            else{//戻るボタンの初期配置
              fill(112,112,112);
              stroke(120);
              strokeWeight(1.5);
              rect(700,600,190,65,15);
              restartbtn= "off";
              //テキスト（もう一度）
              textAlign(CENTER,CENTER);
              textFont(takurin_btnfont);
              fill(white);
              text("もう一度",700,600);
            }
            if(mouseX > 700 - (190 / 2) && mouseX < 700 + (190 / 2) && mouseY > 610 - (65 / 2) && mouseY < 610 + (65 / 2) && (mousePressed == true)){
              stage = "play";
              initial_back();//初期化
              takurin_area.clear();//textareaの初期化
              takurin_list.clear();//takurin_listの初期化
              takurin_field.get(Textfield.class,"takurin").clear();//textfieldの初期化
              takurin_area.setVisible(false);//入力内容表示状態で戻るボタンを押したときに、入力内容を非表示にする
            }
         }
         else{
           fill(112,112,112);
           noStroke();
           rectMode(CENTER);
           rect(500,50,800,50,50);
           fill(100,100,100,150);
           rectMode(CENTER);
           rect(500,400,1000,800);
           fill(255,105,180);
           textAlign(CENTER,CENTER);
           textFont(takurin_font);
           textSize(120);
           text("終了",500,400);
           textfield_check = 2;//ENTERを押したときにtakurin_listに追加防止、疑似入力欄表示用
           takurin_field.getController("takurin").setVisible(false);//入力欄の非表示
         }
       }
    }
  }
}
