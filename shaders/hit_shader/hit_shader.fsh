//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(pow(base_col.r,1.7)*2.0, pow(base_col.g,1.7)*2.0, pow(base_col.b,1.7)*2.0, base_col.a);
}
