//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
    gl_FragColor = vec4(base_col.r+time,base_col.g+time,base_col.b+time, base_col.a);
}
