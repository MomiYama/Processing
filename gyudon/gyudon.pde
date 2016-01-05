
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
//退店(10分から15分)
int A = 0;
int B = 0;
int C = 0;
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
  
  enter = random(5);
  if(enter >= 3){
     ran= random(100);  
  
  
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
    }else if(n == 1 && o == 1 && p == 1 && q == 1 && r == 1 && s == 1){
      seat[6] = 1;
    }else{
      seat[7] = 1;
    }
  }
}


   
  if(seat[1]==1){
    if(count1==1){
      ns ++;
      leave1 = random(4,10);
    }
    count1 ++;
    if(count1==3+int(leave1)){
      count1 = 0;
      seat[1]=0;
    }
  }
  if(seat[2]==1){
    if(count2==1){
      os ++;
      leave2 = random(4,10);
    }
    count2 ++;
    if(count2==3+int(leave2)){
      count2 = 0;
      seat[2]=0;
    }
  }
  if(seat[3]==1){
    if(count3==1){
      ps ++;
      leave3 = random(4,10);
    }
    count3 ++;
    if(count3==3+int(leave3)){
      count3 = 0;
      seat[3]=0;
    }
  }
  if(seat[4]==1){
    if(count4==1){
      qs ++;
      leave4 = random(4,10);
    }
    count4 ++;
    if(count4==3+int(leave4)){
      count4 = 0;
      seat[4]=0;
    }
  }
  if(seat[5]==1){
    if(count5==1){
      rs ++;
      leave5 = random(4,10);
    }
    count5 ++;
    if(count5==3+int(leave5)){
      count5 = 0;
      seat[5]=0;
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
          
     noStroke(); //線を描かない
       
     if( n == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else { //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( n == 1 && count1 >= 3 ){
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 1*70, 220, 40, 40 );//円を描く  
     
            
     if( o == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else { //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if(o == 1 && count2 >= 3){
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 2*70, 220, 40, 40 );//円を描く  
     
       
     if( p == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else { //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( p == 1 && count3 >= 3 ){
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 3*70, 220, 40, 40 );//円を描く  
     
       
     if( q == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else { //人が座っている
       fill( 0, 255, 127 ); //ミドリ 
     }
     if( q == 1 && count4 >= 3 ){
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 4*70, 220, 40, 40 );//円を描く  
     
     if( r == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else { //人が座っている
       fill( 0, 255, 127 ); //ミドリ
     }
     if( r == 1 && count5 >= 3 ){
       fill( 255, 155, 0 );
     }
     ellipse( 10 + 5*70, 220, 40, 40 );//円を描く
     

//待ち
     if( s == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else  { //人が座っている
       fill( 255, 100, 100 ); //赤
     } 
     ellipse( 10 + 4*70, 370, 40, 40 );//円を描く
     
     if( t == 0 ) { //人が座っていない
       fill( 190 ); //グレイ
     } else  { //人が座っている
       fill( 255, 100, 100 ); //赤
     } 
     ellipse( 10 + 5*70, 370, 40, 40 );//円を描く

     
     
     
     timer = timer+1;
     println(timer/60 + ":" + timer%60); 
    
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
 
 
 
 
 
 
