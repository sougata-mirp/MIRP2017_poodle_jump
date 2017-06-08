# Build your own Doodle Jump!
---------
**Introduction**

Doodle Jump is a popular iPhone game. In the game the aim is to guide a player up a never-ending series of platforms without falling. The left side of the playing field is connected with the right side. There is no definitive end to the game, but the end for each gameplay session happens when the player allows the player to fall to the bottom of the screen without hitting any platform.


In this lab, you will be building your own version of Doodle Jump!

We provide you an outline of code for you to start this lab, but you will be writing most of the code that creates this game! This code skeleton will provide you many constants that will make your life easier, so be sure to use these constants in your code! We also take care of key handling for you,  and you can read more about this in the *Key Handling* section below.

In addition to this README file, you will also find many instructions and hints in the code we give you! Be sure to **read the comments** carefully to determine what needs to be done inside each function!

**Set Up**
You will be completing this lab in **Processing** and start with the 5 skeleton files we provide you inside the `poodle_jump` folder. These files are:
> **FILES**
> - **poodle_jump.pde**: This is the main game file that you will be editing.
> - **constants.pde**: This file contains constants that will be useful to you! Make sure to read through this file before you begin, and you may need to 
> - **flow.pde**: This is a simple file that controls the flow of the game. You will update this code based on what should happen when a point is scored.
> - **key_handling.pde**: This file is for your convenience and does not need to be edited! It takes care of key handling.
> - **physics.pde**: In this file, you will write code that determines how the player's position and velocity will be updated as well as the resolving collisions using the physics you learned in class!

Note that ".pde" at the end of the file indicates that the file should be opened using Processing.

**How to get these files:**
In order to download these files, you will `fork` this repository as you learned in class! Make sure you **DO NOT CLONE** this repository directly! Once you have forked the respoitory into your own Github account, you can then clone it onto your computer to work on the code. Make sure you are logged in to your own Github account while you do this!

<i class="icon-folder-open"></i> **poodle_jump.pde**
Just like any main Processing file, the functions that will be run are
 `void setup()` and `void draw()`. These functions, however, will mainly call other functions that you write

FUNCTION: `void setup()` is provided to you, which calls `resetGame()` to start a new game. **You** will write what happens inside `resetGame()` at the bottom of the file. Remember that `setup()` only gets called ONCE at the start of the program.

FUNCTION: `void draw()`is given to you, but simply calls `drawGameScreen()` (which you will be writing) according to each different Game State where:

 - 0 -- Start Screen
 - 1 -- Game Running Screen
 - 2 -- Lose Screen

The initial Game State is 0.

Remember that `draw()` gets called many times per second, and this is how the game screen will be refreshed each time something changes.
 
<i class="icon-folder-open"></i> **constants.pde**
This file consists of all sorts of useful variables that you will use throughout your code. Never use arbitrary values in your code; create a variable for it in this file if it doesn't already exist and then use that variable in your code. For example:

 - DO NOT write `size(500, 500)`
 - Instead, write: `size(displayWidth, displayHeight);` and define the variables `displayWidth` and `displayHeight` in the constants file.

Most constants in this file are self-explanatory based on the name of the variable and the comments throughout the file. If you still aren't sure what one of the variables is, ASK! Or look for where that variable is being used and make an educated guess. Here are some variables that may be confusing:

 - `PLAYER_HORIZ_VELOCITY`: This is the speed of the player in horizontal direction. The player's velocity in the x-direction `playerVx` will always have the same magnitude, namely `PLAYER_HORIZ_VELOCITY,`but opposite signs. 
 - Similarly,  `PLAYER_VERT_VELOCITY` is the speed of the player in vertical direction. Now,  the player's velocity in the y-direction will be `playerVy`. 
 - However, `MAX_VERT_VELOCITY` is the max velocity of the screen
used in updatePositions() in order not to move the screen too fast.

**Step 1: Create the player and its properties**
 The player  will be represented as a circle with the radius specified in the constants file. The player also has a `position` and `velocity` throughout the game. These variables have been declared in the `constants` file with the appropriate names, but you need to set their values in the appropriate places.
 
 - Write the function `drawPlayer()` to display the player in the correct position and give it a velocity.
 - To draw the player, you are given the player's radius and color: playerRadius and playerColor among the defined constants.
 - Give it a velocity `PLAYER_HORIZ_VELOCITY` and  `PLAYER_VERT_VELOCITY`among the constants. 

**Step 2: Draw the platforms**
Now try to write your code for the drawPlatforms() function.
To do this you will use the Platform parameters defined among the constants:  `platformLength,  platformHeight, platformRadius, platformColor`
 
**Step 3: Initialize the platforms**
After drawing the platforms, it's time to write your code in the `initializePlatforms()`function to create an initial set of platforms according to the number of of platforms defined by `numPlatforms` among the constants.

Hint:  you will find it useful to use the function `random()` in order to randomly generate the number of platforms needed. 

**Step 4: Player-Platform Resolving Collision**
Now it's time to detect and resolve collisions.
In the `resolveCollisions()` function, write your code to detect ball collisions with platforms keeping in mind that:

 - Collisions only happen when the player is falling
 - If Player lands on a platform, bounce off with `PLAYER_VERT_VELOCITY`
 
**Step 4: Move the player**
This is the time to write your code to make the player move.

To do this fill out the `updatePlayerVelocity()` function in order to:  

	 - Update Player Velocities according to keys pressed
	 - Apply Gravity and Air Drag

You should also add some lines of code to the `updatePlayerPosition()` function so that if Player falls out of side of screen, enters from opposite side.

**Step 5: Move the platforms**
Now the game must get exciting. It's time to start moving the platforms. In order to do this, go to the `updatePositions()` function. Fill it with your code so that if the player goes into the top half of screen:

 - Move the view upwards
 - Generate new platforms

**Step 6: Player loses a point**
Detect losing as the player falling to the bottom of the screen without hitting any platform.
Update the `playerLose()` function in `flow.pde`. Think about what happens when a player scores a point.

**Step 7: Display scores**
Write your code for the displayScores() function to display player score in a corner.

**Step 8: Create the Start and Lose screens**
The hard part is over! Good job, you're almost there.
Now you just have to draw the Start and Lose screens.

Write your code in the `drawStartScreen()` and `drawLoseScreen()` functions.

**Step 11: Pausing the game**
If the game is paused, the player and platform properties should not be updated until the game is unpaused. Also indicate on the game screen that the game is paused.

**Key Handling**

You are given defined keyboard keys that the player will use in the game. They will do their assigned functions only when pressed.

 - Player controls:
	
	LEFT = 'a'     
	RIGHT = 'd'    
	UP = 'w'

 - Game Controls
 
	RESET = 'r'
	PAUSE = 'p'
	START = 's'
