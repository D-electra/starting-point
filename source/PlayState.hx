import flixel.FlxState;

class PlayState extends FlxState {
	public static var ME:PlayState;

	public function new() {
		super();
		ME = this;
	}

	override function create() {
		super.create();

		nutz.Gc.forceMajor();
	}

	override function destroy() {
		ME = null;
		super.destroy();
	}
}
