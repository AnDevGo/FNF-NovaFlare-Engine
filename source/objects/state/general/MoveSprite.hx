package objects.state.general;

import flixel.system.FlxAssets.FlxGraphicAsset;

class MoveSprite extends FlxSprite{
    public function new(X:Float = 0, Y:Float = 0) {
        super(X, Y);
    }

    public function load(graphic:FlxGraphicAsset, scaleValue:Float = 1.1) {
        this.loadGraphic(graphic, false, 0, 0, false);
        this.scrollFactor.set(0, 0);
        var scale = Math.max(FlxG.width * scaleValue / this.width, FlxG.height * scaleValue / this.height);
		this.scale.x = scale;
		this.scale.y = scale;
		this.updateHitbox();
    }

    public var bgFollowSmooth:Float = 0.2;

    public var allowMove:Bool = true;
    override function update(elapsed:Float)
	{
		super.update(elapsed);
        if (allowMove) {
			var mouseX = FlxG.mouse.getWorldPosition().x;
			var mouseY = FlxG.mouse.getWorldPosition().y;
			var centerX = FlxG.width / 2;
			var centerY = FlxG.height / 2;
			
			var targetOffsetX = (mouseX - centerX) * 0.01;
			var targetOffsetY = (mouseY - centerY) * 0.01;
			
			var currentOffsetX = this.x - (centerX - this.width / 2);
			var currentOffsetY = this.y - (centerY - this.height / 2);
			
			var smoothX = FlxMath.lerp(currentOffsetX, targetOffsetX, bgFollowSmooth);
			var smoothY = FlxMath.lerp(currentOffsetY, targetOffsetY, bgFollowSmooth);
			
			this.x = centerX - this.width / 2 + smoothX;
			this.y = centerY - this.height / 2 + smoothY;
		}
    }
}