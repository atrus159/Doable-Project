/// @description
// You can write your code in this editor

//state definition

switch (state){
	//state 0
	case 0:
	
   waitFrames = waitFrames + 1; 
   if (waitFrames > waitTime){
	   
	   //if the frames hits waitTime, it will go into state 1
	   state = 1;
	   
	   //reset the frames and the waitTime
	   waitFrames = 0;
	   waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60);
	   
   }
   
   //check if it sees the player
   if (enemy_detection(sight_width, sight_height)){
	   state = 2;
   }
   
   break;
   
   case 1:
	flyFrames = flyFrames + 1;
	//enemy is going to wait for a certain amount of time
	//and if it will not collide with the wall
	if ( flyFrames < flyTime && !place_meeting(x+(hspeed+1), y, wall && !place_meeting(x+(vspeed+1), y, wall)) ){
		
		//flyVDir for vertical, -1 for left, 1 for right
	   //flyHDir for horizontal, -1 for up, 1 for down
	   vspeed += VflyAcc;
	   hspeed += HflyAcc;
   
	   //the accerlaration of the enemy
	   if (flyVDir == 1){
		   VflyAcc += accSpeed;
	   }
	   if(flyVDir == -1){
		   VflyAcc -= accSpeed;
	   }
	   if(flyHDir == 1){
		   HflyAcc += accSpeed;
	   }
	   if (flyHDir == -1){
		   HflyAcc -= accSpeed;
	   }
	}else{
		//in the end it will go to state 0 if it does not detect the player
		//and reset everything
		state = 0;
		VflyAcc = - VflyAcc;
		HflyAcc = - HflyAcc;
		if (!place_meeting(x+(hspeed+1), y, wall) || !place_meeting(x+(vspeed+1), y, wall)){
			flyVDir = choose(-1,1);
			flyHDir = choose(-1,1);
		}else{
			flyVDir = -flyVDir;
			flyHDir = -flyHDir;
		}
		flyFrames = 0;
	}
	
	//check if it sees the player
   if (enemy_detection(sight_width, sight_height)){
	   state = 2;
   }
   
	break;
	
	case 2:
	if (enemy_detection(losingSight_width, losingSight_height)){
		
		//flyVDir for vertical, -1 for left, 1 for right
	   //flyHDir for horizontal, -1 for up, 1 for down
	   vspeed += VChaseAcc;
	   hspeed += HChaseAcc;
		
		//the losing sight area is larger than the sight are
			if (x - Player.x > 0){ // if the enemy is on the right
		
			if (!place_meeting(x-(vspeed+1), y, wall)){
				 //chase left
				 HChaseAcc -= ChaseSpeed; 
			}
		
			}
			 
			if(x - Player.x < 0){
				 if (!place_meeting(x+(vspeed+1), y, wall)){//if the enemy is on the left
					 //chase right
				HChaseAcc += ChaseSpeed; 
			}
		}
			
			if (y - Player.y < 0){ // if the enemy is above the player	
			if (!place_meeting(x, y + (hspeed+1), wall)){
				 //chase down
				 VChaseAcc += ChaseSpeed; 
			}
		
			 }
			 
			 if(y - Player.y > 0){
				 if (!place_meeting(x, y - (hspeed+1), wall)){//if the enemy is below
					 //chase up
				VChaseAcc -= ChaseSpeed; 
			}
		}
		
	}else{
		//if the enemy does not see the player, go back to stationary
		state = 0;
		hspeed = 0;
		vspeed = 0;
	}
	
	break;
}
	
   