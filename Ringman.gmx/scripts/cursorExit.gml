

if (deviceManagement == 0)
{
    cursor_sprite = mouseUnlit;
}
else if (deviceManagement == 1)
{
    litUnlit =0;
}
else if (deviceManagement == 2)
{
    if(win8_device_touchscreen_available())
    {
        litUnlit =0;
    }
    else
    {
        cursor_sprite = mouseUnlit;
    }
}
