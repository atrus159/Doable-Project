if(sqrt(sqr(x-Player.x) + sqr(y-Player.y))<200){

var activator = instance_create_depth(0,0,0,door_activate)
activator.target = id
activator.t = door_time
instance_deactivate_object(self)
}