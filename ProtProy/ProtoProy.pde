
void setup()
{
    size(640,560);
    background(255,255,255);
    textAlign(CENTER);
    textSize(15);
}


void draw(){
    
    /*Hour[] monday=new Hour[15];
    for(int i=0; i<16; i++){
        monday[i]=new Hour(0,i);
        monday[i].display();    
    }*/
    Hour[] tuesday=new Hour[15];
    for(int i=0; i<16; i++){
        tuesday[i]=new Hour(1,i);
        tuesday[i].display();    
    }
    
    Hour[] digital=new Hour[2];
    digital[0]=new Hour(3,1);
    digital[1]=new Hour(3,2);
    fill(255);
    digital[0].display();
    digital[1].display();
    fill(0);
    print(digital[0].getTime);
    fill(0)
    textSize(15);
    text("Digital",digital[0].getTime().x+50,digital[0].getTime().y+15);
    textSize(10);
    text("Henrry Moreno",digital[0].getTime().x+50,digital[0].getTime().y+25);
    text("2016498 - 1",digital[0].getTime().x+50,digital[0].getTime().y+35);
    
    Hour[] estr=new Hour[2];
    estr[0]=new Hour(3,3);
    estr[1]=new Hour(3,4);
    
    Subject estructuras=new Subject("Estructuras","Luis Niño",2016699,4,estr);
    estructuras.display();
    
    
}


class Hour{
    PVector time;
    //x va desde 0 a 6, son los días de la semana
    //y va desde 0 a 15, horas desde las 6am hasta las 9pm
    Hour(int x, int y){
        float a=100*x+50;
        float b=40*y+20;
        time=new PVector(a,b);
    }
    
    //Setters
    void setX(int x){
        time.set(x*100+50,time.y);
    }
    void setY(int y){
        time.set(time.x,y*40+20);
    }
    
    //Getters
    int getX(){
        return (time.x-50)/100;    
    }
    int getY(){
        return (time.y-20)/40;
    }
    PVector getTime(){
        return time;
    }
    //Otros métodos
    void display(){
        rect(time.x,time.y,100,40,7);
    }
    
    
}



class Subject{
    String title, master;
    int group, code;
    Hour[] hours;
    
    Subject(String tempTitle, String tempMaster, int tempCode, int tempGroup, Hour[] tempHours){
        setTitle(tempTitle);
        setMaster(tempMaster);
        setCode(tempCode);
        setGroup(tempGroup);
        setHours(tempHours);
    }
    //Setters
    void setTitle(String tempTitle){
        title=tempTitle;
    }
    
    void setMaster(String tempMaster){
        master=tempMaster;
    }
    
    void setGroup(int tempGroup){
        group=tempGroup;
    }
    
    void setCode(int tempCode){
        code=tempCode;
    }
    
    void setHours(Hour[] tempHours){
        int size=tempHours.length;
        hours=new Hour[size];
        for(int i=0; i<size; i++){
            hours[i]=tempHours[i];
        }
    }
    //Getters
    String getTitle(){
        return title;
    }
    
    String getMaster(){
        return master;
    }
    
    int getGroup(){
        return group;
    }
    
    int getCode(){
        return code;
    }
    
    Hour[] getHours(){
        return hours;
    }
    //Other methods
    void display(){
        for(int i=0; i<hours.length; i++){
            fill(255);
            hours[i].display();
            fill(0);
            textSize(15);
            text(title,hours[i].getTime().x+50,hours[i].getTime().y+15);
            textSize(10);
            text(master,hours[i].getTime().x+50,hours[i].getTime().y+25);
            text(code+" - "+group,hours[i].getTime().x+50,hours[i].getTime().y+35);
        }
        
    }
    
    
    
}
