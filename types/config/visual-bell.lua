---@meta

---@alias EasingFunction
---| "Linear" The fade happens at a constant rate
---| "Ease" The fade starts slowly, accelerates sharply, and then slows gradually towards the end. This is the default.
---| "EaseIn" The fade starts slowly, and then progressively speeds up until the end, at which point it stops abruptly.
---| "EaseInOut" The fade starts slowly, speeds up, and then slows down towards the end.
---| "EaseOut" The fade starts abruptly, and then progressively slows down towards the end.
---| "{CubicBezier= number[] }" an arbitrary cubic bezier with the specified parameters.
---| "Constant" Evaluates as 0 regardless of time. Useful to implement a step transition at the end of the duration.

---@class VisualBell
---@field fade_in_function EasingFunction
---@field fade_in_duration_ms EasingFunction
---@field fade_out_function EasingFunction
---@field fade_out_duration_ms EasingFunction
