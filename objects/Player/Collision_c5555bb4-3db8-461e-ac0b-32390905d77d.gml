if(invulnerable == 0){
sprite_index = player_stunned
image_index = 0
stunned = 25
invulnerable = 60
frozen = 0
climbing = 0
var dir = 180-darctan2(other.y-y,other.x-x)
motion_set(dir, 4)
motion_add(90,4)

}