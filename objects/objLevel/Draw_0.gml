draw_self();
if !place_meeting(x, y, objPlayer) { exit; }

var _name = global.mapName[_id];
var _score = global.mapScore[_id];
var _rank = 0;
for (var i = 0; i < 5; i++)
{
	if _score < global.mapRank[_id, i] { break; }
	_rank++;
}

switch _rank
{
	case 0: _rank = "F"; break;
	case 1: _rank = "D"; break;
	case 2: _rank = "C"; break;
	case 3: _rank = "B"; break;
	case 4: _rank = "A"; break;
	case 5: _rank = "S"; break;
}

draw_set_font(fntNormal);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if _score >= 0 { draw_text(x+sprite_width/2, y+sprite_height/2, $"Name: {_name}\nScore: {_score}\nRank: {_rank}"); }
else { draw_text(x+sprite_width/2, y+sprite_height/2, $"Name: {_name}\nResults pending"); }