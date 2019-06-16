/// @description
// You can write your code in this editor

event_inherited();
randomize();

eHealth = 10
eMaxHealth = 10
falling_sprite = eyeball_sprt
standing_sprite = eyeball_sprt
hitstun_sprite = eyeball_sprt


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
EGspeed = 3
walkDir = choose(1,-1)

//variables for state 2
chasingSpeed = 3.15;
sight_width = 960;
sight_height = 576;
losingSight_width = 1280;
losingSight_height = 640;

corpse = eyeball_corpse
jumpTime = 60
jumpT = 0 




