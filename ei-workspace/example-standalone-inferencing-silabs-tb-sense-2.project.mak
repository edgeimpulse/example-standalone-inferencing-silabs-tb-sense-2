####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 6                                               #
####################################################################

BASE_SDK_PATH = /opt/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_3.2.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>'

INCLUDES += \
 -I. \
 -Iedgeimpulse/model-parameters \
 -Iedgeimpulse/tflite-model \
 -Iedgeimpulse/edge-impulse-sdk/porting \
 -Iedgeimpulse \
 -Ibrd4166a \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/driver/leddrv/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/include \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/app/common/util/app_assert \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Include \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -Iconfig \
 -Iautogen

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -O3 \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -O3 \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o: autogen/sl_simple_rgbw_pwm_led_instances.c
	@echo 'Building autogen/sl_simple_rgbw_pwm_led_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_rgbw_pwm_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o

$(OUTPUT_DIR)/project/brd4166a/rgbled.o: brd4166a/rgbled.c
	@echo 'Building brd4166a/rgbled.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ brd4166a/rgbled.c
CDEPS += $(OUTPUT_DIR)/project/brd4166a/rgbled.d
OBJS += $(OUTPUT_DIR)/project/brd4166a/rgbled.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o: edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/BayesFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/FastMathFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/FilteringFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/StatisticsFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o: edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o: edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/memory.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o: edgeimpulse/tflite-model/trained_model_compiled.cpp
	@echo 'Building edgeimpulse/tflite-model/trained_model_compiled.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/tflite-model/trained_model_compiled.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o

$(OUTPUT_DIR)/project/ei_main.o: ei_main.cpp
	@echo 'Building ei_main.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ ei_main.cpp
CXXDEPS += $(OUTPUT_DIR)/project/ei_main.d
OBJS += $(OUTPUT_DIR)/project/ei_main.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA