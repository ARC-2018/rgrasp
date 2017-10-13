package passive_vision;

public interface stateResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "passive_vision/stateResponse";
  static final java.lang.String _DEFINITION = "\n# Object List\nstring[] object_list # list of N object names\nfloat32[] object_confidence # list of N corresponding object detection confidence values\nfloat32[] object_suction_points # Nx7 matrix (row-major order, [x,y,z,nx,ny,nz,c]) with suction point (x,y,z), surface normal (nx,ny,nz), and confidence value (c) per row\nfloat32[] object_pose # Nx8 matrix (row-major order, [qw,qx,qy,qz,tx,ty,tz,c] in world coordinates) with rotation quaternion (qw,qx,qy,qz), translation (tx,ty,tz), and confidence value (c) per row\nint32[] object_flag # if flag == 1 vision recommends suction; if flag == 2 vision recommends grasp\n\n# Suction Point List\nfloat32[] suction_points # Nx7 matrix (row-major order, [x,y,z,nx,ny,nz,c]) with suction point (x,y,z), surface normal (nx,ny,nz), and confidence value (c) per row\n\n# Grasp Box List\n# float32[] grasp_boxes # Nx14 matrix (row-major order, [qw,qx,qy,qz,tx,ty,tz,minx,miny,minz,maxz,maxy,maxz,c]) with rotation quaternion (qw,qx,qy,qz) in world coordinates, translation (tx,ty,tz) in world coordinates, bounding box corner [minx,miny,minz] in object coordinates, opposite bounding box corner [maxz,maxy,maxz] in object coordinates, and confidence value (c) per row\n\n# Grasp Proposals List\nfloat32[] grasp_proposals # Nx12 matrix (row-major order, [x,y,z,dx,dy,dz,d,w,gx,gy,gz,c]) of N grasp proposals with the position of the top of the surface (x,y,z) in world coordinates, the direction of approach as the gripper moves closer to the object (dx,dy,dz), how far perception thinks is safe to move the gripper down the direction of approach past the top surface point without collision to fingers (d) in meters, the width of the space between the fingers when moving the gripper downwards (w) in meters, the direction that is parallel to the motion of the fingers when they close and is perpendicular to the direction of approach (gx,gy,gz), and the confidence score (c) for the this grasp proposal\n\n# File paths\nstring[] log_file_paths # 6 strings with locations to camera information file (.txt) of background, saved color image file (.png) of background, saved depth image file (.png) of background, camera information file (.txt) of foreground, saved color image file (.png) of foreground, saved depth image file (.png) of foreground";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  java.util.List<java.lang.String> getObjectList();
  void setObjectList(java.util.List<java.lang.String> value);
  float[] getObjectConfidence();
  void setObjectConfidence(float[] value);
  float[] getObjectSuctionPoints();
  void setObjectSuctionPoints(float[] value);
  float[] getObjectPose();
  void setObjectPose(float[] value);
  int[] getObjectFlag();
  void setObjectFlag(int[] value);
  float[] getSuctionPoints();
  void setSuctionPoints(float[] value);
  float[] getGraspProposals();
  void setGraspProposals(float[] value);
  java.util.List<java.lang.String> getLogFilePaths();
  void setLogFilePaths(java.util.List<java.lang.String> value);
}
