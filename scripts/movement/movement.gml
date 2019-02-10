/// @description movement(speed)
/// @args speed

playerHorizontalSpeed = (keyRight-keyLeft)*argument0;
repeat(abs(playerHorizontalSpeed)){
	if(!place_meeting(x+sign(playerHorizontalSpeed),y,obj_wall)){
		x+= sign(playerHorizontalSpeed);
	}
}

if(!place_meeting(x,y+1,obj_wall)){
	playerGravity=grv;
	playerVerticalSpeed+=playerGravity;
} else {
	playerGravity=0;
	playerVerticalSpeed=0;
	if(keyJump){
		y-=1;
		playerVerticalSpeed=playerJumpSpeed;
	}
}

repeat(abs(playerVerticalSpeed)){
	if(!place_meeting(x,y+sign(playerVerticalSpeed),obj_wall)){
		y+=sign(playerVerticalSpeed);
	}
}