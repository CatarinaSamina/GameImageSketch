final int myWidth = 800;
final int myHeight = 600;
float alturapequena = 0.8*myHeight;
float largurapequena = 0.8*myWidth;
float alturaimagem = alturapequena/4;
float larguraimagem = largurapequena/6;

color windowColor;

String[] filenames = {"aviao.jpg", "burro.jpg", 
  "cao.jpg", "dado.jpg", "estrela.jpg", 
  "faca.jpg", "gato.jpg", "hipopotamo.jpg", 
  "igreja.jpg", "janela.jpg", "lua.jpg", 
  "mar.jpg", "nuvens.jpg", "ovos.jpg", 
  "porco.jpg", "queijo.jpg", "rato.jpg", 
  "sol.jpg", "tomate.jpg", "urso.jpg", 
  "vaca.jpg", "xilofone.jpg", "zebra.jpg"};
 
PImage img;
PImage[] images = new PImage[filenames.length];

void loadAllImages(){
  for (int i = 0; i < filenames.length; i++){
    images[i] = loadImage(filenames[i]);
  
  }
}

void Alfabeto(){
  int result = key - 'A';
  if(key >'Y')      result -=3;
  else if(key >'W') result -=2;
  else if(key >'K') result --;
  Aumentar(result);
}

void checkExceptions(){
  if ('A'<= key && 'Z' >= key && key!='K'&& key!='W'&& key!='Y'){
      rectMode(CORNER);
      text(key, myWidth * largurapequena - myWidth/2, myHeight * alturapequena - myHeight/2);
      textSize(80);
      textAlign(CENTER, CENTER);
      Alfabeto();
  }   
}

void settings(){
  size(myWidth, myHeight);
}

void setup(){
  windowColor = color(0,0,0); 
  loadAllImages();
  
}

void drawAllImages()
{
  int x=0;
  int y=0;
  for(int i=0; i < images.length; i++)
  {
    image(images[i],x,y,150,150);
    x+=(width/6);
    if( x > 750){
      x=0;
      y+=(height/4);
     }
  }
}

void draw(){
  background(windowColor);
  drawAllImages();
  checkExceptions();
}

 void Aumentar(int result){
         noFill();
         stroke(color(0, 0, 0));
         strokeWeight(8);
         image(images[result], 0.5*myWidth - (larguraimagem*1.5)/2, 0.5*myHeight-(alturaimagem*1.5)/2, larguraimagem*1.5, alturaimagem*1.5);
         rect(0.5*myWidth-(larguraimagem*1.5)/2, 0.5*myHeight-(alturaimagem*1.5)/2, larguraimagem*1.5, alturaimagem*1.5);
     }
     
 void keyPressed(){
  
  switch(key){
  case 'r':
    windowColor = color(255, 0, 0);
    break;
  case 'g':
    windowColor = color(0, 255, 0);
    break;
  case 'b':
    windowColor = color(0, 0, 255);
    break;
  case 'y':
    windowColor = color(255, 255, 0);
    break;
  case 'm':
    windowColor = color(255, 0, 124);
    break;
  case'c':
    windowColor = color(0, 236, 255);
    break;
    default:
    windowColor = color(0, 0, 0);
 
}
}
