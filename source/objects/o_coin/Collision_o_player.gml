/// @description Destroy on collision with player
o_player.coins++;
instance_destroy(self);

var coord = irandom(8);

instance_create_layer(x_coords[coord], y_coords[coord], "Instances", o_coin);
