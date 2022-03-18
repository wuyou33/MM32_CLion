/**************************************************************************/ /**
    \file     spi.c
    \brief    SPI function Source File
    \author   Lao·Zhu
    \version  V1.3.2
    \date     06. March 2022
******************************************************************************/

#include "spi.h"
#include "hal_conf.h"
#include "hal_gpio.h"
#include "delay.h"
#include "pin.h"

unsigned int spi2_readwrite_byte(unsigned int tx_data) {
    SPI_SendData(SPI2, tx_data);
    while (1) {
        if (SPI_GetFlagStatus(SPI2, SPI_FLAG_RXAVL))
            return SPI_ReceiveData(SPI2);
    }
}

void spi2_config(void) {
    SPI_InitTypeDef SPI_InitStruct;
    GPIO_InitTypeDef GPIO_InitStruct;
    GPIO_StructInit(&GPIO_InitStruct);

    RCC_AHBPeriphClockCmd(RCC_AHBENR_GPIOE, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1ENR_SPI2, ENABLE);

    GPIO_PinAFConfig(GPIOE, GPIO_PinSource2, GPIO_AF_5);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource5, GPIO_AF_5);
    GPIO_PinAFConfig(GPIOE, GPIO_PinSource6, GPIO_AF_5);

    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_2;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOE, &GPIO_InitStruct);
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_6;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOE, &GPIO_InitStruct);
    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_5;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IPU;
    GPIO_Init(GPIOE, &GPIO_InitStruct);

    SPI_StructInit(&SPI_InitStruct);
    SPI_InitStruct.SPI_Mode = SPI_Mode_Master;
    SPI_InitStruct.SPI_DataSize = SPI_DataSize_8b;
    SPI_InitStruct.SPI_DataWidth = SPI_DataWidth_8b;
    SPI_InitStruct.SPI_CPOL = SPI_CPOL_High;
    SPI_InitStruct.SPI_CPHA = SPI_CPHA_2Edge;
    SPI_InitStruct.SPI_NSS = SPI_NSS_Soft;

    /* 120MHz / 128 = 0.94MHz */
    SPI_InitStruct.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_128;
    SPI_InitStruct.SPI_FirstBit = SPI_FirstBit_MSB;
    SPI_Init(SPI2, &SPI_InitStruct);
    if (SPI_InitStruct.SPI_BaudRatePrescaler <= 8)
        exSPI_DataEdgeAdjust(SPI2, SPI_DataEdgeAdjust_FAST);
    SPI_BiDirectionalLineConfig(SPI2, SPI_Direction_Tx);
    SPI_BiDirectionalLineConfig(SPI2, SPI_Direction_Rx);
    SPI_Cmd(SPI2, ENABLE);
}

void spi3_readwrite_byte(unsigned int tx_data) {
    SPI_SendData(SPI3, tx_data);
    while (1) {
        if (SPI_GetFlagStatus(SPI3, SPI_FLAG_TXEPT))
            break;
    }
}

void spi3_config(void) {
    SPI_InitTypeDef SPI_InitStruct;
    GPIO_InitTypeDef GPIO_InitStruct;
    GPIO_StructInit(&GPIO_InitStruct);

    RCC_AHBPeriphClockCmd(RCC_AHBENR_GPIOD, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1ENR_SPI3, ENABLE);

    GPIO_PinAFConfig(GPIOD, GPIO_PinSource4, GPIO_AF_5);
    GPIO_PinAFConfig(GPIOD, GPIO_PinSource6, GPIO_AF_5);
    GPIO_PinAFConfig(GPIOD, GPIO_PinSource7, GPIO_AF_5);

    GPIO_InitStruct.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_6 | GPIO_Pin_7;
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOD, &GPIO_InitStruct);

    SPI_StructInit(&SPI_InitStruct);
    SPI_InitStruct.SPI_Mode = SPI_Mode_Master;
    SPI_InitStruct.SPI_DataSize = SPI_DataSize_8b;
    SPI_InitStruct.SPI_DataWidth = SPI_DataWidth_8b;
    SPI_InitStruct.SPI_CPOL = SPI_CPOL_High;
    SPI_InitStruct.SPI_CPHA = SPI_CPHA_2Edge;
    SPI_InitStruct.SPI_NSS = SPI_NSS_Hard;

    SPI_InitStruct.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
    SPI_InitStruct.SPI_FirstBit = SPI_FirstBit_MSB;
    SPI_Init(SPI3, &SPI_InitStruct);
    if (SPI_InitStruct.SPI_BaudRatePrescaler <= 8)
        exSPI_DataEdgeAdjust(SPI3, SPI_DataEdgeAdjust_FAST);

    SPI_BiDirectionalLineConfig(SPI3, SPI_Direction_Tx);
    SPI_Cmd(SPI3, ENABLE);
}
