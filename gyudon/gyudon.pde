int n = 0;
int o = 0;
int p = 0;
int q = 0;
int r = 0;
//タイマー
int timer = 0;
int min = 24*60; //テスト時間(分)
//待ち
int s = 0;
int t = 0;
//店員
int u = 1;
int v = 0;

int w = 0;
//着席数
int ns = 0;
int os = 0;
int ps = 0;
int qs = 0;
int rs = 0;
//待った人
int st = 0;
//離席までのタイマー
int count1 = 0;
int count2 = 0;
int count3 = 0;
int count4 = 0;
int count5 = 0;
float leave1 = 0;
float leave2 = 0;
float leave3 = 0;
float leave4 = 0;
float leave5 = 0;
//出来上がるまでのタイマー
int c1 = 0;
int c2 = 0;
//待ち時間（提供順を決めるため）
int counter1 = 0;
int counter2 = 0;
int counter3 = 0;
int counter4 = 0;
int counter5 = 0;
//座席ごとの店員の状態
int un = 0;
int uo = 0;
int up = 0;
int uq = 0;
int ur = 0;
int vn = 0;
int vo = 0;
int vp = 0;
int vq = 0;
int vr = 0;
//調理し始めるとカウント
int prov1 = 0;
int prov2 = 0;
int prov3 = 0;
int prov4 = 0;
int prov5 = 0;
//食べたかどうか判断
int comp1 = 0;
int comp2 = 0;
int comp3 = 0;
int comp4 = 0;
int comp5 = 0;

//座席に座ってから立つまでの時間
int wait1 = 0;
int wait2 = 0;
int wait3 = 0;
int wait4 = 0;
int wait5 = 0;
//待ち時間合計
int wt1 = 0;
int wt2 = 0;
int wt3 = 0;
int wt4 = 0;
int wt5 = 0;
//時間ごとの客数
int nshour = 0;
int oshour = 0;
int pshour = 0;
int qshour = 0;
int rshour = 0;

//並んだ人とあきらめた人カウント
int s1 = 0;
int t1 = 0;
int u1 = 0;
//不満度
int th = 0;
int sh = 0;
int thr = 0;
int shr = 0;
     
float enter = 0;//入店(3分から5分)

float ran;
int[] seat = new int[8]; 
void setup() {
  size( 440,440 ); //画面
  background( 255 ); //背景
  smooth(); //なめらか
  frameRate(5);
}
 
 
void draw() {
  fill(255);
  rect(0,0,440,440);  
  
  enter = random(60);
  
  if( u == 3 || u == 5 || u == 7 || u == 9 || u == 11 ){
       u = 1;
     }
     if( v == 3 || v == 5 || v == 7 || v == 9 || v == 11 ){
       v = 1;
     }
  
 if (timer/60 > 0 && timer/60 < 6 || timer/60 == 10 || timer/60 > 14 && timer/60 < 17){
  v = 0;
   //閑散時間帯10人/h
   if(enter <= 10){
     ran= random(100);  
  
 //待ってる 
if(s == 1){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
      }else if(ran >= 80){
        seat[5] = 1;
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1; 
         
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
    seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
    seat[4] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
    seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
    seat[2] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
    seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }
  
  //待ってない
}else if(s == 0){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
        
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
        
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
        
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
        
      }else if(ran >= 80){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
        
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
      seat[4] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
      seat[3] = 1;
        
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[2] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[0] = 1;
      s1 ++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1){
      seat[6] = 1;
      t1++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1 && t == 1){
      seat[7] = 1;
      u1 ++;
    }
  }
}
}else if(timer/60 > 6 && timer/60 < 9 || timer/60 > 11 && timer/60 < 14 || timer/60 > 17 && timer/60 < 21){
 v = 1;
  //混雑時間帯35人/h
  if(enter <= 35){
     ran= random(100);  
  
 //待ってる 
if(s == 1){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
      }else if(ran >= 80){
        seat[5] = 1;
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1; 
         
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
    seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
    seat[4] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
    seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
    seat[2] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
    seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }
  
  //待ってない
}else if(s == 0){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
        
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
        
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
        
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
        
      }else if(ran >= 80){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
        
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
      seat[4] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
      seat[3] = 1;
        
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[2] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[0] = 1;
      s1 ++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1){
      seat[6] = 1;
      t1++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1 && t == 1){
      seat[7] = 1;
      u1 ++;
    }
  }
}
}else{
v = 0;
//通常時間帯20人/h
  if(enter <= 20){
     ran= random(100);  
     
  
 //待ってる 
if(s == 1){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
      }else if(ran >= 80){
        seat[5] = 1;
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1; 
         
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
    seat[5] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
    seat[4] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
    seat[3] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
    seat[2] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
    seat[1] = 1;
        
    if(t == 1){
      seat[0] = 1;
      seat[6] = 0;
    }else if(t == 0){
      seat[0] = 0;
    }
  }
  
  //待ってない
}else if(s == 0){ 
  if(n == 0 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 20){
        seat[1] = 1;
        
      }else if(ran >= 20 && ran < 30){
        seat[2] = 1;
        
      }else if(ran >= 30 && ran < 70){
        seat[3] = 1;
        
      }else if(ran >= 70 && ran < 80){
        seat[4] = 1;
        
      }else if(ran >= 80){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 0){
  
      if(ran < 10){
        seat[2] = 1;
        
      }else if(ran >= 10 && ran < 25){
        seat[3] = 1;
        
      }else if(ran >= 25 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 0){
  
      if(ran < 5){
        seat[1] = 1;
        
      }else if(ran >= 5 && ran < 10){
        seat[3] = 1;
        
      }else if(ran >= 10 && ran < 40){
        seat[4] = 1;
        
      }else if(ran >= 40){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 0){
  
      if(ran < 45){
        seat[1] = 1;
        
      }else if(ran >= 45 && ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50 && ran < 55){
        seat[4] = 1;
        
      }else if(ran >= 55){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 90){
        seat[2] = 1;
        
      }else if(ran >= 90 && ran < 95){
        seat[3] = 1;
        
      }else if(ran >= 95){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 0 && q == 0 && r == 1){
    
      if(ran < 60){
        seat[1] = 1;
        
      }else if(ran >= 60 && ran < 75){
        seat[2] = 1;
        
      }else if(ran >= 75 && ran < 90){
        seat[3] = 1;
        
      }else if(ran >= 90){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 0){
    
      if(ran < 50){
        seat[4] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 0 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[2] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 0 && q == 0 && r == 1){
      seat[3] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 33){
        seat[1] = 1;
        
      }else if(ran >= 33 && ran < 66){
        seat[3] = 1;
        
      }else if(ran >= 66){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 0){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 1 && q == 0 && r == 1){
      seat[1] = 1;
        
    }else if(n == 0 && o == 0 && p == 0 && q == 1 && r == 1){
    
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[2] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[3] = 1;
          
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 1 && p == 0 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[3] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 0){
    
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 1 && o == 0 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[2] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 0){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[5] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 1 && q == 0 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[4] = 1;
        
      }
    }else if(n == 0 && o == 1 && p == 0 && q == 1 && r == 1){
  
      if(ran < 50){
        seat[1] = 1;
        
      }else if(ran >= 50){
        seat[3] = 1;
        
      }
    }else if(n == 0 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 0){
      seat[5] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 0 && r == 1){
      seat[4] = 1;
        
    }else if(n == 1 && o == 1 && p == 0 && q == 1 && r == 1){
      seat[3] = 1;
        
    }else if(n == 1 && o == 0 && p == 1 && q == 1 && r == 1){
      seat[2] = 1;
        
    }else if(n == 0 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[1] = 1;
        
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1){
      seat[0] = 1;
      s1 ++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1){
      seat[6] = 1;
      t1 ++;
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1 && t == 1){
      seat[7] = 1;
      u1 ++;
    }
  }
}
}

 if(seat[1]==1){
   counter1 ++;
   wait1 ++;
 }
 if(seat[2]==1){
   counter2 ++;
   wait2 ++;
 }
 if(seat[3]==1){
   counter3 ++;
   wait3 ++;
 }
 if(seat[4]==1){
   counter4 ++;
   wait4 ++;
 }
 if(seat[5]==1){
   counter5 ++;
   wait5 ++;
 }


 if( prov1 == 3 ){  
   if(seat[1] == 1){
    if(count1==1){
      ns ++;
      nshour ++;
      leave1 = random(5,11);
      wt1 += wait1;
      wait1 = 0;
    }
    count1 ++;
    if(comp1 == 1){
    if(count1==int(leave1)){
      count1 = 0;
      leave1 = 0;
      seat[1]=0;
      counter1 = 0;
      comp1 = 0;
      prov1 = 0;
      un = 0;
      
      }}
   }
 }
 
 if( prov2 == 3 ){  
   if(seat[2] == 1){
    if(count2==1){
      os ++;
      oshour ++;
      leave2 = random(5,11);
      wt2 += wait2;
      wait2 = 0;
    }
    count2 ++;
    if(comp2 == 1){
    if(count2==int(leave2)){
      count2 = 0;
      leave2 = 0;
      seat[2]=0;
      counter2 = 0;
      comp2 = 0;
      prov2 = 0;
      uo = 0;
     
      }}
   }
 }
 
 if( prov3 == 3 ){  
   if(seat[3] == 1){
    if(count3==1){
      ps ++;
      pshour ++;
      leave3 = random(5,11);
      wt3 += wait3;
      wait3 = 0;
    }
    count3 ++;
    if(comp3 == 1){
    if(count3==int(leave3)){
      count3 = 0;
      leave3 = 0;
      seat[3]=0;
      counter3 = 0;
      comp3 = 0;
      prov3 = 0;
      up = 0;
      }}
   }
 }
 
 if( prov4 == 3 ){  
   if(seat[4] == 1){
    if(count4==1){
      qs ++;
      qshour ++;
      leave4 = random(5,11);
      wt4 += wait4;
      wait4 = 0;
    }
    count4 ++;
    if(comp4 == 1){
    if(count4==int(leave4)){
      count4 = 0;
      leave4 = 0;
      seat[4]=0;
      counter4 = 0;
      comp4 = 0;
      prov4 = 0;
      uq = 0;
     
      }}
   }
 }
 
 if( prov5 == 3 ){  
   if(seat[5] == 1){
    if(count5==1){
      rs ++;
      rshour ++;
      leave5 = random(5,11);
      wt5 += wait5;
      wait5 = 0;
    }
    count5 ++;
    if(comp5 == 1){
    if(count5 ==int(leave5)){
      count5 = 0;
      leave5 = 0;
      seat[5]=0;
      counter5 = 0;
      comp5 = 0;
      prov5 = 0;
      ur = 0;
      }}
   }
 }
 
 
   /*
     seat[i] = n; //状態nを座席に当てはめる
*/
     n = seat[1];
     o = seat[2];
     p = seat[3];
     q = seat[4];
     r = seat[5];
     
     s = seat[0];
     t = seat[6];
      
     int Max = max(counter1, max(counter2, max(counter3, max(counter4, counter5))));

     if( v == 0 ){//店員が2いない 
     if( u == 1 ){//一人手が空いているなら
       if( counter1 == Max){
         if(un < 1){
         u = 2;}
         un ++;//複数回食事を与えないように
         counter1 = 0;
       } else if( counter2 == Max ){
         if(uo < 1){
         u = 4;}
         uo ++;
         counter2 = 0;
       } else if( counter3 == Max ){
         if(up < 1){
         u = 6;}
         up ++;
         counter3 = 0;
       } else if( counter4 == Max ){
         if(uq < 1){
         u = 8;}
         uq ++;
         counter4 = 0;
       } else if( counter5 == Max ){
         if(ur < 1){
         u = 10;}
         ur ++;
         counter5 = 0;
       }
     }
    } else if ( v == 1 ){//店員が2いて
    if( u == 1 ){//店員1が暇なら
       if( counter1 == Max){
         if(un < 1 || vn < 1){
         u = 2;}
         un ++;//複数回食事を与えないように
         counter1 = 0;
       } else if( counter2 == Max ){
         if(uo < 1 || vo < 1){
         u = 4;}
         uo ++;
         counter2 = 0;
       } else if( counter3 == Max ){
         if(up < 1 || vp < 1){
         u = 6;}
         up ++;
         counter3 = 0;
       } else if( counter4 == Max ){
         if(uq < 1 || vq < 1){
         u = 8;}
         uq ++;
         counter4 = 0;
       } else if( counter5 == Max ){
         if(ur < 1 || vr < 1){
         u = 10;}
         ur ++;
         counter5 = 0;
       }
    } else if( u == 2 ){//店員1が調理中なら
       if( counter1 == Max){
         if(un < 1 || vn < 1){
         v = 2;}
         vn ++;//複数回食事を与えないように
         counter1 = 0;
       } else if( counter2 == Max ){
         if(uo < 1 || vo < 1){
         v = 4;}
         vo ++;
         counter2 = 0;
       } else if( counter3 == Max ){
         if(up < 1 || vp < 1){
         v = 6;}
         vp ++;
         counter3 = 0;
       } else if( counter4 == Max ){
         if(uq < 1 || vq < 1){
         v = 8;}
         vq ++;
         counter4 = 0;
       } else if( counter5 == Max ){
         if(ur < 1 || vr < 1){
         v = 10;}
         vr ++;
         counter5 = 0;
       }
       }
     }
     
      if( u == 2 ){
        c1 ++;
        if( c1 == 3 ){
          c1 = 0;
          u = 3;
          prov1 = 3;//提供されたことを判定する変数
          comp1 = 1;//食べてから席をたつように、確認
        }
      }
      if( u == 4 ){
        c1 ++;
        if( c1 == 3 ){
          c1 = 0;
          u = 5;
          prov2 = 3;
          comp2 = 1;
        }
      }
      if( u == 6 ){
        c1 ++;
        if( c1 == 3 ){
          c1 = 0;
          u = 7;
          prov3 = 3;
          comp3 = 1;
        }
      }
      if( u == 8 ){
        c1 ++;
        if( c1 == 3 ){
          c1 = 0;
          u = 9;
          prov4 = 3;
          comp4 = 1;
        }
      }
      if( u == 10 ){
        c1 ++;
        if( c1 == 3 ){
          c1 = 0;
          u = 11;
          prov5 = 3;
          comp5 = 1;
        }
      }
      
            
      if( v == 2 ){
        c2 ++;
        if( c2 == 3 ){
          c2 = 0;
          v = 3;
          prov1 = 3;
          comp1 = 1;
        }
      }      
      if( v == 4 ){
        c2 ++;
        if( c2 == 3 ){
          c2 = 0;
          v = 5;
          prov2 = 3;
          comp2 = 1;
        }
      }      
      if( v == 6 ){
        c2 ++;
        if( c2 == 3 ){
          c2 = 0;
          v = 7;
          prov3 = 3;
          comp3 = 1;
        }
      }      
      if( v == 8 ){
        c2 ++;
        if( c2 == 3 ){
          c2 = 0;
          v = 9;
          prov4 = 3;
          comp4 = 1;
        }
      }      
      if( v == 10 ){
        c2 ++;
        if( c2 == 3 ){
          c2 = 0;
          v = 11;
          prov5 = 3;
          comp5 = 1;
        }
      }
     
          
     noStroke(); //線を描かない
       
     if( n == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if ( n == 1 ){ //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( n == 1 && u == 3 || n == 1 && v == 3 ){
       n = 3 ;
       prov1 = 3;
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 1*70, 220, 40, 40 );//円を描く  
     
            
     if( o == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( o == 1 ){ //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( o == 1 && u == 5 || o == 1 && v == 5 ){
       o = 3;
       prov2 = 3;
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 2*70, 220, 40, 40 );//円を描く  
     
       
     if( p == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( p == 1 ){ //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( p == 1 && u == 7 || p == 1 && v == 7 ){
       p = 3;
       prov3 = 3;
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 3*70, 220, 40, 40 );//円を描く  
     
       
     if( q == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( q == 1 ){ //人が座っている
       fill( 0, 255, 127 ); //ミドリ 
     }
     if( q == 1 && u == 9 || q == 1 && v == 9 ){
       fill( 255, 155, 0 );
       q = 3;
       prov4 = 3;
     }
     ellipse( 10 + 4*70, 220, 40, 40 );//円を描く  
     
     if( r == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( r == 1 ){ //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( r == 1 && u == 11 || r == 1 && v == 11 ){
       r = 3;
       prov5 = 3;
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 5*70, 220, 40, 40 );//円を描く
     

//待ち
     if( s == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
       sh = 0;
     } else  { //人が座っている
       fill( 255, 100, 100 ); //赤
       if(sh != 6){
       sh++;
       }else{
       shr ++;
       }
     } 
     ellipse( 10 + 4*70, 370, 40, 40 );//円を描く
     
     if( t == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
       th = 0;
     } else  { //人が座っている
       fill( 255, 100, 100 ); //赤
       if(th!= 6){
       th++;
       }else{
       thr ++;
       }
     } 
     ellipse( 10 + 5*70, 370, 40, 40 );//円を描く

     
//店員     
     
     if( u == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( u == 1 ) { //人が座っている
       fill( 0, 255, 127 ); 
     } else if( u == 2 || u == 4 || u == 6 || u == 8 || u == 10) {//調理中
       if(n == 1 || o == 1 || p == 1 || q == 1 || r == 1){
         fill( 255, 155, 0 );
       }
     } else {
       if(n == 1 || o == 1 || p == 1 || q == 1 || r == 1){
         fill( 255, 100, 100 );//提供
       }
     }
     ellipse( 10 + 2*70, 80, 40, 40 );//円を描く
     
     if( v == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else if( v == 1 ) { //人が座っている
       fill( 0, 255, 127 ); 
     } else if( v == 2 || v == 4 || v == 6 || v == 8 || v == 10){//調理中
       if(n == 1 || o == 1 || p == 1 || q == 1 || r == 1){
         fill( 255, 155, 0 );
       }
     } else {
       if(n == 1 || o == 1 || p == 1 || q == 1 || r == 1){
         fill( 255, 100, 100 );//提供
       }
     }
     ellipse( 10 + 4*70, 80, 40, 40 );//円を描く

     
     
     timer = timer+1;
     println(timer/60 + ":" + timer%60); 
     if(timer%60 == 0){
     println("提供までの平均時間(人)： " + (wt1 + wt2 + wt3 + wt4 + wt5)/(nshour + oshour + pshour + qshour + rshour)/5 + "分");
     println("並んだ人数： " + (s1 + t1) + "人" + "あきらめた人" + u1 + "人");
     println("不満を持った人の合計" + (shr + thr) + "人");
     shr = 0;
     thr = 0;
     sh = 0;
     th = 0;
     s1 = 0;
     t1 = 0;
     u1 = 0;
     wt1 = 0;
     wt2 = 0;
     wt3 = 0;
     wt4 = 0;
     wt5 = 0;
     nshour = 0;
     oshour = 0;
     pshour = 0;
     qshour = 0;
     rshour = 0;
     }
    
     if(timer == min){
      println("座席着席数");
      println(ns+","+os+","+ps+","+qs+","+rs);
      println("座席使用率(/分)");
      float np = float(ns)/float(min)*100;
      float op = float(os)/float(min)*100;
      float pp = float(ps)/float(min)*100;
      float qp = float(qs)/float(min)*100;
      float rp = float(rs)/float(min)*100;
      println(nfc(np, 0)+"%,"+nfc(op, 0)+"%,"+nfc(pp, 0)+"%,"+nfc(qp, 0)+"%,"+nfc(rp, 0)+"%");
      noLoop();
     }
  
 }
 
 
 
 
 
