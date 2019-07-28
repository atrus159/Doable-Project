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
	   if(random(100)<60){
		   state = 2
	   }else{
	   state = 1;
	   }
	   
	   //reset the frames and the waitTime
	   waitFrames = 0;
	   waitTime = random_range(waitRangeMin * 60, waitRangeMax * 60);
	   
   }
   
   //check if it sees the player
   
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
		   vspeed -= VflyAcc;
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
			ds_list_destroy(_list)
		 
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
			if(random(100<60)){
			state = 2	
			}else{
			state = 0;
			}
			flyVDir = choose(-1,1);
			flyHDir = choose(-1,1);
			
	}
		
		
	
   
	break;
	
	case 2:
	chaseFrames +=1
	if (chaseFrames < chaseTime){
		
		if (collision_circle(x,y,WDChaseRadius, wall, false, true) == noone){
		var xAccel = cos(arctan2(Player.y-y, Player.x-x))*HChaseAcc
		var yAccel = sin(arctan2(Player.y-y, Player.x-x))*VChaseAcc
		hspeed += xAccel
		vspeed += yAccel
		}else{
		
			var _list = ds_list_create();
			var n = collision_circle_list(x,y,WDChaseRadius, wall, false, true, _list, false);
			var xAvg = 0;
			var yAvg = 0;
			for(var i =0; i<n; i++){
				var current = ds_list_find_value(_list,i);
				xAvg += current.x;
				yAvg += current.y;
			}
			xAvg /= n;
			yAvg /= n;
			ds_list_destroy(_list)
		 
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

		state = 0;
		chaseFrames = 0;
		chaseTime = random_range(chaseRangeMin * 60, chaseRangeMax* 60);
	}
	
	break;
}

//if for some reasons that the speed is too fast
if(state != -1 && state != 0){
	var mvspeed = maxVSpeed
	var mhspeed = maxHSpeed
	if(state == 2){
		mvspeed = ChasemaxVSpeed
		mhspeed = ChasemaxHSpeed
	}
	
if (vspeed > mvspeed){
	vspeed = mvspeed;
}else if( vspeed < -mvspeed){
	vspeed = -mvspeed;
}

if (hspeed > mhspeed){
	hspeed = mhspeed;
}else if( hspeed < -mhspeed){
	hspeed = -mhspeed;
}
}