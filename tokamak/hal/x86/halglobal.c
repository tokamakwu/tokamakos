// 本文件中声明的是全局变量

#define HALGOBAL_HEAD

#include "cosmostypes.h"
#include "cosmosmctrl.h"

#ifdef CFG_X86_PLATFORM

HAL_DEFGLOB_VARIABLE(machbstart_t, kmachbsp);

#endif