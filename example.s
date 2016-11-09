.start	min_caml_start
.data
.align	8
.align	8
.text
min_caml_start:
	MVI	%r01, $9	# example.ml#16:14->16:24
	JLINK	$min_caml_show	# example.ml#18:5->18:16
	OUT
