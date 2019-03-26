var n = 0
if(right_door){
	n+=1	
}
if(top_door){
	n+=2	
}
if(left_door){
	n+=4	
}
if(bot_door){
	n+=8	
}
if(n == 0){
 n = round(random(14)+1)	
}
door_type = n-1