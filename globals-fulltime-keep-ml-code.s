n_objects:
	.long	00000000
objects:
	.SPACE 240
  let dummy = create_array 0 0.0 in
  create_array 60 (0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy)
screen:
	.long	00000000
	.long	00000000
	.long	00000000
viewpoint:
	.long	00000000
	.long	00000000
	.long	00000000
light:
	.long	00000000
	.long	00000000
	.long	00000000
beam:
	.long 437f0000
and_net:
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
	.long ffffffff
or_net:
	.SPACE 4
	.long $or_net1
or_net1:
	.long $or_net2
or_net2:
	.long $min_caml_and_net
solver_dist:
	.long	00000000
intsec_rectside:
	.long	00000000
tmin:
	.long	4e6e6b28
intersection_point:
	.long	00000000
	.long	00000000
	.long	00000000
intersected_object_id:
	.long	00000000
nvector:
	.long	00000000
	.long	00000000
	.long	00000000
texture_color:
	.long	00000000
	.long	00000000
	.long	00000000
diffuse_ray:
	.long	00000000
	.long	00000000
	.long	00000000
rgb:
	.long	00000000
	.long	00000000
	.long	00000000
image_size:
	.long	00000000
	.long	00000000
image_center:
	.long	00000000
	.long	00000000
scan_pitch:
	.long	00000000
startp:
	.long	00000000
	.long	00000000
	.long	00000000
startp_fast:
	.long	00000000
	.long	00000000
	.long	00000000
screenx_dir;
	.long	00000000
	.long	00000000
	.long	00000000
screeny_dir:
	.long	00000000
	.long	00000000
	.long	00000000
screenz_dir:
	.long	00000000
	.long	00000000
	.long	00000000
ptrace_dirvec:
	.long	00000000
	.long	00000000
	.long	00000000
dirvecs:
  let dummyf = create_array 0 0.0 in
  let dummyff = create_array 0 dummyf in
  let dummy_vs = create_array 0 (dummyf, dummyff) in
  create_array 5 dummy_vs

light_dirvec:
  let dummyf2 = create_array 0 0.0 in
  let v3 = create_array 3 0.0 in
  let consts = create_array 60 dummyf2 in
  (v3, consts)
in

reflections:
  let dummyf3 = create_array 0 0.0 in
  let dummyff3 = create_array 0 dummyf3 in
  let dummydv = (dummyf3, dummyff3) in
  create_array 180 (0, dummydv, 0.0)
in

n_reflections:
	.long	00000000
