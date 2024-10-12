import flixel.FlxG;
import nutz.Version;

class Const {
	public static var VERSION(default, null) = new Version();

	public static inline function initialize() {
		VERSION = new Version().parse(FlxG.stage.application.meta.get('version'));
	}
}
