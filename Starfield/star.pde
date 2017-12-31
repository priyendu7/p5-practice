class Star {
float x,px;
float y,py;
float z;
//float factor;
Star(){
 x= random(-width/2,width/2);                                //setting up random position
 y= random(-height/2,height/2);
 px=x;
 py=y;
}
void Update(){

if(x<width/2&&x>(-width/2)&&y<height/2&&y>(-height/2)){      // if its in my canvas
px=x;
py=y;
x=x+x/50;                                                    //giving velocity
y=y+y/50;
}
else{
x= random(-width/2,width/2);                                 //if its out of canvas resetting it
y= random(-height/2,height/2);
px=x;
py=y;
}

}
 void Show(){
 stroke(255);
 line(x,y,px,py);
 }
 
}