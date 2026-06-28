package states.stages;

import states.stages.objects.*;
import substates.GameOverSubstate;
import flixel.FlxG;
import objects.Note;

class Cameo extends BaseStage
{
	var smoke:BGSprite;

	// Camera follow settings
	var xx:Float = 820;
	var yy:Float = 440;
	var xx2:Float = 920;
	var yy2:Float = 440;
	var ofs:Float = 15;
	var followchars:Bool = true;

	override function create()
	{
		var sky:BGSprite = new BGSprite('ErectPhilly/sky', -680, -360, 1.2, 1.2);
		sky.setGraphicSize(Std.int(sky.width * 1.2));
		sky.updateHitbox();
		add(sky);

		var buildings2:BGSprite = new BGSprite('ErectPhilly/buildings2', -680, -360, 1.16, 1.16);
		buildings2.setGraphicSize(Std.int(buildings2.width * 1.2));
		buildings2.updateHitbox();
		add(buildings2);

		var buildings:BGSprite = new BGSprite('ErectPhilly/buildings', -680, -360, 1.1, 1.1);
		buildings.setGraphicSize(Std.int(buildings.width * 1.2));
		buildings.updateHitbox();
		add(buildings);

		var train2:BGSprite = new BGSprite('ErectPhilly/train2', -680, -360, 1.05, 1.05);
		train2.setGraphicSize(Std.int(train2.width * 1.2));
		train2.updateHitbox();
		add(train2);

		var train:BGSprite = new BGSprite('ErectPhilly/train', -680, -360, 1.0, 1.0);
		train.setGraphicSize(Std.int(train.width * 1.2));
		train.updateHitbox();
		add(train);

		smoke = new BGSprite('ErectPhilly/smoke', -620, -370, 1.0, 1.0, ['Smoke smoke'], true);
		smoke.setGraphicSize(Std.int(smoke.width * 1.2));
		smoke.updateHitbox();
		add(smoke);

		GameOverSubstate.characterName = 'erect-death-bf';
		GameOverSubstate.deathSoundName = 'death-erect';
		GameOverSubstate.loopSoundName = 'erectdeath';
		GameOverSubstate.endSoundName = 'erectdeathend';
	}

	override function update(elapsed:Float)
	{
		if (followchars)
		{
			var sectionIsDad:Bool = (PlayState.SONG.notes[curSection] != null) ? PlayState.SONG.notes[curSection].mustHitSection : true;


			if (sectionIsDad)
			{
				var dadAnim:String = (dad.animation.curAnim != null) ? dad.animation.curAnim.name : '';
				switch (dadAnim)
				{
					case 'singLEFT' | 'singLEFT-alt':
						camFollow.setPosition(xx - ofs, yy);
					case 'singRIGHT' | 'singRIGHT-alt':
						camFollow.setPosition(xx + ofs, yy);
					case 'singUP' | 'singUP-alt':
						camFollow.setPosition(xx, yy - ofs);
					case 'singDOWN' | 'singDOWN-alt':
						camFollow.setPosition(xx, yy + ofs);
					case 'idle' | 'idle-alt':
						camFollow.setPosition(xx, yy);
				}
			}
			else
			{
				var bfAnim:String = (boyfriend.animation.curAnim != null) ? boyfriend.animation.curAnim.name : '';
				switch (bfAnim)
				{
					case 'singLEFT':
						camFollow.setPosition(xx2 - ofs, yy2);
					case 'singRIGHT':
						camFollow.setPosition(xx2 + ofs, yy2);
					case 'singUP':
						camFollow.setPosition(xx2, yy2 - ofs);
					case 'singDOWN':
						camFollow.setPosition(xx2, yy2 + ofs);
					case 'idle':
						camFollow.setPosition(xx2, yy2);
				}
			}
		}
	}

	override function destroy()
	{
		GameOverSubstate.characterName = 'bf-dead';
		GameOverSubstate.deathSoundName = 'fnf_loss_sfx';
		GameOverSubstate.loopSoundName = 'gameOver';
		GameOverSubstate.endSoundName = 'gameOverEnd';
		super.destroy();
	}
}
