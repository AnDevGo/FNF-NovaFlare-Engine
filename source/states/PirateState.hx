package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import openfl.Lib;


class PirateState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		var guh:String = "
		This is pirate version\n
		You are banned from entering the game\n
		please use the legitimate version\n
                MaoPou left a message :)\n
		If you use Tencent QQ China,\n
		Then please join the following group chat:\n
		QQ:723948450
		";
		warnText = new FlxText(0, 0, FlxG.width, guh, 32);
		warnText.setFormat("VCR OSD Mono", 32, FlxColor.RED, CENTER);
		warnText.screenCenter(Y);
		add(warnText);

		addVirtualPad(NONE, A);
	}

	override function update(elapsed:Float)
	{		
		if (controls.ACCEPT) CoolUtil.browserLoad('https://github.com/beihu235/FNF-NovaFlare-Engine/releases');
		
		super.update(elapsed);
	}
}
