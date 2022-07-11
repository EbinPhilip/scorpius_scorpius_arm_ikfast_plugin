search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=scorpius.srdf
robot_name_in_srdf=scorpius
moveit_config_pkg=scorpius_moveit_config
robot_name=scorpius
planning_group_name=scorpius_arm
ikfast_plugin_pkg=scorpius_scorpius_arm_ikfast_plugin
base_link_name=base_link
eef_link_name=gripper
ikfast_output_path=/home/ebin/urdf_ws/src/scorpius_scorpius_arm_ikfast_plugin/src/scorpius_scorpius_arm_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
