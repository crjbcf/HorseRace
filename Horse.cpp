//
// Created by chris on 3/8/2021.
//
#include "Horse.h"
#include <iostream>
#include <string>
#include <ctime>
#include <cstdlib>
using namespace std;

Horse::Horse() //Default Constructor
{
    name = "none";
    rider = "none";
    maxRunningDistancePerSecond = 0;
    distanceTraveled = 0;
    racesWon = 0;
}

Horse::Horse(string n, string r) //Constructor.
{
    unsigned seed = time(0);
    srand(seed);
    name = n;
    rider = r;
    maxRunningDistancePerSecond = (rand() % (100 - 1 + 1)) + 1; //before: (rand() % 100) + 1
    distanceTraveled = 0;
    racesWon = 0;
}

void Horse::runAsecond()
{
    distanceTraveled += (rand() % (maxRunningDistancePerSecond - 1 + 1)) + 1; //adds random distance between 1 and max speed
}                                                                            // to distance traveled

void Horse::sendTogate()
{
    distanceTraveled = 0; //resets distance traveled to zero
}

void Horse::displayHorse(int goalLength)
{
    int display_size = 20;
    int position, spaces = 0;
    double ratio;

    ratio = (static_cast<double>(display_size)) / goalLength; // finds the ratio for displaying horses on track

    char track[display_size + 3];                   //following code sets up the track of char array
    track[0] = '|';                                 // fills with spaces and a arrow to represent horse.
    track[display_size + 1] = '|';                  //goal posts and space for horse passing goal is included

    for(int i = 1; i < (display_size + 1); i++)
    {
        track[i] = ' ';
        spaces++;
    }
    track[display_size + 2] = ' ';
    if(distanceTraveled == 0)        // puts horse at start of track
    {
        position = 1;
        track[position] = '>';
    }
    else if(distanceTraveled > 0 && distanceTraveled < goalLength)
    {
        position = (ratio * distanceTraveled); //finds position of horse
        track[position + 1] = '>';             // in relation to where it would be on track
    }
    else if(distanceTraveled >= goalLength)
    {
        position = (display_size + 2);         //when the horse crosses or at goal line
        track[position] = '>';
    }
    for(int i= 0; i <= (display_size + 2); i++)
    {
        cout << track[i];
    }
}

void Horse::info()
{
    cout << name << ", ridden by " << rider; //horse info of rider and horse name to be displayed
}

