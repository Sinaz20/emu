// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oTex = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP15;
float _TMP13;
float _TMP9;
float _TMP6;
float _TMP3;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP8;
float _TMP7;
float _TMP5;
float _TMP4;
float _TMP2;
vec4 _TMP1;
float _TMP14;
uniform sampler2D Texture;
input_dummy _IN1;
float _TMP19;
float _x0020;
float _v0024;
float _x0026;
vec2 _c0028;
float _a0032;
float _b0032;
float _a0036;
float _b0036;
float _a0038;
float _a0042;
float _b0042;
float _b0044;
float _a0048;
float _b0048;
float _b0050;
float _a0052;
vec3 _TMP53;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _tempColor;
    float _X;
    float _range;
    float _i;
    _x0020 = TEX0.x*TextureSize.x - 5.00000000E-01;
    _TMP19 = fract(_x0020);
    _tempColor = vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00);
    _v0024 = 5.00000000E-01 + InputSize.x/2.56000000E+02;
    _x0026 = -_v0024;
    _TMP14 = floor(_x0026);
    _range = -_TMP14;
    _i = -_range;
    for (; _i < _range + 2.00000000E+00; _i = _i + 1.00000000E+00) { 
        _X = _TMP19 - _i;
        _c0028 = vec2(TEX0.x - _X/TextureSize.x, TEX0.y);
        _TMP1 = COMPAT_TEXTURE(Texture, _c0028);
        _TMP2 = abs(_X);
        _a0032 = _TMP2 + 5.00000000E-01;
        _b0032 = 1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP3 = min(_a0032, _b0032);
        _TMP4 = abs(_X);
        _a0036 = _TMP4 + 5.00000000E-01;
        _b0036 = 1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP5 = min(_a0036, _b0036);
        _a0038 = 3.14159274E+00*(2.56000000E+02/InputSize.x)*_TMP5;
        _TMP6 = sin(_a0038);
        _TMP7 = abs(_X);
        _a0042 = _TMP7 - 5.00000000E-01;
        _b0042 = -1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP8 = max(_a0042, _b0042);
        _b0044 = 1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP9 = min(_TMP8, _b0044);
        _TMP10 = abs(_X);
        _a0048 = _TMP10 - 5.00000000E-01;
        _b0048 = -1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP11 = max(_a0048, _b0048);
        _b0050 = 1.00000000E+00/(2.56000000E+02/InputSize.x);
        _TMP12 = min(_TMP11, _b0050);
        _a0052 = 3.14159274E+00*(2.56000000E+02/InputSize.x)*_TMP12;
        _TMP13 = sin(_a0052);
        _tempColor = _tempColor + _TMP1.xyz*((((3.14159274E+00*(2.56000000E+02/InputSize.x)*_TMP3 + _TMP6) - 3.14159274E+00*(2.56000000E+02/InputSize.x)*_TMP9) - _TMP13)/6.28318548E+00);
    } 
    _TMP15 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _tempColor);
    _TMP53 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP15);
    _ret_0 = vec4(_TMP53.x, _TMP53.y, _TMP53.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
