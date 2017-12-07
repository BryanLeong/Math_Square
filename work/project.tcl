set projDir "/home/parallels/Documents/Math_Square/work/planAhead"
set projName "Math_Square"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/parallels/Documents/Math_Square/work/verilog/mojo_top_0.v" "/home/parallels/Documents/Math_Square/work/verilog/display_1.v" "/home/parallels/Documents/Math_Square/work/verilog/game_2.v" "/home/parallels/Documents/Math_Square/work/verilog/reset_conditioner_3.v" "/home/parallels/Documents/Math_Square/work/verilog/led_matrix_4.v" "/home/parallels/Documents/Math_Square/work/verilog/led_matrix_5.v" "/home/parallels/Documents/Math_Square/work/verilog/led_matrix_6.v" "/home/parallels/Documents/Math_Square/work/verilog/levels_7.v" "/home/parallels/Documents/Math_Square/work/verilog/edge_detector_8.v" "/home/parallels/Documents/Math_Square/work/verilog/edge_detector_8.v" "/home/parallels/Documents/Math_Square/work/verilog/edge_detector_8.v" "/home/parallels/Documents/Math_Square/work/verilog/edge_detector_8.v" "/home/parallels/Documents/Math_Square/work/verilog/button_conditioner_12.v" "/home/parallels/Documents/Math_Square/work/verilog/button_conditioner_12.v" "/home/parallels/Documents/Math_Square/work/verilog/button_conditioner_12.v" "/home/parallels/Documents/Math_Square/work/verilog/button_conditioner_12.v" "/home/parallels/Documents/Math_Square/work/verilog/marker_16.v" "/home/parallels/Documents/Math_Square/work/verilog/spi_master_17.v" "/home/parallels/Documents/Math_Square/work/verilog/spi_master_18.v" "/home/parallels/Documents/Math_Square/work/verilog/spi_master_19.v" "/home/parallels/Documents/Math_Square/work/verilog/pipeline_20.v" "/home/parallels/Documents/Math_Square/work/verilog/pipeline_20.v" "/home/parallels/Documents/Math_Square/work/verilog/pipeline_20.v" "/home/parallels/Documents/Math_Square/work/verilog/pipeline_20.v" "/home/parallels/Documents/Math_Square/work/verilog/alu_24.v" "/home/parallels/Documents/Math_Square/work/verilog/compare_25.v" "/home/parallels/Documents/Math_Square/work/verilog/adder_26.v" "/home/parallels/Documents/Math_Square/work/verilog/boolean_27.v" "/home/parallels/Documents/Math_Square/work/verilog/shifter_28.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/parallels/Documents/Math_Square/constraint/display.ucf" "/home/parallels/Documents/mojo-ide-B1.3.6/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
