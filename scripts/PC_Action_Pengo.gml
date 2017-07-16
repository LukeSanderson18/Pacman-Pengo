if keyboard_check(ord('A'))
   {
   move[0]=-1;
   move[1]=0;
   startSwipe = true;
   }

else if keyboard_check(ord('D'))
   {
   move[0]=1;
   move[1]=0;
      startSwipe = true;
   }

else if keyboard_check(ord('W'))
   {
   move[0]=0;
   move[1]=-1;
      startSwipe = true;
   }
   
else if keyboard_check(ord('S'))
   {
   move[0]=0;
   move[1]=1;
      startSwipe = true;
   }
   
   else
   {
      startSwipe = false;
   }
