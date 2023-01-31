/* Project 3 Horse Race Simulator
  Created by Christopher Jackson
  due 3/21/2021
  CS 2250
  Prof Koc */
#include <iostream>
#include "Horse.h"
#include <string>
using namespace std;

int main()
{
    int numRiders, dist, racesPlayed = 0;
    string horseName, riderName;
    char next, replay = 'y';
    bool racefin = false;

    cout << "****Welcome to Horse Racer 9000!****" << endl; //intro message
    do{
        cout << "How many horses are in the race:"; //get number of horses to race
        cin >> numRiders;
        if(numRiders <= 0)
        {
            cout << "Please enter 1 or more horses for the race!" << endl; //input validation
        }
    }while(numRiders <= 0);

    Horse* player = nullptr;
    player = new Horse[numRiders]; //dynamically allocated horse objects
    for(int i = 0; i < numRiders; i++) //gets horse names/ riders name put into horse objects
    {
        cout << "\nWhat is the name of Horse #" << (i+1) << ":";
        cin >> horseName;
        cout << "Who is the rider:";
        cin >> riderName;
        player[i] = Horse(horseName, riderName);
    }
    cout << "Please enter the distance of the race: "; //get length of race
    cin >> dist;
    do {                                               //start of race display horses at start
        cout << "The Start!" << endl;
        for (int i = 0; i < numRiders; i++)
        {
            player[i].displayHorse(dist);
            player[i].info();
            cout << endl;
        }
        cout << "\nare you ready for the next second? (y/n)?";  //prompt to progress to next "second" of race
        cin >> next;
        next = tolower(next);
        while (next == 'y' && racefin == false)
        {
            for (int i = 0; i < numRiders; i++)
            {
                player[i].runAsecond();
                player[i].displayHorse(dist);
                player[i].info();
                cout << endl;
            }
            for (int i = 0; i < numRiders; i++) {
                if (player[i].getDistance() < dist)
                {
                    racefin = false;
                }
                else{
                    racefin = true;
                    break;
                }
            }
            if (racefin == false)
            {
                cout << "are you ready for the next second? (y/n)?";
                cin >> next;
            }
            else
                break;
        }
        if (racefin == true)  //once game ends find the winner in case of tie and display stats and asks
        {                     // if user would like to  restart the game
            racesPlayed++;
            int winningDist = player[0].getDistance();
            for(int i = 0; i < numRiders; i++)
            {
                if(player[i].getDistance() > winningDist)
                {
                    winningDist = player[i].getDistance();
                }
            }
            for(int i = 0; i < numRiders; i++)
            {
                if(player[i].getDistance() == winningDist)
                {
                    player[i].raceWin();
                }
            }

            for (int i = 0; i < numRiders; i++)
            {
                cout << player[i].getRider() << " has won ";
                cout << player[i].getRacesWon() << "/" << racesPlayed << " race(s).";
                cout << endl;
            }
            cout << "would you like to continue?(y/n)";
            cin >> replay;
            if (replay == 'y')
            {
                for (int i = 0; i < numRiders; i++)
                {
                    player[i].sendTogate();
                }
                racefin = false;
            }
            else
                replay = 'n';
        }
    }while(replay == 'y');

    delete [] player;
    return 0;
}
