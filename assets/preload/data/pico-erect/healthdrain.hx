function opponentNoteHit(note:Note) {
	var health:Float = getProperty('health');
	if (health > 0.15 && difficultyName == 'Hard') {
		setProperty('health', health - 0.017);
	}
	if (health > 0.15 && difficultyName == 'soft') {
		setProperty('health', health - 0.004);
	}
}
