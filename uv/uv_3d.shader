shader_type spatial;

uniform vec4 emission_color : hint_color;
uniform float emission_energy : hint_range(0.0, 16.0);

void fragment() {
	EMISSION = emission_color.rgb * emission_energy;
	ALPHA = 0.0;
}

void light() {
	DIFFUSE_LIGHT = vec3(0.0);
	ALPHA = length(ATTENUATION);
}