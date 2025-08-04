/**
 * 当脚本被启用的时候
 * When the script is activated
 */
function onCreate() {}

/**
 * 当前state转到另一个state前的一瞬间
 * The moment before the current state transitions to another state
 */
function onStateSwitch() {
	// 借用`FlxG.game._nextState`来对指定的界面进行替换成自己的自定义界面
	// Borrowing `FlxG.game.nextState` to replace the specified state with one's own custom state
	// just like cne (right
	//haxe```
	//if(FlxG.game._nextState is StoryMenuState) {
	//	// 你的自定义界面
	//	// your custom state
	//	FlxG.game._nextState = new HScriptState("storyMenu");
	//}
	//```
}

/**
 * 前一刻state转到现在state的一瞬间
 * The moment when the previous state transitions to the current state
 */
function onStateSwitchPost() {}

/**
 * 在当前state调用create函数前的一瞬间
 * At the moment before calling the create function in the current state
 * @param state 当前的state - current state
 */
function onStateCreate(state:FlxState) {}

/**
 * 当前游戏窗口被调整时的一瞬间
 * The moment when the current game window is resized
 * @param width 调整后的宽度 - Adjusted width
 * @param height 调整后的高度 - Adjusted height
 */
function onGameResized(width:Int, height:Int) {}

/**
 * 在游戏被重置（重启）前的一瞬间
 * At the moment before the game is reset (restarted)
 */
function onGameReset() {}

/**
 * 在游戏被重置（重启）后的一瞬间
 * At the moment when the game is reset (restarted)
 */
function onGameResetPost() {}

/**
 * 在游戏被启动前的一瞬间（无效）
 * At the moment before the game is launched (invalid)
 */
function onGameStart() {}

/**
 * 在游戏被启动后的一瞬间
 * At the moment when the game is launched (invalid)
 */
function onGameStartPost() {}

/**
 * 在游戏`（FlxG.game）`进行更新屏幕前的一瞬间
 * The moment before updating the screen in the game `(FlxG.game)`
 */
function onUpdate(elapsed:Float) {}

/**
 * 在游戏`（FlxG.game）`更新屏幕后的一瞬间
 * The moment after updating the screen in the game `(FlxG.game)`
 */
function onUpdatePost(elapsed:Float) {}

/**
 * 在游戏绘制画面前的一瞬间
 * The moment before drawing the game screen
 */
function onDraw() {}

/**
 * 在游戏绘制画面后的一瞬间
 * At the moment after drawing the game graphics
 */
function onDrawPost() {}

/**
 * 当游戏切至后台
 * When the game switches to the background
 */
function onFocusLost() {}

/**
 * 当从后台切回游戏里
 * When switching back to the game from the background
 */
function onFocusGained() {}