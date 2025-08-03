package options.groupData;

import developer.console.Console;

class MaintenanceGroup extends OptionCata
{
	public function new(X:Float, Y:Float, width:Float, height:Float)
	{
		super(X, Y, width, height);

        var option:Option = new Option(this, 'Maintenance', TITLE);
        addOption(option);

        var option:Option = new Option(this, 'developerMode', BOOL);
        addOption(option);
        
        var option:Option = new Option(this, 'DevConScale', FLOAT, [0.5, 3, 1]);
		addOption(option);
		option.onChange = () -> updateText();
	
		/////--App--\\\\\

		var option:Option = new Option(this, 'APP', TEXT);
		addOption(option);

		var option:Option = new Option(this, 'discordRPC', BOOL);
		addOption(option);

		var option:Option = new Option(this, 'checkForUpdates', BOOL);
		addOption(option, true);

		#if mobile
		var option:Option = new Option(this, 'screensaver', BOOL);
		addOption(option);

		var option:Option = new Option(this, 'filesCheck', BOOL);
		addOption(option, true);

		var option:Option = new Option(this, 'filesCheckNew', STATE); //copystate
		option.onChange = () -> changeState(6);
		addOption(option);
		#end

		changeHeight(0); //初始化真正的height
	}
	
	function changeState(type:Int) {
		OptionsState.instance.moveState(type);
	}
	
	function updateText(){
	    if(Console != null) {
	        Console.consoleInstance.scaleX = Console.consoleInstance.scaleY = ClientPrefs.data.DevConScale;
	    }
	}
}
