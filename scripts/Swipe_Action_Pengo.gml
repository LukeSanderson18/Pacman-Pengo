///Swipe Action Individually

//
// sets move[0]||move[1] to -1 - 1 depending on swipe.
//


if (device_mouse_check_button_pressed(0, mb_left) && device_mouse_y(0) > room_height*0.5)
    {
    j = 0;
    MouseXStart = device_mouse_x(j);
    MouseYStart = device_mouse_y(j);
    Swipe = true;
    show_debug_message("ONEONEOEN");
    }
if (device_mouse_check_button_pressed(1, mb_left) && device_mouse_y(1) > room_height*0.5)
    {
    j = 1;
    MouseXStart = device_mouse_x(j);
    MouseYStart = device_mouse_y(j);
    Swipe = true;
     show_debug_message("TWOTWOTWO");
    }


if (Swipe)
{
if(device_mouse_x(j) != 0)
{
MouseX = device_mouse_x(j);
}
if(device_mouse_y(j) != 0)
{
MouseY = device_mouse_y(j);
}
SwipeTime++;
PD = point_direction(MouseXStart, MouseYStart, MouseX, MouseY);

asdf = point_distance(MouseXStart, MouseYStart, MouseX, MouseY);
show_debug_message((j));
    //if (device_mouse_check_button_released(0, mb_left))
    if (asdf > 15)
    {
   show_debug_message(MouseX);
    Swipe = false;
    SwipeSpeed = point_distance(MouseXStart, MouseYStart, MouseX, MouseY) / SwipeTime;
    SwipeTime = 0;
    startSwipe = true;
    
        if ((PD > 315) or (PD < 45)) //Right
        //and (SwipeSpeed > 4.5)
        {
         // code is executed for swiping right // 
         
          show_debug_message("swiped right");
          move[0] = 1;
          move[1] = 0;
         
        } else
        if ((PD > 45) and (PD < 135)) //Up
       // and (SwipeSpeed > 4.5)
        {
         // code is executed for swiping up //   
                 show_debug_message("swiped up");
          move[0] = 0;
          move[1] = -1;
        } else
        if ((PD > 135) and (PD < 225)) //Left
        //and (SwipeSpeed > 4.5)
        {
                show_debug_message("swiped left");
          move[0] = -1;
          move[1] = 0;
         // code is executed for swiping left // 
        } else
        if ((PD > 225) and (PD < 315)) //Down
        //and (SwipeSpeed > 4.5)
        {
                show_debug_message("swiped down");
         // code is executed for swiping down //  
          move[0] = 0;
          move[1] = 1;     
        }
        pressed = true;
    } 
}

if (device_mouse_check_button_released(j, mb_left) && device_mouse_y(j) > room_height*0.5 )
    {
    Swipe = false;
    SwipeTime = 0;
    show_debug_message("stopped.");
    pressed = false;
     move[0] = 0;
     move[1] = 0;
    }

