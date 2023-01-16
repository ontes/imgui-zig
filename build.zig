const std = @import("std");

const c_flags = &[_][]const u8{ "-std=c++11", "-g0", "-fvisibility=hidden" };

pub fn link(step: *std.build.LibExeObjStep, comptime path: []const u8) void {
    step.linkLibCpp();
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", null);
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_KEYIO", null);
    step.addIncludePath(path ++ "imgui");
    step.addCSourceFiles(&.{
        path ++ "imgui_c.cpp",
        path ++ "imgui/imgui.cpp",
        path ++ "imgui/imgui_draw.cpp",
        path ++ "imgui/imgui_demo.cpp",
        path ++ "imgui/imgui_widgets.cpp",
        path ++ "imgui/imgui_tables.cpp",
    }, c_flags);
}

pub fn linkImpl(step: *std.build.LibExeObjStep, comptime impl_name: []const u8, comptime path: []const u8) void {
    step.linkLibCpp();
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", null);
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_KEYIO", null);
    step.defineCMacro("IMGUI_IMPL_API", "extern \"C\"");
    step.addIncludePath(path ++ "imgui");
    step.addCSourceFile(path ++ "imgui/backends/imgui_impl_" ++ impl_name ++ ".cpp", c_flags);
}

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const build_mode = b.standardReleaseOptions();

    const static_lib = b.addStaticLibrary("imgui", null);
    static_lib.setTarget(target);
    static_lib.setBuildMode(build_mode);
    link(static_lib, "");
    static_lib.install();

    const tests = b.addTest("imgui.zig");
    tests.setTarget(target);
    tests.setBuildMode(build_mode);
    tests.linkLibrary(static_lib);
    b.step("test", "Run library tests").dependOn(&tests.step);
}
