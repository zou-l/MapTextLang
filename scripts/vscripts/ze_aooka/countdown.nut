function ShowCountText(seconds)
{
    local count = seconds;
    for(local i = count; i >= 0; i--)
    {
        EntFire("text_seconds", "SetText", i.tostring() + (i > 1 ? " seconds left" : " second left"), count - i);
        EntFire("text_seconds", "Display", "", count - i + 0.05);
    }
}
