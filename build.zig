const std = @import("std");

const c_flags = &[_][]const u8{ "-std=c++11", "-g0", "-fvisibility=hidden" };

pub fn add(step: *std.build.LibExeObjStep, comptime src_path: []const u8) void {
    step.linkLibCpp();
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", null);
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_KEYIO", null);
    step.addIncludePath(src_path ++ "imgui");
    step.addCSourceFiles(&.{
        src_path ++ "imgui_c.cpp",
        src_path ++ "imgui/imgui.cpp",
        src_path ++ "imgui/imgui_draw.cpp",
        src_path ++ "imgui/imgui_demo.cpp",
        src_path ++ "imgui/imgui_widgets.cpp",
        src_path ++ "imgui/imgui_tables.cpp",
    }, c_flags);
    step.addPackagePath("imgui", src_path ++ "imgui.zig");
}

pub fn addImpl(step: *std.build.LibExeObjStep, comptime src_path: []const u8, comptime impl_name: []const u8) void {
    step.linkLibCpp();
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", null);
    step.defineCMacro("IMGUI_DISABLE_OBSOLETE_KEYIO", null);
    step.defineCMacro("IMGUI_IMPL_API", "extern \"C\" ");
    step.addIncludePath(src_path ++ "imgui");
    step.addCSourceFile(src_path ++ "imgui/backends/imgui_impl_" ++ impl_name ++ ".cpp", c_flags);
}

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const static_lib = b.addStaticLibrary("imgui", null);
    static_lib.setTarget(target);
    static_lib.setBuildMode(mode);
    add(static_lib, "");
    static_lib.install();

    const tests = b.addTest("imgui.zig");
    tests.setTarget(target);
    tests.setBuildMode(mode);
    tests.linkLibrary(static_lib);
    b.step("test", "Run library tests").dependOn(&tests.step);
}
