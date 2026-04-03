extends Node2D

@onready var sound_player = $AudioStreamPlayer2D
@onready var splashVFX = $GPUParticles2D

func _ready():
	$Area2D.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		sound_player.play()
		
		splashVFX.global_position = (body.global_position + Vector2(0, 32))
		splashVFX.restart(
			
		)
