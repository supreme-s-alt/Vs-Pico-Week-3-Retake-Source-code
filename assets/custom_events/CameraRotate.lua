-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'CameraRotate' then
		setProperty('camHUD.angle', value1);
	end
end
