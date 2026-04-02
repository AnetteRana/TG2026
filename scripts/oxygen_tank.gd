extends Node2D

var bubble_effect : GPUParticles2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bubble_effect = $tanks_ParticleBubbles

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		bubble_effect.restart()
		$Sprite2D.frame = 1
	
