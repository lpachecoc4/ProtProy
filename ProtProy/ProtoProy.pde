
void setup()
{
    size(640,560);
    background(255,255,255);
}


void draw(){
    
    Hour[] monday=new Hour[15];
    for(int i=0; i<16; i++){
        monday[i]=new Hour(0,i);
        monday[i].display();    
    }
    Hour[] tuesday=new Hour[15];
    for(int i=0; i<16; i++){
        tuesday[i]=new Hour(1,i);
        tuesday[i].display();    
    }
    
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
    //Otros métodos
    
    
    
}
