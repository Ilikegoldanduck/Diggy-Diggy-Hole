# Diggy Diggy Hole

A 2d game where you go lower and lower. The art style is meant to mimic a retro style game with simplistic movement that can be emulated on a console probably. 

Instructions/How to play:
WASD to choose direction
Space to move/start game
Z is primary (short ranged attack)
X is secondary (long ranged attack)
C is skip (forfeit all remaining moves and offering the turn order to the enemies)

# Install Information:

Play game in Itch (via website)

or

Download game from Releases
Unzip folder
Run .exe

# Game information:

Attack stats:
- Primary:
    - 1 Range
    - 3 Damage
- Secondary:
    - 5 Range
    - 10 Damage
All attacks can break walls.

Monster Stats:
- Zombie:
    - 4 Health
    - 1 Range
    - 3 Moves
    - 1 Damage
- Skeleton:
    - 2 Health
    - 3 Range
    - 1 Move
    - 2 Damage
- Ghost:
    - 11 Health
    - 1 Range
    - 2 Move
    - 5 Damage
    - Ignores all obstacles
- Blitz:
    - 1 Health
    - 1 Range
    - 5 Move
    - 4 Damage (dies after hitting)
    - Ignores spikes
Monsters will break walls to get to you if necessary.

Monster spawning scales by level;
Regular monsters (Zombies and Skeletons) go off ~ 6 + logbase10(level)
Special monsters (Ghosts and Blitzes) go off logbase10(level)

To collect health packs, you have to stand on their space. You heal 2 hp for every pack you pick up

There is also score. Every 250 score you attain, you heal 1 hp.
Score List:
- Breaking Wall: 20 Score
- Filling Lava: 30 Score
- Killing Zombies: 50 Score
- Killing Skeletons: 100 Score
- Killing Ghosts: 500 Score
- Killing Blitzes: 150 Score
- Finishing a level: 200 Score

Tile List:
- Wall: Breakable via Primary and Secondary; Unable to travel through
- Ground: Able to travel through 
- Hole: The goal/end flag
- Spiky Ground: Able to travel through it; deals 1 damage
- Lava: Breakable via Primary only; Unable to travel through

---