hsp = move[0] * moveSpeed;
vsp = move[1] * moveSpeed; 

show_debug_message(moveTimer);
//hor
if(isMoving == false)
{
//if moving at all
if((move[0] != 0 || move[1] != 0) && ((x mod 8) == 0) &&((y mod 8) == 0))
{
    isMoving =true;
    moveTimer = gridSize;
      
}
}

if (isMoving == true)
{
if(!pressed && (((x mod 8) == 0 ) ||((y mod 8) == 0)))
   {
   moveTimer -= moveSpeed;
   if (moveTimer == 0) 
   {
        isMoving = false;
        move[0] = 0;
        move[1] = 0;
   }
   }
   
   
    if(place_meeting(x+hsp,y,obj_wall))
    {
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x+= sign(hsp);
    }
    hsp = 0;
    }
//ver
if(place_meeting(x,y+vsp,obj_wall))
    {
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y+= sign(vsp);
    }
    vsp = 0;
    }

   x+=hsp;
   y+=vsp;
   
   
   
   
}




