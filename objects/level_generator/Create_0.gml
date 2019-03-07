RoomSizes = ds_list_create()
largeProb = 1
smallProb = 20
mediumProb = 10
generationWidth = 1
generationHeight = 4
roomCount = 50
generationRadius = 1000
mainRoomCount = 15

smallWidth = 10
smallHeight = 10

mediumWidth = 16
mediumHeight = 12

largeWidth = 24
largeHeight = 20

hwidth = 96

for(var i = 0; i<largeProb; i++){
	ds_list_add(RoomSizes, 0)	
}
for(var i = 0; i<mediumProb; i++){
	ds_list_add(RoomSizes, 1)	
}
for(var i = 0; i<smallProb; i++){
	ds_list_add(RoomSizes, 2)	
}

small_rooms = ds_list_create()
ds_list_add(small_rooms, "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:10we:4wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")


medium_rooms = ds_list_create()
ds_list_add(medium_rooms, "enew:12nenewe:20wnenewe:20wnenewe:10we:8wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:14we:4wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")

large_rooms = ds_list_create()
ds_list_add(large_rooms, "enew:20nenewe:30w:4nenewe:32w:3nenewe:24we:8wwnenewe:22wwe:10wnenewe:20wwe:12wne:9we:29newe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wne:31we:7newe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenew:20ne")