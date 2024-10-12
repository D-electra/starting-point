using StringTools;

class Paths {
	public static inline function image(key:String):String {
		if (key.contains('.')) return 'assets/images/$key';
		return 'assets/images/$key.png';
	}

	public static inline function music(key:String):String {
		if (key.contains('.')) return 'assets/music/$key';
		return #if web 'assets/music/$key.mp3' #else 'assets/music/$key.ogg' #end;
	}

	public static inline function sound(key:String):String {
		if (key.contains('.')) return 'assets/sounds/$key';
		return #if web 'assets/sounds/$key.mp3' #else 'assets/sounds/$key.ogg' #end;
	}
}
