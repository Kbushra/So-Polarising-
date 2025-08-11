objPlayer.idleTimer = 999;

if shader_current() == shWavy
{
	shader_set_uniform_f(shader_get_uniform(shWavy, "offset"), t);
	shader_set_uniform_f(shader_get_uniform(shWavy, "intensity"), 0.2);
	shader_set_uniform_f(shader_get_uniform(shWavy, "spd"), 1);
	
	t += 0.01;
}