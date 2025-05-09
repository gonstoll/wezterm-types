---@meta

---@class MuxWindow
---@field active_pane fun(self: MuxWindow): Pane A convenience accessor for returning the active pane in the active tab of the window.
---@field active_tab fun(self: MuxWindow): MuxTabObj A convenience accessor for returning the active tab within the window.
---@field get_title fun(self: MuxWindow): string Returns the window title as set by OSC 0, OSC 2 in a contained pane, or through `window:set_title()`.
---@field get_workspace fun(self: MuxWindow) string Returns the name of the workspace to which the window belongs.
---@field gui_window fun(self: MuxWindow): Window Attempts to resolve this mux window to its corresponding Gui Window. This may not succeed for a couple of reasons: If called by the multiplexer daemon, there is no gui, so this will never succeed, If the mux window is part of a workspace that is not the active workspace.
---@field set_title fun(self: MuxWindow): nil Sets the window title to the provided string. Note that applications may subsequently change the title via escape sequences.
---@field set_workspace fun(self: MuxWindow): nil Changes the name of the workspace to which the window belongs.
---@field spawn_tab fun(self: MuxWindow, opts: { cwd?: string, args?: string, set_environment_variables?: table<string, string>, domain?: string | { DomainName: string } }): { tab: MuxTabObj, pane: Pane, window: MuxWindow } Spawns a program into a new tab within this window, returning the MuxTab, Pane and MuxWindow objects associated with it. When no arguments are passed, the default program is spawned.
---@field tabs fun(self: MuxWindow): MuxTabObj[] Returns an array table holding each of the MuxTab objects contained within this window.
---@field tabs_with_info fun(self: MuxWindow): { index: number, is_active: boolean, tab: MuxTabObj }[] Returns an array table holding an extended info entry for each of the tabs contained within this window.
---@field window_id fun(self: MuxWindow): number Returns the window multiplexer id.
