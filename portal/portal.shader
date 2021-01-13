shader_type canvas_item;

uniform sampler2D tex;

void fragment() {
	vec4 pixel = texture(SCREEN_TEXTURE, SCREEN_UV);
	
	if (pixel.r >= 0.99 && pixel.g <= 0.01 && pixel.b >= 0.99) {
		COLOR = texture(tex, SCREEN_UV);
	} else {
		COLOR = pixel;
	}
}