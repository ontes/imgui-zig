const imgui = @import("imgui.zig");
const webgpu = @import("webgpu");

extern fn ImGui_ImplWGPU_Init(device: *webgpu.Device, num_frames_in_flight: c_int, rt_format: webgpu.TextureFormat, depth_format: webgpu.TextureFormat) bool;
pub const init = ImGui_ImplWGPU_Init;
extern fn ImGui_ImplWGPU_Shutdown() void;
pub const shutdown = ImGui_ImplWGPU_Shutdown;
extern fn ImGui_ImplWGPU_NewFrame() void;
pub const newFrame = ImGui_ImplWGPU_NewFrame;
extern fn ImGui_ImplWGPU_RenderDrawData(draw_data: *imgui.DrawData, pass_encoder: *webgpu.RenderPassEncoder) void;
pub const renderDrawData = ImGui_ImplWGPU_RenderDrawData;

extern fn ImGui_ImplWGPU_InvalidateDeviceObjects() void;
pub const invalidateDeviceObjects = ImGui_ImplWGPU_InvalidateDeviceObjects;
extern fn ImGui_ImplWGPU_CreateDeviceObjects() bool;
pub const createDeviceObjects = ImGui_ImplWGPU_CreateDeviceObjects;
