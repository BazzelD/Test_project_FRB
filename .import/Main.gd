extends Spatial

const vel = 1
var ran = RandomNumberGenerator.new()
var xr = 0
var VEL = Vector3.ZERO

func _ready():
	print("ricolino")

func _physics_process(delta):
	print(VEL)
	
	if Input.is_action_just_pressed("ui_accept"):
		$RigidBody.translation.y = $RigidBody.translation.y + vel
		$RigidBody.translation.x = 0
		$RigidBody.translation.z = 0
		ran.randomize()
		xr = ran.randi_range(0,360)
		$RigidBody.rotation_degrees.y += xr
		ran.randomize()
		xr = ran.randi_range(0,360)
		$RigidBody.rotation_degrees.x += xr
		ran.randomize()
		xr = ran.randi_range(0,360)
		$RigidBody.rotation_degrees.z += xr


