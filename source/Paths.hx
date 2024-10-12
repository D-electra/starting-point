import openfl.Assets;

using StringTools;

class Paths {
	public static inline function image(key:String):String {
		if (key.contains('.')) return 'assets/images/$key';
		return 'assets/images/$key.png';
	}

	public static inline function listImages(key:String):Array<String> {
		return Assets.list(IMAGE).filter((v) -> v.startsWith('assets/images/$key'));
	}

	public static inline function music(key:String):String {
		if (key.contains('.')) return 'assets/music/$key';
		return #if web 'assets/music/$key.mp3' #else 'assets/music/$key.ogg' #end;
	}

	public static inline function listMusic(key:String):Array<String> {
		return Assets.list(SOUND).filter((v) -> v.startsWith('assets/sounds/$key'));
	}

	public static inline function sound(key:String):String {
		if (key.contains('.')) return 'assets/sounds/$key';
		return #if web 'assets/sounds/$key.mp3' #else 'assets/sounds/$key.ogg' #end;
	}

	public static inline function listSounds(key:String):Array<String> {
		return Assets.list(SOUND).filter((v) -> v.startsWith('assets/sounds/$key'));
	}
}
