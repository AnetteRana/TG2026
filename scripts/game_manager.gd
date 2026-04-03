extends Node2D

var oxygen : int = 100
var countdownOxyLoss : float = 0
@export var secondsBeforeOxygenLoss : float = 3
@export var oxygenLossedPerTime : int = 15
var alive:= true
var myPlayer : PlatformerController2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	depleteOxyOverTime()

	if oxygen <= 0:
		died()
		
		
func died():
	if alive:
		alive = false
		get_tree().change_scene_to_file("res://scenes/Level_died.tscn")

func depleteOxyOverTime():
	if alive:
		countdownOxyLoss += get_process_delta_time()
		if countdownOxyLoss >= secondsBeforeOxygenLoss:
			countdownOxyLoss = 0.0
			oxygen -= oxygenLossedPerTime
			#spawnPlayerBubbles
			myPlayer.bubbles(oxygenLossedPerTime)

func depleteOxyExtra(oxyLoss: int):
	oxygen -= oxyLoss

func addOxy(oxyGain: int):
	oxygen += oxyGain
