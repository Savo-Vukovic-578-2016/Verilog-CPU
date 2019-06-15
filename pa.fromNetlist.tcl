
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name First_Project -dir "D:/Xilinx Workstation/First_Project/planAhead_run_2" -part xc6slx9csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx Workstation/First_Project/CPU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx Workstation/First_Project} }
set_property target_constrs_file "ucf_fajl.ucf" [current_fileset -constrset]
add_files [list {ucf_fajl.ucf}] -fileset [get_property constrset [current_run]]
link_design
