

if (deviceManagement == 0)
{
    cursor_sprite = mouseLit;
}
else if (deviceManagement == 1)
{
    litUnlit =1;
}
else if (deviceManagement == 2)
{
    if(win8_device_touchscreen_available())
    {
        litUnlit =1;
    }
    else
    {
        cursor_sprite = mouseLit;
    }
}
