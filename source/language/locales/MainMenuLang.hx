package language.locales;

class MainMenuLang
{
	static var data:Map<String, String> = [];
	static var defaultData:Map<String, String> = [];

	static public function get(value:String):String
	{
		var getValue:String = '';
		if (data.get(value) != null) {
			getValue = data.get(value);
			return getValue;
		}
		else if (defaultData.get(value) != null) {
			getValue = data.get(value);
			return getValue;
		}
		else {
			getValue = ClientPrefs.data.developerMode ? value + ' (missed interpret)' : value;
			return getValue;
		}
		return getValue;
	}

	static public function updateLang()
	{
		data.clear();
		defaultData.clear();
		
		var minorPath:String = '/mainmenu';
		var directoryPath:Array<String> = [Paths.getPath('language') + '/' + 'English' + minorPath];

		var path = Paths.getPath('language') + '/' + ClientPrefs.data.language + minorPath;
		if (!FileSystem.isDirectory(path)) directoryPath.push(Paths.getPath('language') + '/' + 'English' + minorPath);
		else directoryPath.push(path);

		Language.setupData(MainMenuLang, directoryPath);
	}
}