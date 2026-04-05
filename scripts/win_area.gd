extends Node2D

@onready var area: Area2D = $Area2D
@onready var sound: AudioStreamPlayer = $AudioStreamPlayer
@onready var particles: GPUParticles2D = $GPUParticles2D

var triggered := false

func _ready() -> void:
	area.body_entered.connect(_on_body_entered)
	particles.emitting = false

func _on_body_entered(body: Node) -> void:
	if triggered:
		return
		
	if not body.is_in_group("player"):
		return

	triggered = true

	sound.play()
	particles.restart()
