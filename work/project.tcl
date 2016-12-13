set projDir "C:/Users/Chua/Documents/GitHub/BattleBlob/work/planAhead"
set projName "BattleBlob"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/mojo_top_0.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/dotMatrix_1.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/dotMatrix_1.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/dotMatrix_1.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/dotMatrix_1.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/edge_detector_5.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/button_conditioner_6.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/reset_conditioner_25.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/shifter5_26.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/shifter7_27.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v" "C:/Users/Chua/Documents/GitHub/BattleBlob/work/verilog/pipeline_28.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/Chua/Documents/GitHub/BattleBlob/constraint/Extension.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
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
