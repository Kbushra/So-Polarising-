global.progress[0] = global.mapScore[0] >= 0; //Tutorial beaten

ini_open("Polarising.ini");
for (var i = 0; i < global.progressCount; i++)
{ ini_write_real("Progress", $"Progression {i+1}", global.progress[i]); }
ini_close();