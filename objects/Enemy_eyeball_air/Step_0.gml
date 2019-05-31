/// @description
// You can write your code in this editor

//state definition


switch (state){
	//state 0
	case 0:
	hspeed = hspeed * 0.97;
    vspeed = vspeed * 0.97;

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
		if ( flyFrames < flyTime ){
	//enemy is going to wait for a certain amount of time
	//and if it will not collide with the wall
	
		//use collision_circle to check the place meeting function	
		//flyVDir for vertical, -1 for up, 1 for down
	   //flyHDir for horizontal, -1 for left, 1 for right
      
	  
		if (collision_circle(x,y,WDradius, wall, false, true) == noone){
			//the accerlaration of the enemy	

		 if(flyHDir == 1){
		   hspeed += HflyAcc;
	   }
	   if (flyHDir == -1){
		   hspeed -= HflyAcc;
	   }
	   if (flyVDir == 1){
		   vspeed += VflyAcc;
	   }
	   if(flyVDir == -1){
		   vspeed -= VflyAcc;;
	   }
	   
	}else{
		
			var _list = ds_list_create();
			var n = collision_circle_list(x,y,WDradius, wall, false, true, _list, false);
			var xAvg = 0;
			var yAvg = 0;
			for(var i =0; i<n; i++){
				var current = ds_list_find_value(_list,i);
				xAvg += current.x;
				yAvg += current.y;
			}
			xAvg /= n;
			yAvg /= n;
		 
		 if(xAvg > x){
		   hspeed -= HflyAcc;
	   }
	   if (xAvg < x){
		   hspeed += HflyAcc;
	   }
	   if (yAvg > y){
		   vspeed -= VflyAcc;
	   }
	   if(yAvg < y){
		   vspeed += VflyAcc;;
	   }
		
	}

	
	}else{
		//in the end it will go to state 0 if it does not detect the player
		//and reset everything
		
			flyFrames = 0;
			flyTime = random_range(flyRangeMin * 60, flyRangeMax* 60);
			state = 0;
			flyVDir = choose(-1,1);
			flyHDir = choose(-1,1);
			
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
				 hspeed -= HChaseAcc; 
			}
		
			}
			 
			if(x - Player.x < 0){
				 if (!place_meeting(x+(vspeed+1), y, wall)){//if the enemy is on the left
					 //chase right
				hspeed += HChaseAcc; 
			}
		}
			
			if (y - Player.y < 0){ // if the enemy is above the player	
			if (!place_meeting(x, y + (hspeed+1), wall)){
				 //chase down
				 vspeed += VChaseAcc; 
			}
		
			 }
			 
			 if(y - Player.y > 0){
				 if (!place_meeting(x, y - (hspeed+1), wall)){//if the enemy is below
					 //chase up
				vspeed -= VChaseAcc;
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

//if for some reasons that the speed is too fast
if (vspeed > maxVSpeed){
	vspeed = maxVSpeed;
}else if( vspeed < -maxVSpeed){
	vspeed = -maxVSpeed;
}

if (hspeed > maxHSpeed){
	hspeed = maxHSpeed;
}else if( hspeed < -maxHSpeed){
	hspeed = -maxHSpeed;
}