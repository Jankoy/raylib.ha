# raylib.ha

My version of raylib binding forking the original
[hare-raylib](https://sr.ht/~evantj/hare-raylib/) considering it isn't currently
in a functional state.

## Getting started

Copy the raylib folder into your project directory and paste the following
example into a file named "main.ha"

```hare
use raylib::*;

export fn main() void = {
	InitWindow(800, 600, "Test Window");
	for (!WindowShouldClose()) {
		BeginDrawing();
		ClearBackground(GRAY);
		DrawText("Hello, world!", 280, 280, 40, DARKPURPLE);
		EndDrawing();
	};
	CloseWindow();
};
```

Now as long as raylib is installed system-wide you can just use the following
command to run the program.

```bash
hare run -lraylib -lm main.ha
```

