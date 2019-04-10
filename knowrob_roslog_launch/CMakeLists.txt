cmake_minimum_required(VERSION 2.8.3)
project(knowrob_roslog_launch)

find_package(catkin REQUIRED COMPONENTS knowrob_cram json_prolog knowrob_vis knowrob_meshes rosbridge_server)



catkin_package(
    DEPENDS knowrob_cram json_prolog knowrob_vis knowrob_meshes  rosbridge_server 
)


install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch)
  
install(DIRECTORY prolog/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/prolog)
