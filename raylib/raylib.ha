use types::c;

// internal to raudio
export type rAudioProcessor = void;

// internal to raudio
export type rAudioBuffer = void;


export def RAYLIB_VERSION: str = "4.0";

export def PI: f64 = 3.141592653589793;

export def DEG2RAD: f64 = (PI/180.0);

export def RAD2DEG: f64 = (180.0/PI);

// Light Gray
export const LIGHTGRAY: Color = Color {r = 200, g = 200, b = 200, a = 255};

// Gray
export const GRAY: Color = Color {r = 130, g = 130, b = 130, a = 255};

// Dark Gray
export const DARKGRAY: Color = Color {r = 80, g = 80, b = 80, a = 255};

// Yellow
export const YELLOW: Color = Color {r = 253, g = 249, b = 0, a = 255};

// Gold
export const GOLD: Color = Color {r = 255, g = 203, b = 0, a = 255};

// Orange
export const ORANGE: Color = Color {r = 255, g = 161, b = 0, a = 255};

// Pink
export const PINK: Color = Color {r = 255, g = 109, b = 194, a = 255};

// Red
export const RED: Color = Color {r = 230, g = 41, b = 55, a = 255};

// Maroon
export const MAROON: Color = Color {r = 190, g = 33, b = 55, a = 255};

// Green
export const GREEN: Color = Color {r = 0, g = 228, b = 48, a = 255};

// Lime
export const LIME: Color = Color {r = 0, g = 158, b = 47, a = 255};

// Dark Green
export const DARKGREEN: Color = Color {r = 0, g = 117, b = 44, a = 255};

// Sky Blue
export const SKYBLUE: Color = Color {r = 102, g = 191, b = 255, a = 255};

// Blue
export const BLUE: Color = Color {r = 0, g = 121, b = 241, a = 255};

// Dark Blue
export const DARKBLUE: Color = Color {r = 0, g = 82, b = 172, a = 255};

// Purple
export const PURPLE: Color = Color {r = 200, g = 122, b = 255, a = 255};

// Violet
export const VIOLET: Color = Color {r = 135, g = 60, b = 190, a = 255};

// Dark Purple
export const DARKPURPLE: Color = Color {r = 112, g = 31, b = 126, a = 255};

// Beige
export const BEIGE: Color = Color {r = 211, g = 176, b = 131, a = 255};

// Brown
export const BROWN: Color = Color {r = 127, g = 106, b = 79, a = 255};

// Dark Brown
export const DARKBROWN: Color = Color {r = 76, g = 63, b = 47, a = 255};

// White
export const WHITE: Color = Color {r = 255, g = 255, b = 255, a = 255};

// Black
export const BLACK: Color = Color {r = 0, g = 0, b = 0, a = 255};

// Blank (Transparent)
export const BLANK: Color = Color {r = 0, g = 0, b = 0, a = 0};

// Magenta
export const MAGENTA: Color = Color {r = 255, g = 0, b = 255, a = 255};

// My own White (raylib logo)
export const RAYWHITE: Color = Color {r = 245, g = 245, b = 245, a = 255};

// Vector2, 2 components
export type Vector2 = struct {
	// Vector x component
	x: f32,
	// Vector y component
	y: f32,
};

// Vector3, 3 components
export type Vector3 = struct {
	// Vector x component
	x: f32,
	// Vector y component
	y: f32,
	// Vector z component
	z: f32,
};

// Vector4, 4 components
export type Vector4 = struct {
	// Vector x component
	x: f32,
	// Vector y component
	y: f32,
	// Vector z component
	z: f32,
	// Vector w component
	w: f32,
};

// Matrix, 4x4 components, column major, OpenGL style, right handed
export type Matrix = struct {
	// Matrix first row (4 components)
	m0: f32,
	// Matrix first row (4 components)
	m4: f32,
	// Matrix first row (4 components)
	m8: f32,
	// Matrix first row (4 components)
	m12: f32,
	// Matrix second row (4 components)
	m1: f32,
	// Matrix second row (4 components)
	m5: f32,
	// Matrix second row (4 components)
	m9: f32,
	// Matrix second row (4 components)
	m13: f32,
	// Matrix third row (4 components)
	m2: f32,
	// Matrix third row (4 components)
	m6: f32,
	// Matrix third row (4 components)
	m10: f32,
	// Matrix third row (4 components)
	m14: f32,
	// Matrix fourth row (4 components)
	m3: f32,
	// Matrix fourth row (4 components)
	m7: f32,
	// Matrix fourth row (4 components)
	m11: f32,
	// Matrix fourth row (4 components)
	m15: f32,
};

// Color, 4 components, R8G8B8A8 (32bit)
export type Color = struct {
	// Color red value
	r: c::uchar,
	// Color green value
	g: c::uchar,
	// Color blue value
	b: c::uchar,
	// Color alpha value
	a: c::uchar,
};

// Rectangle, 4 components
export type Rectangle = struct {
	// Rectangle top-left corner position x
	x: f32,
	// Rectangle top-left corner position y
	y: f32,
	// Rectangle width
	width: f32,
	// Rectangle height
	height: f32,
};

// Image, pixel data stored in CPU memory (RAM)
export type Image = struct {
	// Image raw data
	data: *[*]c::char,
	// Image base width
	width: int,
	// Image base height
	height: int,
	// Mipmap levels, 1 by default
	mipmaps: int,
	// Data format (PixelFormat type)
	format: int,
};

// Texture, tex data stored in GPU memory (VRAM)
export type Texture = struct {
	// OpenGL texture id
	id: uint,
	// Texture base width
	width: int,
	// Texture base height
	height: int,
	// Mipmap levels, 1 by default
	mipmaps: int,
	// Data format (PixelFormat type)
	format: int,
};

// RenderTexture, fbo for texture rendering
export type RenderTexture = struct {
	// OpenGL framebuffer object id
	id: uint,
	// Color buffer attachment texture
	texture: Texture,
	// Depth buffer attachment texture
	depth: Texture,
};

// NPatchInfo, n-patch layout info
export type NPatchInfo = struct {
	// Texture source rectangle
	source: Rectangle,
	// Left border offset
	left: int,
	// Top border offset
	top: int,
	// Right border offset
	right: int,
	// Bottom border offset
	bottom: int,
	// Layout of the n-patch: 3x3, 1x3 or 3x1
	layout: int,
};

// GlyphInfo, font characters glyphs info
export type GlyphInfo = struct {
	// Character value (Unicode)
	value: int,
	// Character offset X when drawing
	offsetX: int,
	// Character offset Y when drawing
	offsetY: int,
	// Character advance position X
	advanceX: int,
	// Character image data
	image: Image,
};

// Font, font texture and GlyphInfo array data
export type Font = struct {
	// Base size (default chars height)
	baseSize: int,
	// Number of glyph characters
	glyphCount: int,
	// Padding around the glyph characters
	glyphPadding: int,
	// Texture atlas containing the glyphs
	texture: Texture2D,
	// Rectangles in texture for the glyphs
	recs: *[*]Rectangle,
	// Glyphs info data
	glyphs: *[*]GlyphInfo,
};

// Camera, defines position/orientation in 3d space
export type Camera3D = struct {
	// Camera position
	position: Vector3,
	// Camera target it looks-at
	target: Vector3,
	// Camera up vector (rotation over its axis)
	up: Vector3,
	// Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
	fovy: f32,
	// Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
	projection: int,
};

// Camera2D, defines position/orientation in 2d space
export type Camera2D = struct {
	// Camera offset (displacement from target)
	_offset: Vector2,
	// Camera target (rotation and zoom origin)
	target: Vector2,
	// Camera rotation in degrees
	rotation: f32,
	// Camera zoom (scaling), should be 1.0f by default
	zoom: f32,
};

// Mesh, vertex data and vao/vbo
export type Mesh = struct {
	// Number of vertices stored in arrays
	vertexCount: int,
	// Number of triangles stored (indexed or not)
	triangleCount: int,
	// Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
	vertices: *[*]f32,
	// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
	texcoords: *[*]f32,
	// Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
	texcoords2: *[*]f32,
	// Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
	normals: *[*]f32,
	// Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
	tangents: *[*]f32,
	// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
	colors: *c::char,
	// Vertex indices (in case vertex data comes indexed)
	indices: *c::ushort,
	// Animated vertex positions (after bones transformations)
	animVertices: *[*]f32,
	// Animated normals (after bones transformations)
	animNormals: *[*]f32,
	// Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
	boneIds: *c::char,
	// Vertex bone weight, up to 4 bones influence by vertex (skinning)
	boneWeights: *[*]f32,
	// OpenGL Vertex Array Object id
	vaoId: uint,
	// OpenGL Vertex Buffer Objects id (default vertex data)
	vboId: *uint,
};

// Shader
export type Shader = struct {
	// Shader program id
	id: uint,
	// Shader locations array (RL_MAX_SHADER_LOCATIONS)
	locs: *[*]int,
};

// MaterialMap
export type MaterialMap = struct {
	// Material map texture
	texture: Texture2D,
	// Material map color
	color: Color,
	// Material map value
	value: f32,
};

// Material, includes shader and maps
export type Material = struct {
	// Material shader
	shader: Shader,
	// Material maps array (MAX_MATERIAL_MAPS)
	maps: *[*]MaterialMap,
	// Material generic parameters (if required)
	params: [4]f32,
};

// Transform, vectex transformation data
export type Transform = struct {
	// Translation
	translation: Vector3,
	// Rotation
	rotation: Quaternion,
	// Scale
	scale: Vector3,
};

// Bone, skeletal animation bone
export type BoneInfo = struct {
	// Bone name
	name: [32]c::char,
	// Bone parent
	parent: int,
};

// Model, meshes, materials and animation data
export type Model = struct {
	// Local transform matrix
	transform: Matrix,
	// Number of meshes
	meshCount: int,
	// Number of materials
	materialCount: int,
	// Meshes array
	meshes: *[*]Mesh,
	// Materials array
	materials: *[*]Material,
	// Mesh material number
	meshMaterial: *[*]int,
	// Number of bones
	boneCount: int,
	// Bones information (skeleton)
	bones: *[*]BoneInfo,
	// Bones base transformation (pose)
	bindPose: *[*]Transform,
};

// ModelAnimation
export type ModelAnimation = struct {
	// Number of bones
	boneCount: int,
	// Number of animation frames
	frameCount: int,
	// Bones information (skeleton)
	bones: *[*]BoneInfo,
	// Poses array by frame
	framePoses: *[*]*[*]Transform,
};

// Ray, ray for raycasting
export type Ray = struct {
	// Ray position (origin)
	position: Vector3,
	// Ray direction
	direction: Vector3,
};

// RayCollision, ray hit information
export type RayCollision = struct {
	// Did the ray hit something?
	hit: bool,
	// Distance to nearest hit
	distance: f32,
	// Point of nearest hit
	point: Vector3,
	// Surface normal of hit
	normal: Vector3,
};

// BoundingBox
export type BoundingBox = struct {
	// Minimum vertex box-corner
	min: Vector3,
	// Maximum vertex box-corner
	max: Vector3,
};

// Wave, audio wave data
export type Wave = struct {
	// Total number of frames (considering channels)
	frameCount: uint,
	// Frequency (samples per second)
	sampleRate: uint,
	// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	sampleSize: uint,
	// Number of channels (1-mono, 2-stereo, ...)
	channels: uint,
	// Buffer data pointer
	data: *[*]c::char,
};

// AudioStream, custom audio stream
export type AudioStream = struct {
	// Pointer to internal data used by the audio system
	buffer: *[*]c::char,
	// Frequency (samples per second)
	sampleRate: uint,
	// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	sampleSize: uint,
	// Number of channels (1-mono, 2-stereo, ...)
	channels: uint,
};

// Sound
export type Sound = struct {
	// Audio stream
	stream: AudioStream,
	// Total number of frames (considering channels)
	frameCount: uint,
};

// Music, audio stream, anything longer than ~10 seconds should be streamed
export type Music = struct {
	// Audio stream
	stream: AudioStream,
	// Total number of frames (considering channels)
	frameCount: uint,
	// Music looping enable
	looping: bool,
	// Type of music context (audio filetype)
	ctxType: int,
	// Audio context data, depends on type
	ctxData: *[*]c::char,
};

// VrDeviceInfo, Head-Mounted-Display device parameters
export type VrDeviceInfo = struct {
	// Horizontal resolution in pixels
	hResolution: int,
	// Vertical resolution in pixels
	vResolution: int,
	// Horizontal size in meters
	hScreenSize: f32,
	// Vertical size in meters
	vScreenSize: f32,
	// Screen center in meters
	vScreenCenter: f32,
	// Distance between eye and display in meters
	eyeToScreenDistance: f32,
	// Lens separation distance in meters
	lensSeparationDistance: f32,
	// IPD (distance between pupils) in meters
	interpupillaryDistance: f32,
	// Lens distortion constant parameters
	lensDistortionValues: [4]f32,
	// Chromatic aberration correction parameters
	chromaAbCorrection: [4]f32,
};

// VrStereoConfig, VR stereo rendering configuration for simulator
export type VrStereoConfig = struct {
	// VR projection matrices (per eye)
	projection: [2]Matrix,
	// VR view offset matrices (per eye)
	viewOffset: [2]Matrix,
	// VR left lens center
	leftLensCenter: [2]f32,
	// VR right lens center
	rightLensCenter: [2]f32,
	// VR left screen center
	leftScreenCenter: [2]f32,
	// VR right screen center
	rightScreenCenter: [2]f32,
	// VR distortion scale
	scale: [2]f32,
	// VR distortion scale in
	scaleIn: [2]f32,
};

// Quaternion, 4 components (Vector4 alias)
export type Quaternion = Vector4;

// Texture2D, same as Texture
export type Texture2D = Texture;

// TextureCubemap, same as Texture
export type TextureCubemap = Texture;

// RenderTexture2D, same as RenderTexture
export type RenderTexture2D = RenderTexture;

// Camera type fallback, defaults to Camera3D
export type Camera = Camera3D;

// System/Window config flags
export type ConfigFlags = enum {
	// Set to try enabling V-Sync on GPU
	FLAG_VSYNC_HINT = 64,
	// Set to run program in fullscreen
	FLAG_FULLSCREEN_MODE = 2,
	// Set to allow resizable window
	FLAG_WINDOW_RESIZABLE = 4,
	// Set to disable window decoration (frame and buttons)
	FLAG_WINDOW_UNDECORATED = 8,
	// Set to hide window
	FLAG_WINDOW_HIDDEN = 128,
	// Set to minimize window (iconify)
	FLAG_WINDOW_MINIMIZED = 512,
	// Set to maximize window (expanded to monitor)
	FLAG_WINDOW_MAXIMIZED = 1024,
	// Set to window non focused
	FLAG_WINDOW_UNFOCUSED = 2048,
	// Set to window always on top
	FLAG_WINDOW_TOPMOST = 4096,
	// Set to allow windows running while minimized
	FLAG_WINDOW_ALWAYS_RUN = 256,
	// Set to allow transparent framebuffer
	FLAG_WINDOW_TRANSPARENT = 16,
	// Set to support HighDPI
	FLAG_WINDOW_HIGHDPI = 8192,
	// Set to try enabling MSAA 4X
	FLAG_MSAA_4X_HINT = 32,
	// Set to try enabling interlaced video format (for V3D)
	FLAG_INTERLACED_HINT = 65536,
};

// Trace log level
export type TraceLogLevel = enum {
	// Display all logs
	LOG_ALL = 0,
	// Trace logging, intended for internal use only
	LOG_TRACE = 1,
	// Debug logging, used for internal debugging, it should be disabled on release builds
	LOG_DEBUG = 2,
	// Info logging, used for program execution info
	LOG_INFO = 3,
	// Warning logging, used on recoverable failures
	LOG_WARNING = 4,
	// Error logging, used on unrecoverable failures
	LOG_ERROR = 5,
	// Fatal logging, used to abort program: exit(EXIT_FAILURE)
	LOG_FATAL = 6,
	// Disable logging
	LOG_NONE = 7,
};

// Keyboard keys (US keyboard layout)
export type KeyboardKey = enum {
	// Key: NULL, used for no key pressed
	KEY_NULL = 0,
	// Key: '
	KEY_APOSTROPHE = 39,
	// Key: ,
	KEY_COMMA = 44,
	// Key: -
	KEY_MINUS = 45,
	// Key: .
	KEY_PERIOD = 46,
	// Key: /
	KEY_SLASH = 47,
	// Key: 0
	KEY_ZERO = 48,
	// Key: 1
	KEY_ONE = 49,
	// Key: 2
	KEY_TWO = 50,
	// Key: 3
	KEY_THREE = 51,
	// Key: 4
	KEY_FOUR = 52,
	// Key: 5
	KEY_FIVE = 53,
	// Key: 6
	KEY_SIX = 54,
	// Key: 7
	KEY_SEVEN = 55,
	// Key: 8
	KEY_EIGHT = 56,
	// Key: 9
	KEY_NINE = 57,
	// Key: ;
	KEY_SEMICOLON = 59,
	// Key: =
	KEY_EQUAL = 61,
	// Key: A | a
	KEY_A = 65,
	// Key: B | b
	KEY_B = 66,
	// Key: C | c
	KEY_C = 67,
	// Key: D | d
	KEY_D = 68,
	// Key: E | e
	KEY_E = 69,
	// Key: F | f
	KEY_F = 70,
	// Key: G | g
	KEY_G = 71,
	// Key: H | h
	KEY_H = 72,
	// Key: I | i
	KEY_I = 73,
	// Key: J | j
	KEY_J = 74,
	// Key: K | k
	KEY_K = 75,
	// Key: L | l
	KEY_L = 76,
	// Key: M | m
	KEY_M = 77,
	// Key: N | n
	KEY_N = 78,
	// Key: O | o
	KEY_O = 79,
	// Key: P | p
	KEY_P = 80,
	// Key: Q | q
	KEY_Q = 81,
	// Key: R | r
	KEY_R = 82,
	// Key: S | s
	KEY_S = 83,
	// Key: T | t
	KEY_T = 84,
	// Key: U | u
	KEY_U = 85,
	// Key: V | v
	KEY_V = 86,
	// Key: W | w
	KEY_W = 87,
	// Key: X | x
	KEY_X = 88,
	// Key: Y | y
	KEY_Y = 89,
	// Key: Z | z
	KEY_Z = 90,
	// Key: [
	KEY_LEFT_BRACKET = 91,
	// Key: '\'
	KEY_BACKSLASH = 92,
	// Key: ]
	KEY_RIGHT_BRACKET = 93,
	// Key: `
	KEY_GRAVE = 96,
	// Key: Space
	KEY_SPACE = 32,
	// Key: Esc
	KEY_ESCAPE = 256,
	// Key: Enter
	KEY_ENTER = 257,
	// Key: Tab
	KEY_TAB = 258,
	// Key: Backspace
	KEY_BACKSPACE = 259,
	// Key: Ins
	KEY_INSERT = 260,
	// Key: Del
	KEY_DELETE = 261,
	// Key: Cursor right
	KEY_RIGHT = 262,
	// Key: Cursor left
	KEY_LEFT = 263,
	// Key: Cursor down
	KEY_DOWN = 264,
	// Key: Cursor up
	KEY_UP = 265,
	// Key: Page up
	KEY_PAGE_UP = 266,
	// Key: Page down
	KEY_PAGE_DOWN = 267,
	// Key: Home
	KEY_HOME = 268,
	// Key: End
	KEY_END = 269,
	// Key: Caps lock
	KEY_CAPS_LOCK = 280,
	// Key: Scroll down
	KEY_SCROLL_LOCK = 281,
	// Key: Num lock
	KEY_NUM_LOCK = 282,
	// Key: Print screen
	KEY_PRINT_SCREEN = 283,
	// Key: Pause
	KEY_PAUSE = 284,
	// Key: F1
	KEY_F1 = 290,
	// Key: F2
	KEY_F2 = 291,
	// Key: F3
	KEY_F3 = 292,
	// Key: F4
	KEY_F4 = 293,
	// Key: F5
	KEY_F5 = 294,
	// Key: F6
	KEY_F6 = 295,
	// Key: F7
	KEY_F7 = 296,
	// Key: F8
	KEY_F8 = 297,
	// Key: F9
	KEY_F9 = 298,
	// Key: F10
	KEY_F10 = 299,
	// Key: F11
	KEY_F11 = 300,
	// Key: F12
	KEY_F12 = 301,
	// Key: Shift left
	KEY_LEFT_SHIFT = 340,
	// Key: Control left
	KEY_LEFT_CONTROL = 341,
	// Key: Alt left
	KEY_LEFT_ALT = 342,
	// Key: Super left
	KEY_LEFT_SUPER = 343,
	// Key: Shift right
	KEY_RIGHT_SHIFT = 344,
	// Key: Control right
	KEY_RIGHT_CONTROL = 345,
	// Key: Alt right
	KEY_RIGHT_ALT = 346,
	// Key: Super right
	KEY_RIGHT_SUPER = 347,
	// Key: KB menu
	KEY_KB_MENU = 348,
	// Key: Keypad 0
	KEY_KP_0 = 320,
	// Key: Keypad 1
	KEY_KP_1 = 321,
	// Key: Keypad 2
	KEY_KP_2 = 322,
	// Key: Keypad 3
	KEY_KP_3 = 323,
	// Key: Keypad 4
	KEY_KP_4 = 324,
	// Key: Keypad 5
	KEY_KP_5 = 325,
	// Key: Keypad 6
	KEY_KP_6 = 326,
	// Key: Keypad 7
	KEY_KP_7 = 327,
	// Key: Keypad 8
	KEY_KP_8 = 328,
	// Key: Keypad 9
	KEY_KP_9 = 329,
	// Key: Keypad .
	KEY_KP_DECIMAL = 330,
	// Key: Keypad /
	KEY_KP_DIVIDE = 331,
	// Key: Keypad *
	KEY_KP_MULTIPLY = 332,
	// Key: Keypad -
	KEY_KP_SUBTRACT = 333,
	// Key: Keypad +
	KEY_KP_ADD = 334,
	// Key: Keypad Enter
	KEY_KP_ENTER = 335,
	// Key: Keypad =
	KEY_KP_EQUAL = 336,
	// Key: Android back button
	KEY_BACK = 4,
	// Key: Android menu button
	KEY_MENU = 82,
	// Key: Android volume up button
	KEY_VOLUME_UP = 24,
	// Key: Android volume down button
	KEY_VOLUME_DOWN = 25,
};

// Mouse buttons
export type MouseButton = enum {
	// Mouse button left
	MOUSE_BUTTON_LEFT = 0,
	// Mouse button right
	MOUSE_BUTTON_RIGHT = 1,
	// Mouse button middle (pressed wheel)
	MOUSE_BUTTON_MIDDLE = 2,
	// Mouse button side (advanced mouse device)
	MOUSE_BUTTON_SIDE = 3,
	// Mouse button extra (advanced mouse device)
	MOUSE_BUTTON_EXTRA = 4,
	// Mouse button fordward (advanced mouse device)
	MOUSE_BUTTON_FORWARD = 5,
	// Mouse button back (advanced mouse device)
	MOUSE_BUTTON_BACK = 6,
};

// Mouse cursor
export type MouseCursor = enum {
	// Default pointer shape
	MOUSE_CURSOR_DEFAULT = 0,
	// Arrow shape
	MOUSE_CURSOR_ARROW = 1,
	// Text writing cursor shape
	MOUSE_CURSOR_IBEAM = 2,
	// Cross shape
	MOUSE_CURSOR_CROSSHAIR = 3,
	// Pointing hand cursor
	MOUSE_CURSOR_POINTING_HAND = 4,
	// Horizontal resize/move arrow shape
	MOUSE_CURSOR_RESIZE_EW = 5,
	// Vertical resize/move arrow shape
	MOUSE_CURSOR_RESIZE_NS = 6,
	// Top-left to bottom-right diagonal resize/move arrow shape
	MOUSE_CURSOR_RESIZE_NWSE = 7,
	// The top-right to bottom-left diagonal resize/move arrow shape
	MOUSE_CURSOR_RESIZE_NESW = 8,
	// The omni-directional resize/move cursor shape
	MOUSE_CURSOR_RESIZE_ALL = 9,
	// The operation-not-allowed shape
	MOUSE_CURSOR_NOT_ALLOWED = 10,
};

// Gamepad buttons
export type GamepadButton = enum {
	// Unknown button, just for error checking
	GAMEPAD_BUTTON_UNKNOWN = 0,
	// Gamepad left DPAD up button
	GAMEPAD_BUTTON_LEFT_FACE_UP = 1,
	// Gamepad left DPAD right button
	GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2,
	// Gamepad left DPAD down button
	GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3,
	// Gamepad left DPAD left button
	GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4,
	// Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
	GAMEPAD_BUTTON_RIGHT_FACE_UP = 5,
	// Gamepad right button right (i.e. PS3: Square, Xbox: X)
	GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6,
	// Gamepad right button down (i.e. PS3: Cross, Xbox: A)
	GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7,
	// Gamepad right button left (i.e. PS3: Circle, Xbox: B)
	GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8,
	// Gamepad top/back trigger left (first), it could be a trailing button
	GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9,
	// Gamepad top/back trigger left (second), it could be a trailing button
	GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10,
	// Gamepad top/back trigger right (one), it could be a trailing button
	GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11,
	// Gamepad top/back trigger right (second), it could be a trailing button
	GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12,
	// Gamepad center buttons, left one (i.e. PS3: Select)
	GAMEPAD_BUTTON_MIDDLE_LEFT = 13,
	// Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
	GAMEPAD_BUTTON_MIDDLE = 14,
	// Gamepad center buttons, right one (i.e. PS3: Start)
	GAMEPAD_BUTTON_MIDDLE_RIGHT = 15,
	// Gamepad joystick pressed button left
	GAMEPAD_BUTTON_LEFT_THUMB = 16,
	// Gamepad joystick pressed button right
	GAMEPAD_BUTTON_RIGHT_THUMB = 17,
};

// Gamepad axis
export type GamepadAxis = enum {
	// Gamepad left stick X axis
	GAMEPAD_AXIS_LEFT_X = 0,
	// Gamepad left stick Y axis
	GAMEPAD_AXIS_LEFT_Y = 1,
	// Gamepad right stick X axis
	GAMEPAD_AXIS_RIGHT_X = 2,
	// Gamepad right stick Y axis
	GAMEPAD_AXIS_RIGHT_Y = 3,
	// Gamepad back trigger left, pressure level: [1..-1]
	GAMEPAD_AXIS_LEFT_TRIGGER = 4,
	// Gamepad back trigger right, pressure level: [1..-1]
	GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
};

// Material map index
export type MaterialMapIndex = enum {
	// Albedo material (same as: MATERIAL_MAP_DIFFUSE)
	MATERIAL_MAP_ALBEDO = 0,
	// Metalness material (same as: MATERIAL_MAP_SPECULAR)
	MATERIAL_MAP_METALNESS = 1,
	// Normal material
	MATERIAL_MAP_NORMAL = 2,
	// Roughness material
	MATERIAL_MAP_ROUGHNESS = 3,
	// Ambient occlusion material
	MATERIAL_MAP_OCCLUSION = 4,
	// Emission material
	MATERIAL_MAP_EMISSION = 5,
	// Heightmap material
	MATERIAL_MAP_HEIGHT = 6,
	// Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_CUBEMAP = 7,
	// Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_IRRADIANCE = 8,
	// Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_PREFILTER = 9,
	// Brdf material
	MATERIAL_MAP_BRDF = 10,
};

// Shader location index
export type ShaderLocationIndex = enum {
	// Shader location: vertex attribute: position
	SHADER_LOC_VERTEX_POSITION = 0,
	// Shader location: vertex attribute: texcoord01
	SHADER_LOC_VERTEX_TEXCOORD01 = 1,
	// Shader location: vertex attribute: texcoord02
	SHADER_LOC_VERTEX_TEXCOORD02 = 2,
	// Shader location: vertex attribute: normal
	SHADER_LOC_VERTEX_NORMAL = 3,
	// Shader location: vertex attribute: tangent
	SHADER_LOC_VERTEX_TANGENT = 4,
	// Shader location: vertex attribute: color
	SHADER_LOC_VERTEX_COLOR = 5,
	// Shader location: matrix uniform: model-view-projection
	SHADER_LOC_MATRIX_MVP = 6,
	// Shader location: matrix uniform: view (camera transform)
	SHADER_LOC_MATRIX_VIEW = 7,
	// Shader location: matrix uniform: projection
	SHADER_LOC_MATRIX_PROJECTION = 8,
	// Shader location: matrix uniform: model (transform)
	SHADER_LOC_MATRIX_MODEL = 9,
	// Shader location: matrix uniform: normal
	SHADER_LOC_MATRIX_NORMAL = 10,
	// Shader location: vector uniform: view
	SHADER_LOC_VECTOR_VIEW = 11,
	// Shader location: vector uniform: diffuse color
	SHADER_LOC_COLOR_DIFFUSE = 12,
	// Shader location: vector uniform: specular color
	SHADER_LOC_COLOR_SPECULAR = 13,
	// Shader location: vector uniform: ambient color
	SHADER_LOC_COLOR_AMBIENT = 14,
	// Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
	SHADER_LOC_MAP_ALBEDO = 15,
	// Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
	SHADER_LOC_MAP_METALNESS = 16,
	// Shader location: sampler2d texture: normal
	SHADER_LOC_MAP_NORMAL = 17,
	// Shader location: sampler2d texture: roughness
	SHADER_LOC_MAP_ROUGHNESS = 18,
	// Shader location: sampler2d texture: occlusion
	SHADER_LOC_MAP_OCCLUSION = 19,
	// Shader location: sampler2d texture: emission
	SHADER_LOC_MAP_EMISSION = 20,
	// Shader location: sampler2d texture: height
	SHADER_LOC_MAP_HEIGHT = 21,
	// Shader location: samplerCube texture: cubemap
	SHADER_LOC_MAP_CUBEMAP = 22,
	// Shader location: samplerCube texture: irradiance
	SHADER_LOC_MAP_IRRADIANCE = 23,
	// Shader location: samplerCube texture: prefilter
	SHADER_LOC_MAP_PREFILTER = 24,
	// Shader location: sampler2d texture: brdf
	SHADER_LOC_MAP_BRDF = 25,
};

// Shader uniform data type
export type ShaderUniformDataType = enum {
	// Shader uniform type: float
	SHADER_UNIFORM_FLOAT = 0,
	// Shader uniform type: vec2 (2 float)
	SHADER_UNIFORM_VEC2 = 1,
	// Shader uniform type: vec3 (3 float)
	SHADER_UNIFORM_VEC3 = 2,
	// Shader uniform type: vec4 (4 float)
	SHADER_UNIFORM_VEC4 = 3,
	// Shader uniform type: int
	SHADER_UNIFORM_INT = 4,
	// Shader uniform type: ivec2 (2 int)
	SHADER_UNIFORM_IVEC2 = 5,
	// Shader uniform type: ivec3 (3 int)
	SHADER_UNIFORM_IVEC3 = 6,
	// Shader uniform type: ivec4 (4 int)
	SHADER_UNIFORM_IVEC4 = 7,
	// Shader uniform type: sampler2d
	SHADER_UNIFORM_SAMPLER2D = 8,
};

// Shader attribute data types
export type ShaderAttributeDataType = enum {
	// Shader attribute type: float
	SHADER_ATTRIB_FLOAT = 0,
	// Shader attribute type: vec2 (2 float)
	SHADER_ATTRIB_VEC2 = 1,
	// Shader attribute type: vec3 (3 float)
	SHADER_ATTRIB_VEC3 = 2,
	// Shader attribute type: vec4 (4 float)
	SHADER_ATTRIB_VEC4 = 3,
};

// Pixel formats
export type PixelFormat = enum {
	// 8 bit per pixel (no alpha)
	PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
	// 8*2 bpp (2 channels)
	PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2,
	// 16 bpp
	PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3,
	// 24 bpp
	PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4,
	// 16 bpp (1 bit alpha)
	PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5,
	// 16 bpp (4 bit alpha)
	PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6,
	// 32 bpp
	PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7,
	// 32 bpp (1 channel - float)
	PIXELFORMAT_UNCOMPRESSED_R32 = 8,
	// 32*3 bpp (3 channels - float)
	PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9,
	// 32*4 bpp (4 channels - float)
	PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10,
	// 4 bpp (no alpha)
	PIXELFORMAT_COMPRESSED_DXT1_RGB = 11,
	// 4 bpp (1 bit alpha)
	PIXELFORMAT_COMPRESSED_DXT1_RGBA = 12,
	// 8 bpp
	PIXELFORMAT_COMPRESSED_DXT3_RGBA = 13,
	// 8 bpp
	PIXELFORMAT_COMPRESSED_DXT5_RGBA = 14,
	// 4 bpp
	PIXELFORMAT_COMPRESSED_ETC1_RGB = 15,
	// 4 bpp
	PIXELFORMAT_COMPRESSED_ETC2_RGB = 16,
	// 8 bpp
	PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 17,
	// 4 bpp
	PIXELFORMAT_COMPRESSED_PVRT_RGB = 18,
	// 4 bpp
	PIXELFORMAT_COMPRESSED_PVRT_RGBA = 19,
	// 8 bpp
	PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 20,
	// 2 bpp
	PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 21,
};

// Texture parameters: filter mode
export type TextureFilter = enum {
	// No filter, just pixel aproximation
	TEXTURE_FILTER_POINT = 0,
	// Linear filtering
	TEXTURE_FILTER_BILINEAR = 1,
	// Trilinear filtering (linear with mipmaps)
	TEXTURE_FILTER_TRILINEAR = 2,
	// Anisotropic filtering 4x
	TEXTURE_FILTER_ANISOTROPIC_4X = 3,
	// Anisotropic filtering 8x
	TEXTURE_FILTER_ANISOTROPIC_8X = 4,
	// Anisotropic filtering 16x
	TEXTURE_FILTER_ANISOTROPIC_16X = 5,
};

// Texture parameters: wrap mode
export type TextureWrap = enum {
	// Repeats texture in tiled mode
	TEXTURE_WRAP_REPEAT = 0,
	// Clamps texture to edge pixel in tiled mode
	TEXTURE_WRAP_CLAMP = 1,
	// Mirrors and repeats the texture in tiled mode
	TEXTURE_WRAP_MIRROR_REPEAT = 2,
	// Mirrors and clamps to border the texture in tiled mode
	TEXTURE_WRAP_MIRROR_CLAMP = 3,
};

// Cubemap layouts
export type CubemapLayout = enum {
	// Automatically detect layout type
	CUBEMAP_LAYOUT_AUTO_DETECT = 0,
	// Layout is defined by a vertical line with faces
	CUBEMAP_LAYOUT_LINE_VERTICAL = 1,
	// Layout is defined by an horizontal line with faces
	CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2,
	// Layout is defined by a 3x4 cross with cubemap faces
	CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3,
	// Layout is defined by a 4x3 cross with cubemap faces
	CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4,
	// Layout is defined by a panorama image (equirectangular map)
	CUBEMAP_LAYOUT_PANORAMA = 5,
};

// Font type, defines generation method
export type FontType = enum {
	// Default font generation, anti-aliased
	FONT_DEFAULT = 0,
	// Bitmap font generation, no anti-aliasing
	FONT_BITMAP = 1,
	// SDF font generation, requires external shader
	FONT_SDF = 2,
};

// Color blending modes (pre-defined)
export type BlendMode = enum {
	// Blend textures considering alpha (default)
	BLEND_ALPHA = 0,
	// Blend textures adding colors
	BLEND_ADDITIVE = 1,
	// Blend textures multiplying colors
	BLEND_MULTIPLIED = 2,
	// Blend textures adding colors (alternative)
	BLEND_ADD_COLORS = 3,
	// Blend textures subtracting colors (alternative)
	BLEND_SUBTRACT_COLORS = 4,
	// Belnd textures using custom src/dst factors (use rlSetBlendMode())
	BLEND_CUSTOM = 5,
};

// Gesture
export type Gesture = enum {
	// No gesture
	GESTURE_NONE = 0,
	// Tap gesture
	GESTURE_TAP = 1,
	// Double tap gesture
	GESTURE_DOUBLETAP = 2,
	// Hold gesture
	GESTURE_HOLD = 4,
	// Drag gesture
	GESTURE_DRAG = 8,
	// Swipe right gesture
	GESTURE_SWIPE_RIGHT = 16,
	// Swipe left gesture
	GESTURE_SWIPE_LEFT = 32,
	// Swipe up gesture
	GESTURE_SWIPE_UP = 64,
	// Swipe down gesture
	GESTURE_SWIPE_DOWN = 128,
	// Pinch in gesture
	GESTURE_PINCH_IN = 256,
	// Pinch out gesture
	GESTURE_PINCH_OUT = 512,
};

// Camera system modes
export type CameraMode = enum {
	// Custom camera
	CAMERA_CUSTOM = 0,
	// Free camera
	CAMERA_FREE = 1,
	// Orbital camera
	CAMERA_ORBITAL = 2,
	// First person camera
	CAMERA_FIRST_PERSON = 3,
	// Third person camera
	CAMERA_THIRD_PERSON = 4,
};

// Camera projection
export type CameraProjection = enum {
	// Perspective projection
	CAMERA_PERSPECTIVE = 0,
	// Orthographic projection
	CAMERA_ORTHOGRAPHIC = 1,
};

// N-patch layout
export type NPatchLayout = enum {
	// Npatch layout: 3x3 tiles
	NPATCH_NINE_PATCH = 0,
	// Npatch layout: 1x3 tiles
	NPATCH_THREE_PATCH_VERTICAL = 1,
	// Npatch layout: 3x1 tiles
	NPATCH_THREE_PATCH_HORIZONTAL = 2,
};

// Logging: Redirect trace log messages
export type TraceLogCallback = *fn(logLevel: int, text: const *c::char, args: valist) void;

// FileIO: Load binary data
export type LoadFileDataCallback = *fn(fileName: const *c::char, bytesRead: *uint) *c::char;

// FileIO: Save binary data
export type SaveFileDataCallback = *fn(fileName: const *c::char, data: *c::char, bytesToWrite: uint) bool;

// FileIO: Load text data
export type LoadFileTextCallback = *fn(fileName: const *c::char) *c::char;

// FileIO: Save text data
export type SaveFileTextCallback = *fn(fileName: const *c::char, text: *c::char) bool;

@symbol("InitWindow") fn _InitWindow(width: int, height: int, title: const *c::char) void;

// Initialize window and OpenGL context
export fn InitWindow(width: int, height: int, title: const str) void = {
	let title_cstring: *c::char = c::fromstr(title);
	defer free(title_cstring);
	return _InitWindow(width, height, title_cstring);
};

// Check if KEY_ESCAPE pressed or Close icon pressed
export @symbol("WindowShouldClose") fn WindowShouldClose() bool;

// Close window and unload OpenGL context
export @symbol("CloseWindow") fn CloseWindow() void;

// Check if window has been initialized successfully
export @symbol("IsWindowReady") fn IsWindowReady() bool;

// Check if window is currently fullscreen
export @symbol("IsWindowFullscreen") fn IsWindowFullscreen() bool;

// Check if window is currently hidden (only PLATFORM_DESKTOP)
export @symbol("IsWindowHidden") fn IsWindowHidden() bool;

// Check if window is currently minimized (only PLATFORM_DESKTOP)
export @symbol("IsWindowMinimized") fn IsWindowMinimized() bool;

// Check if window is currently maximized (only PLATFORM_DESKTOP)
export @symbol("IsWindowMaximized") fn IsWindowMaximized() bool;

// Check if window is currently focused (only PLATFORM_DESKTOP)
export @symbol("IsWindowFocused") fn IsWindowFocused() bool;

// Check if window has been resized last frame
export @symbol("IsWindowResized") fn IsWindowResized() bool;

// Check if one specific window flag is enabled
export @symbol("IsWindowState") fn IsWindowState(flag: uint) bool;

// Set window configuration state using flags
export @symbol("SetWindowState") fn SetWindowState(flags: uint) void;

// Clear window configuration state flags
export @symbol("ClearWindowState") fn ClearWindowState(flags: uint) void;

// Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
export @symbol("ToggleFullscreen") fn ToggleFullscreen() void;

// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
export @symbol("MaximizeWindow") fn MaximizeWindow() void;

// Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
export @symbol("MinimizeWindow") fn MinimizeWindow() void;

// Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
export @symbol("RestoreWindow") fn RestoreWindow() void;

// Set icon for window (only PLATFORM_DESKTOP)
export @symbol("SetWindowIcon") fn SetWindowIcon(image: Image) void;

@symbol("SetWindowTitle") fn _SetWindowTitle(title: const *c::char) void;

// Set title for window (only PLATFORM_DESKTOP)
export fn SetWindowTitle(title: const str) void = {
	let title_cstring: *c::char = c::fromstr(title);
	defer free(title_cstring);
	return _SetWindowTitle(title_cstring);
};

// Set window position on screen (only PLATFORM_DESKTOP)
export @symbol("SetWindowPosition") fn SetWindowPosition(x: int, y: int) void;

// Set monitor for the current window (fullscreen mode)
export @symbol("SetWindowMonitor") fn SetWindowMonitor(monitor: int) void;

// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
export @symbol("SetWindowMinSize") fn SetWindowMinSize(width: int, height: int) void;

// Set window dimensions
export @symbol("SetWindowSize") fn SetWindowSize(width: int, height: int) void;

// Get native window handle
export @symbol("GetWindowHandle") fn GetWindowHandle() *c::char;

// Get current screen width
export @symbol("GetScreenWidth") fn GetScreenWidth() int;

// Get current screen height
export @symbol("GetScreenHeight") fn GetScreenHeight() int;

// Get number of connected monitors
export @symbol("GetMonitorCount") fn GetMonitorCount() int;

// Get current connected monitor
export @symbol("GetCurrentMonitor") fn GetCurrentMonitor() int;

// Get specified monitor position
export @symbol("GetMonitorPosition") fn GetMonitorPosition(monitor: int) Vector2;

// Get specified monitor width (max available by monitor)
export @symbol("GetMonitorWidth") fn GetMonitorWidth(monitor: int) int;

// Get specified monitor height (max available by monitor)
export @symbol("GetMonitorHeight") fn GetMonitorHeight(monitor: int) int;

// Get specified monitor physical width in millimetres
export @symbol("GetMonitorPhysicalWidth") fn GetMonitorPhysicalWidth(monitor: int) int;

// Get specified monitor physical height in millimetres
export @symbol("GetMonitorPhysicalHeight") fn GetMonitorPhysicalHeight(monitor: int) int;

// Get specified monitor refresh rate
export @symbol("GetMonitorRefreshRate") fn GetMonitorRefreshRate(monitor: int) int;

// Get window position XY on monitor
export @symbol("GetWindowPosition") fn GetWindowPosition() Vector2;

// Get window scale DPI factor
export @symbol("GetWindowScaleDPI") fn GetWindowScaleDPI() Vector2;

@symbol("GetMonitorName") fn _GetMonitorName(monitor: int) const *c::char;

// Get the human-readable, UTF-8 encoded name of the primary monitor
export fn GetMonitorName(monitor: int) const str = {
	return c::tostr(_GetMonitorName(monitor))!;
};

@symbol("SetClipboardText") fn _SetClipboardText(text: const *c::char) void;

// Set clipboard text content
export fn SetClipboardText(text: const str) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _SetClipboardText(text_cstring);
};

@symbol("GetClipboardText") fn _GetClipboardText() const *c::char;

// Get clipboard text content
export fn GetClipboardText() const str = {
	return c::tostr(_GetClipboardText())!;
};

// Swap back buffer with front buffer (screen drawing)
export @symbol("SwapScreenBuffer") fn SwapScreenBuffer() void;

// Register all input events
export @symbol("PollInputEvents") fn PollInputEvents() void;

// Wait for some milliseconds (halt program execution)
export @symbol("WaitTime") fn WaitTime(ms: f32) void;

// Shows cursor
export @symbol("ShowCursor") fn ShowCursor() void;

// Hides cursor
export @symbol("HideCursor") fn HideCursor() void;

// Check if cursor is not visible
export @symbol("IsCursorHidden") fn IsCursorHidden() bool;

// Enables cursor (unlock cursor)
export @symbol("EnableCursor") fn EnableCursor() void;

// Disables cursor (lock cursor)
export @symbol("DisableCursor") fn DisableCursor() void;

// Check if cursor is on the screen
export @symbol("IsCursorOnScreen") fn IsCursorOnScreen() bool;

// Set background color (framebuffer clear color)
export @symbol("ClearBackground") fn ClearBackground(color: Color) void;

// Setup canvas (framebuffer) to start drawing
export @symbol("BeginDrawing") fn BeginDrawing() void;

// End canvas drawing and swap buffers (double buffering)
export @symbol("EndDrawing") fn EndDrawing() void;

// Begin 2D mode with custom camera (2D)
export @symbol("BeginMode2D") fn BeginMode2D(camera: Camera2D) void;

// Ends 2D mode with custom camera
export @symbol("EndMode2D") fn EndMode2D() void;

// Begin 3D mode with custom camera (3D)
export @symbol("BeginMode3D") fn BeginMode3D(camera: Camera3D) void;

// Ends 3D mode and returns to default 2D orthographic mode
export @symbol("EndMode3D") fn EndMode3D() void;

// Begin drawing to render texture
export @symbol("BeginTextureMode") fn BeginTextureMode(target: RenderTexture2D) void;

// Ends drawing to render texture
export @symbol("EndTextureMode") fn EndTextureMode() void;

// Begin custom shader drawing
export @symbol("BeginShaderMode") fn BeginShaderMode(shader: Shader) void;

// End custom shader drawing (use default shader)
export @symbol("EndShaderMode") fn EndShaderMode() void;

// Begin blending mode (alpha, additive, multiplied, subtract, custom)
export @symbol("BeginBlendMode") fn BeginBlendMode(mode: int) void;

// End blending mode (reset to default: alpha blending)
export @symbol("EndBlendMode") fn EndBlendMode() void;

// Begin scissor mode (define screen area for following drawing)
export @symbol("BeginScissorMode") fn BeginScissorMode(x: int, y: int, width: int, height: int) void;

// End scissor mode
export @symbol("EndScissorMode") fn EndScissorMode() void;

// Begin stereo rendering (requires VR simulator)
export @symbol("BeginVrStereoMode") fn BeginVrStereoMode(config: VrStereoConfig) void;

// End stereo rendering (requires VR simulator)
export @symbol("EndVrStereoMode") fn EndVrStereoMode() void;

// Load VR stereo config for VR simulator device parameters
export @symbol("LoadVrStereoConfig") fn LoadVrStereoConfig(device: VrDeviceInfo) VrStereoConfig;

// Unload VR stereo config
export @symbol("UnloadVrStereoConfig") fn UnloadVrStereoConfig(config: VrStereoConfig) void;

@symbol("LoadShader") fn _LoadShader(vsFileName: const *c::char, fsFileName: const *c::char) Shader;

// Load shader from files and bind default locations
export fn LoadShader(vsFileName: const str, fsFileName: const str) Shader = {
	let vsFileName_cstring: *c::char = c::fromstr(vsFileName);
	defer free(vsFileName_cstring);
	let fsFileName_cstring: *c::char = c::fromstr(fsFileName);
	defer free(fsFileName_cstring);
	return _LoadShader(vsFileName_cstring, fsFileName_cstring);
};

@symbol("LoadShaderFromMemory") fn _LoadShaderFromMemory(vsCode: const *c::char, fsCode: const *c::char) Shader;

// Load shader from code strings and bind default locations
export fn LoadShaderFromMemory(vsCode: const str, fsCode: const str) Shader = {
	let vsCode_cstring: *c::char = c::fromstr(vsCode);
	defer free(vsCode_cstring);
	let fsCode_cstring: *c::char = c::fromstr(fsCode);
	defer free(fsCode_cstring);
	return _LoadShaderFromMemory(vsCode_cstring, fsCode_cstring);
};

@symbol("GetShaderLocation") fn _GetShaderLocation(shader: Shader, uniformName: const *c::char) int;

// Get shader uniform location
export fn GetShaderLocation(shader: Shader, uniformName: const str) int = {
	let uniformName_cstring: *c::char = c::fromstr(uniformName);
	defer free(uniformName_cstring);
	return _GetShaderLocation(shader, uniformName_cstring);
};

@symbol("GetShaderLocationAttrib") fn _GetShaderLocationAttrib(shader: Shader, attribName: const *c::char) int;

// Get shader attribute location
export fn GetShaderLocationAttrib(shader: Shader, attribName: const str) int = {
	let attribName_cstring: *c::char = c::fromstr(attribName);
	defer free(attribName_cstring);
	return _GetShaderLocationAttrib(shader, attribName_cstring);
};

// Set shader uniform value
export @symbol("SetShaderValue") fn SetShaderValue(shader: Shader, locIndex: int, value: const *c::char, uniformType: int) void;

// Set shader uniform value vector
export @symbol("SetShaderValueV") fn SetShaderValueV(shader: Shader, locIndex: int, value: const *c::char, uniformType: int, count: int) void;

// Set shader uniform value (matrix 4x4)
export @symbol("SetShaderValueMatrix") fn SetShaderValueMatrix(shader: Shader, locIndex: int, mat: Matrix) void;

// Set shader uniform value for texture (sampler2d)
export @symbol("SetShaderValueTexture") fn SetShaderValueTexture(shader: Shader, locIndex: int, texture: Texture2D) void;

// Unload shader from GPU memory (VRAM)
export @symbol("UnloadShader") fn UnloadShader(shader: Shader) void;

// Get a ray trace from mouse position
export @symbol("GetMouseRay") fn GetMouseRay(mousePosition: Vector2, camera: Camera) Ray;

// Get camera transform matrix (view matrix)
export @symbol("GetCameraMatrix") fn GetCameraMatrix(camera: Camera) Matrix;

// Get camera 2d transform matrix
export @symbol("GetCameraMatrix2D") fn GetCameraMatrix2D(camera: Camera2D) Matrix;

// Get the screen space position for a 3d world space position
export @symbol("GetWorldToScreen") fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;

// Get size position for a 3d world space position
export @symbol("GetWorldToScreenEx") fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: int, height: int) Vector2;

// Get the screen space position for a 2d camera world space position
export @symbol("GetWorldToScreen2D") fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;

// Get the world space position for a 2d camera screen space position
export @symbol("GetScreenToWorld2D") fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;

// Set target FPS (maximum)
export @symbol("SetTargetFPS") fn SetTargetFPS(fps: int) void;

// Get current FPS
export @symbol("GetFPS") fn GetFPS() int;

// Get time in seconds for last frame drawn (delta time)
export @symbol("GetFrameTime") fn GetFrameTime() f32;

// Get elapsed time in seconds since InitWindow()
export @symbol("GetTime") fn GetTime() f64;

// Get a random value between min and max (both included)
export @symbol("GetRandomValue") fn GetRandomValue(min: int, max: int) int;

// Set the seed for the random number generator
export @symbol("SetRandomSeed") fn SetRandomSeed(seed: uint) void;

@symbol("TakeScreenshot") fn _TakeScreenshot(fileName: const *c::char) void;

// Takes a screenshot of current screen (filename extension defines format)
export fn TakeScreenshot(fileName: const str) void = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _TakeScreenshot(fileName_cstring);
};

// Setup init configuration flags (view FLAGS)
export @symbol("SetConfigFlags") fn SetConfigFlags(flags: uint) void;

// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
export @symbol("TraceLog") fn TraceLog(logLevel: int, text: const *c::char, ...) void;

// Set the current threshold (minimum) log level
export @symbol("SetTraceLogLevel") fn SetTraceLogLevel(logLevel: int) void;

// Internal memory allocator
export @symbol("MemAlloc") fn MemAlloc(_size: int) *c::char;

// Internal memory reallocator
export @symbol("MemRealloc") fn MemRealloc(ptr: *c::char, _size: int) *c::char;

// Internal memory free
export @symbol("MemFree") fn MemFree(ptr: *c::char) void;

// Set custom trace log
export @symbol("SetTraceLogCallback") fn SetTraceLogCallback(callback: TraceLogCallback) void;

// Set custom file binary data loader
export @symbol("SetLoadFileDataCallback") fn SetLoadFileDataCallback(callback: LoadFileDataCallback) void;

// Set custom file binary data saver
export @symbol("SetSaveFileDataCallback") fn SetSaveFileDataCallback(callback: SaveFileDataCallback) void;

// Set custom file text data loader
export @symbol("SetLoadFileTextCallback") fn SetLoadFileTextCallback(callback: LoadFileTextCallback) void;

// Set custom file text data saver
export @symbol("SetSaveFileTextCallback") fn SetSaveFileTextCallback(callback: SaveFileTextCallback) void;

@symbol("LoadFileData") fn _LoadFileData(fileName: const *c::char, bytesRead: *uint) *c::char;

// Load file data as byte array (read)
export fn LoadFileData(fileName: const str, bytesRead: *uint) *c::char = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadFileData(fileName_cstring, bytesRead);
};

// Unload file data allocated by LoadFileData()
export @symbol("UnloadFileData") fn UnloadFileData(data: *c::char) void;

@symbol("SaveFileData") fn _SaveFileData(fileName: const *c::char, data: *c::char, bytesToWrite: uint) bool;

// Save data to file from byte array (write), returns true on success
export fn SaveFileData(fileName: const str, data: *c::char, bytesToWrite: uint) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _SaveFileData(fileName_cstring, data, bytesToWrite);
};

@symbol("LoadFileText") fn _LoadFileText(fileName: const *c::char) *c::char;

// Load text data from file (read), returns a '\0' terminated string
export fn LoadFileText(fileName: const str) str = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return c::tostr(_LoadFileText(fileName_cstring))!;
};

@symbol("UnloadFileText") fn _UnloadFileText(text: *c::char) void;

// Unload file text data allocated by LoadFileText()
export fn UnloadFileText(text: str) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _UnloadFileText(text_cstring);
};

@symbol("SaveFileText") fn _SaveFileText(fileName: const *c::char, text: *c::char) bool;

// Save text data to file (write), string must be '\0' terminated, returns true on success
export fn SaveFileText(fileName: const str, text: str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _SaveFileText(fileName_cstring, text_cstring);
};

@symbol("FileExists") fn _FileExists(fileName: const *c::char) bool;

// Check if file exists
export fn FileExists(fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _FileExists(fileName_cstring);
};

@symbol("DirectoryExists") fn _DirectoryExists(dirPath: const *c::char) bool;

// Check if a directory path exists
export fn DirectoryExists(dirPath: const str) bool = {
	let dirPath_cstring: *c::char = c::fromstr(dirPath);
	defer free(dirPath_cstring);
	return _DirectoryExists(dirPath_cstring);
};

@symbol("IsFileExtension") fn _IsFileExtension(fileName: const *c::char, ext: const *c::char) bool;

// Check file extension (including point: .png, .wav)
export fn IsFileExtension(fileName: const str, ext: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	let ext_cstring: *c::char = c::fromstr(ext);
	defer free(ext_cstring);
	return _IsFileExtension(fileName_cstring, ext_cstring);
};

@symbol("GetFileExtension") fn _GetFileExtension(fileName: const *c::char) const *c::char;

// Get pointer to extension for a filename string (includes dot: '.png')
export fn GetFileExtension(fileName: const str) const str = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return c::tostr(_GetFileExtension(fileName_cstring))!;
};

@symbol("GetFileName") fn _GetFileName(filePath: const *c::char) const *c::char;

// Get pointer to filename for a path string
export fn GetFileName(filePath: const str) const str = {
	let filePath_cstring: *c::char = c::fromstr(filePath);
	defer free(filePath_cstring);
	return c::tostr(_GetFileName(filePath_cstring))!;
};

@symbol("GetFileNameWithoutExt") fn _GetFileNameWithoutExt(filePath: const *c::char) const *c::char;

// Get filename string without extension (uses static string)
export fn GetFileNameWithoutExt(filePath: const str) const str = {
	let filePath_cstring: *c::char = c::fromstr(filePath);
	defer free(filePath_cstring);
	return c::tostr(_GetFileNameWithoutExt(filePath_cstring))!;
};

@symbol("GetDirectoryPath") fn _GetDirectoryPath(filePath: const *c::char) const *c::char;

// Get full path for a given fileName with path (uses static string)
export fn GetDirectoryPath(filePath: const str) const str = {
	let filePath_cstring: *c::char = c::fromstr(filePath);
	defer free(filePath_cstring);
	return c::tostr(_GetDirectoryPath(filePath_cstring))!;
};

@symbol("GetPrevDirectoryPath") fn _GetPrevDirectoryPath(dirPath: const *c::char) const *c::char;

// Get previous directory path for a given path (uses static string)
export fn GetPrevDirectoryPath(dirPath: const str) const str = {
	let dirPath_cstring: *c::char = c::fromstr(dirPath);
	defer free(dirPath_cstring);
	return c::tostr(_GetPrevDirectoryPath(dirPath_cstring))!;
};

@symbol("GetWorkingDirectory") fn _GetWorkingDirectory() const *c::char;

// Get current working directory (uses static string)
export fn GetWorkingDirectory() const str = {
	return c::tostr(_GetWorkingDirectory())!;
};

// Clear directory files paths buffers (free memory)
export @symbol("ClearDirectoryFiles") fn ClearDirectoryFiles() void;

@symbol("ChangeDirectory") fn _ChangeDirectory(dir: const *c::char) bool;

// Change working directory, return true on success
export fn ChangeDirectory(dir: const str) bool = {
	let dir_cstring: *c::char = c::fromstr(dir);
	defer free(dir_cstring);
	return _ChangeDirectory(dir_cstring);
};

// Check if a file has been dropped into window
export @symbol("IsFileDropped") fn IsFileDropped() bool;

// Get dropped files names (memory should be freed)
export @symbol("GetDroppedFiles") fn GetDroppedFiles(count: *int) **c::char;

// Clear dropped files paths buffer (free memory)
export @symbol("ClearDroppedFiles") fn ClearDroppedFiles() void;

@symbol("GetFileModTime") fn _GetFileModTime(fileName: const *c::char) c::long;

// Get file modification time (last write time)
export fn GetFileModTime(fileName: const str) c::long = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _GetFileModTime(fileName_cstring);
};

// Compress data (DEFLATE algorithm)
export @symbol("CompressData") fn CompressData(data: *c::char, dataLength: int, compDataLength: *int) *c::char;

// Decompress data (DEFLATE algorithm)
export @symbol("DecompressData") fn DecompressData(compData: *c::char, compDataLength: int, dataLength: *int) *c::char;

@symbol("EncodeDataBase64") fn _EncodeDataBase64(data: const *c::char, dataLength: int, outputLength: *int) *c::char;

// Encode data to Base64 string
export fn EncodeDataBase64(data: const *c::char, dataLength: int, outputLength: *int) str = {
	return c::tostr(_EncodeDataBase64(data, dataLength, outputLength))!;
};

// Decode Base64 string data
export @symbol("DecodeDataBase64") fn DecodeDataBase64(data: *c::char, outputLength: *int) *c::char;

// Save integer value to storage file (to defined position), returns true on success
export @symbol("SaveStorageValue") fn SaveStorageValue(position: uint, value: int) bool;

// Load integer value from storage file (from defined position)
export @symbol("LoadStorageValue") fn LoadStorageValue(position: uint) int;

@symbol("OpenURL") fn _OpenURL(url: const *c::char) void;

// Open URL with default system browser (if available)
export fn OpenURL(url: const str) void = {
	let url_cstring: *c::char = c::fromstr(url);
	defer free(url_cstring);
	return _OpenURL(url_cstring);
};

// Check if a key has been pressed once
export @symbol("IsKeyPressed") fn IsKeyPressed(key: int) bool;

// Check if a key is being pressed
export @symbol("IsKeyDown") fn IsKeyDown(key: int) bool;

// Check if a key has been released once
export @symbol("IsKeyReleased") fn IsKeyReleased(key: int) bool;

// Check if a key is NOT being pressed
export @symbol("IsKeyUp") fn IsKeyUp(key: int) bool;

// Set a custom key to exit program (default is ESC)
export @symbol("SetExitKey") fn SetExitKey(key: int) void;

// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
export @symbol("GetKeyPressed") fn GetKeyPressed() int;

// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
export @symbol("GetCharPressed") fn GetCharPressed() int;

// Check if a gamepad is available
export @symbol("IsGamepadAvailable") fn IsGamepadAvailable(gamepad: int) bool;

@symbol("GetGamepadName") fn _GetGamepadName(gamepad: int) const *c::char;

// Get gamepad internal name id
export fn GetGamepadName(gamepad: int) const str = {
	return c::tostr(_GetGamepadName(gamepad))!;
};

// Check if a gamepad button has been pressed once
export @symbol("IsGamepadButtonPressed") fn IsGamepadButtonPressed(gamepad: int, button: int) bool;

// Check if a gamepad button is being pressed
export @symbol("IsGamepadButtonDown") fn IsGamepadButtonDown(gamepad: int, button: int) bool;

// Check if a gamepad button has been released once
export @symbol("IsGamepadButtonReleased") fn IsGamepadButtonReleased(gamepad: int, button: int) bool;

// Check if a gamepad button is NOT being pressed
export @symbol("IsGamepadButtonUp") fn IsGamepadButtonUp(gamepad: int, button: int) bool;

// Get the last gamepad button pressed
export @symbol("GetGamepadButtonPressed") fn GetGamepadButtonPressed() int;

// Get gamepad axis count for a gamepad
export @symbol("GetGamepadAxisCount") fn GetGamepadAxisCount(gamepad: int) int;

// Get axis movement value for a gamepad axis
export @symbol("GetGamepadAxisMovement") fn GetGamepadAxisMovement(gamepad: int, axis: int) f32;

@symbol("SetGamepadMappings") fn _SetGamepadMappings(mappings: const *c::char) int;

// Set internal gamepad mappings (SDL_GameControllerDB)
export fn SetGamepadMappings(mappings: const str) int = {
	let mappings_cstring: *c::char = c::fromstr(mappings);
	defer free(mappings_cstring);
	return _SetGamepadMappings(mappings_cstring);
};

// Check if a mouse button has been pressed once
export @symbol("IsMouseButtonPressed") fn IsMouseButtonPressed(button: int) bool;

// Check if a mouse button is being pressed
export @symbol("IsMouseButtonDown") fn IsMouseButtonDown(button: int) bool;

// Check if a mouse button has been released once
export @symbol("IsMouseButtonReleased") fn IsMouseButtonReleased(button: int) bool;

// Check if a mouse button is NOT being pressed
export @symbol("IsMouseButtonUp") fn IsMouseButtonUp(button: int) bool;

// Get mouse position X
export @symbol("GetMouseX") fn GetMouseX() int;

// Get mouse position Y
export @symbol("GetMouseY") fn GetMouseY() int;

// Get mouse position XY
export @symbol("GetMousePosition") fn GetMousePosition() Vector2;

// Get mouse delta between frames
export @symbol("GetMouseDelta") fn GetMouseDelta() Vector2;

// Set mouse position XY
export @symbol("SetMousePosition") fn SetMousePosition(x: int, y: int) void;

// Set mouse offset
export @symbol("SetMouseOffset") fn SetMouseOffset(offsetX: int, offsetY: int) void;

// Set mouse scaling
export @symbol("SetMouseScale") fn SetMouseScale(scaleX: f32, scaleY: f32) void;

// Get mouse wheel movement Y
export @symbol("GetMouseWheelMove") fn GetMouseWheelMove() f32;

// Set mouse cursor
export @symbol("SetMouseCursor") fn SetMouseCursor(cursor: int) void;

// Get touch position X for touch point 0 (relative to screen size)
export @symbol("GetTouchX") fn GetTouchX() int;

// Get touch position Y for touch point 0 (relative to screen size)
export @symbol("GetTouchY") fn GetTouchY() int;

// Get touch position XY for a touch point index (relative to screen size)
export @symbol("GetTouchPosition") fn GetTouchPosition(index: int) Vector2;

// Get touch point identifier for given index
export @symbol("GetTouchPointId") fn GetTouchPointId(index: int) int;

// Get number of touch points
export @symbol("GetTouchPointCount") fn GetTouchPointCount() int;

// Enable a set of gestures using flags
export @symbol("SetGesturesEnabled") fn SetGesturesEnabled(flags: uint) void;

// Check if a gesture have been detected
export @symbol("IsGestureDetected") fn IsGestureDetected(gesture: int) bool;

// Get latest detected gesture
export @symbol("GetGestureDetected") fn GetGestureDetected() int;

// Get gesture hold time in milliseconds
export @symbol("GetGestureHoldDuration") fn GetGestureHoldDuration() f32;

// Get gesture drag vector
export @symbol("GetGestureDragVector") fn GetGestureDragVector() Vector2;

// Get gesture drag angle
export @symbol("GetGestureDragAngle") fn GetGestureDragAngle() f32;

// Get gesture pinch delta
export @symbol("GetGesturePinchVector") fn GetGesturePinchVector() Vector2;

// Get gesture pinch angle
export @symbol("GetGesturePinchAngle") fn GetGesturePinchAngle() f32;

// Set camera mode (multiple camera modes available)
export @symbol("SetCameraMode") fn SetCameraMode(camera: Camera, mode: int) void;

// Update camera position for selected mode
export @symbol("UpdateCamera") fn UpdateCamera(camera: *Camera) void;

// Set camera pan key to combine with mouse movement (free camera)
export @symbol("SetCameraPanControl") fn SetCameraPanControl(keyPan: int) void;

// Set camera alt key to combine with mouse movement (free camera)
export @symbol("SetCameraAltControl") fn SetCameraAltControl(keyAlt: int) void;

// Set camera smooth zoom key to combine with mouse (free camera)
export @symbol("SetCameraSmoothZoomControl") fn SetCameraSmoothZoomControl(keySmoothZoom: int) void;

// Set camera move controls (1st person and 3rd person cameras)
export @symbol("SetCameraMoveControls") fn SetCameraMoveControls(keyFront: int, keyBack: int, keyRight: int, keyLeft: int, keyUp: int, keyDown: int) void;

// Set texture and rectangle to be used on shapes drawing
export @symbol("SetShapesTexture") fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;

// Draw a pixel
export @symbol("DrawPixel") fn DrawPixel(posX: int, posY: int, color: Color) void;

// Draw a pixel (Vector version)
export @symbol("DrawPixelV") fn DrawPixelV(position: Vector2, color: Color) void;

// Draw a line
export @symbol("DrawLine") fn DrawLine(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;

// Draw a line (Vector version)
export @symbol("DrawLineV") fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;

// Draw a line defining thickness
export @symbol("DrawLineEx") fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

// Draw a line using cubic-bezier curves in-out
export @symbol("DrawLineBezier") fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;

// Draw line using quadratic bezier curves with a control point
export @symbol("DrawLineBezierQuad") fn DrawLineBezierQuad(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color) void;

// Draw line using cubic bezier curves with 2 control points
export @symbol("DrawLineBezierCubic") fn DrawLineBezierCubic(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color) void;

// Draw lines sequence
export @symbol("DrawLineStrip") fn DrawLineStrip(points: *Vector2, pointCount: int, color: Color) void;

// Draw a color-filled circle
export @symbol("DrawCircle") fn DrawCircle(centerX: int, centerY: int, radius: f32, color: Color) void;

// Draw a piece of a circle
export @symbol("DrawCircleSector") fn DrawCircleSector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

// Draw circle sector outline
export @symbol("DrawCircleSectorLines") fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

// Draw a gradient-filled circle
export @symbol("DrawCircleGradient") fn DrawCircleGradient(centerX: int, centerY: int, radius: f32, color1: Color, color2: Color) void;

// Draw a color-filled circle (Vector version)
export @symbol("DrawCircleV") fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;

// Draw circle outline
export @symbol("DrawCircleLines") fn DrawCircleLines(centerX: int, centerY: int, radius: f32, color: Color) void;

// Draw ellipse
export @symbol("DrawEllipse") fn DrawEllipse(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

// Draw ellipse outline
export @symbol("DrawEllipseLines") fn DrawEllipseLines(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;

// Draw ring
export @symbol("DrawRing") fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

// Draw ring outline
export @symbol("DrawRingLines") fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

// Draw a color-filled rectangle
export @symbol("DrawRectangle") fn DrawRectangle(posX: int, posY: int, width: int, height: int, color: Color) void;

// Draw a color-filled rectangle (Vector version)
export @symbol("DrawRectangleV") fn DrawRectangleV(position: Vector2, _size: Vector2, color: Color) void;

// Draw a color-filled rectangle
export @symbol("DrawRectangleRec") fn DrawRectangleRec(rec: Rectangle, color: Color) void;

// Draw a color-filled rectangle with pro parameters
export @symbol("DrawRectanglePro") fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;

// Draw a vertical-gradient-filled rectangle
export @symbol("DrawRectangleGradientV") fn DrawRectangleGradientV(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

// Draw a horizontal-gradient-filled rectangle
export @symbol("DrawRectangleGradientH") fn DrawRectangleGradientH(posX: int, posY: int, width: int, height: int, color1: Color, color2: Color) void;

// Draw a gradient-filled rectangle with custom vertex colors
export @symbol("DrawRectangleGradientEx") fn DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;

// Draw rectangle outline
export @symbol("DrawRectangleLines") fn DrawRectangleLines(posX: int, posY: int, width: int, height: int, color: Color) void;

// Draw rectangle outline with extended parameters
export @symbol("DrawRectangleLinesEx") fn DrawRectangleLinesEx(rec: Rectangle, lineThick: f32, color: Color) void;

// Draw rectangle with rounded edges
export @symbol("DrawRectangleRounded") fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: int, color: Color) void;

// Draw rectangle with rounded edges outline
export @symbol("DrawRectangleRoundedLines") fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) void;

// Draw a color-filled triangle (vertex in counter-clockwise order!)
export @symbol("DrawTriangle") fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

// Draw triangle outline (vertex in counter-clockwise order!)
export @symbol("DrawTriangleLines") fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;

// Draw a triangle fan defined by points (first vertex is the center)
export @symbol("DrawTriangleFan") fn DrawTriangleFan(points: *Vector2, pointCount: int, color: Color) void;

// Draw a triangle strip defined by points
export @symbol("DrawTriangleStrip") fn DrawTriangleStrip(points: *Vector2, pointCount: int, color: Color) void;

// Draw a regular polygon (Vector version)
export @symbol("DrawPoly") fn DrawPoly(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

// Draw a polygon outline of n sides
export @symbol("DrawPolyLines") fn DrawPolyLines(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;

// Draw a polygon outline of n sides with extended parameters
export @symbol("DrawPolyLinesEx") fn DrawPolyLinesEx(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;

// Check collision between two rectangles
export @symbol("CheckCollisionRecs") fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;

// Check collision between two circles
export @symbol("CheckCollisionCircles") fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;

// Check collision between circle and rectangle
export @symbol("CheckCollisionCircleRec") fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;

// Check if point is inside rectangle
export @symbol("CheckCollisionPointRec") fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;

// Check if point is inside circle
export @symbol("CheckCollisionPointCircle") fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;

// Check if point is inside a triangle
export @symbol("CheckCollisionPointTriangle") fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;

// Check the collision between two lines defined by two points each, returns collision point by reference
export @symbol("CheckCollisionLines") fn CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: *Vector2) bool;

// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
export @symbol("CheckCollisionPointLine") fn CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) bool;

// Get collision rectangle for two rectangles collision
export @symbol("GetCollisionRec") fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;

@symbol("LoadImage") fn _LoadImage(fileName: const *c::char) Image;

// Load image from file into CPU memory (RAM)
export fn LoadImage(fileName: const str) Image = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadImage(fileName_cstring);
};

@symbol("LoadImageRaw") fn _LoadImageRaw(fileName: const *c::char, width: int, height: int, format: int, headerSize: int) Image;

// Load image from RAW file data
export fn LoadImageRaw(fileName: const str, width: int, height: int, format: int, headerSize: int) Image = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadImageRaw(fileName_cstring, width, height, format, headerSize);
};

@symbol("LoadImageAnim") fn _LoadImageAnim(fileName: const *c::char, frames: *int) Image;

// Load image sequence from file (frames appended to image.data)
export fn LoadImageAnim(fileName: const str, frames: *int) Image = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadImageAnim(fileName_cstring, frames);
};

@symbol("LoadImageFromMemory") fn _LoadImageFromMemory(fileType: const *c::char, fileData: const *c::char, dataSize: int) Image;

// Load image from memory buffer, fileType refers to extension: i.e. '.png'
export fn LoadImageFromMemory(fileType: const str, fileData: const *c::char, dataSize: int) Image = {
	let fileType_cstring: *c::char = c::fromstr(fileType);
	defer free(fileType_cstring);
	return _LoadImageFromMemory(fileType_cstring, fileData, dataSize);
};

// Load image from GPU texture data
export @symbol("LoadImageFromTexture") fn LoadImageFromTexture(texture: Texture2D) Image;

// Load image from screen buffer and (screenshot)
export @symbol("LoadImageFromScreen") fn LoadImageFromScreen() Image;

// Unload image from CPU memory (RAM)
export @symbol("UnloadImage") fn UnloadImage(image: Image) void;

@symbol("ExportImage") fn _ExportImage(image: Image, fileName: const *c::char) bool;

// Export image data to file, returns true on success
export fn ExportImage(image: Image, fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _ExportImage(image, fileName_cstring);
};

@symbol("ExportImageAsCode") fn _ExportImageAsCode(image: Image, fileName: const *c::char) bool;

// Export image as code file defining an array of bytes, returns true on success
export fn ExportImageAsCode(image: Image, fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _ExportImageAsCode(image, fileName_cstring);
};

// Generate image: plain color
export @symbol("GenImageColor") fn GenImageColor(width: int, height: int, color: Color) Image;

// Generate image: vertical gradient
export @symbol("GenImageGradientV") fn GenImageGradientV(width: int, height: int, top: Color, bottom: Color) Image;

// Generate image: horizontal gradient
export @symbol("GenImageGradientH") fn GenImageGradientH(width: int, height: int, left: Color, right: Color) Image;

// Generate image: radial gradient
export @symbol("GenImageGradientRadial") fn GenImageGradientRadial(width: int, height: int, density: f32, inner: Color, outer: Color) Image;

// Generate image: checked
export @symbol("GenImageChecked") fn GenImageChecked(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) Image;

// Generate image: white noise
export @symbol("GenImageWhiteNoise") fn GenImageWhiteNoise(width: int, height: int, factor: f32) Image;

// Generate image: cellular algorithm, bigger tileSize means bigger cells
export @symbol("GenImageCellular") fn GenImageCellular(width: int, height: int, tileSize: int) Image;

// Create an image duplicate (useful for transformations)
export @symbol("ImageCopy") fn ImageCopy(image: Image) Image;

// Create an image from another image piece
export @symbol("ImageFromImage") fn ImageFromImage(image: Image, rec: Rectangle) Image;

@symbol("ImageText") fn _ImageText(text: const *c::char, fontSize: int, color: Color) Image;

// Create an image from text (default font)
export fn ImageText(text: const str, fontSize: int, color: Color) Image = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _ImageText(text_cstring, fontSize, color);
};

@symbol("ImageTextEx") fn _ImageTextEx(font: Font, text: const *c::char, fontSize: f32, spacing: f32, tint: Color) Image;

// Create an image from text (custom sprite font)
export fn ImageTextEx(font: Font, text: const str, fontSize: f32, spacing: f32, tint: Color) Image = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _ImageTextEx(font, text_cstring, fontSize, spacing, tint);
};

// Convert image data to desired format
export @symbol("ImageFormat") fn ImageFormat(image: *Image, newFormat: int) void;

// Convert image to POT (power-of-two)
export @symbol("ImageToPOT") fn ImageToPOT(image: *Image, fill: Color) void;

// Crop an image to a defined rectangle
export @symbol("ImageCrop") fn ImageCrop(image: *Image, crop: Rectangle) void;

// Crop image depending on alpha value
export @symbol("ImageAlphaCrop") fn ImageAlphaCrop(image: *Image, threshold: f32) void;

// Clear alpha channel to desired color
export @symbol("ImageAlphaClear") fn ImageAlphaClear(image: *Image, color: Color, threshold: f32) void;

// Apply alpha mask to image
export @symbol("ImageAlphaMask") fn ImageAlphaMask(image: *Image, alphaMask: Image) void;

// Premultiply alpha channel
export @symbol("ImageAlphaPremultiply") fn ImageAlphaPremultiply(image: *Image) void;

// Resize image (Bicubic scaling algorithm)
export @symbol("ImageResize") fn ImageResize(image: *Image, newWidth: int, newHeight: int) void;

// Resize image (Nearest-Neighbor scaling algorithm)
export @symbol("ImageResizeNN") fn ImageResizeNN(image: *Image, newWidth: int, newHeight: int) void;

// Resize canvas and fill with color
export @symbol("ImageResizeCanvas") fn ImageResizeCanvas(image: *Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color) void;

// Compute all mipmap levels for a provided image
export @symbol("ImageMipmaps") fn ImageMipmaps(image: *Image) void;

// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
export @symbol("ImageDither") fn ImageDither(image: *Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int) void;

// Flip image vertically
export @symbol("ImageFlipVertical") fn ImageFlipVertical(image: *Image) void;

// Flip image horizontally
export @symbol("ImageFlipHorizontal") fn ImageFlipHorizontal(image: *Image) void;

// Rotate image clockwise 90deg
export @symbol("ImageRotateCW") fn ImageRotateCW(image: *Image) void;

// Rotate image counter-clockwise 90deg
export @symbol("ImageRotateCCW") fn ImageRotateCCW(image: *Image) void;

// Modify image color: tint
export @symbol("ImageColorTint") fn ImageColorTint(image: *Image, color: Color) void;

// Modify image color: invert
export @symbol("ImageColorInvert") fn ImageColorInvert(image: *Image) void;

// Modify image color: grayscale
export @symbol("ImageColorGrayscale") fn ImageColorGrayscale(image: *Image) void;

// Modify image color: contrast (-100 to 100)
export @symbol("ImageColorContrast") fn ImageColorContrast(image: *Image, contrast: f32) void;

// Modify image color: brightness (-255 to 255)
export @symbol("ImageColorBrightness") fn ImageColorBrightness(image: *Image, brightness: int) void;

// Modify image color: replace color
export @symbol("ImageColorReplace") fn ImageColorReplace(image: *Image, color: Color, replace: Color) void;

// Load color data from image as a Color array (RGBA - 32bit)
export @symbol("LoadImageColors") fn LoadImageColors(image: Image) *Color;

// Load colors palette from image as a Color array (RGBA - 32bit)
export @symbol("LoadImagePalette") fn LoadImagePalette(image: Image, maxPaletteSize: int, colorCount: *int) *Color;

// Unload color data loaded with LoadImageColors()
export @symbol("UnloadImageColors") fn UnloadImageColors(colors: *Color) void;

// Unload colors palette loaded with LoadImagePalette()
export @symbol("UnloadImagePalette") fn UnloadImagePalette(colors: *Color) void;

// Get image alpha border rectangle
export @symbol("GetImageAlphaBorder") fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;

// Get image pixel color at (x, y) position
export @symbol("GetImageColor") fn GetImageColor(image: Image, x: int, y: int) Color;

// Clear image background with given color
export @symbol("ImageClearBackground") fn ImageClearBackground(dst: *Image, color: Color) void;

// Draw pixel within an image
export @symbol("ImageDrawPixel") fn ImageDrawPixel(dst: *Image, posX: int, posY: int, color: Color) void;

// Draw pixel within an image (Vector version)
export @symbol("ImageDrawPixelV") fn ImageDrawPixelV(dst: *Image, position: Vector2, color: Color) void;

// Draw line within an image
export @symbol("ImageDrawLine") fn ImageDrawLine(dst: *Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;

// Draw line within an image (Vector version)
export @symbol("ImageDrawLineV") fn ImageDrawLineV(dst: *Image, start: Vector2, end: Vector2, color: Color) void;

// Draw circle within an image
export @symbol("ImageDrawCircle") fn ImageDrawCircle(dst: *Image, centerX: int, centerY: int, radius: int, color: Color) void;

// Draw circle within an image (Vector version)
export @symbol("ImageDrawCircleV") fn ImageDrawCircleV(dst: *Image, center: Vector2, radius: int, color: Color) void;

// Draw rectangle within an image
export @symbol("ImageDrawRectangle") fn ImageDrawRectangle(dst: *Image, posX: int, posY: int, width: int, height: int, color: Color) void;

// Draw rectangle within an image (Vector version)
export @symbol("ImageDrawRectangleV") fn ImageDrawRectangleV(dst: *Image, position: Vector2, _size: Vector2, color: Color) void;

// Draw rectangle within an image
export @symbol("ImageDrawRectangleRec") fn ImageDrawRectangleRec(dst: *Image, rec: Rectangle, color: Color) void;

// Draw rectangle lines within an image
export @symbol("ImageDrawRectangleLines") fn ImageDrawRectangleLines(dst: *Image, rec: Rectangle, thick: int, color: Color) void;

// Draw a source image within a destination image (tint applied to source)
export @symbol("ImageDraw") fn ImageDraw(dst: *Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;

@symbol("ImageDrawText") fn _ImageDrawText(dst: *Image, text: const *c::char, posX: int, posY: int, fontSize: int, color: Color) void;

// Draw text (using default font) within an image (destination)
export fn ImageDrawText(dst: *Image, text: const str, posX: int, posY: int, fontSize: int, color: Color) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _ImageDrawText(dst, text_cstring, posX, posY, fontSize, color);
};

@symbol("ImageDrawTextEx") fn _ImageDrawTextEx(dst: *Image, font: Font, text: const *c::char, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;

// Draw text (custom sprite font) within an image (destination)
export fn ImageDrawTextEx(dst: *Image, font: Font, text: const str, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _ImageDrawTextEx(dst, font, text_cstring, position, fontSize, spacing, tint);
};

@symbol("LoadTexture") fn _LoadTexture(fileName: const *c::char) Texture2D;

// Load texture from file into GPU memory (VRAM)
export fn LoadTexture(fileName: const str) Texture2D = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadTexture(fileName_cstring);
};

// Load texture from image data
export @symbol("LoadTextureFromImage") fn LoadTextureFromImage(image: Image) Texture2D;

// Load cubemap from image, multiple image cubemap layouts supported
export @symbol("LoadTextureCubemap") fn LoadTextureCubemap(image: Image, layout: int) TextureCubemap;

// Load texture for rendering (framebuffer)
export @symbol("LoadRenderTexture") fn LoadRenderTexture(width: int, height: int) RenderTexture2D;

// Unload texture from GPU memory (VRAM)
export @symbol("UnloadTexture") fn UnloadTexture(texture: Texture2D) void;

// Unload render texture from GPU memory (VRAM)
export @symbol("UnloadRenderTexture") fn UnloadRenderTexture(target: RenderTexture2D) void;

// Update GPU texture with new data
export @symbol("UpdateTexture") fn UpdateTexture(texture: Texture2D, pixels: const *c::char) void;

// Update GPU texture rectangle with new data
export @symbol("UpdateTextureRec") fn UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: const *c::char) void;

// Generate GPU mipmaps for a texture
export @symbol("GenTextureMipmaps") fn GenTextureMipmaps(texture: *Texture2D) void;

// Set texture scaling filter mode
export @symbol("SetTextureFilter") fn SetTextureFilter(texture: Texture2D, filter: int) void;

// Set texture wrapping mode
export @symbol("SetTextureWrap") fn SetTextureWrap(texture: Texture2D, wrap: int) void;

// Draw a Texture2D
export @symbol("DrawTexture") fn DrawTexture(texture: Texture2D, posX: int, posY: int, tint: Color) void;

// Draw a Texture2D with position defined as Vector2
export @symbol("DrawTextureV") fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;

// Draw a Texture2D with extended parameters
export @symbol("DrawTextureEx") fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;

// Draw a part of a texture defined by a rectangle
export @symbol("DrawTextureRec") fn DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;

// Draw texture quad with tiling and offset parameters
export @symbol("DrawTextureQuad") fn DrawTextureQuad(texture: Texture2D, tiling: Vector2, _offset: Vector2, quad: Rectangle, tint: Color) void;

// Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.
export @symbol("DrawTextureTiled") fn DrawTextureTiled(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, scale: f32, tint: Color) void;

// Draw a part of a texture defined by a rectangle with 'pro' parameters
export @symbol("DrawTexturePro") fn DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;

// Draws a texture (or part of it) that stretches or shrinks nicely
export @symbol("DrawTextureNPatch") fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;

// Draw a textured polygon
export @symbol("DrawTexturePoly") fn DrawTexturePoly(texture: Texture2D, center: Vector2, points: *Vector2, texcoords: *Vector2, pointCount: int, tint: Color) void;

// Get color with alpha applied, alpha goes from 0.0f to 1.0f
export @symbol("Fade") fn Fade(color: Color, alpha: f32) Color;

// Get hexadecimal value for a Color
export @symbol("ColorToInt") fn ColorToInt(color: Color) int;

// Get Color normalized as float [0..1]
export @symbol("ColorNormalize") fn ColorNormalize(color: Color) Vector4;

// Get Color from normalized values [0..1]
export @symbol("ColorFromNormalized") fn ColorFromNormalized(normalized: Vector4) Color;

// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
export @symbol("ColorToHSV") fn ColorToHSV(color: Color) Vector3;

// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
export @symbol("ColorFromHSV") fn ColorFromHSV(hue: f32, saturation: f32, value: f32) Color;

// Get color with alpha applied, alpha goes from 0.0f to 1.0f
export @symbol("ColorAlpha") fn ColorAlpha(color: Color, alpha: f32) Color;

// Get src alpha-blended into dst color with tint
export @symbol("ColorAlphaBlend") fn ColorAlphaBlend(dst: Color, src: Color, tint: Color) Color;

// Get Color structure from hexadecimal value
export @symbol("GetColor") fn GetColor(hexValue: uint) Color;

// Get Color from a source pixel pointer of certain format
export @symbol("GetPixelColor") fn GetPixelColor(srcPtr: *c::char, format: int) Color;

// Set color formatted into destination pixel pointer
export @symbol("SetPixelColor") fn SetPixelColor(dstPtr: *c::char, color: Color, format: int) void;

// Get pixel data size in bytes for certain format
export @symbol("GetPixelDataSize") fn GetPixelDataSize(width: int, height: int, format: int) int;

// Get the default Font
export @symbol("GetFontDefault") fn GetFontDefault() Font;

@symbol("LoadFont") fn _LoadFont(fileName: const *c::char) Font;

// Load font from file into GPU memory (VRAM)
export fn LoadFont(fileName: const str) Font = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadFont(fileName_cstring);
};

@symbol("LoadFontEx") fn _LoadFontEx(fileName: const *c::char, fontSize: int, fontChars: *int, glyphCount: int) Font;

// Load font from file with extended parameters
export fn LoadFontEx(fileName: const str, fontSize: int, fontChars: *int, glyphCount: int) Font = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadFontEx(fileName_cstring, fontSize, fontChars, glyphCount);
};

// Load font from Image (XNA style)
export @symbol("LoadFontFromImage") fn LoadFontFromImage(image: Image, key: Color, firstChar: int) Font;

@symbol("LoadFontFromMemory") fn _LoadFontFromMemory(fileType: const *c::char, fileData: const *c::char, dataSize: int, fontSize: int, fontChars: *int, glyphCount: int) Font;

// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
export fn LoadFontFromMemory(fileType: const str, fileData: const *c::char, dataSize: int, fontSize: int, fontChars: *int, glyphCount: int) Font = {
	let fileType_cstring: *c::char = c::fromstr(fileType);
	defer free(fileType_cstring);
	return _LoadFontFromMemory(fileType_cstring, fileData, dataSize, fontSize, fontChars, glyphCount);
};

// Load font data for further use
export @symbol("LoadFontData") fn LoadFontData(fileData: const *c::char, dataSize: int, fontSize: int, fontChars: *int, glyphCount: int, _type: int) *GlyphInfo;

// Generate image font atlas using chars info
export @symbol("GenImageFontAtlas") fn GenImageFontAtlas(chars: const *GlyphInfo, recs: **Rectangle, glyphCount: int, fontSize: int, padding: int, packMethod: int) Image;

// Unload font chars info data (RAM)
export @symbol("UnloadFontData") fn UnloadFontData(chars: *GlyphInfo, glyphCount: int) void;

// Unload Font from GPU memory (VRAM)
export @symbol("UnloadFont") fn UnloadFont(font: Font) void;

// Draw current FPS
export @symbol("DrawFPS") fn DrawFPS(posX: int, posY: int) void;

@symbol("DrawText") fn _DrawText(text: const *c::char, posX: int, posY: int, fontSize: int, color: Color) void;

// Draw text (using default font)
export fn DrawText(text: const str, posX: int, posY: int, fontSize: int, color: Color) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _DrawText(text_cstring, posX, posY, fontSize, color);
};

@symbol("DrawTextEx") fn _DrawTextEx(font: Font, text: const *c::char, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;

// Draw text using font and additional parameters
export fn DrawTextEx(font: Font, text: const str, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _DrawTextEx(font, text_cstring, position, fontSize, spacing, tint);
};

@symbol("DrawTextPro") fn _DrawTextPro(font: Font, text: const *c::char, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void;

// Draw text using Font and pro parameters (rotation)
export fn DrawTextPro(font: Font, text: const str, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _DrawTextPro(font, text_cstring, position, origin, rotation, fontSize, spacing, tint);
};

// Draw one character (codepoint)
export @symbol("DrawTextCodepoint") fn DrawTextCodepoint(font: Font, codepoint: int, position: Vector2, fontSize: f32, tint: Color) void;

@symbol("MeasureText") fn _MeasureText(text: const *c::char, fontSize: int) int;

// Measure string width for default font
export fn MeasureText(text: const str, fontSize: int) int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _MeasureText(text_cstring, fontSize);
};

@symbol("MeasureTextEx") fn _MeasureTextEx(font: Font, text: const *c::char, fontSize: f32, spacing: f32) Vector2;

// Measure string size for Font
export fn MeasureTextEx(font: Font, text: const str, fontSize: f32, spacing: f32) Vector2 = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _MeasureTextEx(font, text_cstring, fontSize, spacing);
};

// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
export @symbol("GetGlyphIndex") fn GetGlyphIndex(font: Font, codepoint: int) int;

// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
export @symbol("GetGlyphInfo") fn GetGlyphInfo(font: Font, codepoint: int) GlyphInfo;

// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
export @symbol("GetGlyphAtlasRec") fn GetGlyphAtlasRec(font: Font, codepoint: int) Rectangle;

@symbol("LoadCodepoints") fn _LoadCodepoints(text: const *c::char, count: *int) *int;

// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
export fn LoadCodepoints(text: const str, count: *int) *int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _LoadCodepoints(text_cstring, count);
};

// Unload codepoints data from memory
export @symbol("UnloadCodepoints") fn UnloadCodepoints(codepoints: *int) void;

@symbol("GetCodepointCount") fn _GetCodepointCount(text: const *c::char) int;

// Get total number of codepoints in a UTF-8 encoded string
export fn GetCodepointCount(text: const str) int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _GetCodepointCount(text_cstring);
};

@symbol("GetCodepoint") fn _GetCodepoint(text: const *c::char, bytesProcessed: *int) int;

// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
export fn GetCodepoint(text: const str, bytesProcessed: *int) int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _GetCodepoint(text_cstring, bytesProcessed);
};

@symbol("CodepointToUTF8") fn _CodepointToUTF8(codepoint: int, byteSize: *int) const *c::char;

// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
export fn CodepointToUTF8(codepoint: int, byteSize: *int) const str = {
	return c::tostr(_CodepointToUTF8(codepoint, byteSize))!;
};

@symbol("TextCopy") fn _TextCopy(dst: *c::char, src: const *c::char) int;

// Copy one string to another, returns bytes copied
export fn TextCopy(dst: str, src: const str) int = {
	let dst_cstring: *c::char = c::fromstr(dst);
	defer free(dst_cstring);
	let src_cstring: *c::char = c::fromstr(src);
	defer free(src_cstring);
	return _TextCopy(dst_cstring, src_cstring);
};

@symbol("TextIsEqual") fn _TextIsEqual(text1: const *c::char, text2: const *c::char) bool;

// Check if two text string are equal
export fn TextIsEqual(text1: const str, text2: const str) bool = {
	let text1_cstring: *c::char = c::fromstr(text1);
	defer free(text1_cstring);
	let text2_cstring: *c::char = c::fromstr(text2);
	defer free(text2_cstring);
	return _TextIsEqual(text1_cstring, text2_cstring);
};

@symbol("TextLength") fn _TextLength(text: const *c::char) uint;

// Get text length, checks for '\0' ending
export fn TextLength(text: const str) uint = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _TextLength(text_cstring);
};

// Text formatting with variables (sprintf() style)
export @symbol("TextFormat") fn TextFormat(text: const *c::char, ...) const *c::char;

@symbol("TextSubtext") fn _TextSubtext(text: const *c::char, position: int, length: int) const *c::char;

// Get a piece of a text string
export fn TextSubtext(text: const str, position: int, length: int) const str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return c::tostr(_TextSubtext(text_cstring, position, length))!;
};

@symbol("TextReplace") fn _TextReplace(text: *c::char, replace: const *c::char, by: const *c::char) *c::char;

// Replace text string (WARNING: memory must be freed!)
export fn TextReplace(text: str, replace: const str, by: const str) str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	let replace_cstring: *c::char = c::fromstr(replace);
	defer free(replace_cstring);
	let by_cstring: *c::char = c::fromstr(by);
	defer free(by_cstring);
	return c::tostr(_TextReplace(text_cstring, replace_cstring, by_cstring))!;
};

@symbol("TextInsert") fn _TextInsert(text: const *c::char, _insert: const *c::char, position: int) *c::char;

// Insert text in a position (WARNING: memory must be freed!)
export fn TextInsert(text: const str, _insert: const str, position: int) str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	let _insert_cstring: *c::char = c::fromstr(_insert);
	defer free(_insert_cstring);
	return c::tostr(_TextInsert(text_cstring, _insert_cstring, position))!;
};

@symbol("TextJoin") fn _TextJoin(textList: const **c::char, count: int, delimiter: const *c::char) const *c::char;

// Join text strings with delimiter
export fn TextJoin(textList: const **c::char, count: int, delimiter: const str) const str = {
	let delimiter_cstring: *c::char = c::fromstr(delimiter);
	defer free(delimiter_cstring);
	return c::tostr(_TextJoin(textList, count, delimiter_cstring))!;
};

@symbol("TextSplit") fn _TextSplit(text: const *c::char, delimiter: c::char, count: *int) const **c::char;

// Split text into multiple strings
export fn TextSplit(text: const str, delimiter: c::char, count: *int) const **c::char = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _TextSplit(text_cstring, delimiter, count);
};

@symbol("TextAppend") fn _TextAppend(text: *c::char, _append: const *c::char, position: *int) void;

// Append text at specific position and move cursor!
export fn TextAppend(text: str, _append: const str, position: *int) void = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	let _append_cstring: *c::char = c::fromstr(_append);
	defer free(_append_cstring);
	return _TextAppend(text_cstring, _append_cstring, position);
};

@symbol("TextFindIndex") fn _TextFindIndex(text: const *c::char, find: const *c::char) int;

// Find first text occurrence within a string
export fn TextFindIndex(text: const str, find: const str) int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	let find_cstring: *c::char = c::fromstr(find);
	defer free(find_cstring);
	return _TextFindIndex(text_cstring, find_cstring);
};

@symbol("TextToUpper") fn _TextToUpper(text: const *c::char) const *c::char;

// Get upper case version of provided string
export fn TextToUpper(text: const str) const str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return c::tostr(_TextToUpper(text_cstring))!;
};

@symbol("TextToLower") fn _TextToLower(text: const *c::char) const *c::char;

// Get lower case version of provided string
export fn TextToLower(text: const str) const str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return c::tostr(_TextToLower(text_cstring))!;
};

@symbol("TextToPascal") fn _TextToPascal(text: const *c::char) const *c::char;

// Get Pascal case notation version of provided string
export fn TextToPascal(text: const str) const str = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return c::tostr(_TextToPascal(text_cstring))!;
};

@symbol("TextToInteger") fn _TextToInteger(text: const *c::char) int;

// Get integer value from text (negative values not supported)
export fn TextToInteger(text: const str) int = {
	let text_cstring: *c::char = c::fromstr(text);
	defer free(text_cstring);
	return _TextToInteger(text_cstring);
};

// Draw a line in 3D world space
export @symbol("DrawLine3D") fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;

// Draw a point in 3D space, actually a small line
export @symbol("DrawPoint3D") fn DrawPoint3D(position: Vector3, color: Color) void;

// Draw a circle in 3D world space
export @symbol("DrawCircle3D") fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;

// Draw a color-filled triangle (vertex in counter-clockwise order!)
export @symbol("DrawTriangle3D") fn DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) void;

// Draw a triangle strip defined by points
export @symbol("DrawTriangleStrip3D") fn DrawTriangleStrip3D(points: *Vector3, pointCount: int, color: Color) void;

// Draw cube
export @symbol("DrawCube") fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;

// Draw cube (Vector version)
export @symbol("DrawCubeV") fn DrawCubeV(position: Vector3, _size: Vector3, color: Color) void;

// Draw cube wires
export @symbol("DrawCubeWires") fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;

// Draw cube wires (Vector version)
export @symbol("DrawCubeWiresV") fn DrawCubeWiresV(position: Vector3, _size: Vector3, color: Color) void;

// Draw cube textured
export @symbol("DrawCubeTexture") fn DrawCubeTexture(texture: Texture2D, position: Vector3, width: f32, height: f32, length: f32, color: Color) void;

// Draw cube with a region of a texture
export @symbol("DrawCubeTextureRec") fn DrawCubeTextureRec(texture: Texture2D, source: Rectangle, position: Vector3, width: f32, height: f32, length: f32, color: Color) void;

// Draw sphere
export @symbol("DrawSphere") fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;

// Draw sphere with extended parameters
export @symbol("DrawSphereEx") fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) void;

// Draw sphere wires
export @symbol("DrawSphereWires") fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) void;

// Draw a cylinder/cone
export @symbol("DrawCylinder") fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) void;

// Draw a cylinder with base at startPos and top at endPos
export @symbol("DrawCylinderEx") fn DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) void;

// Draw a cylinder/cone wires
export @symbol("DrawCylinderWires") fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) void;

// Draw a cylinder wires with base at startPos and top at endPos
export @symbol("DrawCylinderWiresEx") fn DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) void;

// Draw a plane XZ
export @symbol("DrawPlane") fn DrawPlane(centerPos: Vector3, _size: Vector2, color: Color) void;

// Draw a ray line
export @symbol("DrawRay") fn DrawRay(ray: Ray, color: Color) void;

// Draw a grid (centered at (0, 0, 0))
export @symbol("DrawGrid") fn DrawGrid(slices: int, spacing: f32) void;

@symbol("LoadModel") fn _LoadModel(fileName: const *c::char) Model;

// Load model from files (meshes and materials)
export fn LoadModel(fileName: const str) Model = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadModel(fileName_cstring);
};

// Load model from generated mesh (default material)
export @symbol("LoadModelFromMesh") fn LoadModelFromMesh(mesh: Mesh) Model;

// Unload model (including meshes) from memory (RAM and/or VRAM)
export @symbol("UnloadModel") fn UnloadModel(model: Model) void;

// Unload model (but not meshes) from memory (RAM and/or VRAM)
export @symbol("UnloadModelKeepMeshes") fn UnloadModelKeepMeshes(model: Model) void;

// Compute model bounding box limits (considers all meshes)
export @symbol("GetModelBoundingBox") fn GetModelBoundingBox(model: Model) BoundingBox;

// Draw a model (with texture if set)
export @symbol("DrawModel") fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;

// Draw a model with extended parameters
export @symbol("DrawModelEx") fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;

// Draw a model wires (with texture if set)
export @symbol("DrawModelWires") fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;

// Draw a model wires (with texture if set) with extended parameters
export @symbol("DrawModelWiresEx") fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;

// Draw bounding box (wires)
export @symbol("DrawBoundingBox") fn DrawBoundingBox(box: BoundingBox, color: Color) void;

// Draw a billboard texture
export @symbol("DrawBillboard") fn DrawBillboard(camera: Camera, texture: Texture2D, position: Vector3, _size: f32, tint: Color) void;

// Draw a billboard texture defined by source
export @symbol("DrawBillboardRec") fn DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, _size: Vector2, tint: Color) void;

// Draw a billboard texture defined by source and rotation
export @symbol("DrawBillboardPro") fn DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, _size: Vector2, origin: Vector2, rotation: f32, tint: Color) void;

// Upload mesh vertex data in GPU and provide VAO/VBO ids
export @symbol("UploadMesh") fn UploadMesh(mesh: *Mesh, dynamic: bool) void;

// Update mesh vertex data in GPU for a specific buffer index
export @symbol("UpdateMeshBuffer") fn UpdateMeshBuffer(mesh: Mesh, index: int, data: *c::char, dataSize: int, _offset: int) void;

// Unload mesh data from CPU and GPU
export @symbol("UnloadMesh") fn UnloadMesh(mesh: Mesh) void;

// Draw a 3d mesh with material and transform
export @symbol("DrawMesh") fn DrawMesh(mesh: Mesh, material: Material, transform: Matrix) void;

// Draw multiple mesh instances with material and different transforms
export @symbol("DrawMeshInstanced") fn DrawMeshInstanced(mesh: Mesh, material: Material, transforms: *Matrix, instances: int) void;

@symbol("ExportMesh") fn _ExportMesh(mesh: Mesh, fileName: const *c::char) bool;

// Export mesh data to file, returns true on success
export fn ExportMesh(mesh: Mesh, fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _ExportMesh(mesh, fileName_cstring);
};

// Compute mesh bounding box limits
export @symbol("GetMeshBoundingBox") fn GetMeshBoundingBox(mesh: Mesh) BoundingBox;

// Compute mesh tangents
export @symbol("GenMeshTangents") fn GenMeshTangents(mesh: *Mesh) void;

// Compute mesh binormals
export @symbol("GenMeshBinormals") fn GenMeshBinormals(mesh: *Mesh) void;

// Generate polygonal mesh
export @symbol("GenMeshPoly") fn GenMeshPoly(sides: int, radius: f32) Mesh;

// Generate plane mesh (with subdivisions)
export @symbol("GenMeshPlane") fn GenMeshPlane(width: f32, length: f32, resX: int, resZ: int) Mesh;

// Generate cuboid mesh
export @symbol("GenMeshCube") fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;

// Generate sphere mesh (standard sphere)
export @symbol("GenMeshSphere") fn GenMeshSphere(radius: f32, rings: int, slices: int) Mesh;

// Generate half-sphere mesh (no bottom cap)
export @symbol("GenMeshHemiSphere") fn GenMeshHemiSphere(radius: f32, rings: int, slices: int) Mesh;

// Generate cylinder mesh
export @symbol("GenMeshCylinder") fn GenMeshCylinder(radius: f32, height: f32, slices: int) Mesh;

// Generate cone/pyramid mesh
export @symbol("GenMeshCone") fn GenMeshCone(radius: f32, height: f32, slices: int) Mesh;

// Generate torus mesh
export @symbol("GenMeshTorus") fn GenMeshTorus(radius: f32, _size: f32, radSeg: int, sides: int) Mesh;

// Generate trefoil knot mesh
export @symbol("GenMeshKnot") fn GenMeshKnot(radius: f32, _size: f32, radSeg: int, sides: int) Mesh;

// Generate heightmap mesh from image data
export @symbol("GenMeshHeightmap") fn GenMeshHeightmap(heightmap: Image, _size: Vector3) Mesh;

// Generate cubes-based map mesh from image data
export @symbol("GenMeshCubicmap") fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;

@symbol("LoadMaterials") fn _LoadMaterials(fileName: const *c::char, materialCount: *int) *Material;

// Load materials from model file
export fn LoadMaterials(fileName: const str, materialCount: *int) *Material = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadMaterials(fileName_cstring, materialCount);
};

// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
export @symbol("LoadMaterialDefault") fn LoadMaterialDefault() Material;

// Unload material from GPU memory (VRAM)
export @symbol("UnloadMaterial") fn UnloadMaterial(material: Material) void;

// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
export @symbol("SetMaterialTexture") fn SetMaterialTexture(material: *Material, mapType: int, texture: Texture2D) void;

// Set material for a mesh
export @symbol("SetModelMeshMaterial") fn SetModelMeshMaterial(model: *Model, meshId: int, materialId: int) void;

@symbol("LoadModelAnimations") fn _LoadModelAnimations(fileName: const *c::char, animCount: *uint) *ModelAnimation;

// Load model animations from file
export fn LoadModelAnimations(fileName: const str, animCount: *uint) *ModelAnimation = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadModelAnimations(fileName_cstring, animCount);
};

// Update model animation pose
export @symbol("UpdateModelAnimation") fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: int) void;

// Unload animation data
export @symbol("UnloadModelAnimation") fn UnloadModelAnimation(anim: ModelAnimation) void;

// Unload animation array data
export @symbol("UnloadModelAnimations") fn UnloadModelAnimations(animations: *ModelAnimation, count: uint) void;

// Check model animation skeleton match
export @symbol("IsModelAnimationValid") fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;

// Check collision between two spheres
export @symbol("CheckCollisionSpheres") fn CheckCollisionSpheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) bool;

// Check collision between two bounding boxes
export @symbol("CheckCollisionBoxes") fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;

// Check collision between box and sphere
export @symbol("CheckCollisionBoxSphere") fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;

// Get collision info between ray and sphere
export @symbol("GetRayCollisionSphere") fn GetRayCollisionSphere(ray: Ray, center: Vector3, radius: f32) RayCollision;

// Get collision info between ray and box
export @symbol("GetRayCollisionBox") fn GetRayCollisionBox(ray: Ray, box: BoundingBox) RayCollision;

// Get collision info between ray and model
export @symbol("GetRayCollisionModel") fn GetRayCollisionModel(ray: Ray, model: Model) RayCollision;

// Get collision info between ray and mesh
export @symbol("GetRayCollisionMesh") fn GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix) RayCollision;

// Get collision info between ray and triangle
export @symbol("GetRayCollisionTriangle") fn GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayCollision;

// Get collision info between ray and quad
export @symbol("GetRayCollisionQuad") fn GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) RayCollision;

// Initialize audio device and context
export @symbol("InitAudioDevice") fn InitAudioDevice() void;

// Close the audio device and context
export @symbol("CloseAudioDevice") fn CloseAudioDevice() void;

// Check if audio device has been initialized successfully
export @symbol("IsAudioDeviceReady") fn IsAudioDeviceReady() bool;

// Set master volume (listener)
export @symbol("SetMasterVolume") fn SetMasterVolume(volume: f32) void;

@symbol("LoadWave") fn _LoadWave(fileName: const *c::char) Wave;

// Load wave data from file
export fn LoadWave(fileName: const str) Wave = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadWave(fileName_cstring);
};

@symbol("LoadWaveFromMemory") fn _LoadWaveFromMemory(fileType: const *c::char, fileData: const *c::char, dataSize: int) Wave;

// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
export fn LoadWaveFromMemory(fileType: const str, fileData: const *c::char, dataSize: int) Wave = {
	let fileType_cstring: *c::char = c::fromstr(fileType);
	defer free(fileType_cstring);
	return _LoadWaveFromMemory(fileType_cstring, fileData, dataSize);
};

@symbol("LoadSound") fn _LoadSound(fileName: const *c::char) Sound;

// Load sound from file
export fn LoadSound(fileName: const str) Sound = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadSound(fileName_cstring);
};

// Load sound from wave data
export @symbol("LoadSoundFromWave") fn LoadSoundFromWave(wave: Wave) Sound;

// Update sound buffer with new data
export @symbol("UpdateSound") fn UpdateSound(sound: Sound, data: const *c::char, sampleCount: int) void;

// Unload wave data
export @symbol("UnloadWave") fn UnloadWave(wave: Wave) void;

// Unload sound
export @symbol("UnloadSound") fn UnloadSound(sound: Sound) void;

@symbol("ExportWave") fn _ExportWave(wave: Wave, fileName: const *c::char) bool;

// Export wave data to file, returns true on success
export fn ExportWave(wave: Wave, fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _ExportWave(wave, fileName_cstring);
};

@symbol("ExportWaveAsCode") fn _ExportWaveAsCode(wave: Wave, fileName: const *c::char) bool;

// Export wave sample data to code (.h), returns true on success
export fn ExportWaveAsCode(wave: Wave, fileName: const str) bool = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _ExportWaveAsCode(wave, fileName_cstring);
};

// Play a sound
export @symbol("PlaySound") fn PlaySound(sound: Sound) void;

// Stop playing a sound
export @symbol("StopSound") fn StopSound(sound: Sound) void;

// Pause a sound
export @symbol("PauseSound") fn PauseSound(sound: Sound) void;

// Resume a paused sound
export @symbol("ResumeSound") fn ResumeSound(sound: Sound) void;

// Play a sound (using multichannel buffer pool)
export @symbol("PlaySoundMulti") fn PlaySoundMulti(sound: Sound) void;

// Stop any sound playing (using multichannel buffer pool)
export @symbol("StopSoundMulti") fn StopSoundMulti() void;

// Get number of sounds playing in the multichannel
export @symbol("GetSoundsPlaying") fn GetSoundsPlaying() int;

// Check if a sound is currently playing
export @symbol("IsSoundPlaying") fn IsSoundPlaying(sound: Sound) bool;

// Set volume for a sound (1.0 is max level)
export @symbol("SetSoundVolume") fn SetSoundVolume(sound: Sound, volume: f32) void;

// Set pitch for a sound (1.0 is base level)
export @symbol("SetSoundPitch") fn SetSoundPitch(sound: Sound, pitch: f32) void;

// Convert wave data to desired format
export @symbol("WaveFormat") fn WaveFormat(wave: *Wave, sampleRate: int, sampleSize: int, channels: int) void;

// Copy a wave to a new wave
export @symbol("WaveCopy") fn WaveCopy(wave: Wave) Wave;

// Crop a wave to defined samples range
export @symbol("WaveCrop") fn WaveCrop(wave: *Wave, initSample: int, finalSample: int) void;

// Load samples data from wave as a floats array
export @symbol("LoadWaveSamples") fn LoadWaveSamples(wave: Wave) *f32;

// Unload samples data loaded with LoadWaveSamples()
export @symbol("UnloadWaveSamples") fn UnloadWaveSamples(samples: *f32) void;

@symbol("LoadMusicStream") fn _LoadMusicStream(fileName: const *c::char) Music;

// Load music stream from file
export fn LoadMusicStream(fileName: const str) Music = {
	let fileName_cstring: *c::char = c::fromstr(fileName);
	defer free(fileName_cstring);
	return _LoadMusicStream(fileName_cstring);
};

@symbol("LoadMusicStreamFromMemory") fn _LoadMusicStreamFromMemory(fileType: const *c::char, data: *c::char, dataSize: int) Music;

// Load music stream from data
export fn LoadMusicStreamFromMemory(fileType: const str, data: *c::char, dataSize: int) Music = {
	let fileType_cstring: *c::char = c::fromstr(fileType);
	defer free(fileType_cstring);
	return _LoadMusicStreamFromMemory(fileType_cstring, data, dataSize);
};

// Unload music stream
export @symbol("UnloadMusicStream") fn UnloadMusicStream(music: Music) void;

// Start music playing
export @symbol("PlayMusicStream") fn PlayMusicStream(music: Music) void;

// Check if music is playing
export @symbol("IsMusicStreamPlaying") fn IsMusicStreamPlaying(music: Music) bool;

// Updates buffers for music streaming
export @symbol("UpdateMusicStream") fn UpdateMusicStream(music: Music) void;

// Stop music playing
export @symbol("StopMusicStream") fn StopMusicStream(music: Music) void;

// Pause music playing
export @symbol("PauseMusicStream") fn PauseMusicStream(music: Music) void;

// Resume playing paused music
export @symbol("ResumeMusicStream") fn ResumeMusicStream(music: Music) void;

// Seek music to a position (in seconds)
export @symbol("SeekMusicStream") fn SeekMusicStream(music: Music, position: f32) void;

// Set volume for music (1.0 is max level)
export @symbol("SetMusicVolume") fn SetMusicVolume(music: Music, volume: f32) void;

// Set pitch for a music (1.0 is base level)
export @symbol("SetMusicPitch") fn SetMusicPitch(music: Music, pitch: f32) void;

// Get music time length (in seconds)
export @symbol("GetMusicTimeLength") fn GetMusicTimeLength(music: Music) f32;

// Get current music time played (in seconds)
export @symbol("GetMusicTimePlayed") fn GetMusicTimePlayed(music: Music) f32;

// Load audio stream (to stream raw audio pcm data)
export @symbol("LoadAudioStream") fn LoadAudioStream(sampleRate: uint, sampleSize: uint, channels: uint) AudioStream;

// Unload audio stream and free memory
export @symbol("UnloadAudioStream") fn UnloadAudioStream(stream: AudioStream) void;

// Update audio stream buffers with data
export @symbol("UpdateAudioStream") fn UpdateAudioStream(stream: AudioStream, data: const *c::char, frameCount: int) void;

// Check if any audio stream buffers requires refill
export @symbol("IsAudioStreamProcessed") fn IsAudioStreamProcessed(stream: AudioStream) bool;

// Play audio stream
export @symbol("PlayAudioStream") fn PlayAudioStream(stream: AudioStream) void;

// Pause audio stream
export @symbol("PauseAudioStream") fn PauseAudioStream(stream: AudioStream) void;

// Resume audio stream
export @symbol("ResumeAudioStream") fn ResumeAudioStream(stream: AudioStream) void;

// Check if audio stream is playing
export @symbol("IsAudioStreamPlaying") fn IsAudioStreamPlaying(stream: AudioStream) bool;

// Stop audio stream
export @symbol("StopAudioStream") fn StopAudioStream(stream: AudioStream) void;

// Set volume for audio stream (1.0 is max level)
export @symbol("SetAudioStreamVolume") fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;

// Set pitch for audio stream (1.0 is base level)
export @symbol("SetAudioStreamPitch") fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;

// Default size for new audio streams
export @symbol("SetAudioStreamBufferSizeDefault") fn SetAudioStreamBufferSizeDefault(_size: int) void;

