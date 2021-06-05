//Coded by INinja Studio MIT Licence
shader_type canvas_item;

uniform vec2 Resolution;

void fragment()
{
	vec2 uv = FRAGCOORD.xy / Resolution.xy;
    uv.y = 1.0 - uv.y;
	
	float lod = 2.0 + 1.0*cos( 0.25 * 6.2831*TIME );
	vec3 col = 0.5 - 8.0*(texture(TEXTURE, uv).xyz - texture(TEXTURE, uv, lod).xyz);
	
	COLOR = vec4( col, 1.0 );
}