cmd_usr/include/linux/nfsd/.install := /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/nfsd /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/uapi/linux/nfsd cld.h debug.h export.h nfsfh.h stats.h; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/nfsd /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/linux/nfsd ; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/linux/nfsd ./include/generated/uapi/linux/nfsd ; for F in ; do echo "\#include <asm-generic/$$F>" > ./usr/include/linux/nfsd/$$F; done; touch usr/include/linux/nfsd/.install
