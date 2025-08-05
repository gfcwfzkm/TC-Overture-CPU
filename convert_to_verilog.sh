#!/usr/bin/env bash

set -e

# Project Name
PRJ_NAME=tc_overture_soc
# VHDL source files
SRC_FILES_TOP=src/*.vhdl 
SRC_FILES_OVERTURE=src/overture/*.vhdl
SRC_FILES_PERIPHERALS=src/peripherals/*.vhdl
# Top design
TOP=soc_top

mkdir -p build

# Import and analyze sources
ghdl -i --std=08 --work=$PRJ_NAME --workdir=build -Pbuild $SRC_FILES_TOP $SRC_FILES_OVERTURE $SRC_FILES_PERIPHERALS
ghdl -m --std=08 --work=$PRJ_NAME --workdir=build $TOP
# Synthesize to Verilog
ghdl synth --std=08 --work=$PRJ_NAME --workdir=build -Pbuild --out=verilog $TOP > $TOP.v 

# Show interface of generated verilog module
echo ""
echo "--------------------------------"
echo "Verilog instantiation prototype"
echo "--------------------------------"
sed -n "/module $TOP/,/);/p" $TOP.v 
echo "--------------------------------"
echo ""
