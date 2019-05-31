/// @description
// You can write your code in this editor

// Inherit the parent event
event_inherited();
randomize();

//same as the ground one, but with less health
eHealth = 4
eMaxHealth = 4
falling_sprite = eyeball_sprt
standing_sprite = eyeball_sprt
hitstun_sprite = eyeball_sprt
eGravity = 0;

//variables for state 0
state = 0
waitFrames = 0
waitRangeMin = 1
waitRangeMax = 3
waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60); //set the value to be ramdon in the beginning

//variables for state 1
flyFrames = 0;
VflyAcc = 0;
HflyAcc = 0;

//make a variable to store the dir
flyVDir = choose(-1,1);
flyHDir = choose(-1,1);
flyRangeMin = 1;
flyRangeMax = 3;
flyTime = random_range(flyRangeMin * 60, flyRangeMax* 60);
accSpeed = 0.001; //1-0

//max speeds
maxVSpeed = 2;
maxHSpeed = 4;

//variables for state 2
ChaseSpeed = 0.0005; //3-0
VChaseAcc = 0;
HChaseAcc = 0;
sight_width = 0;
sight_height = 0;
losingSight_width = 0;
losingSight_height = 0;

