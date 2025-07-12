package options.groupData;

class AudioGroup extends OptionCata
{
	public function new(X:Float, Y:Float, width:Float, height:Float)
	{
		super(X, Y, width, height);

		var option:Option = new Option(this, 'Audio', TITLE);
		addOption(option);

		var MainMusicArray:Array<String> = ['None', 'freakyMenu'];
        for (folder in Mods.directoriesWithFile(Paths.getSharedPath(), 'music/Main Screen', true)) {
            for (file in FileSystem.readDirectory(folder)) {
                if (file.endsWith('.ogg')) {
                    MainMusicArray.push(file.replace('.ogg', ''));
                }
            }
        }

        var option:Option = new Option(this, 'mainMusic', STRING, MainMusicArray);
        addOption(option);

        var OptionMusicArray:Array<String> = ['None'];
        for (folder in Mods.directoriesWithFile(Paths.getSharedPath(), 'music/Options', true)) {
            for (file in FileSystem.readDirectory(folder)) {
                if (file.endsWith('.ogg')) {
                    OptionMusicArray.push(file.replace('.ogg', ''));
                }
            }
        }

        var option:Option = new Option(this, 'optionMusic', STRING, OptionMusicArray);
        addOption(option, true);

        var PauseMusicArray:Array<String> = ['None', 'Breakfast', 'Tea Time'];
        for (folder in Mods.directoriesWithFile(Paths.getSharedPath(), 'music/Pause', true)) {
            for (file in FileSystem.readDirectory(folder)) {
                if (file.endsWith('.ogg')) {
                    PauseMusicArray.push(file.replace('.ogg', ''));
                }
            }
        }

        var option:Option = new Option(this, 'pauseMusic', STRING, PauseMusicArray);
        addOption(option);

        var hitsoundArray:Array<String> = ['Default'];

        for (folder in Mods.directoriesWithFile(Paths.getSharedPath(), 'sounds/hitsounds/')){
			for (file in FileSystem.readDirectory(folder))
			{
				if (file.endsWith('.ogg'))
					hitsoundArray.push(file.replace('.ogg', ''));
			}
        }

        var option:Option = new Option(this, 'hitSoundType', STRING, hitsoundArray);
        addOption(option, true);
        option.onChange = function() {
        if (ClientPrefs.data.hitsoundType == ClientPrefs.defaultData.hitsoundType)
            {
                FlxG.sound.play(Paths.sound(ClientPrefs.data.hitsoundType));
            }
            else
            {
                FlxG.sound.play(Paths.sound('hitsounds/' + ClientPrefs.data.hitsoundType));
            }
        };

        var option:Option = new Option(this, 'hitsoundVolume', FLOAT, [0, 1, 1]);
        addOption(option);
        option.onChange = function() {
            FlxG.sound.play(Paths.sound('hitsounds/' + ClientPrefs.data.hitsoundType), ClientPrefs.data.hitsoundVolume);
        };

		changeHeight(0); //初始化真正的height
	}
}
