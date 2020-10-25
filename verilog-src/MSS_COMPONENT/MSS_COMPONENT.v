//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Oct 25 19:44:10 2020
// Version: v12.5 12.900.10.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MSS_COMPONENT
module MSS_COMPONENT(
    // Inputs
    FIC_0_APB_M_PRDATA,
    FIC_0_APB_M_PREADY,
    FIC_0_APB_M_PSLVERR,
    M3_RESET_N,
    MCCC_CLK_BASE,
    MCCC_CLK_BASE_PLL_LOCK,
    MMUART_0_CTS,
    MMUART_0_DSR,
    MMUART_0_RXD,
    MMUART_1_RXD_F2M,
    MSS_RESET_N_F2M,
    // Outputs
    FIC_0_APB_M_PADDR,
    FIC_0_APB_M_PENABLE,
    FIC_0_APB_M_PSEL,
    FIC_0_APB_M_PWDATA,
    FIC_0_APB_M_PWRITE,
    GPIO_0_M2F,
    GPIO_1_M2F,
    GPIO_2_M2F,
    GPIO_3_M2F,
    GPIO_4_M2F,
    GPIO_5_M2F,
    GPIO_6_M2F,
    GPIO_7_M2F,
    MMUART_0_DTR,
    MMUART_0_RTS,
    MMUART_0_TXD,
    MMUART_1_TXD_M2F,
    MSS_RESET_N_M2F
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] FIC_0_APB_M_PRDATA;
input         FIC_0_APB_M_PREADY;
input         FIC_0_APB_M_PSLVERR;
input         M3_RESET_N;
input         MCCC_CLK_BASE;
input         MCCC_CLK_BASE_PLL_LOCK;
input         MMUART_0_CTS;
input         MMUART_0_DSR;
input         MMUART_0_RXD;
input         MMUART_1_RXD_F2M;
input         MSS_RESET_N_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] FIC_0_APB_M_PADDR;
output        FIC_0_APB_M_PENABLE;
output        FIC_0_APB_M_PSEL;
output [31:0] FIC_0_APB_M_PWDATA;
output        FIC_0_APB_M_PWRITE;
output        GPIO_0_M2F;
output        GPIO_1_M2F;
output        GPIO_2_M2F;
output        GPIO_3_M2F;
output        GPIO_4_M2F;
output        GPIO_5_M2F;
output        GPIO_6_M2F;
output        GPIO_7_M2F;
output        MMUART_0_DTR;
output        MMUART_0_RTS;
output        MMUART_0_TXD;
output        MMUART_1_TXD_M2F;
output        MSS_RESET_N_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] FIC_0_APB_MASTER_0_PADDR;
wire          FIC_0_APB_MASTER_0_PENABLE;
wire   [31:0] FIC_0_APB_M_PRDATA;
wire          FIC_0_APB_M_PREADY;
wire          FIC_0_APB_MASTER_0_PSELx;
wire          FIC_0_APB_M_PSLVERR;
wire   [31:0] FIC_0_APB_MASTER_0_PWDATA;
wire          FIC_0_APB_MASTER_0_PWRITE;
wire          GPIO_0_M2F_net_0;
wire          GPIO_1_M2F_net_0;
wire          GPIO_2_M2F_net_0;
wire          GPIO_3_M2F_net_0;
wire          GPIO_4_M2F_net_0;
wire          GPIO_5_M2F_net_0;
wire          GPIO_6_M2F_net_0;
wire          GPIO_7_M2F_net_0;
wire          M3_RESET_N;
wire          MCCC_CLK_BASE;
wire          MCCC_CLK_BASE_PLL_LOCK;
wire          MMUART_0_CTS;
wire          MMUART_0_DSR;
wire          MMUART_0_DTR_net_0;
wire          MMUART_0_RTS_net_0;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_net_0;
wire          MMUART_1_RXD_F2M;
wire          MMUART_1_TXD_M2F_net_0;
wire          MSS_RESET_N_F2M;
wire          MSS_RESET_N_M2F_net_0;
wire          MMUART_0_TXD_net_1;
wire          MMUART_0_RTS_net_1;
wire          MMUART_0_DTR_net_1;
wire          MSS_RESET_N_M2F_net_1;
wire   [31:0] FIC_0_APB_MASTER_0_PADDR_net_0;
wire          FIC_0_APB_MASTER_0_PSELx_net_0;
wire          FIC_0_APB_MASTER_0_PENABLE_net_0;
wire          FIC_0_APB_MASTER_0_PWRITE_net_0;
wire   [31:0] FIC_0_APB_MASTER_0_PWDATA_net_0;
wire          GPIO_0_M2F_net_1;
wire          GPIO_7_M2F_net_1;
wire          GPIO_6_M2F_net_1;
wire          GPIO_5_M2F_net_1;
wire          GPIO_4_M2F_net_1;
wire          GPIO_3_M2F_net_1;
wire          GPIO_2_M2F_net_1;
wire          GPIO_1_M2F_net_1;
wire          MMUART_1_TXD_M2F_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1               = MMUART_0_TXD_net_0;
assign MMUART_0_TXD                     = MMUART_0_TXD_net_1;
assign MMUART_0_RTS_net_1               = MMUART_0_RTS_net_0;
assign MMUART_0_RTS                     = MMUART_0_RTS_net_1;
assign MMUART_0_DTR_net_1               = MMUART_0_DTR_net_0;
assign MMUART_0_DTR                     = MMUART_0_DTR_net_1;
assign MSS_RESET_N_M2F_net_1            = MSS_RESET_N_M2F_net_0;
assign MSS_RESET_N_M2F                  = MSS_RESET_N_M2F_net_1;
assign FIC_0_APB_MASTER_0_PADDR_net_0   = FIC_0_APB_MASTER_0_PADDR;
assign FIC_0_APB_M_PADDR[31:0]          = FIC_0_APB_MASTER_0_PADDR_net_0;
assign FIC_0_APB_MASTER_0_PSELx_net_0   = FIC_0_APB_MASTER_0_PSELx;
assign FIC_0_APB_M_PSEL                 = FIC_0_APB_MASTER_0_PSELx_net_0;
assign FIC_0_APB_MASTER_0_PENABLE_net_0 = FIC_0_APB_MASTER_0_PENABLE;
assign FIC_0_APB_M_PENABLE              = FIC_0_APB_MASTER_0_PENABLE_net_0;
assign FIC_0_APB_MASTER_0_PWRITE_net_0  = FIC_0_APB_MASTER_0_PWRITE;
assign FIC_0_APB_M_PWRITE               = FIC_0_APB_MASTER_0_PWRITE_net_0;
assign FIC_0_APB_MASTER_0_PWDATA_net_0  = FIC_0_APB_MASTER_0_PWDATA;
assign FIC_0_APB_M_PWDATA[31:0]         = FIC_0_APB_MASTER_0_PWDATA_net_0;
assign GPIO_0_M2F_net_1                 = GPIO_0_M2F_net_0;
assign GPIO_0_M2F                       = GPIO_0_M2F_net_1;
assign GPIO_7_M2F_net_1                 = GPIO_7_M2F_net_0;
assign GPIO_7_M2F                       = GPIO_7_M2F_net_1;
assign GPIO_6_M2F_net_1                 = GPIO_6_M2F_net_0;
assign GPIO_6_M2F                       = GPIO_6_M2F_net_1;
assign GPIO_5_M2F_net_1                 = GPIO_5_M2F_net_0;
assign GPIO_5_M2F                       = GPIO_5_M2F_net_1;
assign GPIO_4_M2F_net_1                 = GPIO_4_M2F_net_0;
assign GPIO_4_M2F                       = GPIO_4_M2F_net_1;
assign GPIO_3_M2F_net_1                 = GPIO_3_M2F_net_0;
assign GPIO_3_M2F                       = GPIO_3_M2F_net_1;
assign GPIO_2_M2F_net_1                 = GPIO_2_M2F_net_0;
assign GPIO_2_M2F                       = GPIO_2_M2F_net_1;
assign GPIO_1_M2F_net_1                 = GPIO_1_M2F_net_0;
assign GPIO_1_M2F                       = GPIO_1_M2F_net_1;
assign MMUART_1_TXD_M2F_net_1           = MMUART_1_TXD_M2F_net_0;
assign MMUART_1_TXD_M2F                 = MMUART_1_TXD_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_COMPONENT_MSS
MSS_COMPONENT_MSS MSS_COMPONENT_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( MCCC_CLK_BASE ),
        .MMUART_0_RXD           ( MMUART_0_RXD ),
        .FIC_0_APB_M_PREADY     ( FIC_0_APB_M_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( FIC_0_APB_M_PSLVERR ),
        .MMUART_0_DSR           ( MMUART_0_DSR ),
        .MMUART_0_CTS           ( MMUART_0_CTS ),
        .MCCC_CLK_BASE_PLL_LOCK ( MCCC_CLK_BASE_PLL_LOCK ),
        .MSS_RESET_N_F2M        ( MSS_RESET_N_F2M ),
        .M3_RESET_N             ( M3_RESET_N ),
        .FIC_0_APB_M_PRDATA     ( FIC_0_APB_M_PRDATA ),
        .MMUART_1_RXD_F2M       ( MMUART_1_RXD_F2M ),
        // Outputs
        .MMUART_0_TXD           ( MMUART_0_TXD_net_0 ),
        .FIC_0_APB_M_PSEL       ( FIC_0_APB_MASTER_0_PSELx ),
        .FIC_0_APB_M_PWRITE     ( FIC_0_APB_MASTER_0_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( FIC_0_APB_MASTER_0_PENABLE ),
        .MMUART_0_RTS           ( MMUART_0_RTS_net_0 ),
        .MMUART_0_DTR           ( MMUART_0_DTR_net_0 ),
        .MSS_RESET_N_M2F        ( MSS_RESET_N_M2F_net_0 ),
        .FIC_0_APB_M_PADDR      ( FIC_0_APB_MASTER_0_PADDR ),
        .FIC_0_APB_M_PWDATA     ( FIC_0_APB_MASTER_0_PWDATA ),
        .MMUART_1_TXD_M2F       ( MMUART_1_TXD_M2F_net_0 ),
        .GPIO_0_M2F             ( GPIO_0_M2F_net_0 ),
        .GPIO_1_M2F             ( GPIO_1_M2F_net_0 ),
        .GPIO_2_M2F             ( GPIO_2_M2F_net_0 ),
        .GPIO_3_M2F             ( GPIO_3_M2F_net_0 ),
        .GPIO_4_M2F             ( GPIO_4_M2F_net_0 ),
        .GPIO_5_M2F             ( GPIO_5_M2F_net_0 ),
        .GPIO_6_M2F             ( GPIO_6_M2F_net_0 ),
        .GPIO_7_M2F             ( GPIO_7_M2F_net_0 ) 
        );


endmodule
