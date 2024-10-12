import haxe.io.Path;
import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;

class Boot extends Sprite {
	public function new() {
		super();

		#if sys
		Sys.setCwd(Path.directory(Sys.programPath()));
		#end
		Const.initialize();

		addChild(new FlxGame(1280, 720, PlayState));

		FlxG.mouse.useSystemCursor = true;
	}
}
