#ifndef CONFIG_H
#define CONFIG_H

#define MOD Mod4Mask
#define ROUND_CORNERS 3

const char* menu[]    = {"dmenu_run",      0};
const char* term[]    = {"termite",             0};
const char* scrot[]   = {"scrot",            0};
const char* briup[]   = {"light", "-A", "5", 0};
const char* bridown[] = {"light", "-U", "5", 0};
const char* voldown[] = {"amixer", "set", "Master", "5%-",         0};
const char* volup[]   = {"amixer", "set", "Master", "5%+",         0};
const char* volmute[] = {"amixer", "set", "Master", "toggle",      0};
const char* firefox[]  = {"firefox", 0};
const char* killwm[] = {"killall", "Xorg", 0};

const char* wmutils_resize[] = {"xmrs", 0};
const char* wmutils_kill[] = {"killall", "xmrs", 0};

static struct key keys[] = {
    {MOD,      XK_q,   win_kill,   {0}},
    {MOD,      XK_c,   win_center, {0}},
    {MOD,      XK_f,   win_fs,     {0}},

    {Mod1Mask,           XK_Tab, win_next,   {0}},
    {Mod1Mask|ShiftMask, XK_Tab, win_prev,   {0}},

    {MOD, XK_d,      run, {.com = menu}},
    {MOD, XK_i,      run, {.com = firefox}},
    {MOD, XK_p,      run, {.com = scrot}},
    {MOD, XK_Return, run, {.com = term}},
    {MOD, XK_e, run, {.com = killwm}},
    {MOD, XK_r, run, {.com = wmutils_resize}},
    {MOD|ShiftMask, XK_r, run, {.com = wmutils_kill}},

    {0,   XF86XK_AudioLowerVolume,  run, {.com = voldown}},
    {0,   XF86XK_AudioRaiseVolume,  run, {.com = volup}},
    {0,   XF86XK_AudioMute,         run, {.com = volmute}},
    {0,   XF86XK_MonBrightnessUp,   run, {.com = briup}},
    {0,   XF86XK_MonBrightnessDown, run, {.com = bridown}},

    {MOD,           XK_1, ws_go,     {.i = 1}},
    {MOD|ShiftMask, XK_1, win_to_ws, {.i = 1}},
    {MOD,           XK_2, ws_go,     {.i = 2}},
    {MOD|ShiftMask, XK_2, win_to_ws, {.i = 2}},
    {MOD,           XK_3, ws_go,     {.i = 3}},
    {MOD|ShiftMask, XK_3, win_to_ws, {.i = 3}},
    {MOD,           XK_4, ws_go,     {.i = 4}},
    {MOD|ShiftMask, XK_4, win_to_ws, {.i = 4}},
    {MOD,           XK_5, ws_go,     {.i = 5}},
    {MOD|ShiftMask, XK_5, win_to_ws, {.i = 5}},
    {MOD,           XK_6, ws_go,     {.i = 6}},
    {MOD|ShiftMask, XK_6, win_to_ws, {.i = 6}},
};

#endif
