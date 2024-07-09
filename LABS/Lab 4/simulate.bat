@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Jun 25 15:45:22 -0500 2024
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim StopLightVerilog_TB_time_impl -key {Post-Implementation:sim_1:Timing:StopLightVerilog_TB} -tclbatch StopLightVerilog_TB.tcl -log simulate.log"
call xsim  StopLightVerilog_TB_time_impl -key {Post-Implementation:sim_1:Timing:StopLightVerilog_TB} -tclbatch StopLightVerilog_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0