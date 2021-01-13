shader_type canvas_item;

uniform float width;
uniform vec4 color: hint_color;

vec4 create_frame(sampler2D tex, vec2 pixel_size, vec2 uv) {
	vec4 pixel = texture(tex, uv);
	
	if (pixel.a == 0.0) {
		vec2 frame = pixel_size * width;

		for (float x = -frame.x; x <= frame.x; x += pixel_size.x) {
			for (float y = -frame.y; y <= frame.y; y += pixel_size.y) {
				vec4 new_pixel = texture(tex, uv + vec2(x, y));
				
				if (new_pixel.a != 0.0) {
					return color;
				}
			}
		}
	}
	return vec4(0.0);
}

void fragment() {
	COLOR = create_frame(TEXTURE, TEXTURE_PIXEL_SIZE, UV);
}