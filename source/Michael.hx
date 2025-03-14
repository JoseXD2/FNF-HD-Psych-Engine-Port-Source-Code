package;

import animateatlas.AtlasFrameMaker;
import flixel.math.FlxRandom;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxG;

class Michael extends FlxSprite
{

	var animationSuffix:String;
	public var dead:Bool = false;
	public function new(x:Float, y:Float)
	{

		super(x, y);

		frames = Paths.getSparrowAtlas("limo/michael");
		animation.addByIndices('danceLeft', 'michaelDANCE', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
		animation.addByIndices('danceRight', 'michaelDANCE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
		
		animation.play('danceLeft');
		antialiasing = ClientPrefs.globalAntialiasing;

	}

	var danceDir:Bool = false;

	public function dance():Void
	{
		danceDir = !danceDir;

		if (danceDir)
			animation.play('danceRight', true);
		else
			animation.play('danceLeft', true);
	}
}
