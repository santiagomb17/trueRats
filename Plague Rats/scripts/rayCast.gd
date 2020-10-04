extends RayCast2D

onready var validNodeCollider #this is a gameObject

func _process(delta):
	   #checks if collision is NULL
	if is_colliding() && get_collider().is_in_group("node"):
		   #checks if collision is a node
			   #assign the collider to variable
			validNodeCollider = get_collider()
			   #grab the child where validClick variable is located
			validNodeCollider.get_node("CollisionShape2D").validClick = true
			#print("valid collision")
