
int k = 0;
int k2 = 0;
int k3 = 0;
int k4 = 0; //0限時(1限開始時)の座席の状態を計算するための変数

int h = 0;
int h2 = 0;
int h3 = 0;
int h4 = 0; //1限終了時(2限開始時)の座席の状態を計算するための変数

int g = 0;
int g2 = 0;
int g3 = 0;
int g4 = 0; //2限終了時(3限開始時)の座席の状態を計算するための変数

int f = 0;
int f2 = 0;
int f3 = 0;
int f4 = 0; //3限終了時(4限開始時)の座席の状態を計算するための変数

int e = 0;
int e2 = 0;
int e3 = 0;
int e4 = 0; //4限終了時の座席の状態を計算するための変数

void setup() {
  size( 220, 915 ); //画面
  background( 255 ); //背景
  smooth(); //なめらか
  noLoop(); //繰り返さない
}
 
 void draw() {
   
   fill(0);
   line(0, 185, width, 185);   
   line(0, 185 * 2 - 5, width, 185 * 2 - 5);   
   line(0, 185 * 3 - 10, width, 185 * 3 - 10);   
   line(0, 185 * 4 - 15, width, 185 * 4 - 15);   
   
   
 //下準備  
   int[][] seat0 = new int[17][12]; //最初の座席
   int[][] seat1 = new int[17][12]; //1限終了時の座席
   int[][] seat2 = new int[17][12]; //2限終了時の座席
   int[][] seat3 = new int[17][12]; //3限終了時の座席
   int[][] seat4 = new int[17][12]; //4限終了時の座席
   
   int n = 0; //最初の座席の状態
   int o = 0; //1限終了時の座席の状態
   int p = 0; //2限終了時の座席の状態
   int q = 0; //3限終了時の座席の状態
   int r = 0; //4限終了時の座席の状態

   
 //最初の状態を計算する   
   for( int i = 0; i < 17; i++ ) { //座席の横の分+2繰り返す
     for( int j = 0; j < 12; j++ ) { //座席の縦の分+2繰り返す
       n = 3; //すべての座席の状態を3にする(無)。
     }
   }

   for( int i = 1; i < 16; i++ ) { //座席の横の分繰り返す
     for( int j = 1; j < 11; j++ ) { //座席の縦の分繰り返す
     
       float l =random( 99 ); //100％分のランダム
       
       if( l < 10 ) { //20%
         n = 0; //座ってない
       }else if( l >= 10 && l < 95 ) { //75%
         n = 1; //座っている
       }else{ //5%
         n = 2; //感染している　
       }//if 
       
       seat0[i][j] = n; //感染状態nを座席に当てはめる
       
       noStroke(); //線を描かない
       
       if( n == 0 ) { //人が座っていない
         fill( 190 ); //グレイ
       } else if ( n == 1 ) { //人が座っている
         fill( 0, 255, 127 ); //ミドリ
       } else if ( n == 2 ) { //感染している
         fill( 255, 0, 0 ); //アカ
       } else { //それ以外(n = 3)
         fill( 255 );//白(計算のための余白)
       }//if
       
       ellipse( 10 + i*12, 10 + j*12, 10, 10 );//円を描く
       
       if( n == 2 ) {
         k++; //感染者+1
       } else if( n == 0 ) {
         k2++; 
       } else if( n == 1 ) {
         k3++;
       }//if
       
     }//for
   }//for
   
 //最初の状態を文字にする  
       fill( 0, 0, 0 );
       text( "0限(感染," + " " +"健康," + "    " +"空席," + "     " +"感染率)", 10, 160);
       fill( 255, 0, 0 );
       text( k, width/4 - 20, 180 );
       fill( 0, 255, 127 );
       text( k3, width/2 - 40, 180 );
       fill( 100, 100, 100 );
       text( k2, width/4*3 - 40, 180 );
       fill( 255, 0, 0 );
       float k4 = float( k )/float( k3 + k );
       text( nfc( k4*100, 0 ) + "%", width/4*3, 180 );
       
       
      
//1限終了時の状態を計算する 
       for( int i = 0; i < 17; i++ ) { //座席の横の分+2繰り返す
         for( int j = 0; j < 12; j++ ) { //座席の縦の分+2繰り返す
           o = 3; //すべての座席の状態を3にする(無)。
         } //for
       } //for
       
       for( int i = 1; i < 16; i++ ) { //座席の横の分繰り返す
         for( int j = 1; j < 11; j++ ) { //座席の縦の分繰り返す

           if( seat0[i][j] == 0 ) { //誰も座ってなかったら
             o = 0; //誰も座らない
           } //if
           
           if( seat0[i][j] == 2 ) { //感染していたら
             o = 2; //感染
           } //if
           
           if( seat0[i][j] == 1 ) { //座っていたら
           o = 1;
           
//隣接している席の状態に応じて感染するかどうかの計算をする
             if( o== 1 && seat0[i][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 o = 2;
               } //if
             } //if
             
             if( o== 1 && seat0[i-1][j-1] == 2 ) {
               if( random( 99 ) < 10 ) {
                 o = 2;
               } //if
            } //if

            if( o== 1 && seat0[i+1][j-1] == 2 ) {
              if( random( 99 ) < 20 ) {
                o = 2;
              } //if
            } //if
             
            if( o== 1 && seat0[i-1][j] == 2 ) {
              if( random( 99 ) < 30 ) {
                o = 2;
              } //if
            } //if
            
            if( o== 1 && seat0[i+1][j] == 2 ) {
              if( random( 99 ) < 30 ) {
                o = 2;
              } //if
            } //if
            
            if( o== 1 && seat0[i-1][j+1] == 2 ) {
              if( random( 99 ) < 40 ) {
                o = 2;
              } //if
            } //if
            
            if( o== 1 && seat0[i][j+1] == 2 ) {
              if( random( 99 ) < 60 ) {
                o = 2;
              } //if
           } //if
           
           if( o== 1 && seat0[i+1][j+1] == 2 ) {
             if( random( 99 ) < 40 ) {
               o = 2;
             } //if
           }
           
         }
           
         seat1[i][j] = o; //座席の状態を当てはめる
         
         noStroke();
       
       if( o == 0 ) { //人が座っていない
         fill( 190 ); //グレイ
       } else if ( o == 1 ) { //人が座っている
         fill( 0, 255, 127 ); //ミドリ
       } else if ( o == 2 ) { //感染している
         fill( 255, 0, 0 ); //アカ
       } else { //それ以外(o = 3)
         fill( 255 );//白(計算のための余白)
       }//if
        
        ellipse( 10 + i*12, 10 + j*12 +180 , 10, 10 );
       
       if( o == 2 ) {
         h++; //感染者+1
       } else if( o == 0 ) {
         h2++; 
       } else if( o == 1 ) {
         h3++;
       }//if
      
      }///for
    }//for
   
//1限終了時の状態を文字にする   
    fill( 0, 0, 0 );
    text( "1限(感染," + " " +"健康," + "    " +"空席," + "     " +"感染率)", 10, 340 );
    fill( 255, 0, 0 );
    text( h, width/4 - 20, 220+140 );
    fill( 0, 255, 127 );
    text( h3, width/2 - 40, 220+140);
    fill( 100 );
    text( h2, width/4*3 - 40, 220+140 );
    fill( 255, 0, 0 );
    float h4 = float( h )/float( h3 + h );
    text( nfc( h4*100, 0 ) + "%", width/4*3, 220+140 );
  
       
       
 //2限終了時の状態を計算する       
       for( int i = 0; i < 17; i++ ) { //座席の横の分+2繰り返す
         for( int j = 0; j < 12; j++ ) { //座席の縦の分+2繰り返す
           p = 3;
         }
       }
       
       for( int i = 1; i < 16; i++ ) {
         for( int j = 1; j < 11; j++ ) {
           
           if( seat1[i][j] == 0 ) {
             p = 0;
           }
           
           if( seat1[i][j] == 2 ) {
             p = 2;
           }
           
           if( seat1[i][j] == 1 ) {
             p = 1;
             
             if( p== 1 && seat1[i][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i-1][j-1] == 2 ) {
               if( random( 99 ) < 10 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i+1][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 p = 2;
               }
             }
             
             if( seat1[i-1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i+1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i-1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i][j+1] == 2 ) {
               if( random( 99 ) < 60 ) {
                 p = 2;
               }
             }
             
             if( p== 1 && seat1[i+1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 p = 2;
               }
             
             }
           
         }//if[i][j]==1
         
         seat2[i][j] = p;
         
         noStroke();
         
         if( p == 0 ) {
           fill( 190 );
         }else if( p == 1 ) {
           fill( 0, 255, 127 );
         }else if( p == 2 ) {
           fill( 255, 0, 0 );
         }else{
           fill( 255 );
         }//if
       
       
       ellipse( 10 + i*12, 10 + j*12+180*2, 10, 10 );
       
       if( p == 2 ){
         g++;
       }else if( p == 0 ) {
         g2++;
       }else if( p == 1 ) {
         g3++;
       } //if
     } //for
   }//for
   
//2限終了時の状態を文字にする    
   fill(0,0,0);
   text("2限(感染," + " " +"健康," + "    " +"空席," + "     " +"感染率)", 10, 240+140*2);
   fill(255,0,0);
   text(g, width/4 - 20, 260+140*2);
   fill(0,255,127);
   text(g3, width/2 - 40, 260+140*2);
   fill(100, 100, 100);
   text(g2, width/4*3 - 40, 260+140*2);
   fill(255, 0, 0);
   float g4 = float(g)/float(g3+g);
   text(nfc(g4*100, 0) + "%", width/4*3, 260+140*2); 
       
 //3限終了時の状態を計算する
   for( int i = 0; i < 17; i++ ) {
     for( int j = 0; j < 12; j++ ) {
       q = 3;
     }
   }
       
       
       
       for( int i = 1; i < 16; i++ ) {
         for( int j = 1; j < 11; j++ ) {

           
           if( seat2[i][j] == 0 ) {
             q = 0;
           }
           
           if( seat2[i][j] == 2 ) {
             q = 2;
           }
           
           if( seat2[i][j] == 1 ) {
             q = 1;
             
             if( q== 1 && seat2[i][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i-1][j-1] == 2 ) {
               if( random( 99 ) < 10 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i+1][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i-1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i+1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i-1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i][j+1] == 2 ) {
               if( random( 99 ) < 60 ) {
                 q = 2;
               }
             }
             
             if( q== 1 && seat2[i+1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 q = 2;
               }
             
             }
           
         }//if[i][j]==1
             
       seat3[i][j] = q;
       
             
       noStroke();
       
       if( q == 0 ) {
         fill( 190 );
       }else if( q == 1 ) {
         fill( 0, 255, 127 );
       }else if( q == 2 ) {
         fill( 255, 0, 0 );
       }else{
         fill( 255 );
       }//if
       
       
       ellipse( 10 + i*12, 10 + j*12+180*3, 10, 10 );
       
       if(q == 2){
         f++;
       }else if( q == 0 ) {
         f2++;
       }else if( q == 1 ) {
         f3++;
       }//if
     
       
     }///for
             }//for  
             
//3限終了時の状態を文字にする        
       fill(0,0,0);
       text("3限(感染," + " " +"健康," + "    " +"空席," + "     " +"感染率)", 10, 280 + 140 * 3);
       fill(255,0,0);
       text(f, width/4 - 20, 300 + 140 * 3);
       fill(0,255,127);
       text(f3, width/2 - 40, 300 + 140 * 3);
       fill(100, 100, 100);
       text(f2, width/4*3 - 40, 300 + 140 * 3);
       fill(255, 0, 0);
       float f4 = float(f)/float(f3+f);
       text(nfc(f4*100, 0) + "%", width/4*3, 300 + 140 * 3); 
       
       
 //4限終了時の状態を計算する          
       for( int i = 0; i < 17; i++ ) {
         for( int j = 0; j < 12; j++ ) {
           r = 3;
         }
       }
             
     for( int i = 1; i < 16; i++ ) {
       for( int j = 1; j < 11; j++ ) {
           
         float l =random( 99 );
         
         if(  seat3[i][j] == 0 ) {
           r = 0;
         }
         
         if( seat3[i][j] == 2 ) {
             r = 2;
           }
           
         if( seat3[i][j] == 1 ) {
           r = 1;
           
           if( r== 1 && seat3[i][j-1] == 2 ) {
             if( random( 99 ) < 20 ) {
                 r = 2;
               }
             }
             
           if( r== 1 && seat3[i-1][j-1] == 2 ) {
               if( random( 99 ) < 10 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i+1][j-1] == 2 ) {
               if( random( 99 ) < 20 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i-1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i+1][j] == 2 ) {
               if( random( 99 ) < 30 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i-1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i][j+1] == 2 ) {
               if( random( 99 ) < 60 ) {
                 r = 2;
               }
             }
             
             if( r== 1 && seat3[i+1][j+1] == 2 ) {
               if( random( 99 ) < 40 ) {
                 r = 2;
               }
             
             }
           
         }//if[i][j]==1
             
       seat4[i][j] = r;
       
             
       noStroke();
       
       if( r == 0 ) {
         fill( 190 );
       }else if( r == 1 ) {
         fill( 0, 255, 127 );
       }else if( r == 2 ) {
         fill( 255, 0, 0 );
       }else{
         fill( 255 );
       }//if
       
       
       ellipse( 10 + i*12, 10 + j*12+180*4, 10, 10 );
       
       if( r == 2 ) {
         e++;
       }else if( r == 0 ) {
         e2++;
       }else if( r == 1 ) {
         e3++;
       }//if
      
      
       
     }///for
             }//for  
             
//4限終了時の状態を文字にする         
       fill( 0, 0, 0 );
       text("4限(感染," + " " +"健康," + "    " +"空席," + "     " +"感染率)", 10, 320 + 140 * 4);
       fill( 255, 0, 0 );
       text( e, width/4 - 20, 340 + 140 * 4 );
       fill( 0,255,127);
       text( e3, width/2 - 40, 340 + 140 * 4 );
       fill( 100 );
       text( e2, width/4*3 - 40, 340 + 140 * 4 );
       fill( 255, 0, 0 );
       float e4 = float( e )/float( e3 + e );
       text(nfc( e4*100, 0 ) + "%", width/4*3, 340 + 140 * 4 ); 

}
       


