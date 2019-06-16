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

topRoom = noone


mediumWidth = 16
mediumHeight = 12

largeWidth = 24
largeHeight = 20

hwidth = 128

for(var i = 0; i<largeProb; i++){
	ds_list_add(RoomSizes, 0)	
}
for(var i = 0; i<mediumProb; i++){
	ds_list_add(RoomSizes, 1)	
}
for(var i = 0; i<smallProb; i++){
	ds_list_add(RoomSizes, 2)	
}
stage = 0

//small_rooms
//right
small_rooms[0] = ds_list_create()
ds_list_add(small_rooms[0],"enew:10nenewe:8we:6wnenewe:16wnenewe:16wnenewe:16wne:3we:15newe:14wwnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//up
small_rooms[1] = ds_list_create()
ds_list_add(small_rooms[1], "enew:10nenewe:8we:6wnenewe:16wnenewe:16wnenewe:16wnenewe:14wwnenewe:16wnenewe:16wnenewe:8we:6wnenew:10ne")
//left
small_rooms[3] = ds_list_create()
ds_list_add(small_rooms[3], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewwe:12wwnenewe:16wnenewe:16wnenewe:8we:6wnenew:10ne")
//down
small_rooms[7] = ds_list_create()
ds_list_add(small_rooms[7], "enew:10nenewe:7we:7wnenewe:16wnenewe:16wnenewe:16wnenewwe:14wnenewe:16wnenewe:16wnenewe:8we:6wnenew:10ne")
//right-up
small_rooms[2] = ds_list_create()
ds_list_add(small_rooms[2], "enew:10nenewe:7we:7wnenewe:16wnenewe:16wnenewe:16wnenewe:14wwnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//right-left
small_rooms[4] = ds_list_create()
ds_list_add(small_rooms[4], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wne:3we:15newe:14wwnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//right-down
small_rooms[8] = ds_list_create()
ds_list_add(small_rooms[8], "enew:10nenewe:7we:7wnenewe:16wnenewe:16wnenewe:16wne:3we:15newe:16wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//up-left
small_rooms[5] = ds_list_create()
ds_list_add(small_rooms[5], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wne:17wenewe:16wnenewe:16wnenewe:16wnenewe:8we:6wnenew:10ne")
//up-down
small_rooms[9] = ds_list_create()
ds_list_add(small_rooms[9], "enew:10nenewe:8we:6wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:7we:7wnenew:10ne")
//left-down
small_rooms[11] = ds_list_create()
ds_list_add(small_rooms[11], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewwe:14wnenewe:16wnenewe:16wnenewe:7we:7wnenew:10ne")
//right-up-left
small_rooms[6] = ds_list_create()
ds_list_add(small_rooms[6], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:14wwnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//up-left-down
small_rooms[13] = ds_list_create()
ds_list_add(small_rooms[13], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:7we:7wnenew:10ne")
//left-down-right
small_rooms[12] = ds_list_create()
ds_list_add(small_rooms[12], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wne:3we:15newe:16wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//down-right-up
small_rooms[10] = ds_list_create()
ds_list_add(small_rooms[10], "enew:10nenewe:8we:6wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
//all
small_rooms[14] = ds_list_create()
ds_list_add(small_rooms[14], "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:9we:5wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")


//medium_rooms
//right
medium_rooms[0] = ds_list_create()
ds_list_add(medium_rooms[0], "enew:12nenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:18wwne:3we:19newe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//up
medium_rooms[1] = ds_list_create()
ds_list_add(medium_rooms[1], "enew:12nenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:18wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:11we:7wnenew:12ne")
//left
medium_rooms[3] = ds_list_create()
ds_list_add(medium_rooms[3], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewwe:16wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:11we:7wnenew:12ne")
//down
medium_rooms[7] = ds_list_create()
ds_list_add(medium_rooms[7], "enew:12nenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewwe:18wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:11we:7wnenew:12ne")
//right-up
medium_rooms[2] = ds_list_create()
ds_list_add(medium_rooms[2], "enew:12nenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:18wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//right-left
medium_rooms[4] = ds_list_create()
ds_list_add(medium_rooms[4], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewwe:16wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//right-down
medium_rooms[8] = ds_list_create()
ds_list_add(medium_rooms[8], "enew:12nenewe:8we:10wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewwe:18wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//up-left
medium_rooms[5] = ds_list_create()
ds_list_add(medium_rooms[5], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:18wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:9we:9wnenew:12ne")
//up-down
medium_rooms[9] = ds_list_create()
ds_list_add(medium_rooms[9], "enew:12nenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:9we:9wnenew:12ne")
//left-down
medium_rooms[11] = ds_list_create()
ds_list_add(medium_rooms[11], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wne:3we:19newe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:9we:9wnenew:12ne")
//right-up-left
medium_rooms[6] = ds_list_create()
ds_list_add(medium_rooms[6], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:18wwnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//up-left-down
medium_rooms[13] = ds_list_create()
ds_list_add(medium_rooms[13], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:8we:10wnenew:12ne")
//left-down-right
medium_rooms[12] = ds_list_create()
ds_list_add(medium_rooms[12], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewwe:18wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//down-right-up
medium_rooms[10] = ds_list_create()
ds_list_add(medium_rooms[10], "enew:12nenewe:10we:8wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")
//all
medium_rooms[14] = ds_list_create()
ds_list_add(medium_rooms[14], "enew:12nenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:9we:9wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenewe:20wnenew:12ne")

//large_rooms
//right
large_rooms[0] = ds_list_create()
ds_list_add(large_rooms[0], "enew:20nenewe:17we:17wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewwe:34wne:37wenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//up
large_rooms[1] = ds_list_create()
ds_list_add(large_rooms[1], "enew:20nenewe:17we:17wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:37wenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//left
large_rooms[3] = ds_list_create()
ds_list_add(large_rooms[3], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewwe:34wne:37wenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//down
large_rooms[7] = ds_list_create()
ds_list_add(large_rooms[7], "enew:20nenewe:18we:16wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewwe:34wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//right-up
large_rooms[2] = ds_list_create()
ds_list_add(large_rooms[2], "enew:20nenewe:18we:16wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:37wenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//right-left
large_rooms[4] = ds_list_create()
ds_list_add(large_rooms[4], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:37wenewe:36wne:3we:35newe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//right-down
large_rooms[8] = ds_list_create()
ds_list_add(large_rooms[8], "enew:20nenewe:16we:18wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:3we:35newe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//up-left
large_rooms[5] = ds_list_create()
ds_list_add(large_rooms[5], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:34wwnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//up-down
large_rooms[9] = ds_list_create()
ds_list_add(large_rooms[9], "enew:20nenewe:15we:19wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//left-down
large_rooms[11] = ds_list_create()
ds_list_add(large_rooms[11], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewwe:34wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:17we:17wnenew:20ne")
//right-up-left
large_rooms[6] = ds_list_create()
ds_list_add(large_rooms[6], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:37wenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//up-left-down
large_rooms[13] = ds_list_create()
ds_list_add(large_rooms[13], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:18we:16wnenew:20ne")
//left-down-right
large_rooms[12] = ds_list_create()
ds_list_add(large_rooms[12], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewwe:34wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//down-right-up
large_rooms[10] = ds_list_create()
ds_list_add(large_rooms[10], "enew:20nenewe:18we:16wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
//all
large_rooms[14] = ds_list_create()
ds_list_add(large_rooms[14], "enew:20nenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wne:22we:16newe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")


/*
ds_list_add(small_rooms, "enew:10nenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewe:10we:4wnenewe:16wnenewe:16wnenewe:16wnenew:10ne")
ds_list_add(small_rooms, "enew:10nenewe:14wwnenewe:16wnenewe:16wnenewe:16wnenewe:16wnenewwe:14wnenew:3e:12wnenewwe:14wnenew:10ne")
ds_list_add(small_rooms, "enew:10nenewe:16wnenewe:16wne:9we:9newe:16wne:9we:9newe:16wne:17wenewe:12weewne:17wenewe:16wnenewe:16wnenewe:16wnenew:10ne")
ds_list_add(small_rooms, "enew:10nenewe:16wnenewe:16wne:3we:15neweew:3e:8wne:3we:15newe:16wnenewe:16wnenewe:16wne:13we:3wnewe:14wwne:18wnewe:16wnenew:10ne")
medium_rooms = ds_list_create()
ds_list_add(medium_rooms, "enew:12nenewe:20wnenewe:20wnenewe:20wne:10we:12newe:20wnenewe:20wnenewe:14we:4wne:19we:3newe:14we:4wne:13wweewwenewe:14we:4wne:19we:3newe:14we:4wnenewe:20wnenewe:20wne:10we:12newe:20wnenewe:20wnenewe:20wnenew:12ne")
ds_list_add(medium_rooms, "enew:12nenewwe:14w:3nenewe:16weewnenewe:20wnenewe:20wnenewe:20wnenewe:20wne:21wenewe:20wne:19wwenewe:20wne:21wenewe:20wne:12we:7wenewe:20wne:10wwe:10newe:20wne:10we:12newe:20wnenewe:20wnenewe:20wnenew:12ne")
ds_list_add(medium_rooms, "enew:12nenewe:20wnenewe:20wnenewe:20wne:9we:13newe:20wne:10we:12newe:20wne:10we:9wenewe:20wne:19wwenewe:20wne:19wwenewe:20wne:17w:3enewe:20wne:15w:4enewe:20wne:14w:5enewe:20wne:13wewe:6newe:20wnenewe:20wnenewe:18wwnenew:12ne")
ds_list_add(medium_rooms, "enew:12nenewe:18wwnenewe:20wnenewe:20wne:9we:13newe:20wne:10we:12newe:20wne:10we:12newe:20wne:11we:6wwenewe:20wne:18w:3enewe:20wne:21wenewe:20wne:11we:6wwenewe:20wne:10wwe:6wwenewe:20wne:10wwe:10newe:20wne:11we:11newe:20wnenewe:18wwnenew:12ne")
ds_list_add(medium_rooms, "enew:12nenewwe:18wnenewe:20wnenewe:20wne:9we:13newe:18wwnenewe:18wwnenewe:18wwnenewe:11we:7wnenewe:11we:7wnenewe:20wnenewe:20wne:20weenewe:20wne:12we:10newe:7we:11wnenewe:20wnenewe:18wwnenew:12ne")
large_rooms = ds_list_create()
ds_list_add(large_rooms, "enew:20nenewe:36wne:18we:20newe:36wnenewe:9we:17we:6wnenewe:33wewne:17weeweewe:13newe:36wne:20we:10we:6newe:36wne:21we:17newe:10we:24wnenewe:5weewe:15we:8wne:10we:28newe:22we:12wnenewe:11we:13we:8wne:8we:8wwe:18newe:19we:5weewe:4wnenewe:20we:14wne:29we:9newe:36wnenewe:8wwe:24wne:7we:31newe:11we:8we:13wnenewe:12we:10wwe:8wne:32we:6newe:20weewe:10wne:9we:8we:11we:6newe:20we:5weewe:3wne:32we:6newe:27weewe:3wne:11we:27newe:23we:11wnenewe:36wnenewe:36wnenew:20ne")
ds_list_add(large_rooms, "enew:20nenewe:30w:4nenewe:32w:3nenewe:24we:8wwne:9we:29newe:22wwe:10wne:8wwe:28newe:20wwe:12wne:9we:29newe:20wwe:12wnenewe:20we:14wnenewe:14we:4we:14wnenewe:20we:14wnenewe:20we:14wnenewe:8we:10we:14wnenewe:20we:14wnenewe:20we:14wnenewe:20we:14wnenewe:10we:8we:14wnenewe:10we:8wwe:12wne:31we:7newe:10we:11we:11wne:31we:7newe:36wne:31we:7newe:36wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
ds_list_add(large_rooms, "enew:20nenewe:36wnenewe:36wnenewe:28we:6wne:14wwe:22newe:22we:12wne:15we:23newe:20wwe:8weewnenewe:18w:4e:10wnenewe:4we:10w:6e:8wnenewe:4we:8wwe:6wwe:8wnenewe:13wwe:9we:8wnenewe:11wwe:11we:8wnenewe:9wwe:13we:8wnenewe:26we:8wnenewe:26we:8wnenewe:8wwe:14we:8wnenewe:9wwe:13we:8wnenewe:10wwe:10wwe:8wnenewe:12we:6w:3e:10wnenewe:13we:5we:14wnenewe:20we:14wnenewe:36wnenewe:36wnenewe:36wnenew:20ne")
*/