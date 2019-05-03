//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float dist = pow(1.0-distance(v_vTexcoord,vec2(0.5,0.5)),0.4);
	
    gl_FragColor = vec4(base_col.r*(dist),base_col.g*(dist),base_col.b*(dist), base_col.a);
}
