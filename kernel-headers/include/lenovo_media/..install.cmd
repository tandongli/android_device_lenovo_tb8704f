cmd_usr/include/lenovo_media/.install := /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/lenovo_media /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/lenovo_media camera2.h cci_intf.h msm_cam_sensor.h msm_camera.h msm_camsensor_sdk.h msm_fd.h msm_gemini.h msm_gestures.h msm_isp.h msm_jpeg.h msm_jpeg_dma.h msm_mercury.h msm_vpu.h msmb_camera.h msmb_generic_buf_mgr.h msmb_isp.h msmb_ispif.h msmb_pproc.h; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/lenovo_media /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/include/lenovo_media ; /bin/sh /home2/tandongli/work/cm14_1/kernel/lenovo/msm8953/scripts/headers_install.sh ./usr/include/lenovo_media ./include/generated/lenovo_media ; for F in ; do echo "\#include <asm-generic/$$F>" > ./usr/include/lenovo_media/$$F; done; touch usr/include/lenovo_media/.install
