var xx:Float = 820;
var yy:Float = 440;
var xx2:Float = 920;
var yy2:Float = 440;
var ofs:Float = 15;
var followchars:Bool = true;
var del:Float = 0;
var del2:Float = 0;

function onUpdate(elapsed:Float) {
	if (del > 0) del--;
	if (del2 > 0) del2--;

	if (followchars) {
		if (!mustHitSection) {
			var dadAnim:String = dad.animation.curAnim != null ? dad.animation.curAnim.name : '';
			switch (dadAnim) {
				case 'singLEFT' | 'singLEFT-alt':
					triggerEvent('Camera Follow Pos', xx - ofs, yy);
				case 'singRIGHT' | 'singRIGHT-alt':
					triggerEvent('Camera Follow Pos', xx + ofs, yy);
				case 'singUP' | 'singUP-alt':
					triggerEvent('Camera Follow Pos', xx, yy - ofs);
				case 'singDOWN' | 'singDOWN-alt':
					triggerEvent('Camera Follow Pos', xx, yy + ofs);
				case 'idle' | 'idle-alt':
					triggerEvent('Camera Follow Pos', xx, yy);
			}
		} else {
			var bfAnim:String = boyfriend.animation.curAnim != null ? boyfriend.animation.curAnim.name : '';
			switch (bfAnim) {
				case 'singLEFT':
					triggerEvent('Camera Follow Pos', xx2 - ofs, yy2);
				case 'singRIGHT':
					triggerEvent('Camera Follow Pos', xx2 + ofs, yy2);
				case 'singUP':
					triggerEvent('Camera Follow Pos', xx2, yy2 - ofs);
				case 'singDOWN':
					triggerEvent('Camera Follow Pos', xx2, yy2 + ofs);
				case 'idle':
					triggerEvent('Camera Follow Pos', xx2, yy2);
			}
		}
	} else {
		triggerEvent('Camera Follow Pos', '', '');
	}
}
