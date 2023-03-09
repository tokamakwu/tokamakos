#include "cosmostypes.h"
#include "cosmosmctrl.h"

void hal_sysdie(char_t *errmsg)
{
    kprint("COSMOS SYSTEM IS DIE %s", errmsg);
    for (;;)
        ;
    return;
}

void system_error(char_t *errmsg)
{
    hal_sysdie(errmsg);
    return;
}