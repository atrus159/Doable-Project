/// @description
// You can write your code in this editor

// Inherit the parent event
event_inherited();
randomize();




//same as the ground one, but with less health
eHealth = 2
eMaxHealth = 2
falling_sprite = eyeball_fly_sprt
standing_sprite = eyeball_fly_sprt
hitstun_sprite = eyeball_hit_sprt
eGravity = 0;
knockback_mod = 1
//variables for state 0
state = 0
waitFrames = 0
waitRangeMin = 1
waitRangeMax = 3
waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60); //set the value to be ramdon in the beginning

//variables for state 1
flyFrames = 0;
VflyAcc = 0.05;
HflyAcc = 0.05;

//make a variable to store the dir
flyVDir = choose(-1,1);
flyHDir = choose(-1,1);
flyRangeMin = 1;
flyRangeMax = 3;
flyTime = random_range(flyRangeMin * 60, flyRangeMax* 60);


//chase timing
chaseFrames = 0
chaseRangeMin = 2
chaseRangeMax = 4
chaseTime = random_range(chaseRangeMin*60, chaseRangeMax*60)

//max speeds
maxVSpeed = 2;
maxHSpeed = 4;

ChasemaxVSpeed = 4;
ChasemaxHSpeed = 7;

//boolean for wall detection
//variables for wall collision

WDradius = 200;

//variables for state 2
VChaseAcc = 0.25;
HChaseAcc = 0.25;
WDChaseRadius = 200;
losingSight_width = 500;
losingSight_height = 500;
corpse = flyball_corpse

