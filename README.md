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

Hearts: VampireGirl on Itch.io
https://fliflifly.itch.io/hearts-and-health-bar

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

- Attempted to change death animation

Other tutorial attempted:
https://kidscancode.org/godot_recipes/4.x/ai/chasing/index.html

-----------------------------------------------------------------------
WEEK THREE:

UPDATE #4: CHANGING ENEMY MOVEMENT AND ANIMATIONS 

September 10:

- AYYYY WE DID IT DEATH ANIMATION WORKS!
Shout out to this forum
https://forum.godotengine.org/t/how-to-add-a-death-animation-for-dodge-the-creeps-tutorial-solved/8689/5

- Added a death timer so there is a waiting period before the game restarts. 
    -Character animations reset
    
-Bug: the mobs don't disappear anymore :/

September 10 – 17:
(Total time 3ish hours)
https://www.youtube.com/watch?v=2oPzZqHR2Rg
https://www.youtube.com/watch?v=WVQkOWY3zxQ&list=TLPQMTkwOTIwMjUUXWC6LokYQg&index=1
https://www.youtube.com/watch?v=kNFd6-CfQjo&list=TLPQMTkwOTIwMjUUXWC6LokYQg&index=2

- Attempted to change current Mob set up to follow, but I ended up deleting it and restarting the enemy part because I was getting confused

- Started with one enemy. Gave it the ability to idle and follow when the player entered an area. Updated animations. 

UPDATE #5: ADDING A HEALTH BAR
Tutorial: 
- https://www.youtube.com/watch?v=7rmtxjAjUPc
- https://www.youtube.com/watch?v=5UlVxqN3tk8

September 18: Health Bar

(An hour and a half)

-Added a health node and created a heart GUI. I also messed around with getting my enemies to disappear when the game is over. 

UPDATE #6:
Tutorial: https://www.youtube.com/watch?v=pzhfUbP2-MY&t=56s

Trying to fix my enemies so they spawn again + adding pit of death

-----------------------------------------------------------------------------------------

TIME BOX: MENU ASSIGNMENT

1 and 15 minutes for wireframes (I’m kind very visual and would have sketched these out)

Link to figma prototype: 

 Fixed ordering of z-axis for sprites (5 minutes)

**FIxing Collision Bug (1.5 hours)**

https://www.youtube.com/watch?v=ksLKc9oACQA

• Had to add another Area2D to the Enemy to detect contact

• Added a knock function to push player when hurt

• Moved where health takes damage because of the knock

Purpose: gives more affordance to the player allowing them a quick breather so damage isn’t taken all the time. 

For this part, it took me awhile because I used different node types and I had some issues with the signals. 



**Followed UI Intro Tutorial (1.5 hrs including time spent searching for assets)**

Link: https://www.youtube.com/watch?v=1_OFJLyqlXI&list=PLghtort-tzjwNkAducljA4WhlSuZ_uN5x&index=9


**Assets:**

• Wine glass by MTS1944 on itch.io

https://mts1944.itch.io/glass-of-wine

• Typeface: GothicPixels by LingDong Huang 


**Actions:**

• Added a panel and grid container to hold an icon and counter

• Created a theme and uploaded a new font for the labels

• Fixed anchors on some of the existing elements



**How to Create A Simple Main Menu in Godot (45 mins–1hr)**

Tutorial Link: https://www.youtube.com/watch?v=Z8jcjy_jZyk&list=PLhBqFleCVBkXQiE8Nm4Co_1iJJ4L7UIzr

Assets:

• Background is part of the Castle of Last Shadows Project by PIXEL_1992 on itch.io

• Typeface for Buttons: Modern DOS by Jayvee Enaguas 


**Actions:**

• Created a new Main Menu

• Added shadows to the title text to increase contrast and make it more readable

• Diverged from video to customize my theme and played around there

• Customized Buttons



**Cleaned up and deleted old nodes that I was no longer using and fixing up some things that broke (10–15 mins)**

Found and changed to new background music (20 minutes)

Fugue in D Minor by Bishara Haroni

https://artlist.io/royalty-free-music/artist/bishara-haroni/1569