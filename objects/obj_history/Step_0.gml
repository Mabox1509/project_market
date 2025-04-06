pos[0] = scr_towards(pos[0], target[0], spd * global.clock.dt);
pos[1] = scr_towards(pos[1], target[1], spd * global.clock.dt);

x = floor(pos[0])
y = floor(pos[1]);

depth = -y;