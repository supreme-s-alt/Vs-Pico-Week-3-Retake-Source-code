package states.stages;

import states.stages.objects.*;

class Philly extends BaseStage
{
	var build:BGSprite;
	var BBF:BGSprite;
	var BBb:BGSprite;

	override function create()
	{
		var sky:BGSprite = new BGSprite('Philly/sky', -680, -360, 1.07, 1.07);
		sky.setGraphicSize(Std.int(sky.width * 1.4));
		sky.updateHitbox();
		add(sky);

		var bgsky:BGSprite = new BGSprite('Philly/bgsky', -550, -530, 1.07, 1.07);
		bgsky.setGraphicSize(Std.int(bgsky.width * 1.1), Std.int(bgsky.height * 1.0));
		bgsky.updateHitbox();
		add(bgsky);

		BBb = new BGSprite('Philly/BBb', -550, -330, 1.07, 1.07, ['BBb bop'], true);
		BBb.setGraphicSize(Std.int(BBb.width * 1.1));
		BBb.updateHitbox();
		add(BBb);

		BBF = new BGSprite('Philly/BBF', -550, -330, 1.07, 1.07, ['BBF bop'], true);
		BBF.setGraphicSize(Std.int(BBF.width * 1.1));
		BBF.updateHitbox();
		add(BBF);

		build = new BGSprite('Philly/B', -620, -360, 1.02, 1.02, ['B Blink'], true);
		build.setGraphicSize(Std.int(build.width * 1.2));
		build.updateHitbox();
		add(build);

		var power:BGSprite = new BGSprite('Philly/power', -640, -530, 1.03, 1.03);
		power.setGraphicSize(Std.int(power.width * 1.4));
		power.updateHitbox();
		add(power);

		var Roof:BGSprite = new BGSprite('Philly/Roof', -680, -400, 1.0, 1.0);
		Roof.setGraphicSize(Std.int(Roof.width * 1.2));
		Roof.updateHitbox();
		add(Roof);

		var Fore:BGSprite = new BGSprite('Philly/Fore', -630, -360, 1.0, 1.0);
		Fore.setGraphicSize(Std.int(Fore.width * 1.2));
		Fore.updateHitbox();
		add(Fore);
	}

	override function beatHit()
	{
		if (curBeat % 2 == 0)
		{
			build.animation.play('B Blink', true);
		}

		if (curBeat % 4 == 0)
		{
			BBF.animation.play('BBF bop', true);
			BBb.animation.play('BBb bop', true);
		}
	}
}
