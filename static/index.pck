GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexPf      U      -��`�0��x�5�[   res://Frames/BasicFrame.tres�      :       �"D��^�֠�ޱ   res://Frames/BasicFrame.tscn       �      �qj;��=7���Ű��l   res://Frames/Frame.gd.remap 0v      '       <��
�N��ٓ   res://Frames/Frame.gdc   
      �      �'�#�M���rL�8   res://Global.gd.remap   `v      !       z�<��z]
����*Xn   res://Global.gdc�      �      �J#�7�\M�8��u   res://Museum.gd.remap   �v      !       �b��&?��6�OMw�/   res://Museum.gdc�      a
      w�� ����&�zچ.s   res://MuseumStart.tscn          �      �ġ��n%9֬��ﺑ�   res://MuseumVisitor.gd.remap�v      (       ���h�Q�('�o��   res://MuseumVisitor.gdc �"      3
      !��
�5��54�ǔ   res://MuseumVisitor.tscn -      �      S\>NAS�n)��/0�   res://Rooms/RoomBase.tscn   �1      �      �QC
@��V�].�3�   res://Rooms/dark_ground.tres�J      �       i	�E��d0]��˨�   res://Rooms/white_wall.tres K      :       �"D��^�֠�ޱ(   res://Scripts/ImageDownloader.gd.remap  �v      2       S�e� ,@���h8��$   res://Scripts/ImageDownloader.gdc   PK      "	      mfP\���ќ�a��|a$   res://Scripts/Interactable.gd.remap 0w      /       �$�3�ؐ|/_�R�y�    res://Scripts/Interactable.gdc  �T      :      �E -���=��Z�U$   res://Scripts/Interaction.gd.remap  `w      .       <��	;�+�[ϖ���    res://Scripts/Interaction.gdc   �U      +      �:�(�k�7�t��Jƻ    res://Scripts/RSSItem.gd.remap  �w      *       ���+d�/wk��E��x   res://Scripts/RSSItem.gdc   �W      .
      3�RQ�K�aTkC\n   res://Scripts/Room.gd.remap �w      '       MH*`��aI���ѯ7�   res://Scripts/Room.gdc   b            ]��s�l�k��3��d   res://default_env.tres  0e            G��ʋ�u,��5�{   res://icon.png  �w      �      G1?��z�c��vN��   res://icon.png.import   �s      �      �����%��(#AB�   res://project.binary��            hQ\�C?�\��A�        [gd_resource type="SpatialMaterial" format=2]

[resource]
      [gd_scene load_steps=4 format=2]

[ext_resource path="res://Frames/Frame.gd" type="Script" id=1]
[ext_resource path="res://Frames/BasicFrame.tres" type="Material" id=2]

[sub_resource type="QuadMesh" id=1]

[node name="BasicFrame" type="Spatial"]
script = ExtResource( 1 )

[node name="MeshFrame" type="MeshInstance" parent="."]
transform = Transform( 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2.5, 0 )
mesh = SubResource( 1 )
material/0 = ExtResource( 2 )

[node name="HTTPRequest" type="HTTPRequest" parent="."]
          GDSC   (      *   8     ������ڶ   ����Ӷ��   ��ڶ   �����Ҷ�   �����Ҷ�   ����   ������������ض��   ������������ζ��   ������۶   ������۶   �����������Ķ���   ��������������Ķ   ��������������Ӷ   ��������������Ķ   �������ڶ���   �����������ڶ���   ��������������ڶ   ��������Ӷ��   �������������������ڶ���   ��������Ӷ��   ����������Ӷ   �����������Ӷ���   �����������Ӷ���   �������������Ӷ�   �������������������ڶ���   ����ٶ��   ���������¶�   ��������޶��   ����Ӷ��   ϶��   ζ��   �������������Ҷ�   �������۶���   ���۶���   ������¶   ���������������ڶ���   �������������Ӷ�   ����������¶   ���ݶ���   �����϶�   8   /originals/bc/f1/09/bcf1098b58e8e28a4b06e6d9443404cd.jpg  333333�?      @          setting frame image %s              �?      failed to load image %s       texture_loaded        set_frame_image       texture_loaded_alt        failed_to_load                                                            	   #   
   *      +      2      3      >      ?      L      S      d      m      s      }      �      �      �      �      �      �      �      �      �      �       �   !   �   "     #     $   )  %   ,  &   -  '   3  (   4  )   6  *   3YY2�  YYY8;�  V�  Y;�  V�  �  T�  PQYY;�  V�  �  Y;�  V�  �  YY;�  V�	  �  YY;�
  V�  �  T�  PQYY0�  P�  V�  R�  V�  QV�  �?  P�  �  Q�  ;�  V�  W�  T�  P�  QT�  PQ�  ;�  V�  �  T�  �  �  T�  �  �  W�  T�  P�  R�  Q�  ;�  V�  �  T�  PQ�  T�  PQ�  &�  �  V�  W�  T�  T�  W�  T�  T�  �  �  (V�  W�  T�  T�  W�  T�  T�  �  T�  PQ�  T�  PQYY0�  P�  V�  QV�  �B  P�  �  QYY0�   P�!  V�	  QX�  V�  �  �!  �  �
  T�"  P�  RR�	  RL�  T�#  MQ�  �
  T�"  P�
  RR�	  RL�  T�  MQ�  �
  T�"  P�  RR�  RL�  T�  MQ�  �
  T�$  PW�%  R�  T�#  R�  T�  R�  T�&  Q�  .�  YY0�'  PQV�  �  -Y`  GDSC      	      s      ���Ӷ���   ������ڶ   ����������ڶ   ���������ڶ�   �������������ڶ�   ������Ķ   ���Ķ���   ���������¶�   ���ڶ���   �嶶   ����������Ӷ      (function(){   =   var addr = window.location.origin + window.location.pathname;      /   return addr.substr(0, addr.lastIndexOf('/')+1);       })()   
   JavaScript     	   cache-rss         http://localhost:3001/cache-rss       cache-images   "   http://localhost:3001/cache-images                                             &      )   	   ,   
   /      2      3      ;      D      K      N      Q      R      S      [      d      k      n      q      3YY;�  V�  9R�  Y;�  V�  9R�  YY0�  PQX�  V�  ;�  �  T�  P�  �  �  �  �  �  Q�  .�  YY0�  PQX�  V�  &�	  T�
  P�  QV�  .�  PQ�  �  (V�  .�  �  �  Y0�  PQX�  V�  &�	  T�
  P�  QV�  .�  PQ�  �  (V�  .�  Y`           GDSC   5      A   �     ������ڶ   �����۶�   ��������������Ŷ   �����Ŷ�   �������Ŷ���   ����Ŷ��   �����Ҷ�   �����Ҷ�   ����   �������Ӷ���   ��������Ӷ��   ����������ڶ   ����Ӷ��   ����Ӷ��   �����ڶ�   ������ڶ   ���������Ҷ�   �����¶�   ������������Ӷ��   ������Ŷ   ���϶���   �嶶   ����������Ӷ   ��������Ŷ��   ����¶��   �����Ķ�   ��������Ķ��   ����������Ķ   ���Ҷ���   ����   ��������Ӷ��   ������������Ӷ��   ��������Ӷ��   ������������Ӷ��   ��������ⶶ�   ��������׶��   ������������׶��   �����������ⶶ��   ������۶   ������۶   �������ڶ���   �����Ҷ�   ���Ӷ���   ��������������������Ŷ��   �����������۶���   ���۶���   �������Ӷ���   �������ݶ���   ���������������۶���   �����϶�   ����������¶   ������¶   ������¶      tiagosr    
   light-wave        /         .rss   
   JavaScript     	   parse_rss                item      error parsing <item>      node name:                   trying rssItem     (   not enough rooms for the amount of items   )   newly assigned room can't receive rssItem         request_completed      
   rss_loaded                                                    (   	   3   
   4      <      D      E      P      Q      `      a      n      w      |            �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %     &     '     (     )     *   )  +   .  ,   /  -   :  .   A  /   G  0   N  1   S  2   ^  3   h  4   s  5   x  6   }  7     8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   3YY2�  YY8;�  V�  LMY;�  V�  LMY;�  V�  LMY;�  V�  LMY;�  V�  �  T�  PQYY8;�	  V�  Y8;�
  V�  �  YY0�  P�  R�  QX�  V�  �  .�  T�  �  �  �  �  �  YY0�  P�  R�  R�  R�  QV�  &�  T�  P�  QV�  �  P�  Q�  (V�  �  T�  PR�  R�  Q�  Y0�  P�  V�  QX=V�  ;�  V�  �  T�  PQ�  �  T�  P�  Q�  *�  T�  PQ�  V�  ;�  �  T�  PQ�  ;�   �  T�!  PQ&�  �  T�"  (�  �  ;�#  �  T�$  PQ&�  �  T�"  (�  �  &�  �  T�%  V�  /�   V�  �  V�  ;�&  �'  T�  PQ�  &�&  T�(  P�  QV�  �B  P�  Q�  +�  �  T�)  P�&  Q�  \V�  &�  �  T�%  V�  �?  P�	  R�   Q�  &�  T�*  PQ�
  V�  �+  P�  QYY0�+  P�  V�  QX=V�  ;�,  V�-  �  �  )�&  �  V�  �?  P�  R�&  Q�  &�,  V�  �,  �.  P�  T�/  PQQ�  &�,  T�0  P�&  QV�  �,  �.  P�  T�/  PQQ�  &�,  V�  �B  P�  Q�  .�  �  &�,  T�0  P�&  QV�  �B  P�  Q�  .YY0�1  PQV�  W�2  T�3  P�  RR�  Q�  W�2  T�4  P�  P�	  R�
  QQYY`               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Rooms/RoomBase.tscn" type="PackedScene" id=1]
[ext_resource path="res://MuseumVisitor.tscn" type="PackedScene" id=2]
[ext_resource path="res://Museum.gd" type="Script" id=3]

[node name="World" type="Spatial"]
script = ExtResource( 3 )
available_rooms = [ NodePath("Room"), NodePath("Room2") ]

[node name="Room" parent="." instance=ExtResource( 1 )]

[node name="Room2" parent="." instance=ExtResource( 1 )]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, 14, 0, -20 )

[node name="Player" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 0 )

[node name="HTTPRequest" type="HTTPRequest" parent="."]
     GDSC   3      >   �     ������������϶��   ������������Ķ��   ����Ҷ��   �����������ض���   ������϶   ���������Ķ�   ����������������϶��   �����������������������¶���   ������������������������¶��   ���Ҷ���   ������ڶ   ���Ҷ���   �����׶�   �����׶�   �������϶���   �����������޶���   �����϶�   ����������������¶��   �嶶   ����������Ӷ   ����¶��   �������������Ӷ�   �������������������   �������Ŷ���   ����׶��   ���������������������Ҷ�   ������������������   �����¶�   ����¶��   ��������������������ض��   �������������Ӷ�   ������Ҷ   ��������������������ض��   �������϶���   �������Ӷ���   ζ��   ������׶   ϶��   ���������������޶���   �������ζ���   ���������������Ŷ���   ���������Ŷ�   �������������������۶���   ����Ŷ��   ��������ض��   ����������������Ҷ��   ̶��   ���������Ҷ�   �����������������Ӷ�   �������������Ӷ�   �涶      A     �@  \���(\�?     �A  333333�?     pB     �B                
   JavaScript     	   ui_cancel         move_forward      move_backward      	   move_left      
   move_right                                                   '   	   /   
   8      @      A      J      U      V      _      `      g      h      n      s      }      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %     &     '     (   #  )   $  *   +  +   6  ,   ?  -   H  .   N  /   W  0   ]  1   ^  2   g  3   m  4   v  5   |  6   }  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   3YY2�  YY8;�  V�  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YY5;�	  V�
  W�  Y5;�  V�  W�  �  YY;�  V�  �  PQYY;�  V�  �  YY0�  PQV�  �  P�  Q�  &�  T�  P�	  QV�  �  T�  P�  T�  QYY0�  P�  QV�  &�  T�  P�
  QV�  �  T�  P�  T�  QYY0�  P�  QV�  &�  4�  V�  &P�  T�  PQ�  T�  Q�  T�  V�  �  T�  P�  T�  Q�  '�  4�   �  T�  PQ�  T�  V�  �	  T�!  P�+  P�  T�"  T�#  �  QQ�  ;�$  V�  �  T�"  T�%  �  �  ;�&  V�  �  �$  �  �&  �3  P�  R�4  P�&  R�  QQ�  �$  �&  �  �  �  T�'  P�+  P�$  QQ�  �  �&  YY0�(  P�  QV�  ;�)  �	  T�*  PQT�+  �  ;�,  V�  �  PQ�  &�  T�-  P�  QV�  �,  �)  T�.  �  &�  T�-  P�  QV�  �,  �)  T�.  �  �  &�  T�-  P�  QV�  �,  �)  T�#  �  &�  T�-  P�  QV�  �,  �)  T�#  �  �  �,  �,  T�/  PQ�  �  �  �  T�0  P�,  �  R�  �  Q�  �  �  T�%  �  �  �  �1  P�  R�  T�2  Q�  Y`             [gd_scene load_steps=5 format=2]

[ext_resource path="res://MuseumVisitor.gd" type="Script" id=1]
[ext_resource path="res://Scripts/Interaction.gd" type="Script" id=2]

[sub_resource type="CapsuleShape" id=1]
radius = 0.75
height = 1.25

[sub_resource type="CapsuleMesh" id=2]
radius = 0.75
mid_height = 1.25

[node name="Player" type="KinematicBody"]
script = ExtResource( 1 )
speed = 5.0
mouse_sensitivity = 0.15

[node name="Head" type="Spatial" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.776837, 0 )

[node name="Camera" type="Camera" parent="Head"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.00385952, -1.19209e-07, -0.00716901 )
fov = 50.0

[node name="InteractionRayCast" type="RayCast" parent="Head/Camera"]
enabled = true
cast_to = Vector3( 0, 0, -3 )
collision_mask = 2
collide_with_areas = true
script = ExtResource( 2 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0, 0, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0, 0, 0 )
mesh = SubResource( 2 )
material/0 = null
           [gd_scene load_steps=7 format=2]

[ext_resource path="res://Rooms/dark_ground.tres" type="Material" id=1]
[ext_resource path="res://Frames/BasicFrame.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scripts/Room.gd" type="Script" id=3]
[ext_resource path="res://Rooms/white_wall.tres" type="Material" id=4]

[sub_resource type="CubeMesh" id=1]

[sub_resource type="ConvexPolygonShape" id=2]
points = PoolVector3Array( -1, 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1 )

[node name="Room" type="Spatial"]
script = ExtResource( 3 )

[node name="Ground" type="StaticBody" parent="."]
input_ray_pickable = false

[node name="GroundMesh" type="MeshInstance" parent="Ground"]
transform = Transform( 10, 0, 0, 0, 1, 0, 0, 0, 10, 0, -0.5, 0 )
mesh = SubResource( 1 )
material/0 = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="Ground"]
transform = Transform( 10, 0, 0, 0, 1, 0, 0, 0, 11, 0, -0.5, 0 )
shape = SubResource( 2 )

[node name="BasicFrame" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -2, 0, -9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame3" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, -9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame3"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame2" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -7, 0, -9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame2"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame6" parent="." instance=ExtResource( 2 )]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, 0, 0, 9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame6"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame5" parent="." instance=ExtResource( 2 )]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, -5, 0, 9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame5"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame4" parent="." instance=ExtResource( 2 )]
transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, 5, 0, 9.83 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame4"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame12" parent="." instance=ExtResource( 2 )]
transform = Transform( -4.37114e-08, 0, 1, 0, 1, 0, -1, 0, -4.37114e-08, -9.83, 0, 4.29683e-07 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame12"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame11" parent="." instance=ExtResource( 2 )]
transform = Transform( -4.37114e-08, 0, 1, 0, 1, 0, -1, 0, -4.37114e-08, -9.83, 0, -5 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame11"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame10" parent="." instance=ExtResource( 2 )]
transform = Transform( -4.37114e-08, 0, 1, 0, 1, 0, -1, 0, -4.37114e-08, -9.83, 0, 5 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame10"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame9" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.31134e-07, 0, -1, 0, 1, 0, 1, 0, 1.31134e-07, 9.83, 0, -4.29683e-07 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame9"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame8" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.31134e-07, 0, -1, 0, 1, 0, 1, 0, 1.31134e-07, 9.83, 0, 5 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame8"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="BasicFrame7" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.31134e-07, 0, -1, 0, 1, 0, 1, 0, 1.31134e-07, 9.83, 0, -5 )

[node name="SpotLight" type="SpotLight" parent="BasicFrame7"]
transform = Transform( 1, 0, 0, 0, 0.405285, 0.91419, 0, -0.91419, 0.405285, 0, 4.88921, 0.969901 )
light_color = Color( 0.952941, 0.941176, 0.768627, 1 )
shadow_enabled = true

[node name="CSGBox" type="CSGBox" parent="."]
transform = Transform( 10, 0, 0, 0, 5, 0, 0, 0, 10, 0, 5, 0 )
use_collision = true
material = ExtResource( 4 )

[node name="CSGBox2" type="CSGBox" parent="CSGBox"]
transform = Transform( 0.99, 0, 0, 0, 1.1, 0, 0, 0, 0.99, 0, -0.12, 0 )
operation = 2
material = ExtResource( 4 )

[node name="CSGBox" type="CSGBox" parent="CSGBox/CSGBox2"]
transform = Transform( 0.20202, 0, 0, 0, 0.636364, 0, 0, 0, 0.10101, 0.707071, -0.254545, -1.0101 )
     [gd_resource type="SpatialMaterial" format=2]

[resource]
albedo_color = Color( 0.152941, 0.14902, 0.137255, 1 )
metallic_specular = 0.34
      [gd_resource type="SpatialMaterial" format=2]

[resource]
      GDSC   .      ;   u     ��������������Ķ   �����Ҷ�   �����Ҷ�   ����   �����������Ӷ���   �����������Ӷ���   ������ڶ   ����������¶   ����������¶   �������ڶ���   ����������ڶ   �������������Ҷ�   �������������Ҷ�   �����������������¶�   �������������Ӷ�   ������¶   ��������ڶ��   �����������ڶ���   ���������ڶ�   ������¶   �����ڶ�   �������������ڶ�   �����������Ҷ���   �����¶�   ������������Ӷ��   ������Ŷ   ���϶���   �嶶   ����������Ӷ   �������������������Ӷ���   ����¶��   �������������¶�   ���������¶�   ���������������Ҷ���   ����������ڶ   �������϶���   ��������������������߶��   ��������Ŷ��   ���Ӏ�����������   ���������Ӷ�   ���Ӷ���   �������Ӷ���   ����Ӷ��   �������������������Ķ���   ����   ����������������Ӷ��          request_completed         image_loaded   �      
   JavaScript        process_loaded_image      alt_image_loaded      failed_to_load                     /9j/      texture_loaded                                                   #   	   $   
   )      .      /      2      5      8      9      N      R      V      Z      ^      i      v      w      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,   
  -     .     /   %  0   2  1   =  2   H  3   S  4   [  5   b  6   i  7   l  8   q  9   r  :   s  ;   3�  YY2YY;�  V�  �  T�  PQY;�  V�  Y;�  V�  Y;�  V�  YY;�	  V�  Y;�
  V�  YYB�  YB�  YB�  YY0�  P�  V�  R�  V�  R�  V�  R�  V�  QV�  �  �  �  �	  �  �  �
  �  �  �  �  �  �  T�  P�  RR�  Q�  �  T�  P�  T�  PQ�	  Q�  Y0�  P�  R�  R�  R�  QV�  &�  �  V�  &�  T�  P�  QV�  �  P�  Q�  (V�  �  T�  PR�  R�  Q�  (V�  �  T�  PQ�  �  T�   P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  T�  PQ�
  QYY0�!  P�  R�  R�  R�  QV�  &�  �  V�  &�  T�  P�  QV�  �  P�  Q�  (V�  �  T�  PR�  R�  Q�  (V�  �"  P�  QYY0�  P�  V�  QV�  &�  T�#  P�  R�	  QT�$  PQ�
  V�  �  �%  T�&  P�  T�$  PQQ�  ;�'  V�(  �(  T�  PQ�  ;�)  V�*  �*  T�  PQ�  &�)  T�+  P�  Q�,  V�  �  �  T�  PQ�  �  T�-  P�)  Q�  �"  P�  RQ�  (V�  �"  P�  QYYY`              GDSC            #      ������ڶ   �����������Ӷ���   �������������������¶���   ���Ӷ���   �������¶���      Interact with %s      Interacting with %s                                                     	       
   !      3YY2�  YY0�  PQV�  .�  YY0�  PQV�  �?  P�  �  QYY`      GDSC            I      ������¶   ����������ض   ���������������Ķ���   �����������Ӷ���   �������Ŷ���   ����׶��   �������Ķ���   �����������Ķ���   �����������Ѷ���   ����¶��   ���������������������Ҷ�   �������¶���      trigger                                                         	   %   
   +      /      8      >      B      F      G      3YY2�  YY;�  V�  YY0�  P�  QV�  ;�  �  PQ�  &�  PQ�  4�  V�  &�  �  V�  �  �  �  &�	  T�
  PQV�  �  T�  PQ�  '�  V�  �  �  �  Y`     GDSC   )      L   �     ������۶   ����Ӷ��   ����������ض   ���ݶ���   ������Ӷ   ���Ҷ���   �������ڶ���   ���������������ڶ���   ��������������Ķ   ��������������Ķ   ����   �����ڶ�   �����¶�   ���¶���   ����¶��   ������¶   ����¶��   ������������׶��   �����Ķ�   ��������Ķ��   ��������׶��   ���Ҷ���   ����   ������������Ӷ��   ��������ⶶ�   ����������������ض��   ���������¶�   ���۶���   ���Ҷ���   �ٶ�   �����Ķ�   �����Ҷ�   ����Ҷ��   �����޶�   ������Ӷ   �������ڶ���   ��������Ӷ��   ��������Ӷ��   ������������Ӷ��   ��¶   ���������������򶶶�                       
   <img src="     
         "></a>     
   pinimg.com               /236x/        /originals/       title         link      description       pubDate       guid      item                                                    	       
   %      *      +      6      7      ;      B      G      T      X      \      ]      h      k      u      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,   (  -   2  .   ;  /   L  0   P  1   S  2   [  3   b  4   e  5   k  6   n  7   v  8   }  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   3�  YY2YY;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  YY;�  V�	  �	  T�
  PQYY1�  V�  ;�  V�  �  ;�  V�  �  0�  P�  V�  R�  V�  QV�  �  �  �  �  �  YY0�  P�  V�  QX�  V�  ;�  �  &�  T�  PQ�  V�  &�  T�  PQ�  T�  V�  .�  T�
  P�  R�  Q�  �  �  T�  PQ�  (V�  .�  T�
  PR�  Q�  &�  T�  PQ�  V�  .�  T�
  PR�  Q�  .�  T�
  P�  R�  Q�  Y0�  P�  V�  QV�  ;�  �  T�  P�  Q�  �  ;�  �  T�  P�  Q�  �  �  T�  P�  R�  �  Q�  ;�  V�  �  �  ;�   V�  �  T�  P�  Q�  &�   �  V�  �  �  T�  P�   �  T�!  PQQ�  �  �  T�"  P�  R�	  QYY0�#  P�  V�  QV�  *�  T�  PQ�  V�  ;�$  �  T�  PQ�  ;�%  �  T�&  PQ&�$  �  T�  (�  �  /�%  V�  �
  V�  ;�'  �  P�  Q�  &�'  T�  V�  .�  �  �'  T�  �  �  V�  ;�'  �  P�  Q�  &�'  T�  V�  .�  �  �'  T�  �  �  V�  ;�'  �  P�  Q�  &�'  T�  V�  .�  �  P�'  T�  Q�  �  V�  ;�'  �  P�  Q�  &�'  T�  V�  .�  �  �'  T�  �  �  V�  ;�'  �  P�  Q�  &�'  T�  V�  .�  �  �'  T�  �  �  V�  .�  T�  PQ�  T�(  Y`  GDSC            y      ������ڶ   ���۶���   �����Ŷ�   ����������������Ŷ��   ����������Ҷ   �����϶�   �������������Ŷ�   ����Ҷ��   �����������ض���   ����Ӷ��   �����Ҷ�   ���������������۶���   ���۶���   ������۶   ���Ӷ���   ����Ӷ��   �������ݶ���   �������۶���                                                                        	      
   "      &      '      -      5      ;      B      I      J      U      _      b      m      t      w      3YY2�  YY;�  V�  LMY;�  V�  LMYYB�  YY0�  PQV�  �  PQ�  Y0�  PQV�  )�  �  PQV�  &�  4�	  V�  �  T�
  P�  Q�  �  T�
  P�  QYY0�  P�  V�  QX�  V�  &�  T�  PQV�  .�  �  ;�  V�	  �  T�  PQ�  �  T�  P�  Q�  .�  Y`            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]
sky_top_color = Color( 0.886275, 0.952941, 0.988235, 1 )
sky_horizon_color = Color( 0.933333, 0.992157, 1, 1 )

[resource]
background_mode = 2
background_sky = SubResource( 1 )
              GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Frames/Frame.gdc"
         [remap]

path="res://Global.gdc"
               [remap]

path="res://Museum.gdc"
               [remap]

path="res://MuseumVisitor.gdc"
        [remap]

path="res://Scripts/ImageDownloader.gdc"
              [remap]

path="res://Scripts/Interactable.gdc"
 [remap]

path="res://Scripts/Interaction.gdc"
  [remap]

path="res://Scripts/RSSItem.gdc"
      [remap]

path="res://Scripts/Room.gdc"
         �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                    class         Frame         language      GDScript      path      res://Frames/Frame.gd         base      Spatial             class         ImageDownloader       language      GDScript      path       res://Scripts/ImageDownloader.gd      base      Object              class         Interactable      language      GDScript      path      res://Scripts/Interactable.gd         base      Spatial             class         Interaction       language      GDScript      path      res://Scripts/Interaction.gd      base      RayCast             class         Museum        language      GDScript      path      res://Museum.gd       base      Spatial             class         MuseumVisitor         language      GDScript      path      res://MuseumVisitor.gd        base      KinematicBody               class         RSSItem       language      GDScript      path      res://Scripts/RSSItem.gd      base      Object              class         Room      language      GDScript      path      res://Scripts/Room.gd         base      Spatial    _global_script_class_icons�               Frame                MuseumVisitor                Museum               Room             Interactable             RSSItem              Interaction              ImageDownloader           application/config/name         MuseumOfPinterest      application/run/main_scene          res://MuseumStart.tscn     application/config/icon         res://icon.png     autoload/Global         *res://Global.gd   input/move_forward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_backward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/jump8               deadzone      ?      events            input/trigger�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres        