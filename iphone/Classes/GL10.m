//
//  GL10.m
//  opengl
//
//  Created by Kevin Thompson on 4/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GL10.h"


@implementation GL10

/* OpenGL ES core versions */
MAKE_SYSTEM_PROP(GL_VERSION_ES_CM_1_0, 1);
MAKE_SYSTEM_PROP(GL_VERSION_ES_CL_1_0, 1);
MAKE_SYSTEM_PROP(GL_VERSION_ES_CM_1_1, 1);
MAKE_SYSTEM_PROP(GL_VERSION_ES_CL_1_1, 1);

/* Legacy core versions */
MAKE_SYSTEM_PROP(GL_OES_VERSION_1_0, 1);
MAKE_SYSTEM_PROP(GL_OES_VERSION_1_1, 1);

/* Extensions */
MAKE_SYSTEM_PROP(GL_OES_byte_coordinates, 1);
MAKE_SYSTEM_PROP(GL_OES_compressed_paletted_texture, 1);
MAKE_SYSTEM_PROP(GL_OES_draw_texture, 1);
MAKE_SYSTEM_PROP(GL_OES_fixed_point, 1);
MAKE_SYSTEM_PROP(GL_OES_matrix_get, 1);
MAKE_SYSTEM_PROP(GL_OES_matrix_palette, 1);
MAKE_SYSTEM_PROP(GL_OES_point_size_array, 1);
MAKE_SYSTEM_PROP(GL_OES_point_sprite, 1);
MAKE_SYSTEM_PROP(GL_OES_read_format, 1);
MAKE_SYSTEM_PROP(GL_OES_single_precision, 1);

/* ClearBufferMask */
MAKE_SYSTEM_PROP(GL_DEPTH_BUFFER_BIT, 0x00000100);
MAKE_SYSTEM_PROP(GL_STENCIL_BUFFER_BIT, 0x00000400);
MAKE_SYSTEM_PROP(GL_COLOR_BUFFER_BIT, 0x00004000);

/* Boolean */
MAKE_SYSTEM_PROP(GL_FALSE, 0);
MAKE_SYSTEM_PROP(GL_TRUE, 1);

/* BeginMode */
MAKE_SYSTEM_PROP(GL_POINTS, 0x0000);
MAKE_SYSTEM_PROP(GL_LINES, 0x0001);
MAKE_SYSTEM_PROP(GL_LINE_LOOP, 0x0002);
MAKE_SYSTEM_PROP(GL_LINE_STRIP, 0x0003);
MAKE_SYSTEM_PROP(GL_TRIANGLES, 0x0004);
MAKE_SYSTEM_PROP(GL_TRIANGLE_STRIP, 0x0005);
MAKE_SYSTEM_PROP(GL_TRIANGLE_FAN, 0x0006);

/* AlphaFunction */
MAKE_SYSTEM_PROP(GL_NEVER, 0x0200);
MAKE_SYSTEM_PROP(GL_LESS, 0x0201);
MAKE_SYSTEM_PROP(GL_EQUAL, 0x0202);
MAKE_SYSTEM_PROP(GL_LEQUAL, 0x0203);
MAKE_SYSTEM_PROP(GL_GREATER, 0x0204);
MAKE_SYSTEM_PROP(GL_NOTEQUAL, 0x0205);
MAKE_SYSTEM_PROP(GL_GEQUAL, 0x0206);
MAKE_SYSTEM_PROP(GL_ALWAYS, 0x0207);

/* BlendingFactorDest */
MAKE_SYSTEM_PROP(GL_ZERO, 0);
MAKE_SYSTEM_PROP(GL_ONE, 1);
MAKE_SYSTEM_PROP(GL_SRC_COLOR, 0x0300);
MAKE_SYSTEM_PROP(GL_ONE_MINUS_SRC_COLOR, 0x0301);


MAKE_SYSTEM_PROP(GL_SRC_ALPHA, 0x0302);
MAKE_SYSTEM_PROP(GL_ONE_MINUS_SRC_ALPHA, 0x0303);
MAKE_SYSTEM_PROP(GL_DST_ALPHA, 0x0304);
MAKE_SYSTEM_PROP(GL_ONE_MINUS_DST_ALPHA, 0x0305);

/* BlendingFactorSrc */
/*      GL_ZERO */
/*      GL_ONE */
MAKE_SYSTEM_PROP(GL_DST_COLOR, 0x0306);
MAKE_SYSTEM_PROP(GL_ONE_MINUS_DST_COLOR, 0x0307);
MAKE_SYSTEM_PROP(GL_SRC_ALPHA_SATURATE, 0x0308);
/*      GL_SRC_ALPHA */
/*      GL_ONE_MINUS_SRC_ALPHA */
/*      GL_DST_ALPHA */
/*      GL_ONE_MINUS_DST_ALPHA */

/* ClipPlaneName */
MAKE_SYSTEM_PROP(GL_CLIP_PLANE0, 0x3000);
MAKE_SYSTEM_PROP(GL_CLIP_PLANE1, 0x3001);
MAKE_SYSTEM_PROP(GL_CLIP_PLANE2, 0x3002);
MAKE_SYSTEM_PROP(GL_CLIP_PLANE3, 0x3003);
MAKE_SYSTEM_PROP(GL_CLIP_PLANE4, 0x3004);
MAKE_SYSTEM_PROP(GL_CLIP_PLANE5, 0x3005);

/* ColorMaterialFace */
/*      GL_FRONT_AND_BACK */

/* ColorMaterialParameter */
/*      GL_AMBIENT_AND_DIFFUSE */

/* ColorPointerType */
/*      GL_UNSIGNED_BYTE */
/*      GL_FLOAT */
/*      GL_FIXED */

/* CullFaceMode */
MAKE_SYSTEM_PROP(GL_FRONT, 0x0404);
MAKE_SYSTEM_PROP(GL_BACK, 0x0405);
MAKE_SYSTEM_PROP(GL_FRONT_AND_BACK, 0x0408);

/* DepthFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* EnableCap */
MAKE_SYSTEM_PROP(GL_FOG, 0x0B60);
MAKE_SYSTEM_PROP(GL_LIGHTING, 0x0B50);
MAKE_SYSTEM_PROP(GL_TEXTURE_2D, 0x0DE1);
MAKE_SYSTEM_PROP(GL_CULL_FACE, 0x0B44);
MAKE_SYSTEM_PROP(GL_ALPHA_TEST, 0x0BC0);
MAKE_SYSTEM_PROP(GL_BLEND, 0x0BE2);
MAKE_SYSTEM_PROP(GL_COLOR_LOGIC_OP, 0x0BF2);
MAKE_SYSTEM_PROP(GL_DITHER, 0x0BD0);
MAKE_SYSTEM_PROP(GL_STENCIL_TEST, 0x0B90);
MAKE_SYSTEM_PROP(GL_DEPTH_TEST, 0x0B71);
/*      GL_LIGHT0 */
/*      GL_LIGHT1 */
/*      GL_LIGHT2 */
/*      GL_LIGHT3 */
/*      GL_LIGHT4 */
/*      GL_LIGHT5 */
/*      GL_LIGHT6 */
/*      GL_LIGHT7 */
MAKE_SYSTEM_PROP(GL_POINT_SMOOTH, 0x0B10);
MAKE_SYSTEM_PROP(GL_LINE_SMOOTH, 0x0B20);
MAKE_SYSTEM_PROP(GL_COLOR_MATERIAL, 0x0B57);
MAKE_SYSTEM_PROP(GL_NORMALIZE, 0x0BA1);
MAKE_SYSTEM_PROP(GL_RESCALE_NORMAL, 0x803A);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY, 0x8074);
MAKE_SYSTEM_PROP(GL_NORMAL_ARRAY, 0x8075);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY, 0x8076);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY, 0x8078);
MAKE_SYSTEM_PROP(GL_MULTISAMPLE, 0x809D);
MAKE_SYSTEM_PROP(GL_SAMPLE_ALPHA_TO_COVERAGE, 0x809E);
MAKE_SYSTEM_PROP(GL_SAMPLE_ALPHA_TO_ONE, 0x809F);
MAKE_SYSTEM_PROP(GL_SAMPLE_COVERAGE, 0x80A0);

/* ErrorCode */
MAKE_SYSTEM_PROP(GL_NO_ERROR, 0);
MAKE_SYSTEM_PROP(GL_INVALID_ENUM, 0x0500);
MAKE_SYSTEM_PROP(GL_INVALID_VALUE, 0x0501);
MAKE_SYSTEM_PROP(GL_INVALID_OPERATION, 0x0502);
MAKE_SYSTEM_PROP(GL_STACK_OVERFLOW, 0x0503);
MAKE_SYSTEM_PROP(GL_STACK_UNDERFLOW, 0x0504);
MAKE_SYSTEM_PROP(GL_OUT_OF_MEMORY, 0x0505);

/* FogMode */
/*      GL_LINEAR */
MAKE_SYSTEM_PROP(GL_EXP, 0x0800);
MAKE_SYSTEM_PROP(GL_EXP2, 0x0801);

/* FogParameter */
MAKE_SYSTEM_PROP(GL_FOG_DENSITY, 0x0B62);
MAKE_SYSTEM_PROP(GL_FOG_START, 0x0B63);
MAKE_SYSTEM_PROP(GL_FOG_END, 0x0B64);
MAKE_SYSTEM_PROP(GL_FOG_MODE, 0x0B65);
MAKE_SYSTEM_PROP(GL_FOG_COLOR, 0x0B66);

/* FrontFaceDirection */
MAKE_SYSTEM_PROP(GL_CW, 0x0900);
MAKE_SYSTEM_PROP(GL_CCW, 0x0901);

/* GetPName */
MAKE_SYSTEM_PROP(GL_CURRENT_COLOR, 0x0B00);
MAKE_SYSTEM_PROP(GL_CURRENT_NORMAL, 0x0B02);
MAKE_SYSTEM_PROP(GL_CURRENT_TEXTURE_COORDS, 0x0B03);
MAKE_SYSTEM_PROP(GL_POINT_SIZE, 0x0B11);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_MIN, 0x8126);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_MAX, 0x8127);
MAKE_SYSTEM_PROP(GL_POINT_FADE_THRESHOLD_SIZE, 0x8128);
MAKE_SYSTEM_PROP(GL_POINT_DISTANCE_ATTENUATION, 0x8129);
MAKE_SYSTEM_PROP(GL_SMOOTH_POINT_SIZE_RANGE, 0x0B12);
MAKE_SYSTEM_PROP(GL_LINE_WIDTH, 0x0B21);
MAKE_SYSTEM_PROP(GL_SMOOTH_LINE_WIDTH_RANGE, 0x0B22);
MAKE_SYSTEM_PROP(GL_ALIASED_POINT_SIZE_RANGE, 0x846D);
MAKE_SYSTEM_PROP(GL_ALIASED_LINE_WIDTH_RANGE, 0x846E);
MAKE_SYSTEM_PROP(GL_CULL_FACE_MODE, 0x0B45);
MAKE_SYSTEM_PROP(GL_FRONT_FACE, 0x0B46);
MAKE_SYSTEM_PROP(GL_SHADE_MODEL, 0x0B54);
MAKE_SYSTEM_PROP(GL_DEPTH_RANGE, 0x0B70);
MAKE_SYSTEM_PROP(GL_DEPTH_WRITEMASK, 0x0B72);
MAKE_SYSTEM_PROP(GL_DEPTH_CLEAR_VALUE, 0x0B73);
MAKE_SYSTEM_PROP(GL_DEPTH_FUNC, 0x0B74);
MAKE_SYSTEM_PROP(GL_STENCIL_CLEAR_VALUE, 0x0B91);
MAKE_SYSTEM_PROP(GL_STENCIL_FUNC, 0x0B92);
MAKE_SYSTEM_PROP(GL_STENCIL_VALUE_MASK, 0x0B93);
MAKE_SYSTEM_PROP(GL_STENCIL_FAIL, 0x0B94);
MAKE_SYSTEM_PROP(GL_STENCIL_PASS_DEPTH_FAIL, 0x0B95);
MAKE_SYSTEM_PROP(GL_STENCIL_PASS_DEPTH_PASS, 0x0B96);
MAKE_SYSTEM_PROP(GL_STENCIL_REF, 0x0B97);
MAKE_SYSTEM_PROP(GL_STENCIL_WRITEMASK, 0x0B98);
MAKE_SYSTEM_PROP(GL_MATRIX_MODE, 0x0BA0);
MAKE_SYSTEM_PROP(GL_VIEWPORT, 0x0BA2);
MAKE_SYSTEM_PROP(GL_MODELVIEW_STACK_DEPTH, 0x0BA3);
MAKE_SYSTEM_PROP(GL_PROJECTION_STACK_DEPTH, 0x0BA4);
MAKE_SYSTEM_PROP(GL_TEXTURE_STACK_DEPTH, 0x0BA5);
MAKE_SYSTEM_PROP(GL_MODELVIEW_MATRIX, 0x0BA6);
MAKE_SYSTEM_PROP(GL_PROJECTION_MATRIX, 0x0BA7);
MAKE_SYSTEM_PROP(GL_TEXTURE_MATRIX, 0x0BA8);
MAKE_SYSTEM_PROP(GL_ALPHA_TEST_FUNC, 0x0BC1);
MAKE_SYSTEM_PROP(GL_ALPHA_TEST_REF, 0x0BC2);
MAKE_SYSTEM_PROP(GL_BLEND_DST, 0x0BE0);
MAKE_SYSTEM_PROP(GL_BLEND_SRC, 0x0BE1);
MAKE_SYSTEM_PROP(GL_LOGIC_OP_MODE, 0x0BF0);
MAKE_SYSTEM_PROP(GL_SCISSOR_BOX, 0x0C10);
MAKE_SYSTEM_PROP(GL_SCISSOR_TEST, 0x0C11);
MAKE_SYSTEM_PROP(GL_COLOR_CLEAR_VALUE, 0x0C22);
MAKE_SYSTEM_PROP(GL_COLOR_WRITEMASK, 0x0C23);
MAKE_SYSTEM_PROP(GL_MAX_LIGHTS, 0x0D31);
MAKE_SYSTEM_PROP(GL_MAX_CLIP_PLANES, 0x0D32);
MAKE_SYSTEM_PROP(GL_MAX_TEXTURE_SIZE, 0x0D33);
MAKE_SYSTEM_PROP(GL_MAX_MODELVIEW_STACK_DEPTH, 0x0D36);
MAKE_SYSTEM_PROP(GL_MAX_PROJECTION_STACK_DEPTH, 0x0D38);
MAKE_SYSTEM_PROP(GL_MAX_TEXTURE_STACK_DEPTH, 0x0D39);
MAKE_SYSTEM_PROP(GL_MAX_VIEWPORT_DIMS, 0x0D3A);
MAKE_SYSTEM_PROP(GL_MAX_TEXTURE_UNITS, 0x84E2);
MAKE_SYSTEM_PROP(GL_SUBPIXEL_BITS, 0x0D50);
MAKE_SYSTEM_PROP(GL_RED_BITS, 0x0D52);
MAKE_SYSTEM_PROP(GL_GREEN_BITS, 0x0D53);
MAKE_SYSTEM_PROP(GL_BLUE_BITS, 0x0D54);
MAKE_SYSTEM_PROP(GL_ALPHA_BITS, 0x0D55);
MAKE_SYSTEM_PROP(GL_DEPTH_BITS, 0x0D56);
MAKE_SYSTEM_PROP(GL_STENCIL_BITS, 0x0D57);
MAKE_SYSTEM_PROP(GL_POLYGON_OFFSET_UNITS, 0x2A00);
MAKE_SYSTEM_PROP(GL_POLYGON_OFFSET_FILL, 0x8037);
MAKE_SYSTEM_PROP(GL_POLYGON_OFFSET_FACTOR, 0x8038);
MAKE_SYSTEM_PROP(GL_TEXTURE_BINDING_2D, 0x8069);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY_SIZE, 0x807A);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY_TYPE, 0x807B);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY_STRIDE, 0x807C);
MAKE_SYSTEM_PROP(GL_NORMAL_ARRAY_TYPE, 0x807E);
MAKE_SYSTEM_PROP(GL_NORMAL_ARRAY_STRIDE, 0x807F);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY_SIZE, 0x8081);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY_TYPE, 0x8082);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY_STRIDE, 0x8083);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY_SIZE, 0x8088);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY_TYPE, 0x8089);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY_STRIDE, 0x808A);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY_POINTER, 0x808E);
MAKE_SYSTEM_PROP(GL_NORMAL_ARRAY_POINTER, 0x808F);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY_POINTER, 0x8090);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY_POINTER, 0x8092);
MAKE_SYSTEM_PROP(GL_SAMPLE_BUFFERS, 0x80A8);
MAKE_SYSTEM_PROP(GL_SAMPLES, 0x80A9);
MAKE_SYSTEM_PROP(GL_SAMPLE_COVERAGE_VALUE, 0x80AA);
MAKE_SYSTEM_PROP(GL_SAMPLE_COVERAGE_INVERT, 0x80AB);

/* GetTextureParameter */
/*      GL_TEXTURE_MAG_FILTER */
/*      GL_TEXTURE_MIN_FILTER */
/*      GL_TEXTURE_WRAP_S */
/*      GL_TEXTURE_WRAP_T */

MAKE_SYSTEM_PROP(GL_IMPLEMENTATION_COLOR_READ_TYPE_OES, 0x8B9A);
MAKE_SYSTEM_PROP(GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES, 0x8B9B);
MAKE_SYSTEM_PROP(GL_NUM_COMPRESSED_TEXTURE_FORMATS, 0x86A2);
MAKE_SYSTEM_PROP(GL_COMPRESSED_TEXTURE_FORMATS, 0x86A3);

/* HintMode */
MAKE_SYSTEM_PROP(GL_DONT_CARE, 0x1100);
MAKE_SYSTEM_PROP(GL_FASTEST, 0x1101);
MAKE_SYSTEM_PROP(GL_NICEST, 0x1102);

/* HintTarget */
MAKE_SYSTEM_PROP(GL_PERSPECTIVE_CORRECTION_HINT, 0x0C50);
MAKE_SYSTEM_PROP(GL_POINT_SMOOTH_HINT, 0x0C51);
MAKE_SYSTEM_PROP(GL_LINE_SMOOTH_HINT, 0x0C52);
MAKE_SYSTEM_PROP(GL_FOG_HINT, 0x0C54);
MAKE_SYSTEM_PROP(GL_GENERATE_MIPMAP_HINT, 0x8192);

/* LightModelParameter */
MAKE_SYSTEM_PROP(GL_LIGHT_MODEL_AMBIENT, 0x0B53);
MAKE_SYSTEM_PROP(GL_LIGHT_MODEL_TWO_SIDE, 0x0B52);

/* LightParameter */
MAKE_SYSTEM_PROP(GL_AMBIENT, 0x1200);
MAKE_SYSTEM_PROP(GL_DIFFUSE, 0x1201);
MAKE_SYSTEM_PROP(GL_SPECULAR, 0x1202);
MAKE_SYSTEM_PROP(GL_POSITION, 0x1203);
MAKE_SYSTEM_PROP(GL_SPOT_DIRECTION, 0x1204);
MAKE_SYSTEM_PROP(GL_SPOT_EXPONENT, 0x1205);
MAKE_SYSTEM_PROP(GL_SPOT_CUTOFF, 0x1206);
MAKE_SYSTEM_PROP(GL_CONSTANT_ATTENUATION, 0x1207);
MAKE_SYSTEM_PROP(GL_LINEAR_ATTENUATION, 0x1208);
MAKE_SYSTEM_PROP(GL_QUADRATIC_ATTENUATION, 0x1209);

/* DataType */
MAKE_SYSTEM_PROP(GL_BYTE, 0x1400);
MAKE_SYSTEM_PROP(GL_UNSIGNED_BYTE, 0x1401);
MAKE_SYSTEM_PROP(GL_SHORT, 0x1402);
MAKE_SYSTEM_PROP(GL_UNSIGNED_SHORT, 0x1403);
MAKE_SYSTEM_PROP(GL_FLOAT, 0x1406);
MAKE_SYSTEM_PROP(GL_FIXED, 0x140C);

/* LogicOp */
MAKE_SYSTEM_PROP(GL_CLEAR, 0x1500);
MAKE_SYSTEM_PROP(GL_AND, 0x1501);
MAKE_SYSTEM_PROP(GL_AND_REVERSE, 0x1502);
MAKE_SYSTEM_PROP(GL_COPY, 0x1503);
MAKE_SYSTEM_PROP(GL_AND_INVERTED, 0x1504);
MAKE_SYSTEM_PROP(GL_NOOP, 0x1505);
MAKE_SYSTEM_PROP(GL_XOR, 0x1506);
MAKE_SYSTEM_PROP(GL_OR, 0x1507);
MAKE_SYSTEM_PROP(GL_NOR, 0x1508);
MAKE_SYSTEM_PROP(GL_EQUIV, 0x1509);
MAKE_SYSTEM_PROP(GL_INVERT, 0x150A);
MAKE_SYSTEM_PROP(GL_OR_REVERSE, 0x150B);
MAKE_SYSTEM_PROP(GL_COPY_INVERTED, 0x150C);
MAKE_SYSTEM_PROP(GL_OR_INVERTED, 0x150D);
MAKE_SYSTEM_PROP(GL_NAND, 0x150E);
MAKE_SYSTEM_PROP(GL_SET, 0x150F);

/* MaterialFace */
/*      GL_FRONT_AND_BACK */

/* MaterialParameter */
MAKE_SYSTEM_PROP(GL_EMISSION, 0x1600);
MAKE_SYSTEM_PROP(GL_SHININESS, 0x1601);
MAKE_SYSTEM_PROP(GL_AMBIENT_AND_DIFFUSE, 0x1602);
/*      GL_AMBIENT */
/*      GL_DIFFUSE */
/*      GL_SPECULAR */

/* MatrixMode */
MAKE_SYSTEM_PROP(GL_MODELVIEW, 0x1700);
MAKE_SYSTEM_PROP(GL_PROJECTION, 0x1701);
MAKE_SYSTEM_PROP(GL_TEXTURE, 0x1702);

/* NormalPointerType */
/*      GL_BYTE */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */

/* PixelFormat */
MAKE_SYSTEM_PROP(GL_ALPHA, 0x1906);
MAKE_SYSTEM_PROP(GL_RGB, 0x1907);
MAKE_SYSTEM_PROP(GL_RGBA, 0x1908);
MAKE_SYSTEM_PROP(GL_LUMINANCE, 0x1909);
MAKE_SYSTEM_PROP(GL_LUMINANCE_ALPHA, 0x190A);

/* PixelStoreParameter */
MAKE_SYSTEM_PROP(GL_UNPACK_ALIGNMENT, 0x0CF5);
MAKE_SYSTEM_PROP(GL_PACK_ALIGNMENT, 0x0D05);

/* PixelType */
/*      GL_UNSIGNED_BYTE */
MAKE_SYSTEM_PROP(GL_UNSIGNED_SHORT_4_4_4_4, 0x8033);
MAKE_SYSTEM_PROP(GL_UNSIGNED_SHORT_5_5_5_1, 0x8034);
MAKE_SYSTEM_PROP(GL_UNSIGNED_SHORT_5_6_5, 0x8363);

/* ShadingModel */
MAKE_SYSTEM_PROP(GL_FLAT, 0x1D00);
MAKE_SYSTEM_PROP(GL_SMOOTH, 0x1D01);

/* StencilFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* StencilOp */
/*      GL_ZERO */
MAKE_SYSTEM_PROP(GL_KEEP, 0x1E00);
MAKE_SYSTEM_PROP(GL_REPLACE, 0x1E01);
MAKE_SYSTEM_PROP(GL_INCR, 0x1E02);
MAKE_SYSTEM_PROP(GL_DECR, 0x1E03);
/*      GL_INVERT */

/* StringName */
MAKE_SYSTEM_PROP(GL_VENDOR, 0x1F00);
MAKE_SYSTEM_PROP(GL_RENDERER, 0x1F01);
MAKE_SYSTEM_PROP(GL_VERSION, 0x1F02);
MAKE_SYSTEM_PROP(GL_EXTENSIONS, 0x1F03);

/* TexCoordPointerType */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */
/*      GL_BYTE */

/* TextureEnvMode */
MAKE_SYSTEM_PROP(GL_MODULATE, 0x2100);
MAKE_SYSTEM_PROP(GL_DECAL, 0x2101);
/*      GL_BLEND */
MAKE_SYSTEM_PROP(GL_ADD, 0x0104);
/*      GL_REPLACE */

/* TextureEnvParameter */
MAKE_SYSTEM_PROP(GL_TEXTURE_ENV_MODE, 0x2200);
MAKE_SYSTEM_PROP(GL_TEXTURE_ENV_COLOR, 0x2201);

/* TextureEnvTarget */
MAKE_SYSTEM_PROP(GL_TEXTURE_ENV, 0x2300);

/* TextureMagFilter */
MAKE_SYSTEM_PROP(GL_NEAREST, 0x2600);
MAKE_SYSTEM_PROP(GL_LINEAR, 0x2601);

/* TextureMinFilter */
/*      GL_NEAREST */
/*      GL_LINEAR */
MAKE_SYSTEM_PROP(GL_NEAREST_MIPMAP_NEAREST, 0x2700);
MAKE_SYSTEM_PROP(GL_LINEAR_MIPMAP_NEAREST, 0x2701);
MAKE_SYSTEM_PROP(GL_NEAREST_MIPMAP_LINEAR, 0x2702);
MAKE_SYSTEM_PROP(GL_LINEAR_MIPMAP_LINEAR, 0x2703);

/* TextureParameterName */
MAKE_SYSTEM_PROP(GL_TEXTURE_MAG_FILTER, 0x2800);
MAKE_SYSTEM_PROP(GL_TEXTURE_MIN_FILTER, 0x2801);
MAKE_SYSTEM_PROP(GL_TEXTURE_WRAP_S, 0x2802);
MAKE_SYSTEM_PROP(GL_TEXTURE_WRAP_T, 0x2803);
MAKE_SYSTEM_PROP(GL_GENERATE_MIPMAP, 0x8191);

/* TextureTarget */
/*      GL_TEXTURE_2D */

/* TextureUnit */
MAKE_SYSTEM_PROP(GL_TEXTURE0, 0x84C0);
MAKE_SYSTEM_PROP(GL_TEXTURE1, 0x84C1);
MAKE_SYSTEM_PROP(GL_TEXTURE2, 0x84C2);
MAKE_SYSTEM_PROP(GL_TEXTURE3, 0x84C3);
MAKE_SYSTEM_PROP(GL_TEXTURE4, 0x84C4);
MAKE_SYSTEM_PROP(GL_TEXTURE5, 0x84C5);
MAKE_SYSTEM_PROP(GL_TEXTURE6, 0x84C6);
MAKE_SYSTEM_PROP(GL_TEXTURE7, 0x84C7);
MAKE_SYSTEM_PROP(GL_TEXTURE8, 0x84C8);
MAKE_SYSTEM_PROP(GL_TEXTURE9, 0x84C9);
MAKE_SYSTEM_PROP(GL_TEXTURE10, 0x84CA);
MAKE_SYSTEM_PROP(GL_TEXTURE11, 0x84CB);
MAKE_SYSTEM_PROP(GL_TEXTURE12, 0x84CC);
MAKE_SYSTEM_PROP(GL_TEXTURE13, 0x84CD);
MAKE_SYSTEM_PROP(GL_TEXTURE14, 0x84CE);
MAKE_SYSTEM_PROP(GL_TEXTURE15, 0x84CF);
MAKE_SYSTEM_PROP(GL_TEXTURE16, 0x84D0);
MAKE_SYSTEM_PROP(GL_TEXTURE17, 0x84D1);
MAKE_SYSTEM_PROP(GL_TEXTURE18, 0x84D2);
MAKE_SYSTEM_PROP(GL_TEXTURE19, 0x84D3);
MAKE_SYSTEM_PROP(GL_TEXTURE20, 0x84D4);
MAKE_SYSTEM_PROP(GL_TEXTURE21, 0x84D5);
MAKE_SYSTEM_PROP(GL_TEXTURE22, 0x84D6);
MAKE_SYSTEM_PROP(GL_TEXTURE23, 0x84D7);
MAKE_SYSTEM_PROP(GL_TEXTURE24, 0x84D8);
MAKE_SYSTEM_PROP(GL_TEXTURE25, 0x84D9);
MAKE_SYSTEM_PROP(GL_TEXTURE26, 0x84DA);
MAKE_SYSTEM_PROP(GL_TEXTURE27, 0x84DB);
MAKE_SYSTEM_PROP(GL_TEXTURE28, 0x84DC);
MAKE_SYSTEM_PROP(GL_TEXTURE29, 0x84DD);
MAKE_SYSTEM_PROP(GL_TEXTURE30, 0x84DE);
MAKE_SYSTEM_PROP(GL_TEXTURE31, 0x84DF);
MAKE_SYSTEM_PROP(GL_ACTIVE_TEXTURE, 0x84E0);
MAKE_SYSTEM_PROP(GL_CLIENT_ACTIVE_TEXTURE, 0x84E1);

/* TextureWrapMode */
MAKE_SYSTEM_PROP(GL_REPEAT, 0x2901);
MAKE_SYSTEM_PROP(GL_CLAMP_TO_EDGE, 0x812F);

/* PixelInternalFormat */
MAKE_SYSTEM_PROP(GL_PALETTE4_RGB8_OES, 0x8B90);
MAKE_SYSTEM_PROP(GL_PALETTE4_RGBA8_OES, 0x8B91);
MAKE_SYSTEM_PROP(GL_PALETTE4_R5_G6_B5_OES, 0x8B92);
MAKE_SYSTEM_PROP(GL_PALETTE4_RGBA4_OES, 0x8B93);
MAKE_SYSTEM_PROP(GL_PALETTE4_RGB5_A1_OES, 0x8B94);
MAKE_SYSTEM_PROP(GL_PALETTE8_RGB8_OES, 0x8B95);
MAKE_SYSTEM_PROP(GL_PALETTE8_RGBA8_OES, 0x8B96);
MAKE_SYSTEM_PROP(GL_PALETTE8_R5_G6_B5_OES, 0x8B97);
MAKE_SYSTEM_PROP(GL_PALETTE8_RGBA4_OES, 0x8B98);
MAKE_SYSTEM_PROP(GL_PALETTE8_RGB5_A1_OES, 0x8B99);

/* VertexPointerType */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */
/*      GL_BYTE */

/* LightName */
MAKE_SYSTEM_PROP(GL_LIGHT0, 0x4000);
MAKE_SYSTEM_PROP(GL_LIGHT1, 0x4001);
MAKE_SYSTEM_PROP(GL_LIGHT2, 0x4002);
MAKE_SYSTEM_PROP(GL_LIGHT3, 0x4003);
MAKE_SYSTEM_PROP(GL_LIGHT4, 0x4004);
MAKE_SYSTEM_PROP(GL_LIGHT5, 0x4005);
MAKE_SYSTEM_PROP(GL_LIGHT6, 0x4006);
MAKE_SYSTEM_PROP(GL_LIGHT7, 0x4007);

/* Buffer Objects */
MAKE_SYSTEM_PROP(GL_ARRAY_BUFFER, 0x8892);
MAKE_SYSTEM_PROP(GL_ELEMENT_ARRAY_BUFFER, 0x8893);

MAKE_SYSTEM_PROP(GL_ARRAY_BUFFER_BINDING, 0x8894);
MAKE_SYSTEM_PROP(GL_ELEMENT_ARRAY_BUFFER_BINDING, 0x8895);
MAKE_SYSTEM_PROP(GL_VERTEX_ARRAY_BUFFER_BINDING, 0x8896);
MAKE_SYSTEM_PROP(GL_NORMAL_ARRAY_BUFFER_BINDING, 0x8897);
MAKE_SYSTEM_PROP(GL_COLOR_ARRAY_BUFFER_BINDING, 0x8898);
MAKE_SYSTEM_PROP(GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, 0x889A);

MAKE_SYSTEM_PROP(GL_STATIC_DRAW, 0x88E4);
MAKE_SYSTEM_PROP(GL_DYNAMIC_DRAW, 0x88E8);

MAKE_SYSTEM_PROP(GL_BUFFER_SIZE, 0x8764);
MAKE_SYSTEM_PROP(GL_BUFFER_USAGE, 0x8765);

/* Texture combine + dot3 */
MAKE_SYSTEM_PROP(GL_SUBTRACT, 0x84E7);
MAKE_SYSTEM_PROP(GL_COMBINE, 0x8570);
MAKE_SYSTEM_PROP(GL_COMBINE_RGB, 0x8571);
MAKE_SYSTEM_PROP(GL_COMBINE_ALPHA, 0x8572);
MAKE_SYSTEM_PROP(GL_RGB_SCALE, 0x8573);
MAKE_SYSTEM_PROP(GL_ADD_SIGNED, 0x8574);
MAKE_SYSTEM_PROP(GL_INTERPOLATE, 0x8575);
MAKE_SYSTEM_PROP(GL_CONSTANT, 0x8576);
MAKE_SYSTEM_PROP(GL_PRIMARY_COLOR, 0x8577);
MAKE_SYSTEM_PROP(GL_PREVIOUS, 0x8578);
MAKE_SYSTEM_PROP(GL_OPERAND0_RGB, 0x8590);
MAKE_SYSTEM_PROP(GL_OPERAND1_RGB, 0x8591);
MAKE_SYSTEM_PROP(GL_OPERAND2_RGB, 0x8592);
MAKE_SYSTEM_PROP(GL_OPERAND0_ALPHA, 0x8598);
MAKE_SYSTEM_PROP(GL_OPERAND1_ALPHA, 0x8599);
MAKE_SYSTEM_PROP(GL_OPERAND2_ALPHA, 0x859A);

MAKE_SYSTEM_PROP(GL_ALPHA_SCALE, 0x0D1C);

MAKE_SYSTEM_PROP(GL_SRC0_RGB, 0x8580);
MAKE_SYSTEM_PROP(GL_SRC1_RGB, 0x8581);
MAKE_SYSTEM_PROP(GL_SRC2_RGB, 0x8582);
MAKE_SYSTEM_PROP(GL_SRC0_ALPHA, 0x8588);
MAKE_SYSTEM_PROP(GL_SRC1_ALPHA, 0x8589);
MAKE_SYSTEM_PROP(GL_SRC2_ALPHA, 0x858A);

MAKE_SYSTEM_PROP(GL_DOT3_RGB, 0x86AE);
MAKE_SYSTEM_PROP(GL_DOT3_RGBA, 0x86AF);

/*****************************************************************************************/
/*                                 OES extension functions                               */
/*****************************************************************************************/

/* OES_draw_texture */
MAKE_SYSTEM_PROP(GL_TEXTURE_CROP_RECT_OES, 0x8B9D);

/* OES_matrix_get */
MAKE_SYSTEM_PROP(GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES, 0x898D);
MAKE_SYSTEM_PROP(GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES, 0x898E);
MAKE_SYSTEM_PROP(GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES, 0x898F);

/* OES_matrix_palette */
MAKE_SYSTEM_PROP(GL_MAX_VERTEX_UNITS_OES, 0x86A4);
MAKE_SYSTEM_PROP(GL_MAX_PALETTE_MATRICES_OES, 0x8842);
MAKE_SYSTEM_PROP(GL_MATRIX_PALETTE_OES, 0x8840);
MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_OES, 0x8844);
MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_OES, 0x86AD);
MAKE_SYSTEM_PROP(GL_CURRENT_PALETTE_MATRIX_OES, 0x8843);

MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_SIZE_OES, 0x8846);
MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_TYPE_OES, 0x8847);
MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_STRIDE_OES, 0x8848);
MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_POINTER_OES, 0x8849);
MAKE_SYSTEM_PROP(GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, 0x8B9E);

MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_SIZE_OES, 0x86AB);
MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_TYPE_OES, 0x86A9);
MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_STRIDE_OES, 0x86AA);
MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_POINTER_OES, 0x86AC);
MAKE_SYSTEM_PROP(GL_WEIGHT_ARRAY_BUFFER_BINDING_OES, 0x889E);

/* OES_point_size_array */
MAKE_SYSTEM_PROP(GL_POINT_SIZE_ARRAY_OES, 0x8B9C);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_ARRAY_TYPE_OES, 0x898A);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_ARRAY_STRIDE_OES, 0x898B);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_ARRAY_POINTER_OES, 0x898C);
MAKE_SYSTEM_PROP(GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES, 0x8B9F);

/* OES_point_sprite */
MAKE_SYSTEM_PROP(GL_POINT_SPRITE_OES, 0x8861);
MAKE_SYSTEM_PROP(GL_COORD_REPLACE_OES, 0x8862);


@end
