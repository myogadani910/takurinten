import de.bezier.data.*;
XlsReader takurin_data;
int white = 255;
int black = 0;
String stage = "initial";//画面遷移用変数
PFont takurin_font;//タイトルのフォント
String startbtn = "off";//音再生・停止用
String howbtn = "off";//音再生・停止用
String inputbtn = "off";//音再生・停止用
String restartbtn = "off";
String backbtn = "off";
PFont takurin_btnfont;//初期画面ボタンのフォント
PFont how_font;
PFont count_font;
int textfield_check = 0;
int play_check = 0;//play()呼び出しから初回draw()の判定用
int play_time;//スタートボタンを押した時点のプログラム経過時間
int start_check = 0;
int start_time;//スタート後時点のプログラム経過時間
float time_gage;//スタート後時点のプログラム経過時間（float）
int timeup = 0;//ゲーム終了用
int end_check = 0;
int end_time;//ゲーム終了後のプログラム経過時間
ControlP5 takurin;
Textarea takurin_area;
ControlP5 takurin_field;
StringList takurin_list;
int stop = 0;
int takurin_point = 0;
int takurin_misspoint = 0;
int score_check = 0;
int area = 0;
int i = 1;
void setup(){
    size(1000,800);
    colorMode(RGB,255,255,255,255);
    PFont font = createFont("MS Gothic",20);
    takurin_font = createFont("HGSｺﾞｼｯｸE",130);
    takurin_btnfont = createFont("HGSｺﾞｼｯｸE",30);
    how_font = createFont("HGSｺﾞｼｯｸE",60);
    count_font = createFont("HGSｺﾞｼｯｸE",130);
    textFont(font);
    surface.setTitle("たくりん１０");
    //set_btn();
    set_sound();
    textfield();
    textarea();
    takurin_list = new StringList();
    takurin_data = new XlsReader(this,"takurin.xls");
}

void draw(){
    //draw_btn();
    switch(stage){
      case "initial":
        initial();
        //初期化
        textfield_check = 0;
        play_check = 0;
        start_check = 0;
        timeup = 0;
        end_check = 0;
        stop = 0;
        takurin_point = 0;
        takurin_misspoint = 0;
        score_check = 0;
        area = 0;
        i = 1;
        break;
      case "how":
        how();
        break;
      case "play":
        play();
        break;
    }
}

void keyPressed(){
  if(stage == "play"){
    if(textfield_check == 1){
      if(key == ENTER){
        takurin_area.append(i+"："+takurin_field.get(Textfield.class,"takurin").getText()+"\n");
        takurin_list.append(takurin_field.get(Textfield.class,"takurin").getText());
        i++;
      }
    }
  }
}

void initial_back(){
    //初期化
    textfield_check = 0;
    play_check = 0;
    start_check = 0;
    timeup = 0;
    end_check = 0;
    stop = 0;
    takurin_point = 0;
    takurin_misspoint = 0;
    score_check = 0;
    area = 0;
    i = 1;
}
