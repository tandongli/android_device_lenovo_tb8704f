cmd_usr/include/linux/tc_ematch/.install := /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/tc_ematch /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/uapi/linux/tc_ematch tc_em_cmp.h tc_em_meta.h tc_em_nbyte.h tc_em_text.h; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/tc_ematch /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/linux/tc_ematch ; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/tc_ematch ./include/generated/uapi/linux/tc_ematch ; for F in ; do echo "\#include <asm-generic/$$F>" > ./usr/include/linux/tc_ematch/$$F; done; touch usr/include/linux/tc_ematch/.install
