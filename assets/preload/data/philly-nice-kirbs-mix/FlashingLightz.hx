var hell:FlxSprite;
var warn:FlxSprite;
var text:FlxText;

function onCreate() {
	hell = new FlxSprite(-900, -440).makeGraphic(5000, 5000, 0xFF000000);
	hell.scrollFactor.set(1, 1);
	hell.cameras = [game.camOther];
	game.add(hell);

	warn = new FlxSprite(450, 100, Paths.image('warn'));
	warn.setGraphicSize(Std.int(warn.width * 0.5));
	warn.updateHitbox();
	warn.cameras = [game.camOther];
	game.add(warn);

	var bruh:String = 'This Song contains FLASHING LIGHTS! \n Please play on SOFT DIFFICULTY if you are prone to epilepsy!';

	text = new FlxText(380, 426, 500, bruh);
	text.setFormat(null, 40, FlxColor.WHITE, CENTER);
	text.cameras = [game.camOther];
	game.add(text);
}

function onSongStart() {
	new FlxTimer().start(5, function(tmr:FlxTimer) {
		FlxTween.tween(text, {alpha: 0}, 1);
		FlxTween.tween(warn, {alpha: 0}, 1);
		FlxTween.tween(hell, {alpha: 0}, 1);
	});
}
