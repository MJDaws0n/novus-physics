# novus-physics

AABB collision detection library for Novus.

## Features

- Rectangle collision detection (AABB)
- Utility functions (clamp, distance)

## Usage

```novus
import physics physics;

let collides: i32 = physics.aabb_check(x1, y1, w1, h1, x2, y2, w2, h2);
let clamped: i32 = physics.clamp(value, 0, 100);
```

## Functions

- `aabb_check(ax, ay, aw, ah, pe, pf, pg, ph) -> i32` — Returns 1 if rectangles collide, 0 otherwise
- `clamp(val, min_val, max_val) -> i32` — Clamps value between min and max
- `distance_squared(dx, dy) -> i32` — Returns squared distance
