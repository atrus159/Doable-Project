motion_add(-90,eGravity)

if(vspeed > maxFallSpeed){
	vspeed = maxFallSpeed	
}

if(random(1200/(fade+1))<1){
		var blood = instance_create_depth(x,y,-2,blood_particle)
		blood.direction = random(360)
		blood.speed = 5;	
}

if(place_meeting(x,y+vspeed,wall)){
	var dir = 1
	if(direction>0 && direction<180){
		dir = -1	
	}
	while(!place_meeting(x,y+dir,wall)){
		y+=dir
	}
	vspeed = 0;
	if(!vflag){
	for(var i = 0; i<20; i++){
		var blood = instance_create_depth(x,y,-2,blood_particle)
		blood.direction = random(360)
		blood.speed = 10;
	}
	vflag = 1
	}
}

if(place_meeting(x+hspeed,y,wall)){
	var dir = 1
	if(direction>90 && direction<270){
		dir = -1	
	}
	while(!place_meeting(x+dir,y,wall)){
		x+=dir
	}
	hspeed = 0;
	if(!hflag){
	for(var i = 0; i<20; i++){
		var blood = instance_create_depth(x,y,-2,blood_particle)
		blood.direction = random(360)
		blood.speed = 10;
	}
	hflag = 1
	}
}
if(vspeed ==0){
hspeed *=0.9
}