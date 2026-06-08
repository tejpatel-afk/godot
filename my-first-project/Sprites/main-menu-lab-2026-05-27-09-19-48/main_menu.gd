extends Control

# Defining our variables
var player_name: String = "Tej"
var click_count: int = 0
func _ready():
		# The '$' symbol tells Godot to look for a node inside our Scene Tree
		$WelcomeLabel.text = "Welcome, " + player_name + "!"


func _on_start_button_pressed() -> void:
		# Add 1 to our click tracking variable
	click_count = click_count + 1
	
	# Conditional Logic 
	if click_count < 3:
		$TitleLabel.text = "Loading..."
		print("Attempt " + str(click_count) + ": Game is booting up.")
	else:
		$TitleLabel.text = "Game Started!"
		$WelcomeLabel.text = "Enjoy your adventure, " + player_name + "!"
		print("Success! Game scene loaded.")


func _on_options_button_pressed() -> void:
	print("Opening Options Menu.....")
	
