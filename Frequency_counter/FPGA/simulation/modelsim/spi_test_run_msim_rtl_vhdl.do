transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/oscar/OneDrive/Music/Documents/Robotics year 2/ELEC 241/Referral/spi_slave-master/SPI_SLAVE_EXAMPLE/FPGA/wait_N_seconds.vhd}

