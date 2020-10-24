//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Oct 24 13:19:26 2020
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
    MSS_RESET_N_F2M,
    // Outputs
    FIC_0_APB_M_PADDR,
    FIC_0_APB_M_PENABLE,
    FIC_0_APB_M_PSEL,
    FIC_0_APB_M_PWDATA,
    FIC_0_APB_M_PWRITE,
    MMUART_0_DTR,
    MMUART_0_RTS,
    MMUART_0_TXD,
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
input         MSS_RESET_N_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] FIC_0_APB_M_PADDR;
output        FIC_0_APB_M_PENABLE;
output        FIC_0_APB_M_PSEL;
output [31:0] FIC_0_APB_M_PWDATA;
output        FIC_0_APB_M_PWRITE;
output        MMUART_0_DTR;
output        MMUART_0_RTS;
output        MMUART_0_TXD;
output        MSS_RESET_N_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] FIC_0_APB_MASTER_PADDR;
wire          FIC_0_APB_MASTER_PENABLE;
wire   [31:0] FIC_0_APB_M_PRDATA;
wire          FIC_0_APB_M_PREADY;
wire          FIC_0_APB_MASTER_PSELx;
wire          FIC_0_APB_M_PSLVERR;
wire   [31:0] FIC_0_APB_MASTER_PWDATA;
wire          FIC_0_APB_MASTER_PWRITE;
wire          M3_RESET_N;
wire          MCCC_CLK_BASE;
wire          MCCC_CLK_BASE_PLL_LOCK;
wire          MMUART_0_CTS;
wire          MMUART_0_DSR;
wire          MMUART_0_DTR_net_0;
wire          MMUART_0_RTS_net_0;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_net_0;
wire          MSS_RESET_N_F2M;
wire          MSS_RESET_N_M2F_net_0;
wire          MMUART_0_TXD_net_1;
wire          MMUART_0_RTS_net_1;
wire          MMUART_0_DTR_net_1;
wire          FIC_0_APB_MASTER_PSELx_net_0;
wire          FIC_0_APB_MASTER_PENABLE_net_0;
wire          FIC_0_APB_MASTER_PWRITE_net_0;
wire   [31:0] FIC_0_APB_MASTER_PADDR_net_0;
wire   [31:0] FIC_0_APB_MASTER_PWDATA_net_0;
wire          MSS_RESET_N_M2F_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1             = MMUART_0_TXD_net_0;
assign MMUART_0_TXD                   = MMUART_0_TXD_net_1;
assign MMUART_0_RTS_net_1             = MMUART_0_RTS_net_0;
assign MMUART_0_RTS                   = MMUART_0_RTS_net_1;
assign MMUART_0_DTR_net_1             = MMUART_0_DTR_net_0;
assign MMUART_0_DTR                   = MMUART_0_DTR_net_1;
assign FIC_0_APB_MASTER_PSELx_net_0   = FIC_0_APB_MASTER_PSELx;
assign FIC_0_APB_M_PSEL               = FIC_0_APB_MASTER_PSELx_net_0;
assign FIC_0_APB_MASTER_PENABLE_net_0 = FIC_0_APB_MASTER_PENABLE;
assign FIC_0_APB_M_PENABLE            = FIC_0_APB_MASTER_PENABLE_net_0;
assign FIC_0_APB_MASTER_PWRITE_net_0  = FIC_0_APB_MASTER_PWRITE;
assign FIC_0_APB_M_PWRITE             = FIC_0_APB_MASTER_PWRITE_net_0;
assign FIC_0_APB_MASTER_PADDR_net_0   = FIC_0_APB_MASTER_PADDR;
assign FIC_0_APB_M_PADDR[31:0]        = FIC_0_APB_MASTER_PADDR_net_0;
assign FIC_0_APB_MASTER_PWDATA_net_0  = FIC_0_APB_MASTER_PWDATA;
assign FIC_0_APB_M_PWDATA[31:0]       = FIC_0_APB_MASTER_PWDATA_net_0;
assign MSS_RESET_N_M2F_net_1          = MSS_RESET_N_M2F_net_0;
assign MSS_RESET_N_M2F                = MSS_RESET_N_M2F_net_1;
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
        // Outputs
        .MMUART_0_TXD           ( MMUART_0_TXD_net_0 ),
        .FIC_0_APB_M_PSEL       ( FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( FIC_0_APB_MASTER_PENABLE ),
        .MMUART_0_RTS           ( MMUART_0_RTS_net_0 ),
        .MMUART_0_DTR           ( MMUART_0_DTR_net_0 ),
        .MSS_RESET_N_M2F        ( MSS_RESET_N_M2F_net_0 ),
        .FIC_0_APB_M_PADDR      ( FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA     ( FIC_0_APB_MASTER_PWDATA ) 
        );


endmodule
