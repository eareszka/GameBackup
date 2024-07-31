if instance_exists(oItemMenu)
{
	instance_destroy(oItemMenu)
	instance_destroy(oMainMenu)
	CreateMainMenu([global.MainMenu.goBack,global.MainMenu.quest,global.MainMenu.quit],true)
}