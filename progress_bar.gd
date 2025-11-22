extends ProgressBar

func _ready() -> void:
	var sb = StyleBoxFlat.new()
	add_theme_stylebox_override("fill", sb)
	sb.bg_color = Color.DARK_RED
