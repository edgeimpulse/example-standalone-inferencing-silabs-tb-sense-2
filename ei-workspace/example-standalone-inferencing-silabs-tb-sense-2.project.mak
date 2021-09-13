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
 -Ibrd4166a \
 -Iedgeimpulse \
 -Iedgeimpulse/edge-impulse-sdk/porting \
 -Iedgeimpulse/model-parameters \
 -Iedgeimpulse/tflite-model \
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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o: edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o

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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA