//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Oct 11 12:25:25 2020
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
    MSS_RESET_N_F2M,
    // Outputs
    FIC_0_APB_M_PADDR,
    FIC_0_APB_M_PENABLE,
    FIC_0_APB_M_PSEL,
    FIC_0_APB_M_PWDATA,
    FIC_0_APB_M_PWRITE,
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
input         MSS_RESET_N_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] FIC_0_APB_M_PADDR;
output        FIC_0_APB_M_PENABLE;
output        FIC_0_APB_M_PSEL;
output [31:0] FIC_0_APB_M_PWDATA;
output        FIC_0_APB_M_PWRITE;
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
wire          MSS_RESET_N_F2M;
wire          MSS_RESET_N_M2F_net_0;
wire   [31:0] FIC_0_APB_MASTER_PADDR_net_0;
wire          FIC_0_APB_MASTER_PSELx_net_0;
wire          FIC_0_APB_MASTER_PENABLE_net_0;
wire          FIC_0_APB_MASTER_PWRITE_net_0;
wire   [31:0] FIC_0_APB_MASTER_PWDATA_net_0;
wire          MSS_RESET_N_M2F_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FIC_0_APB_MASTER_PADDR_net_0   = FIC_0_APB_MASTER_PADDR;
assign FIC_0_APB_M_PADDR[31:0]        = FIC_0_APB_MASTER_PADDR_net_0;
assign FIC_0_APB_MASTER_PSELx_net_0   = FIC_0_APB_MASTER_PSELx;
assign FIC_0_APB_M_PSEL               = FIC_0_APB_MASTER_PSELx_net_0;
assign FIC_0_APB_MASTER_PENABLE_net_0 = FIC_0_APB_MASTER_PENABLE;
assign FIC_0_APB_M_PENABLE            = FIC_0_APB_MASTER_PENABLE_net_0;
assign FIC_0_APB_MASTER_PWRITE_net_0  = FIC_0_APB_MASTER_PWRITE;
assign FIC_0_APB_M_PWRITE             = FIC_0_APB_MASTER_PWRITE_net_0;
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
        .MCCC_CLK_BASE       ( MCCC_CLK_BASE ),
        .FIC_0_APB_M_PRDATA  ( FIC_0_APB_M_PRDATA ),
        .FIC_0_APB_M_PREADY  ( FIC_0_APB_M_PREADY ),
        .FIC_0_APB_M_PSLVERR ( FIC_0_APB_M_PSLVERR ),
        .MSS_RESET_N_F2M     ( MSS_RESET_N_F2M ),
        .MCCC_CLK_BASE_PLL_LOCK ( MCCC_CLK_BASE_PLL_LOCK ),
        .M3_RESET_N          ( M3_RESET_N ),
        // Outputs
        .FIC_0_APB_M_PADDR   ( FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PSEL    ( FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE  ( FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE ( FIC_0_APB_MASTER_PENABLE ),
        .FIC_0_APB_M_PWDATA  ( FIC_0_APB_MASTER_PWDATA ),
        .MSS_RESET_N_M2F     ( MSS_RESET_N_M2F_net_0 ) 
        );


endmodule
