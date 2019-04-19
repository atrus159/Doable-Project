/// @description 
// You can write your code in this editor

switch (state)
   {
   case 0:
   waitFrames = waitFrames + 1; 
   if (waitFrames > waitTime){
	   
	   //if the frames hits waitTime, it will go into state 1
	   state = 1;
	   
	   //reset the frames and the waitTime
	   waitFrames = 0;
	   waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60);
	   
   }   
	break;
	
	case 1:
	motion_set(walkDir, EGspeed);
	walkFrames = walkFrames + 1;
	//enemy is going to wait for a certain amount of time
	//and if it will not collide with the wall
	if (walkFrames < walkTime && !place_meeting(x+(hspeed+1), y, wall)){
	//motion_set(walkDir, EGspeed);
	}else{
		//in the end it will go to state 0 if it does not detect the player
		//and reset everything
		state = 0;
		walkTime = random_range(walkRangeMin * 60, walkRangeMax * 60);
		if (!place_meeting(x+(hspeed+1), y, wall)){
			walkDir = choose(0,180);
		}else if(hspeed > 0){
			walkDir = 180;
		}else{
			walkDir = 0;
		}
		walkFrames = 0;
		motion_set(0,0);
	}
	break;
	
   }