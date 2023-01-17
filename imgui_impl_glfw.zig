const glfw = @import("glfw");

extern fn ImGui_ImplGlfw_InitForOpenGL(window: *glfw.Window, install_callbacks: bool) bool;
pub const initForOpenGL = ImGui_ImplGlfw_InitForOpenGL;
extern fn ImGui_ImplGlfw_InitForVulkan(window: *glfw.Window, install_callbacks: bool) bool;
pub const initForVulkan = ImGui_ImplGlfw_InitForVulkan;
extern fn ImGui_ImplGlfw_InitForOther(window: *glfw.Window, install_callbacks: bool) bool;
pub const initForOther = ImGui_ImplGlfw_InitForOther;
extern fn ImGui_ImplGlfw_Shutdown() void;
pub const shutdown = ImGui_ImplGlfw_Shutdown;
extern fn ImGui_ImplGlfw_NewFrame() void;
pub const newFrame = ImGui_ImplGlfw_NewFrame;

extern fn ImGui_ImplGlfw_InstallCallbacks(window: *glfw.Window) void;
pub const installCallbacks = ImGui_ImplGlfw_InstallCallbacks;
extern fn ImGui_ImplGlfw_RestoreCallbacks(window: *glfw.Window) void;
pub const restoreCallbacks = ImGui_ImplGlfw_RestoreCallbacks;
