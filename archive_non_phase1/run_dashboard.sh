#!/usr/bin/env bash
set -e

# Source ROS 2 Jazzy and CSTAM Workspace
source /opt/ros/jazzy/setup.bash
source "$(dirname "$0")/ros2_ws/install/setup.bash"

echo "=========================================================="
echo " 🌐 Launching CSTAM Web Bridge & Mission Control Dashboard"
echo " Connected to ROS 2: /cmd_vel, /goal_pose, /amcl_pose, TF"
echo " Synchronized with 3D Gazebo Sim & Nav2 Perception Stack "
echo "=========================================================="
echo " Open your browser at: http://localhost:8000"
echo "=========================================================="

python3 "$(dirname "$0")/cstam_web_bridge/app.py"
