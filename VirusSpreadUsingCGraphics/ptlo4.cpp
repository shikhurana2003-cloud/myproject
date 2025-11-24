
#include <graphics.h>
#include <conio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <stdio.h>
#include <windows.h> 

#define MAX_PEOPLE 50
#define INFECT_RADIUS 12
#define INFECTION_CHANCE 35    
#define RECOVERY_TIME 300
#define FAST_RECOVERY 150
#define GRAPH_WIDTH 200
#define GRAPH_HEIGHT 100
#define FRAME_DELAY 40         
#define SOCIAL_DISTANCE 18
#define DEATH_CHANCE 8         

#define HEALTHY 0
#define INFECTED 1
#define RECOVERED 2
#define DEAD 3
void open();
void start();
typedef struct {
    int x, y;
    int dx, dy;
    int status;
    int timer;
} Person;


Person people[MAX_PEOPLE];
int frame = 0;
int infectedHistory[2000];
int maxFrames = 500;


int W, H;
int hospitalX1, hospitalY1, hospitalX2, hospitalY2;
int statsX, statsY, statsW, statsH;
int graphX, graphY, graphW, graphH;


static int clampi(int v, int a, int b) { if (v < a) return a; if (v > b) return b; return v; }

int isInHospital(int x, int y) {
    return (x >= hospitalX1 && x <= hospitalX2 && y >= hospitalY1 && y <= hospitalY2);
}

	void initLayoutAndPeople() {
    W = getmaxx();
    H = getmaxy();

    statsX = W - 210;
    statsY = 20;
    statsW = 200;
    statsH = 200;

   
    graphW = GRAPH_WIDTH;
    graphH = GRAPH_HEIGHT;
    graphX = W - graphW - 20;
    graphY = H - graphH - 30;

    
    hospitalX1 = W - 220;
    hospitalY1 = H - 150;
    hospitalX2 = W - 30;
    hospitalY2 = H - 30;

    int i;
    for (i = 0; i < MAX_PEOPLE; i++) {
        int px, py;
        do {
            px = rand() % (W - 240) + 10;  
            py = rand() % (H - 30) + 10;
        } while (isInHospital(px, py));
        people[i].x = px;
        people[i].y = py;

        do {
            people[i].dx = (rand() % 3) - 1;  
            people[i].dy = (rand() % 3) - 1;
        } while (people[i].dx == 0 && people[i].dy == 0);

        people[i].status = HEALTHY;
        people[i].timer = 0;
    }

    people[rand() % MAX_PEOPLE].status = INFECTED;
}

void drawUIPanels() {
    setfillstyle(SOLID_FILL, BLACK);
    bar(statsX - 12, statsY - 12, statsX + statsW + 2, statsY + statsH + 2);
    setcolor(WHITE);
    rectangle(statsX - 12, statsY - 12, statsX + statsW + 2, statsY + statsH + 2);

    setfillstyle(SOLID_FILL, BLACK);
    bar(graphX - 3, graphY - 28, graphX + graphW + 8, graphY + graphH + 8);
    setcolor(WHITE);
    rectangle(graphX - 8, graphY - 28, graphX + graphW + 2, graphY + graphH + 8);
}

void drawHospital() {
    setcolor(BLUE);
    setfillstyle(SOLID_FILL, COLOR(173,216,230));
    bar(hospitalX1, hospitalY1, hospitalX2, hospitalY2);
    setcolor(BLUE);
    rectangle(hospitalX1, hospitalY1, hospitalX2, hospitalY2);
    setcolor(YELLOW);
    settextstyle(DEFAULT_FONT, HORIZ_DIR, 1);
    outtextxy(hospitalX1 + 8, hospitalY1 + 15, "HOSPITAL");
}

void drawPeople() {
    int i;
    for (i = 0; i < MAX_PEOPLE; i++) {
        switch (people[i].status) {
            case HEALTHY: setfillstyle(SOLID_FILL, GREEN); setcolor(GREEN); break;
            case INFECTED: setfillstyle(SOLID_FILL, RED); setcolor(RED); break;
            case RECOVERED: setfillstyle(SOLID_FILL, BLUE); setcolor(BLUE); break;
            case DEAD: setfillstyle(SOLID_FILL, DARKGRAY); setcolor(DARKGRAY); break;
            default: setfillstyle(SOLID_FILL, WHITE); setcolor(WHITE); break;
        }
        fillellipse(people[i].x, people[i].y, 4, 4);
    }
}

void updatePeople() {
    int Wusable = W - 225; 
    int i, j;
    for (i = 0; i < MAX_PEOPLE; i++) {
        if (people[i].status == DEAD) continue;

        for (j = 0; j < MAX_PEOPLE; j++) {
            if (i == j) continue;
            if (people[j].status == DEAD) continue;
            int dx = people[i].x - people[j].x;
            int dy = people[i].y - people[j].y;
            float dist = sqrtf((float)dx*dx + (float)dy*dy);
            if (dist > 0.0f && dist < SOCIAL_DISTANCE) {
                float push = (SOCIAL_DISTANCE - dist) / SOCIAL_DISTANCE;
                people[i].x += (int)((dx / dist) * push * 1.0f);
                people[i].y += (int)((dy / dist) * push * 1.0f);
            }
        }

        people[i].x += people[i].dx;
        people[i].y += people[i].dy;

        if (people[i].x <= 5) { people[i].x = 6; people[i].dx *= -1; }
        if (people[i].x >= Wusable) { people[i].x = Wusable - 1; people[i].dx *= -1; }
        if (people[i].y <= 5) { people[i].y = 6; people[i].dy *= -1; }
        if (people[i].y >= H - 5) { people[i].y = H - 6; people[i].dy *= -1; }

        if (people[i].status == INFECTED) {
            for (j = 0; j < MAX_PEOPLE; j++) {
                if (people[j].status != HEALTHY) continue;
                int dx = people[i].x - people[j].x;
                int dy = people[i].y - people[j].y;
                float d = sqrtf((float)dx*dx + (float)dy*dy);
                if (d <= INFECT_RADIUS) {
                    int chance = rand() % 100;
                    if (chance < INFECTION_CHANCE) {
                        people[j].status = INFECTED;
                        people[j].timer = 0;
                    }
                }
            }
            people[i].timer++;
            int recoveryLimit = isInHospital(people[i].x, people[i].y) ? FAST_RECOVERY : RECOVERY_TIME;
            if (people[i].timer > recoveryLimit) {
                int c = rand() % 100;
                if (c < DEATH_CHANCE) people[i].status = DEAD;
                else people[i].status = RECOVERED;
            }
        }
    }
}

void countStats(int *healthy, int *infected, int *recovered, int *dead) {
    *healthy = *infected = *recovered = *dead = 0;
    int i;
    for (i = 0; i < MAX_PEOPLE; i++) {
        if (people[i].status == HEALTHY) (*healthy)++;
        else if (people[i].status == INFECTED) (*infected)++;
        else if (people[i].status == RECOVERED) (*recovered)++;
        else if (people[i].status == DEAD) (*dead)++;
    }
}

void drawStatsPanel(int healthy, int infected, int recovered, int dead) {
    char buf[80];
    setcolor(WHITE);
    settextstyle(DEFAULT_FONT, HORIZ_DIR, 1);
    outtextxy(statsX, statsY, "Live Statistics");
    sprintf(buf, "Healthy   : %d", healthy); outtextxy(statsX, statsY + 20, buf);
    sprintf(buf, "Infected  : %d", infected); outtextxy(statsX, statsY + 40, buf);
    sprintf(buf, "Recovered : %d", recovered); outtextxy(statsX, statsY + 60, buf);
    sprintf(buf, "Dead      : %d", dead); outtextxy(statsX, statsY + 80, buf);
    outtextxy(statsX, statsY + 110, "Controls: Press any key");
	outtextxy(statsX+80, statsY + 130, "to stop");
    outtextxy(statsX, statsY + 150, "Hospital speeds recovery");
}

void drawGraph() {
    setcolor(WHITE);
    settextstyle(DEFAULT_FONT, HORIZ_DIR, 1);
    outtextxy(graphX, graphY - 18, "Infection Curve");

    
    double xScale = (double)graphW / (double)maxFrames; 
    double yScale = (double)graphH / (double)MAX_PEOPLE;

    int points = (frame < maxFrames) ? frame : maxFrames;
    if (points <= 1) return;

    
    setcolor(DARKGRAY);
    line(graphX, graphY + graphH, graphX + graphW, graphY + graphH);

    for (int i = 1; i < points; ++i) {
        int idx1 = (frame - points + i - 1 + maxFrames) % maxFrames;
        int idx2 = (frame - points + i + 0 + maxFrames) % maxFrames;
        int infected1 = infectedHistory[idx1];
        int infected2 = infectedHistory[idx2];

        int x1 = graphX + (int)((i - 1) * xScale + 0.5);
        int y1 = graphY + graphH - (int)(infected1 * yScale + 0.5);
        int x2 = graphX + (int)((i) * xScale + 0.5);
        int y2 = graphY + graphH - (int)(infected2 * yScale + 0.5);

        setcolor(RED);
        line(x1, y1, x2, y2);
    }
}
void open()
{
	for(int j=0;j<20;j++)
	{
	setfillstyle(SOLID_FILL,GREEN);
	floodfill(200,200,WHITE);
	setcolor(YELLOW);
	setbkcolor(GREEN);
	settextstyle(1,0,4);
	outtextxy(10,200,"Welcome To C Graphics");
	delay(200);
	}
}
void start()
{
	for(int j=0;j<40;j++)
	{
	setfillstyle(SOLID_FILL,LIGHTGRAY);
	floodfill(200,200,WHITE);
	setbkcolor(LIGHTGRAY);
	setcolor(RED);
	settextstyle(1,0,4);
	outtextxy(80,180,"VIRUS SPREAD AND");
    outtextxy(10,240,"RECOVERY SIMULATION");
    delay(50);
    }
}

int main(void) {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, ""); 
    open();
	start();
	setbkcolor(BLACK);
    srand((unsigned)time(NULL));

    initLayoutAndPeople();

    int active = 0;
    cleardevice();

    while (!kbhit()) {
        setactivepage(active);
        cleardevice();

        settextstyle(DEFAULT_FONT, HORIZ_DIR, 1);
        setcolor(WHITE);
        outtextxy(10, 10, "Realistic Virus Spread Simulation (C Graphics)");
        outtextxy(10, 26, "Green=Healthy  Red=Infected  Blue=Recovered  Gray=Dead");

        drawUIPanels();

        drawHospital();

        int healthy, infected, recovered, dead;
        countStats(&healthy, &infected, &recovered, &dead);

        infectedHistory[frame % maxFrames] = infected;

        drawPeople();                    
        drawStatsPanel(healthy, infected, recovered, dead); 
        drawGraph();                    

        
        updatePeople();

        setvisualpage(active);
        active = 1 - active;

    
        Sleep(FRAME_DELAY);
        frame++;
    }

    getch();
    closegraph();
    return 0;
}

