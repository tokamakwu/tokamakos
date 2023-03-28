/**********************************************************
        开始入口文件hal_start.c
**********************************************************/

#include "cosmostypes.h"
#include "cosmosmctrl.h"

void hal_start()
{
    init_hal(); // halinit.c 中;

    // 在 kernel/krlinit.c
    init_krl();

    //  这个死循环目的就是避免该函数返回, 因为这个返回了就无处可去, 避免走回头路
    for (;;)
        ;
    return;
}
