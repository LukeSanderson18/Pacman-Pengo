for (var i = 0; i < 4; i++)
{   
    if device_mouse_check_button(i,mb_left)
    {
    instance_destroy();
        /*var xx = device_mouse_x(i);
        var yy = device_mouse_y(i);
        draw_set_colour(c_white);
        draw_circle(100, 100, 50, true);
        */
    }
    
}
