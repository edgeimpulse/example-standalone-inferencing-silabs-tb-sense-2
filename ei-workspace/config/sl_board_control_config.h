#ifndef SL_BOARD_CONTROL_CONFIG_H
#define SL_BOARD_CONTROL_CONFIG_H

// <<< Use Configuration Wizard in Context Menu >>>

// <q SL_BOARD_ENABLE_SENSOR_RHT> Enable Relative Humidity and Temperature sensor
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_RHT              0

// <q SL_BOARD_ENABLE_SENSOR_HALL> Enable Hall Effect sensor
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_HALL             0

// <q SL_BOARD_ENABLE_SENSOR_PRESSURE> Enable Barometric Pressure sensor
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_PRESSURE         0

// <q SL_BOARD_ENABLE_SENSOR_LIGHT> Enable Light sensor
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_LIGHT            0

// <q SL_BOARD_ENABLE_SENSOR_GAS> Enable Air Quality sensor
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_GAS              0

// <q SL_BOARD_ENABLE_SENSOR_IMU> Enable Inertial Measurement Unit
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_IMU              1

// <q SL_BOARD_ENABLE_SENSOR_MICROPHONE> Enable Microphone
// <i> Default: 0
#define SL_BOARD_ENABLE_SENSOR_MICROPHONE       1

// <q SL_BOARD_DISABLE_MEMORY_SPI> Disable SPI Flash
// <i> Default: 1
#define SL_BOARD_DISABLE_MEMORY_SPI             0

// <<< end of configuration section >>>

// <<< sl:start pin_tool >>>

// <gpio> SL_BOARD_ENABLE_SENSOR_RHT
// $[GPIO_SL_BOARD_ENABLE_SENSOR_RHT]
#define SL_BOARD_ENABLE_SENSOR_RHT_PORT         gpioPortF
#define SL_BOARD_ENABLE_SENSOR_RHT_PIN          9
// [GPIO_SL_BOARD_ENABLE_SENSOR_RHT]$

// <gpio> SL_BOARD_ENABLE_SENSOR_HALL
// $[GPIO_SL_BOARD_ENABLE_SENSOR_HALL]
#define SL_BOARD_ENABLE_SENSOR_HALL_PORT        gpioPortB
#define SL_BOARD_ENABLE_SENSOR_HALL_PIN         10
// [GPIO_SL_BOARD_ENABLE_SENSOR_HALL]$

// <gpio> SL_BOARD_ENABLE_SENSOR_PRESSURE
// $[GPIO_SL_BOARD_ENABLE_SENSOR_PRESSURE]
#define SL_BOARD_ENABLE_SENSOR_PRESSURE_PORT    gpioPortF
#define SL_BOARD_ENABLE_SENSOR_PRESSURE_PIN     9
// [GPIO_SL_BOARD_ENABLE_SENSOR_PRESSURE]$

// <gpio> SL_BOARD_ENABLE_SENSOR_LIGHT
// $[GPIO_SL_BOARD_ENABLE_SENSOR_LIGHT]
#define SL_BOARD_ENABLE_SENSOR_LIGHT_PORT       gpioPortF
#define SL_BOARD_ENABLE_SENSOR_LIGHT_PIN        9
// [GPIO_SL_BOARD_ENABLE_SENSOR_LIGHT]$

// <gpio> SL_BOARD_ENABLE_SENSOR_GAS
// $[GPIO_SL_BOARD_ENABLE_SENSOR_GAS]
#define SL_BOARD_ENABLE_SENSOR_GAS_PORT         gpioPortF
#define SL_BOARD_ENABLE_SENSOR_GAS_PIN          14
// [GPIO_SL_BOARD_ENABLE_SENSOR_GAS]$

// <gpio> SL_BOARD_ENABLE_SENSOR_IMU
// $[GPIO_SL_BOARD_ENABLE_SENSOR_IMU]
#define SL_BOARD_ENABLE_SENSOR_IMU_PORT         gpioPortF
#define SL_BOARD_ENABLE_SENSOR_IMU_PIN          8
// [GPIO_SL_BOARD_ENABLE_SENSOR_IMU]$

// <gpio> SL_BOARD_ENABLE_SENSOR_MICROPHONE
// $[GPIO_SL_BOARD_ENABLE_SENSOR_MICROPHONE]
#define SL_BOARD_ENABLE_SENSOR_MICROPHONE_PORT  gpioPortF
#define SL_BOARD_ENABLE_SENSOR_MICROPHONE_PIN   10
// [GPIO_SL_BOARD_ENABLE_SENSOR_MICROPHONE]$

// <<< sl:end pin_tool >>>

#endif // SL_BOARD_CONTROL_CONFIG_H
