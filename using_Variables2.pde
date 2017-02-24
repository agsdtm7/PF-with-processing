int xCloud = 100;
int yCloud = 100;

int xTower = 400;
int yTower = 400;

int towerWidth = 30;
int towerHeight = 150;

int xFan = xTower + towerWidth/2;
int yFan = yTower - towerHeight;

void setup(){
size(500, 500);
background(135, 206, 250);
}

void draw(){
xCloud++;
background(135, 206, 250);
// GREEN FIELD
noStroke();
fill(34, 139, 34);
rect(0, 350, width, 150);

// CLOUD
fill(255);
ellipse(xCloud, yCloud, 50, 50);
ellipse(xCloud + 25, yCloud, 50, 50);
ellipse(xCloud + 50, yCloud, 50, 50);

// WINDMILL
// TOWER
triangle(xTower, yTower, xTower + towerWidth, yTower, xTower + towerWidth/2, yTower - towerHeight);

// FAN
fill(150);
triangle(xFan, yFan, xFan - 25 - 5, yFan -25 +5, xFan - 25 + 5, yFan -25 -5);
triangle(xFan, yFan, xFan +25 - 5, yFan -25 - 5, xFan +25 +5, yFan -25 +5);
triangle(xFan, yFan, xFan + 25 + 5, yFan + 25 - 5, xFan + 25 - 5, yFan + 25 + 5);
triangle(xFan, yFan, xFan - 25 +5, yFan + 25 + 5, xFan -25 -5, yFan + 25 -5);
}