#include<graphics.h>
#include<conio.h>
void open();
void start();
//void close();               
void lightYellow2();
void lightRed2();
void lightGreen2();
void lightYellow1();
void lightRed1();
void lightGreen1();

int main()
{
    int i = 0, k = 0, s = 0;
    int page = 0;
    int j = 0;

	int gd=DETECT, gm;
    initgraph(&gd, &gm, (char *)"");
    open();
    delay(2000);
    start();
    delay(2000);

    while (1)
   {
   // if (j > 400)
   // break;
if (j > 450)
    {
        j = 0;
        s = 0;
        k = 0;
        i = 0;
    }
    setactivepage(page);
    cleardevice();

    setbkcolor(DARKGRAY);
    setcolor(WHITE);
    setlinestyle(0, 0, 3);


	line(0,30,150,30);
	line(150,30,150,0);
	line(0,140,180,140);
	arc(179,80,270,350,60);
	line(238,90,238,0);

	line(0,450,150,450);
	line(150,450,150,500);
	line(0,340,180,340);
	arc(179,400,10,90,60);
	line(238,390,238,500);

	line(500,30,510,30);
	line(575,30,650,30);
	line(500,30,500,0);
	line(412,90,412,0);
	line(460,139,650,139);
	arc(472,80,180,260,60);

	line(500,450,650,450);
	line(500,450,500,500);
	line(412,390,412,500);
	line(460,340,650,340);
	arc(472,400,90,170,60);

	setfillstyle(SOLID_FILL,GREEN);
	floodfill(600,470,WHITE);
	floodfill(590,2,WHITE);
	floodfill(50,20,WHITE);
	floodfill(50,470,WHITE);
	setfillstyle(SOLID_FILL,LIGHTGRAY);
	floodfill(472,400,WHITE);
	floodfill(472,80,WHITE);
	floodfill(179,400,WHITE);
	floodfill(179,80,WHITE);
	
    setlinestyle(0,0,3);
	line(477,240,650,240);
	line(0,240,173,240);
	setlinestyle(2,0,3);
	line(477,290,650,290);
	line(477,190,650,190);
	line(320,0,320,80);
	line(320,400,320,650);
	line(0,190,173,190);
	line(0,290,173,290);
//car 1

    setlinestyle(0,0,2);
	setcolor(WHITE);
	line(556-s,183,615-s,183);
	line(556-s,147,615-s,147);
	arc(560-s,165,90,270,18);
	arc(611-s,165,270,90,18);
	arc(608-s,165,160,200,29);
	line(580-s,155,570-s,152);
	line(580-s,174,570-s,178);
	arc(585-s,165,140,220,20);
	line(586-s,154,578-s,151);
	line(578-s,151,597-s,151);
	line(586-s,154,597-s,154);
	arc(598-s,152,270,90,1);
	line(586-s,176,578-s,179);
	line(586-s,176,597-s,176);
	line(578-s,179,597-s,179);
	arc(598-s,177,270,90,1);
	line(603-s,158,603-s,172);
	line(603-s,158,610-s,153);
	line(603-s,172,610-s,176);
	arc(602-s,164,310,54,15);
	setfillstyle(SOLID_FILL,RED);
	floodfill(560-s,170,WHITE);
	setcolor(YELLOW);
	setfillstyle(SOLID_FILL,YELLOW);
	fillellipse(550-s,155,1,2);
	fillellipse(550-s,173,1,2);
	fillellipse(622-s,154,1,2);
	fillellipse(622-s,176,1,2);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,WHITE);
	fillellipse(577-s,185,1,2);
	fillellipse(577-s,145,1,2);
	setfillstyle(SOLID_FILL,BLUE);
	floodfill(575-s,160,WHITE);
	floodfill(590-s,152,WHITE);
	floodfill(590-s,177,WHITE);
	floodfill(605-s,169,WHITE);
	
//car 2
    setlinestyle(0,0,2);
	setcolor(WHITE);
	line(556-k,233,615-k,233);
	line(556-k,197,615-k,197);
	arc(560-k,215,90,270,18);
	arc(611-k,215,270,90,18);
	arc(608-k,215,160,200,29);
	line(580-k,205,570-k,202);
	line(580-k,224,570-k,228);
	arc(585-k,215,140,220,20);
	line(586-k,204,578-k,201);
	line(578-k,201,597-k,201);
	line(586-k,204,597-k,204);
	arc(598-k,202,270,90,1);
	line(586-k,226,578-k,229);
	line(586-k,226,597-k,226);
	line(578-k,229,597-k,229);
	arc(598-k,228,270,90,1);
	line(603-k,208,603-k,222);
	line(603-k,208,610-k,204);
	line(603-k,222,610-k,226);
	arc(602-k,215,310,54,15);
	setfillstyle(SOLID_FILL,YELLOW);
	floodfill(560-k,205,WHITE);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,WHITE);
	fillellipse(550-k,205,1,2);
	fillellipse(550-k,224,1,2);
	setcolor(RED);
	setfillstyle(SOLID_FILL,RED);
	fillellipse(622-k,204,1,2);
	fillellipse(622-k,225,1,2);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,WHITE);
	fillellipse(577-k,235,1,2);
	fillellipse(577-k,195,1,2);
	setfillstyle(SOLID_FILL,BLACK);
	floodfill(575-k,210,WHITE);
	floodfill(590-k,202,WHITE);
	floodfill(590-k,227,WHITE);
	floodfill(605-k,219,WHITE);
	
//car3 design
	setlinestyle(0,0,2);
	rectangle(10+s,250,80+s,280);
	setfillstyle(SOLID_FILL,RED);
	floodfill(20+s,255,WHITE);
	line(5+s,250,5+s,257);
	arc(10+s,252,85,180,5);
	rectangle(3+s,257,10+s,273);
	line(5+s,273,5+s,280);
	arc(10+s,278,180,275,5);
	line(85+s,253,85+s,277);
	arc(80+s,254,360,95,5);
	arc(80+s,276,265,360,5);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,YELLOW);
	fillellipse(82+s,258,1,2);
	fillellipse(82+s,272,1,2);
	setcolor(WHITE);
	line(10+s,252,15+s,255);
	line(10+s,278,15+s,275);
	line(15+s,255,15+s,275);
	line(60+s,254,60+s,275);
	arc(15+s,264,346,15,40);
	line(60+s,254,55+s,254);
	line(60+s,275,55+s,275);
	line(58+s,254,58+s,250);
	line(58+s,275,58+s,280);
	line(60+s,256,75+s,260);
	line(60+s,273,75+s,268);
	line(75+s,260,75+s,268);
	line(20+s,256,20+s,273);
	line(20+s,273,55+s,273);
	line(20+s,256,55+s,256);
	line(58+s,280,80+s,271);
	line(58+s,250,80+s,257);
	line(30+s,250,25+s,247);
	line(25+s,247,13+s,247);
	arc(13+s,249,90,190,2);
	line(30+s,280,25+s,283);
	line(25+s,283,13+s,283);
	arc(13+s,281,170,270,2);
	line(60+s,250,65+s,247);
	line(65+s,247,77+s,247);
	arc(76+s,249,360,90,2);
	line(60+s,280,65+s,283);
	line(65+s,283,77+s,283);
	arc(76+s,281,270,10,2);
	line(52+s,250,48+s,254);
	line(48+s,254,35+s,254);
	arc(35+s,251,180,270,3);
	line(52+s,280,48+s,276);
	line(48+s,276,35+s,276);
	arc(35+s,279,90,180,3);
	setfillstyle(SOLID_FILL,WHITE);
	floodfill(45+s,277,WHITE);
	floodfill(45+s,252,WHITE);
	floodfill(58+s,256,WHITE);
	line(40+s,256,40+s,273);
	line(20+s,259,40+s,259);
	line(20+s,261,40+s,261);
	line(20+s,264,40+s,264);
	line(20+s,266,40+s,266);
	line(20+s,269,40+s,269);
	line(20+s,271,40+s,271);
	setfillstyle(SOLID_FILL,BLACK);
	floodfill(84+s,256,WHITE);
	floodfill(17+s,256,WHITE);
	floodfill(60+s,252,WHITE);
	floodfill(70+s,252,WHITE);
	floodfill(70+s,278,WHITE);
	floodfill(6+s,256,WHITE);
	floodfill(6+s,258,WHITE);
	floodfill(6+s,278,WHITE);
	floodfill(15+s,248,WHITE);
	floodfill(15+s,282,WHITE);
	floodfill(65+s,248,WHITE);
	floodfill(65+s,282,WHITE);
	
//car 4

	setlinestyle(0,0,2);
	rectangle(5+s,305,50+s,325);
	setfillstyle(SOLID_FILL,BLACK);
	floodfill(10+s,310,WHITE);
	line(10+s,300,70+s,300);
	line(10+s,330,70+s,330);
	line(50+s,305,55+s,300);
	line(50+s,325,55+s,330);
	line(15+s,300,15+s,305);
	line(30+s,300,30+s,305);
	line(45+s,300,45+s,305);
	line(15+s,325,15+s,330);
	line(30+s,325,30+s,330);
	line(45+s,325,45+s,330);
	arc(45+s,315,330,30,30);
	arc(33+s,315,330,35,27);
	arc(10+s,304,90,180,4);
	arc(10+s,326,180,270,4);
	setfillstyle(SOLID_FILL,YELLOW);
	fillellipse(72+s,305,1,3);
	fillellipse(72+s,325,1,3);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,WHITE);
	fillellipse(56+s,298,1,2);
	fillellipse(56+s,332,1,2);
	setfillstyle(SOLID_FILL,BLACK);
	floodfill(65+s,310,WHITE);
	setfillstyle(SOLID_FILL,LIGHTGRAY);
	floodfill(10+s,302,WHITE);
	floodfill(10+s,328,WHITE);
	floodfill(18+s,302,WHITE);
	floodfill(18+s,328,WHITE);
	floodfill(32+s,328,WHITE);
	floodfill(32+s,302,WHITE);
	floodfill(47+s,302,WHITE);
	floodfill(47+s,328,WHITE);
	floodfill(52+s,310,WHITE);
//car 5	
    setlinestyle(0,0,2);
	line(350,4+i,350,60+i);
	line(380,4+i,380,60+i);
	line(350,4+i,380,4+i);
	line(350,35+i,380,35+i);
	line(354,35+i,354,40+i);
	line(376,35+i,376,40+i);
	line(354,40+i,376,40+i);
	line(354,40+i,350,44+i);
	line(376,40+i,380,44+i);
	arc(365,35+i,240,300,30);
	arc(365,19+i,240,300,28);
	rectangle(350,10+i,355,25+i);
	rectangle(380,10+i,375,25+i);
	setfillstyle(SOLID_FILL,YELLOW);
	fillellipse(356,60+i,3,1);
	fillellipse(374,60+i,3,1);
	setcolor(WHITE);
	setfillstyle(SOLID_FILL,WHITE);
	fillellipse(348,44+i,2,1);
	fillellipse(382,44+i,2,1);
	setfillstyle(SOLID_FILL,LIGHTRED);
	floodfill(360,6+i,WHITE);
	floodfill(365,57+i,WHITE);
	setfillstyle(2,WHITE);
	floodfill(352,15+i,WHITE);
	floodfill(378,15+i,WHITE);
	floodfill(367,39+i,WHITE);
	setfillstyle(SOLID_FILL,LIGHTCYAN);
	floodfill(351,42+i,WHITE);
	floodfill(379,42+i,WHITE);
	floodfill(376,42+i,WHITE);
	
	
//truck design
	setlinestyle(0,0,2);
	rectangle(265,450-i,300,500-i);
	rectangle(270,450-i,295,495-i);
	rectangle(273,450-i,292,492-i);
	line(273,450-i,273,447-i);
	line(292,450-i,292,447-i);
	line(265,447-i,300,447-i);
	line(265,447-i,265,427-i);
	line(300,447-i,300,427-i);
	arc(270,426-i,90,180,5);
	arc(295,426-i,360,90,5);
	line(270,420-i,295,420-i);
	line(265,443-i,270,443-i);
	line(270,443-i,270,435-i);
	line(300,443-i,295,443-i);
	line(295,443-i,295,435-i);
	line(293,433-i,272,433-i);
	line(293,433-i,300,428-i);
	line(272,433-i,265,428-i);
	arc(283,460-i,60,120,35);
	line(270,435-i,265,430-i);
	line(295,435-i,300,430-i);
	setfillstyle(SOLID_FILL,YELLOW);
	fillellipse(270,422-i,2,1);
	fillellipse(295,422-i,2,1);
	setfillstyle(SOLID_FILL,BROWN);
	floodfill(266,460-i,WHITE);
	floodfill(274,460-i,WHITE);
	floodfill(299,460-i,WHITE);
	floodfill(274,444-i,WHITE);
	floodfill(274,424-i,WHITE);
	setfillstyle(SOLID_FILL,CYAN);
	floodfill(266,435-i,WHITE);
	floodfill(299,435-i,WHITE);
	floodfill(274,430-i,WHITE);

        // TRAFFIC LIGHT LOGIC 
       if (j < 250)
    {
    	lightGreen1();
       // lightYellow1();
        lightRed2();
        k += 3;
        s += 3;
        i = 0;
    }
    else if (j<250&&j>400)
    {
        lightRed1();
        lightGreen2();
        i += 3;
    }
    else
    {
   		lightRed1();
       // lightGreen1();
       lightGreen2();
       i += 3;

       // lightRed2();
       // k += 3;
      //  s += 3;
    }

    delay(30);
    j++;
   	setvisualpage(page);       
   	page = 1 - page;
}

//close();        
//delay(2000);    
closegraph();
return 0;
}
/*void close()
{
    setbkcolor(YELLOW); 
    cleardevice();        
    setcolor(GREEN);
    settextstyle(1, 0, 4);
    outtextxy(150, 200, "THANK YOU");
    delay(2000);
}*/
void open()
{
	setfillstyle(SOLID_FILL,YELLOW);
	floodfill(200,200,WHITE);
	setcolor(GREEN);
	setbkcolor(YELLOW);
	settextstyle(1,0,4);
	outtextxy(10,200,"Welcome To C Graphics");
}
void start()
{

	setfillstyle(SOLID_FILL,CYAN);
	floodfill(200,200,WHITE);
	setbkcolor(CYAN);
	setcolor(RED);
	settextstyle(1,0,4);
	outtextxy(80,180,"TRAFFIC LIGHT");
    outtextxy(40,240,"SIMULATION PROJECT");
    setcolor(YELLOW);
    circle(280, 360, 80);
    setfillstyle(SOLID_FILL, YELLOW);
    floodfill(280, 350, YELLOW);    
    setcolor(BLACK);
    setfillstyle(SOLID_FILL, BLACK);
    fillellipse(250, 340, 10, 15); 
    fillellipse(310, 340, 10, 15);  
    setcolor(RED);
    arc(280, 360, 205, 335, 50); 
}

void lightRed2()
{
 	   rectangle(160,470,190,380);
       rectangle(190,465,195,350);
       rectangle(195,470,225,380);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(170,400,WHITE);
       floodfill(200,400,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(192,370,WHITE);
       circle(210,450,10);
       circle(210,425,10);
       circle(210,400,10);
       line(160,450,175,450);
       line(160,440,175,440);
       line(175,435,175,440);
       line(175,450,175,455);
       line(175,435,185,445);
       line(175,455,185,445);
       line(160,400,175,400);
       line(160,410,175,410);
       line(175,415,175,410);
       line(175,395,175,400);
       line(175,415,185,405);
       line(175,395,185,405);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(170,442,WHITE);
       setfillstyle(SOLID_FILL,RED);
       floodfill(210,450,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(210,425,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(210,400,WHITE);
       floodfill(170,405,WHITE);
	   
	    //forth light
	   setlinestyle(0,0,3);
       rectangle(510,10,540,100);
       rectangle(540,15,545,130);
       rectangle(545,10,575,100);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(520,12,WHITE);
       floodfill(547,60,WHITE);
       floodfill(547,12,WHITE);
       floodfill(520,60,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(543,70,WHITE);
       circle(525,30,10);
       circle(525,55,10);
       circle(525,80,10);
       line(575,30,560,30);
       line(575,40,560,40);
       line(560,25,560,30);
       line(560,40,560,45);
       line(560,25,550,35);
       line(560,45,550,35);
       line(575,80,560,80);
       line(575,70,560,70);
       line(560,65,560,70);
       line(560,80,560,85);
       line(550,75,560,65);
       line(560,85,550,75);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(520,2,WHITE);
       floodfill(570,35,WHITE);
       setfillstyle(SOLID_FILL,RED);
       floodfill(525,28,WHITE);
       floodfill(570,75,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(525,55,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(525,80,WHITE);
       floodfill(570,75,WHITE);
       
       
       setlinestyle(0,0,2);
       rectangle(460,25,500,100);
       rectangle(477,100,484,130);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(470,27,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(480,115,WHITE);
       circle(480,35,5);
       rectangle(475,40,485,50);
       rectangle(477,50,479,59);
       rectangle(481,50,483,59);
       setfillstyle(SOLID_FILL,RED);
       floodfill(480,35,WHITE);
       floodfill(476,42,WHITE);
       floodfill(478,53,WHITE);
       floodfill(482,53,WHITE);
       circle(480,68,5);
       line(477,72,470,79);
       line(470,79,472,81);
       line(472,81,477,79);
       line(483,72,490,79);
       line(490,79,488,81);
       line(488,81,483,79);
       line(483,79,490,90);
       line(477,79,470,90);
       line(470,90,472,92);
       line(490,90,488,92);
       line(488,92,480,83);
       line(472,92,480,83);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(480,68,WHITE);
       floodfill(480,75,WHITE);
		setcolor(RED);
  		settextstyle(1,0,1);
		outtextxy(80,380,"STOP");
		outtextxy(425,5,"STOP");
}
void lightGreen2()
{
		
	
	   setlinestyle(0,0,3);
 	   rectangle(160,470,190,380);
       rectangle(190,465,195,350);
       rectangle(195,470,225,380);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(170,400,WHITE);
       floodfill(200,400,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(192,370,WHITE);
       circle(210,450,10);
       circle(210,425,10);
       circle(210,400,10);
       line(160,450,175,450);
       line(160,440,175,440);
       line(175,435,175,440);
       line(175,450,175,455);
       line(175,435,185,445);
       line(175,455,185,445);
       line(160,400,175,400);
       line(160,410,175,410);
       line(175,415,175,410);
       line(175,395,175,400);
       line(175,415,185,405);
       line(175,395,185,405);
       setfillstyle(SOLID_FILL,RED);
       floodfill(170,405,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(210,450,WHITE);
       floodfill(170,442,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(210,425,WHITE);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(210,400,WHITE);
	   
	    //forth light
	   setlinestyle(0,0,3);
       rectangle(510,10,540,100);
       rectangle(540,15,545,130);
       rectangle(545,10,575,100);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(520,12,WHITE);
       floodfill(547,60,WHITE);
       floodfill(547,12,WHITE);
       floodfill(520,60,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(543,70,WHITE);
       circle(525,30,10);
       circle(525,55,10);
       circle(525,80,10);
       line(575,30,560,30);
       line(575,40,560,40);
       line(560,25,560,30);
       line(560,40,560,45);
       line(560,25,550,35);
       line(560,45,550,35);
       line(575,80,560,80);
       line(575,70,560,70);
       line(560,65,560,70);
       line(560,80,560,85);
       line(550,75,560,65);
       line(560,85,550,75);
       setfillstyle(SOLID_FILL,RED);
       floodfill(570,75,WHITE);

       setfillstyle(SOLID_FILL,WHITE);
       floodfill(525,28,WHITE);
       floodfill(570,35,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(525,55,WHITE);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(525,80,WHITE);
       floodfill(520,2,WHITE);
        
        //person light
       setlinestyle(0,0,2);
       rectangle(460,25,500,100);
       rectangle(477,100,484,130);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(470,27,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(480,115,WHITE);
       circle(480,35,5);
       rectangle(475,40,485,50);
       rectangle(477,50,479,59);
       rectangle(481,50,483,59);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(480,35,WHITE);
       floodfill(476,42,WHITE);
       floodfill(478,53,WHITE);
       floodfill(482,53,WHITE);
       circle(480,68,5);
       line(477,72,470,79);
       line(470,79,472,81);
       line(472,81,477,79);
       line(483,72,490,79);
       line(490,79,488,81);
       line(488,81,483,79);
       line(483,79,490,90);
       line(477,79,470,90);
       line(470,90,472,92);
       line(490,90,488,92);
       line(488,92,480,83);
       line(472,92,480,83);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(480,68,WHITE);
       floodfill(480,75,WHITE);
	    setcolor(GREEN);
  		settextstyle(1,0,1);
		outtextxy(80,380,"GO");
		outtextxy(425,5,"GO");


}
void lightYellow1()
{
//first light
		setcolor(YELLOW);
  		settextstyle(1,1,1);
		outtextxy(180,90,"WAIT");
		outtextxy(450,440,"WAIT");
       setlinestyle(0,0,3);
       setcolor(WHITE);
       rectangle(20,60,110,90);
       rectangle(25,90,150,95);
       rectangle(20,95,110,125);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(26,115,WHITE);
       floodfill(26,65,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(30,93,WHITE);
       circle(40,110,10);
       circle(65,110,10);
       circle(90,110,10);
       line(40,60,40,75);
       line(50,60,50,75);
       line(35,75,40,75);
       line(50,75,55,75);
       line(35,75,45,85);
       line(55,75,45,85);
       line(90,60,90,75);
       line(80,60,80,75);
       line(75,75,80,75);
       line(90,75,95,75);
       line(75,75,85,85);
       line(95,75,85,85);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(40,110,WHITE);
       floodfill(45,70,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(65,110,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(90,110,WHITE);
       floodfill(85,70,WHITE);
    
       
       rectangle(510,400,600,430);
       rectangle(470,400,590,395);
       rectangle(510,395,600,365);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(530,410,WHITE);
       floodfill(530,380,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(480,397,WHITE);
       circle(530,380,10);
       circle(555,380,10);
       circle(580,380,10);
       line(530,430,530,415);
       line(540,430,540,415);
       line(525,415,530,415);
       line(540,415,545,415);
       line(525,415,535,405);
       line(545,415,535,405);
       line(580,430,580,415);
       line(570,430,570,415);
       line(565,415,570,415);
       line(580,415,585,415);
       line(565,415,575,405);
       line(585,415,575,405);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(580,380,WHITE);
       floodfill(575,416,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(555,380,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(530,380,WHITE);
       floodfill(535,416,WHITE);	
}
void lightRed1()
{
	//first light
    setcolor(RED);
	settextstyle(1,1,1);
	outtextxy(180,90,"STOP");
	outtextxy(450,440,"STOP");

       setlinestyle(0,0,3);
       setcolor(WHITE);
       rectangle(20,60,110,90);
       rectangle(25,90,150,95);
       rectangle(20,95,110,125);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(26,115,WHITE);
       floodfill(26,65,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(30,93,WHITE);
       circle(40,110,10);
       circle(65,110,10);
       circle(90,110,10);
       line(40,60,40,75);
       line(50,60,50,75);
       line(35,75,40,75);
       line(50,75,55,75);
       line(35,75,45,85);
       line(55,75,45,85);
       line(90,60,90,75);
       line(80,60,80,75);
       line(75,75,80,75);
       line(90,75,95,75);
       line(75,75,85,85);
       line(95,75,85,85);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(45,70,WHITE);
       setfillstyle(SOLID_FILL,RED);
       floodfill(40,110,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(65,110,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(90,110,WHITE);
       floodfill(85,70,WHITE);
       
       
       rectangle(510,400,600,430);
       rectangle(470,400,590,395);
       rectangle(510,395,600,365);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(530,410,WHITE);
       floodfill(530,380,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(480,397,WHITE);
       circle(530,380,10);
       circle(555,380,10);
       circle(580,380,10);
       line(530,430,530,415);
       line(540,430,540,415);
       line(525,415,530,415);
       line(540,415,545,415);
       line(525,415,535,405);
       line(545,415,535,405);
       line(580,430,580,415);
       line(570,430,570,415);
       line(565,415,570,415);
       line(580,415,585,415);
       line(565,415,575,405);
       line(585,415,575,405);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(575,416,WHITE);
       setfillstyle(SOLID_FILL,RED);
       floodfill(580,380,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(555,380,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(530,380,WHITE);
       floodfill(535,416,WHITE);
}

void lightGreen1()
{
	//first light
    setcolor(GREEN);
	settextstyle(1,1,1);
	outtextxy(180,90,"GO");
	outtextxy(450,440,"GO");
       setlinestyle(0,0,3);
       setcolor(WHITE);
       rectangle(20,60,110,90);
       rectangle(25,90,150,95);
       rectangle(20,95,110,125);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(26,115,WHITE);
       floodfill(26,65,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(30,93,WHITE);
       circle(40,110,10);
       circle(65,110,10);
       circle(90,110,10);
       line(40,60,40,75);
       line(50,60,50,75);
       line(35,75,40,75);
       line(50,75,55,75);
       line(35,75,45,85);
       line(55,75,45,85);
       line(90,60,90,75);
       line(80,60,80,75);
       line(75,75,80,75);
       line(90,75,95,75);
       line(75,75,85,85);
       line(95,75,85,85);
       setfillstyle(SOLID_FILL,RED);
       floodfill(85,70,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(40,110,WHITE);
       floodfill(45,70,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(65,110,WHITE);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(90,110,WHITE);
   
       
       rectangle(510,400,600,430);
       rectangle(470,400,590,395);
       rectangle(510,395,600,365);
       setfillstyle(SOLID_FILL,BLACK);
       floodfill(530,410,WHITE);
       floodfill(530,380,WHITE);
       setfillstyle(SOLID_FILL,YELLOW);
       floodfill(480,397,WHITE);
       circle(530,380,10);
       circle(555,380,10);
       circle(580,380,10);
       line(530,430,530,415);
       line(540,430,540,415);
       line(525,415,530,415);
       line(540,415,545,415);
       line(525,415,535,405);
       line(545,415,535,405);
       line(580,430,580,415);
       line(570,430,570,415);
       line(565,415,570,415);
       line(580,415,585,415);
       line(565,415,575,405);
       line(585,415,575,405);
       setfillstyle(SOLID_FILL,RED);
       floodfill(535,416,WHITE); 
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(580,380,WHITE);
       floodfill(575,416,WHITE);
       setfillstyle(SOLID_FILL,WHITE);
       floodfill(555,380,WHITE);
       setfillstyle(SOLID_FILL,GREEN);
       floodfill(530,380,WHITE);      
}


