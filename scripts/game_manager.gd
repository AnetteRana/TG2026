extends Node2D

var oxygen : int = 100
var countdownOxyLoss : float = 0
var secondsBeforeOxygenLoss : float = 6
var oxygenLossedPerTime : int = 5
var myPlayer : PlatformerController2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	depleteOxy()

	if oxygen <= 0:
		restart_level()
		
		
func restart_level():
	pass#get_tree().restart_curret_scene

func depleteOxy():
	countdownOxyLoss += get_process_delta_time()
	if countdownOxyLoss >= secondsBeforeOxygenLoss:
		countdownOxyLoss = 0.0
		oxygen -= oxygenLossedPerTime
		#spawnPlayerBubbles
		myPlayer.bubbles()
