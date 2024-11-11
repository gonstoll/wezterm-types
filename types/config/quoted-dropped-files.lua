---@meta

---@alias DroppedFileQuoting
---| "None" No quoting is performed, the file name is passed through as-is.
---| "SpacesOnly" Backslash-escape only spaces, leaving all other characters as-is. This is the default for non-Windows platforms.
---| "Posix" Use POSIX style shell word escaping.
---| "Windows" Use Windows style shell word escaping: double-quote filename with space characters in it, and leaving others as-is. This is the default on Windows.
---| "WindowsAlwaysQuoted" Like "Windows", while always double-quote the filename.
