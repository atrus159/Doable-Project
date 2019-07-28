/// @description
// You can write your code in this editor

event_inherited();
randomize();

eHealth = 10
eMaxHealth = 10
falling_sprite = spr_eyeshell_s0
standing_sprite = spr_eyeshell_s0
hitstun_sprite = spr_eyeshell_s2

//variables for state 0
state = 0
waitFrames = 0
waitRangeMin = 2
waitRangeMax = 4
waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60); //set the value to be ramdon in the beginning

//variables for state 1
walkFrames = 0
walkRangeMin = 1
walkRangeMax = 3
walkTime = random_range(walkRangeMin * 60, walkRangeMax* 60);
EGspeed = 2
walkDir = choose(1,-1)


//and if it sees player, it will stop moving
sight_width = 320;
sight_height = 320;
losingSight_width = 640;
losingSight_height = 640;

//the trigger for player to hit the monster
ifStomp = false;

//the timer for the state 3
hideFrames = 0;
hideTime = 2;

corpse = eyeball_corpse



