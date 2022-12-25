extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var tween : SceneTreeTween

func _on_Button_pressed():
	if tween and tween.is_running():
		tween.stop()
		$RubyLabel.display_rate = 100
		return
	$RubyLabel.display_rate = 0
	var length = $RubyLabel.output_phonetic_text.length()
	tween = create_tween()
	tween.tween_property($RubyLabel,"display_rate",100,length * 0.05)
	pass # Replace with function body.
