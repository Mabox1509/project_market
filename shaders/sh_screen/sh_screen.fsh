//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//GET PIXEL
	vec2 _pixel = vec2(floor(v_vTexcoord.x * 320.0), floor(v_vTexcoord.y * 180.0));
	vec2 _uv = v_vTexcoord;

    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, _uv );
}
