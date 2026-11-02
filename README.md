# Diggy Diggy Hole

Turn-based game where you descend down holes while enemies try killing you. Health packs are in the way, allowing you to heal up between interactions.

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
Monsters will break walls to get to you if necessary.

Monster spawning scales by level;
Regular monsters (Zombies and Skeletons) go off ~ 6 + logbase10(level)
Special monsters (Ghosts atm) go off logbase10(level)

To collect health packs, you have to stand on their space. You heal 2 hp for every pack you pick up

There is also score. Every 250 score you attain, you heal 1 hp.
Score List:
- Breaking Wall: 20 Score
- Filling Lava: 30 Score
- Killing Zombies: 50 Score
- Killing Skeletons: 100 Score
- Killing Ghosts: 500 Score
- Finishing a level: 200 Score

Tile List:
- Wall: Breakable via Primary and Secondary; Unable to travel through
- Ground: Able to travel through 
- Hole: The goal/end flag
- Spiky Ground: Able to travel through it; deals 1 damage
- Lava: Breakable via Primary only; Unable to travel through

---