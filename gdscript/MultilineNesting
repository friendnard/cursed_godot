## Multiline Nesting
# Sometimes you want to do multiple operations
# but don't want to make new vars each time.
# We can get a clean workspace by stacking
# all of the operations together.

var tf0 := transform.get_rotated(Vector3.UP, TAU / 4.).get_rotated(Vector3.Right, TAU / 8.)

# Look at that line go. Linus Torvalds would
# definitely have a bit of a fit.
# Not that we're solving it with anything
# better.

var tf1 := transform \
        .get_rotated(Vector3.UP, TAU / 4.) \
        .get_rotated(Vector3.Right, TAU / 8.)

# We can get rid of the backslashes (\)
# by using parentheses.

var tf2 := (
        transform
        .get_rotated(Vector3.UP, TAU / 4.)
        .get_rotated(Vector3.Right, TAU / 8.)
)

# Nested keyword operations makes us
# Look like a Scheme program at a glance

var noise := (((((($World as WorldEnvironment)
        .environment)
        .sky)
        .sky_material as ProceduralSkyMaterial)
        .sky_cover as NoiseTexture2D)
        .noise)
