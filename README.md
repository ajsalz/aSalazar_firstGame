# aSalazar_firstGame

WEEK TWO ASSIGNMENT 
SEPTEMBER 3–9TH 

DEMO/PROGRESS AS OF DEADLINE: https://drive.google.com/file/d/1Fwew4C9PjpbCy-WYqgUx-j_Xheak4KGm/view?usp=sharing

BASE GAME

Total Time: 4 hours (for reasons explained below)

I followed the written tutorial here: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html

I accidently deleted my first game when I tried to commit to git for the first time so I ended up going through the tutorial twice. The first pass took me about 2 hours including debugging because I can't spell. The second time about another 1 to 1.5 hours. Figuring out git took me almost 30 minutes. For some reason, my files weren't showing up despite me picking the folder. I finally got it to work so ~yay~


UPDATE #2: CHANGING THE AESTHETIC

Assets:
Sprites: Armonykle on Itch.io
https://armonykle.itch.io/medieval-character-sprites

LOG:

- Changed the dimensions of the window to be wider and reset HUD positions (~5 minutes)

- Sprite Sheets Customization (1 – 1.5 hours):

    -Tutorial 1:
    Godot game engine 3.0 Animated Sprite nodes
    https://www.youtube.com/watch?v=IGHcscKpA7Y

    This didn't ended up being what I wanted since it used a Sprite2D and not an AnimatedSprite2D. 

    -Tutorial 2: https://docs.godotengine.org/en/stable/tutorials/2d/2d_sprite_animation.html

    This was perfect!

    I customized the Enemies and the Player Sprites. 

    - I took out the code for random rotations for the enemies, but I will need to change the animations for the enemies. I left it at an okay-ish place tho. 

    - Changed it so it doesn't flip based on +/- of y and x and instead each direction has their own animation. 

UPDATE #3: A BETTER DEATH AND CHANGING ANIMATIONS 

Total time: 1 hr??? 

- Changed sound of death

-Attempted to change death animation

Other tutorial attempted:
https://kidscancode.org/godot_recipes/4.x/ai/chasing/index.html

-----------------------------------------------------------------------
WEEK THREE:
SEPTEMBER 10–16, 2025

September 10

- AYYYY WE DID IT DEATH ANIMATION WORKS!
Shout out to this forum
https://forum.godotengine.org/t/how-to-add-a-death-animation-for-dodge-the-creeps-tutorial-solved/8689/5

- Added a death timer so there is a waiting period before the game restarts. 
    -Character Animation also resets