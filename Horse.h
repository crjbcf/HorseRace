//
// Created by chris on 3/8/2021.
//

#ifndef CS2250_P3_HORSE_H
#define CS2250_P3_HORSE_H

#include <iostream>
#include <string>
using namespace std;

class Horse{
private:
    string name;
    string rider;
    int maxRunningDistancePerSecond;
    int distanceTraveled;
    int racesWon;

public:
    Horse();
    Horse(string, string);

    string getName() {return name;}
    string getRider() {return rider;}
    int getSpeed() {return maxRunningDistancePerSecond;}
    int getDistance() {return distanceTraveled;}
    int getRacesWon() {return racesWon;}

    void runAsecond();
    void sendTogate();
    void displayHorse(int);
    void info();
    void raceWin() {racesWon++;}

};

#endif //CS2250_P3_HORSE_H
