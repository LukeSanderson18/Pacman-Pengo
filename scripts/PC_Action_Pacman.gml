if keyboard_check(vk_left)
   {
   move[0]=-1;
   move[1]=0;
   }

if keyboard_check(vk_right)
   {
   move[0]=1;
   move[1]=0;
   }

if keyboard_check(vk_up)
   {
   move[0]=0;
   move[1]=-1;
   }
   
if keyboard_check(vk_down)
   {
   move[0]=0;
   move[1]=1;
   }
