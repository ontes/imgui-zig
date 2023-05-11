pub const version = "1.89.2";

pub fn checkVersion() bool {
    return debugCheckVersionAndDataLayout(version, @sizeOf(IO), @sizeOf(Style), @sizeOf(Vec2), @sizeOf(Vec4), @sizeOf(DrawVert), @sizeOf(DrawIdx));
}

pub const flt_max = @bitCast(f32, @as(u32, 0x7F7FFFFF));
pub const flt_min = @bitCast(f32, @as(u32, 0x00800000));

pub const DrawListSharedData = opaque {};
pub const FontBuilderIO = opaque {};
pub const Context = opaque {};

pub const TextureID = ?*anyopaque;
pub const DrawIdx = u16;

pub const ID = c_uint;
pub const Wchar = u16;

pub const InputTextCallback = fn (data: *InputTextCallbackData) callconv(.C) c_int;
pub const SizeCallback = fn (data: *SizeCallbackData) callconv(.C) void;
pub const MemAllocFunc = fn (sz: usize, user_data: ?*anyopaque) callconv(.C) ?*anyopaque;
pub const MemFreeFunc = fn (ptr: ?*anyopaque, user_data: ?*anyopaque) callconv(.C) void;

pub const Vec2 = extern struct {
    x: f32 = 0,
    y: f32 = 0,
};

pub const Vec4 = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};

extern fn ImGui_CreateContext(shared_font_atlas: ?*FontAtlas) *Context;
pub const createContext = ImGui_CreateContext;
extern fn ImGui_DestroyContext(ctx: ?*Context) void;
pub const destroyContext = ImGui_DestroyContext;
extern fn ImGui_GetCurrentContext() ?*Context;
pub const getCurrentContext = ImGui_GetCurrentContext;
extern fn ImGui_SetCurrentContext(ctx: ?*Context) void;
pub const setCurrentContext = ImGui_SetCurrentContext;

extern fn ImGui_GetIO() *IO;
pub const getIO = ImGui_GetIO;
extern fn ImGui_GetStyle() *Style;
pub const getStyle = ImGui_GetStyle;
extern fn ImGui_NewFrame() void;
pub const newFrame = ImGui_NewFrame;
extern fn ImGui_EndFrame() void;
pub const endFrame = ImGui_EndFrame;
extern fn ImGui_Render() void;
pub const render = ImGui_Render;
extern fn ImGui_GetDrawData() ?*DrawData;
pub const getDrawData = ImGui_GetDrawData;

extern fn ImGui_ShowDemoWindow(p_open: ?*bool) void;
pub const showDemoWindow = ImGui_ShowDemoWindow;
extern fn ImGui_ShowMetricsWindow(p_open: ?*bool) void;
pub const showMetricsWindow = ImGui_ShowMetricsWindow;
extern fn ImGui_ShowDebugLogWindow(p_open: ?*bool) void;
pub const showDebugLogWindow = ImGui_ShowDebugLogWindow;
extern fn ImGui_ShowStackToolWindow(p_open: ?*bool) void;
pub const showStackToolWindow = ImGui_ShowStackToolWindow;
extern fn ImGui_ShowAboutWindow(p_open: ?*bool) void;
pub const showAboutWindow = ImGui_ShowAboutWindow;
extern fn ImGui_ShowStyleEditor(ref: ?*Style) void;
pub const showStyleEditor = ImGui_ShowStyleEditor;
extern fn ImGui_ShowStyleSelector(label: [*:0]const u8) bool;
pub const showStyleSelector = ImGui_ShowStyleSelector;
extern fn ImGui_ShowFontSelector(label: [*:0]const u8) void;
pub const showFontSelector = ImGui_ShowFontSelector;
extern fn ImGui_ShowUserGuide() void;
pub const showUserGuide = ImGui_ShowUserGuide;
extern fn ImGui_GetVersion() [*:0]const u8;
pub const getVersion = ImGui_GetVersion;

extern fn ImGui_StyleColorsDark(dst: ?*Style) void;
pub const styleColorsDark = ImGui_StyleColorsDark;
extern fn ImGui_StyleColorsLight(dst: ?*Style) void;
pub const styleColorsLight = ImGui_StyleColorsLight;
extern fn ImGui_StyleColorsClassic(dst: ?*Style) void;
pub const styleColorsClassic = ImGui_StyleColorsClassic;

extern fn ImGui_Begin(name: [*:0]const u8, p_open: ?*bool, flags: WindowFlags) bool;
pub const begin = ImGui_Begin;
extern fn ImGui_End() void;
pub const end = ImGui_End;

extern fn ImGui_BeginChild(str_id: [*:0]const u8, size: *const Vec2, border: bool, flags: WindowFlags) bool;
pub const beginChild = ImGui_BeginChild;
extern fn ImGui_EndChild() void;
pub const endChild = ImGui_EndChild;

extern fn ImGui_IsWindowAppearing() bool;
pub const isWindowAppearing = ImGui_IsWindowAppearing;
extern fn ImGui_IsWindowCollapsed() bool;
pub const isWindowCollapsed = ImGui_IsWindowCollapsed;
extern fn ImGui_IsWindowFocused(flags: FocusedFlags) bool;
pub const isWindowFocused = ImGui_IsWindowFocused;
extern fn ImGui_IsWindowHovered(flags: HoveredFlags) bool;
pub const isWindowHovered = ImGui_IsWindowHovered;
extern fn ImGui_GetWindowDrawList() *DrawList;
pub const getWindowDrawList = ImGui_GetWindowDrawList;
extern fn ImGui_GetWindowPos() Vec2;
pub const getWindowPos = ImGui_GetWindowPos;
extern fn ImGui_GetWindowSize() Vec2;
pub const getWindowSize = ImGui_GetWindowSize;
extern fn ImGui_GetWindowWidth() f32;
pub const getWindowWidth = ImGui_GetWindowWidth;
extern fn ImGui_GetWindowHeight() f32;
pub const getWindowHeight = ImGui_GetWindowHeight;

extern fn ImGui_SetNextWindowPos(pos: Vec2, cond: Cond, pivot: Vec2) void;
pub const setNextWindowPos = ImGui_SetNextWindowPos;
extern fn ImGui_SetNextWindowSize(size: Vec2, cond: Cond) void;
pub const setNextWindowSize = ImGui_SetNextWindowSize;
extern fn ImGui_SetNextWindowSizeConstraints(size_min: Vec2, size_max: Vec2, custom_callback: ?*const SizeCallback, custom_callback_data: ?*anyopaque) void;
pub const setNextWindowSizeConstraints = ImGui_SetNextWindowSizeConstraints;
extern fn ImGui_SetNextWindowContentSize(size: Vec2) void;
pub const setNextWindowContentSize = ImGui_SetNextWindowContentSize;
extern fn ImGui_SetNextWindowCollapsed(collapsed: bool, cond: Cond) void;
pub const setNextWindowCollapsed = ImGui_SetNextWindowCollapsed;
extern fn ImGui_SetNextWindowFocus() void;
pub const setNextWindowFocus = ImGui_SetNextWindowFocus;
extern fn ImGui_SetNextWindowScroll(scroll: Vec2) void;
pub const setNextWindowScroll = ImGui_SetNextWindowScroll;
extern fn ImGui_SetNextWindowBgAlpha(alpha: f32) void;
pub const setNextWindowBgAlpha = ImGui_SetNextWindowBgAlpha;
extern fn ImGui_SetCurrentWindowPos(pos: Vec2, cond: Cond) void;
pub const setCurrentWindowPos = ImGui_SetCurrentWindowPos;
extern fn ImGui_SetCurrentWindowSize(size: Vec2, cond: Cond) void;
pub const setCurrentWindowSize = ImGui_SetCurrentWindowSize;
extern fn ImGui_SetCurrentWindowCollapsed(collapsed: bool, cond: Cond) void;
pub const setCurrentWindowCollapsed = ImGui_SetCurrentWindowCollapsed;
extern fn ImGui_SetCurrentWindowFocus() void;
pub const setCurrentWindowFocus = ImGui_SetCurrentWindowFocus;
extern fn ImGui_SetWindowPos(name: [*:0]const u8, pos: Vec2, cond: Cond) void;
pub const setWindowPos = ImGui_SetWindowPos;
extern fn ImGui_SetWindowSize(name: [*:0]const u8, size: Vec2, cond: Cond) void;
pub const setWindowSize = ImGui_SetWindowSize;
extern fn ImGui_SetWindowCollapsed(name: [*:0]const u8, collapsed: bool, cond: Cond) void;
pub const setWindowCollapsed = ImGui_SetWindowCollapsed;
extern fn ImGui_SetWindowFocus(name: [*:0]const u8) void;
pub const setWindowFocus = ImGui_SetWindowFocus;

extern fn ImGui_GetContentRegionAvail() Vec2;
pub const getContentRegionAvail = ImGui_GetContentRegionAvail;
extern fn ImGui_GetContentRegionMax() Vec2;
pub const getContentRegionMax = ImGui_GetContentRegionMax;
extern fn ImGui_GetWindowContentRegionMin() Vec2;
pub const getWindowContentRegionMin = ImGui_GetWindowContentRegionMin;
extern fn ImGui_GetWindowContentRegionMax() Vec2;
pub const getWindowContentRegionMax = ImGui_GetWindowContentRegionMax;

extern fn ImGui_GetScrollX() f32;
pub const getScrollX = ImGui_GetScrollX;
extern fn ImGui_GetScrollY() f32;
pub const getScrollY = ImGui_GetScrollY;
extern fn ImGui_SetScrollX(scroll_x: f32) void;
pub const setScrollX = ImGui_SetScrollX;
extern fn ImGui_SetScrollY(scroll_y: f32) void;
pub const setScrollY = ImGui_SetScrollY;
extern fn ImGui_GetScrollMaxX() f32;
pub const getScrollMaxX = ImGui_GetScrollMaxX;
extern fn ImGui_GetScrollMaxY() f32;
pub const getScrollMaxY = ImGui_GetScrollMaxY;
extern fn ImGui_SetScrollHereX(center_x_ratio: f32) void;
pub const setScrollHereX = ImGui_SetScrollHereX;
extern fn ImGui_SetScrollHereY(center_y_ratio: f32) void;
pub const setScrollHereY = ImGui_SetScrollHereY;
extern fn ImGui_SetScrollFromPosX(local_x: f32, center_x_ratio: f32) void;
pub const setScrollFromPosX = ImGui_SetScrollFromPosX;
extern fn ImGui_SetScrollFromPosY(local_y: f32, center_y_ratio: f32) void;
pub const setScrollFromPosY = ImGui_SetScrollFromPosY;

extern fn ImGui_PushFont(font: ?*Font) void;
pub const pushFont = ImGui_PushFont;
extern fn ImGui_PopFont() void;
pub const popFont = ImGui_PopFont;
extern fn ImGui_PushStyleColorU32(idx: Col, col: u32) void;
pub const pushStyleColorU32 = ImGui_PushStyleColorU32;
extern fn ImGui_PushStyleColorVec4(idx: Col, col: Vec4) void;
pub const pushStyleColorVec4 = ImGui_PushStyleColorVec4;
extern fn ImGui_PopStyleColor(count: c_int) void;
pub const popStyleColor = ImGui_PopStyleColor;
extern fn ImGui_PushStyleVar(idx: StyleVar, val: f32) void;
pub const pushStyleVar = ImGui_PushStyleVar;
extern fn ImGui_PushStyleVar2(idx: StyleVar, val: Vec2) void;
pub const pushStyleVar2 = ImGui_PushStyleVar2;
extern fn ImGui_PopStyleVar(count: c_int) void;
pub const popStyleVar = ImGui_PopStyleVar;
extern fn ImGui_PushAllowKeyboardFocus(allow_keyboard_focus: bool) void;
pub const pushAllowKeyboardFocus = ImGui_PushAllowKeyboardFocus;
extern fn ImGui_PopAllowKeyboardFocus() void;
pub const popAllowKeyboardFocus = ImGui_PopAllowKeyboardFocus;
extern fn ImGui_PushButtonRepeat(repeat: bool) void;
pub const pushButtonRepeat = ImGui_PushButtonRepeat;
extern fn ImGui_PopButtonRepeat() void;
pub const popButtonRepeat = ImGui_PopButtonRepeat;
extern fn ImGui_PushItemWidth(item_width: f32) void;
pub const pushItemWidth = ImGui_PushItemWidth;
extern fn ImGui_PopItemWidth() void;
pub const popItemWidth = ImGui_PopItemWidth;
extern fn ImGui_SetNextItemWidth(item_width: f32) void;
pub const setNextItemWidth = ImGui_SetNextItemWidth;
extern fn ImGui_CalcItemWidth() f32;
pub const calcItemWidth = ImGui_CalcItemWidth;
extern fn ImGui_PushTextWrapPos(wrap_local_pos_x: f32) void;
pub const pushTextWrapPos = ImGui_PushTextWrapPos;
extern fn ImGui_PopTextWrapPos() void;
pub const popTextWrapPos = ImGui_PopTextWrapPos;

extern fn ImGui_GetFont() *Font;
pub const getFont = ImGui_GetFont;
extern fn ImGui_GetFontSize() f32;
pub const getFontSize = ImGui_GetFontSize;
extern fn ImGui_GetFontTexUvWhitePixel() Vec2;
pub const getFontTexUvWhitePixel = ImGui_GetFontTexUvWhitePixel;
extern fn ImGui_GetColorU32(idx: Col, alpha_mul: f32) u32;
pub const getColorU32 = ImGui_GetColorU32;
extern fn ImGui_GetColorU32FromVec4(col: Vec4) u32;
pub const getColorU32FromVec4 = ImGui_GetColorU32FromVec4;
extern fn ImGui_GetColorU32FromU32(col: u32) u32;
pub const getColorU32FromU32 = ImGui_GetColorU32FromU32;
extern fn ImGui_GetStyleColorVec4(idx: Col) Vec4;
pub const getStyleColorVec4 = ImGui_GetStyleColorVec4;

extern fn ImGui_Separator() void;
pub const separator = ImGui_Separator;
extern fn ImGui_SameLine(offset_from_start_x: f32, spacing: f32) void;
pub const sameLine = ImGui_SameLine;
extern fn ImGui_NewLine() void;
pub const newLine = ImGui_NewLine;
extern fn ImGui_Spacing() void;
pub const spacing = ImGui_Spacing;
extern fn ImGui_Dummy(size: Vec2) void;
pub const dummy = ImGui_Dummy;
extern fn ImGui_Indent(indent_w: f32) void;
pub const indent = ImGui_Indent;
extern fn ImGui_Unindent(indent_w: f32) void;
pub const unindent = ImGui_Unindent;
extern fn ImGui_BeginGroup() void;
pub const beginGroup = ImGui_BeginGroup;
extern fn ImGui_EndGroup() void;
pub const endGroup = ImGui_EndGroup;
extern fn ImGui_GetCursorPos() Vec2;
pub const getCursorPos = ImGui_GetCursorPos;
extern fn ImGui_GetCursorPosX() f32;
pub const getCursorPosX = ImGui_GetCursorPosX;
extern fn ImGui_GetCursorPosY() f32;
pub const getCursorPosY = ImGui_GetCursorPosY;
extern fn ImGui_SetCursorPos(local_pos: Vec2) void;
pub const setCursorPos = ImGui_SetCursorPos;
extern fn ImGui_SetCursorPosX(local_x: f32) void;
pub const setCursorPosX = ImGui_SetCursorPosX;
extern fn ImGui_SetCursorPosY(local_y: f32) void;
pub const setCursorPosY = ImGui_SetCursorPosY;
extern fn ImGui_GetCursorStartPos() Vec2;
pub const getCursorStartPos = ImGui_GetCursorStartPos;
extern fn ImGui_GetCursorScreenPos() Vec2;
pub const getCursorScreenPos = ImGui_GetCursorScreenPos;
extern fn ImGui_SetCursorScreenPos(pos: Vec2) void;
pub const setCursorScreenPos = ImGui_SetCursorScreenPos;
extern fn ImGui_AlignTextToFramePadding() void;
pub const alignTextToFramePadding = ImGui_AlignTextToFramePadding;
extern fn ImGui_GetTextLineHeight() f32;
pub const getTextLineHeight = ImGui_GetTextLineHeight;
extern fn ImGui_GetTextLineHeightWithSpacing() f32;
pub const getTextLineHeightWithSpacing = ImGui_GetTextLineHeightWithSpacing;
extern fn ImGui_GetFrameHeight() f32;
pub const getFrameHeight = ImGui_GetFrameHeight;
extern fn ImGui_GetFrameHeightWithSpacing() f32;
pub const getFrameHeightWithSpacing = ImGui_GetFrameHeightWithSpacing;

extern fn ImGui_PushID(str_id: [*:0]const u8) void;
pub const pushID = ImGui_PushID;
extern fn ImGui_PushIDPtr(ptr_id: ?*const anyopaque) void;
pub const pushIDPtr = ImGui_PushIDPtr;
extern fn ImGui_PushIDInt(int_id: c_int) void;
pub const pushIDInt = ImGui_PushIDInt;
extern fn ImGui_PopID() void;
pub const popID = ImGui_PopID;
extern fn ImGui_GetID(str_id: [*:0]const u8) ID;
pub const getID = ImGui_GetID;
extern fn ImGui_GetIDPtr(ptr_id: ?*const anyopaque) ID;
pub const getIDPtr = ImGui_GetIDPtr;

extern fn ImGui_TextUnformatted(text: [*]const u8, text_end: ?[*]const u8) void;
pub const textUnformatted = ImGui_TextUnformatted;
extern fn ImGui_Text(fmt: [*:0]const u8, ...) void;
pub const text = ImGui_Text;
extern fn ImGui_TextColored(col: Vec4, fmt: [*:0]const u8, ...) void;
pub const textColored = ImGui_TextColored;
extern fn ImGui_TextDisabled(fmt: [*:0]const u8, ...) void;
pub const textDisabled = ImGui_TextDisabled;
extern fn ImGui_TextWrapped(fmt: [*:0]const u8, ...) void;
pub const textWrapped = ImGui_TextWrapped;
extern fn ImGui_LabelText(label: [*:0]const u8, fmt: [*:0]const u8, ...) void;
pub const labelText = ImGui_LabelText;
extern fn ImGui_BulletText(fmt: [*:0]const u8, ...) void;
pub const bulletText = ImGui_BulletText;

extern fn ImGui_Button(label: [*:0]const u8, size: Vec2) bool;
pub const button = ImGui_Button;
extern fn ImGui_SmallButton(label: [*:0]const u8) bool;
pub const smallButton = ImGui_SmallButton;
extern fn ImGui_InvisibleButton(str_id: [*:0]const u8, size: Vec2, flags: ButtonFlags) bool;
pub const invisibleButton = ImGui_InvisibleButton;
extern fn ImGui_ArrowButton(str_id: [*:0]const u8, dir: Dir) bool;
pub const arrowButton = ImGui_ArrowButton;
extern fn ImGui_Checkbox(label: [*:0]const u8, v: *bool) bool;
pub const checkbox = ImGui_Checkbox;
extern fn ImGui_CheckboxFlagsInt(label: [*:0]const u8, flags: *c_int, flags_value: c_int) bool;
pub const checkboxFlagsInt = ImGui_CheckboxFlagsInt;
extern fn ImGui_CheckboxFlagsUInt(label: [*:0]const u8, flags: *c_uint, flags_value: c_uint) bool;
pub const checkboxFlagsUInt = ImGui_CheckboxFlagsUInt;
extern fn ImGui_RadioButton(label: [*:0]const u8, active: bool) bool;
pub const radioButton = ImGui_RadioButton;
extern fn ImGui_RadioButtonInt(label: [*:0]const u8, v: *c_int, v_button: c_int) bool;
pub const radioButtonInt = ImGui_RadioButtonInt;
extern fn ImGui_ProgressBar(fraction: f32, size_arg: Vec2, overlay: ?*const u8) void;
pub const progressBar = ImGui_ProgressBar;
extern fn ImGui_Bullet() void;
pub const bullet = ImGui_Bullet;

extern fn ImGui_Image(user_texture_id: TextureID, size: Vec2, uv0: Vec2, uv1: Vec2, tint_col: Vec4, border_col: Vec4) void;
pub const image = ImGui_Image;
extern fn ImGui_ImageButton(str_id: [*:0]const u8, user_texture_id: TextureID, size: Vec2, uv0: Vec2, uv1: Vec2, bg_col: Vec4, tint_col: Vec4) bool;
pub const imageButton = ImGui_ImageButton;

extern fn ImGui_BeginCombo(label: [*:0]const u8, preview_value: [*:0]const u8, flags: ComboFlags) bool;
pub const beginCombo = ImGui_BeginCombo;
extern fn ImGui_EndCombo() void;
pub const endCombo = ImGui_EndCombo;
extern fn ImGui_Combo(label: [*:0]const u8, current_item: *c_int, items: [*]const [*:0]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub const combo = ImGui_Combo;
extern fn ImGui_ComboSeparatedByZeros(label: [*:0]const u8, current_item: *c_int, items_separated_by_zeros: [*]const u8, popup_max_height_in_items: c_int) bool;
pub const comboSeparatedByZeros = ImGui_ComboSeparatedByZeros;
extern fn ImGui_ComboGetter(label: [*:0]const u8, current_item: *c_int, items_getter: *const fn (data: ?*anyopaque, idx: c_int, out_text: *[*:0]const u8) callconv(.C) bool, data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub const comboGetter = ImGui_ComboGetter;

extern fn ImGui_DragFloat(label: [*:0]const u8, v: *f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragFloat = ImGui_DragFloat;
extern fn ImGui_DragFloat2(label: [*:0]const u8, v: *[2]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragFloat2 = ImGui_DragFloat2;
extern fn ImGui_DragFloat3(label: [*:0]const u8, v: *[3]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragFloat3 = ImGui_DragFloat3;
extern fn ImGui_DragFloat4(label: [*:0]const u8, v: *[4]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragFloat4 = ImGui_DragFloat4;
extern fn ImGui_DragFloatRange2(label: [*:0]const u8, v_current_min: *f32, v_current_max: *f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, format_max: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragFloatRange2 = ImGui_DragFloatRange2;
extern fn ImGui_DragInt(label: [*:0]const u8, v: *c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragInt = ImGui_DragInt;
extern fn ImGui_DragInt2(label: [*:0]const u8, v: *[2]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragInt2 = ImGui_DragInt2;
extern fn ImGui_DragInt3(label: [*:0]const u8, v: *[3]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragInt3 = ImGui_DragInt3;
extern fn ImGui_DragInt4(label: [*:0]const u8, v: *[4]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragInt4 = ImGui_DragInt4;
extern fn ImGui_DragIntRange2(label: [*:0]const u8, v_current_min: *c_int, v_current_max: *c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, format_max: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragIntRange2 = ImGui_DragIntRange2;
extern fn ImGui_DragScalar(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragScalar = ImGui_DragScalar;
extern fn ImGui_DragScalarN(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const dragScalarN = ImGui_DragScalarN;

extern fn ImGui_SliderFloat(label: [*:0]const u8, v: *f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderFloat = ImGui_SliderFloat;
extern fn ImGui_SliderFloat2(label: [*:0]const u8, v: *[2]f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderFloat2 = ImGui_SliderFloat2;
extern fn ImGui_SliderFloat3(label: [*:0]const u8, v: *[3]f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderFloat3 = ImGui_SliderFloat3;
extern fn ImGui_SliderFloat4(label: [*:0]const u8, v: *[4]f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderFloat4 = ImGui_SliderFloat4;
extern fn ImGui_SliderAngle(label: [*:0]const u8, v_rad: *f32, v_degrees_min: f32, v_degrees_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderAngle = ImGui_SliderAngle;
extern fn ImGui_SliderInt(label: [*:0]const u8, v: *c_int, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderInt = ImGui_SliderInt;
extern fn ImGui_SliderInt2(label: [*:0]const u8, v: *[2]c_int, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderInt2 = ImGui_SliderInt2;
extern fn ImGui_SliderInt3(label: [*:0]const u8, v: *[3]c_int, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderInt3 = ImGui_SliderInt3;
extern fn ImGui_SliderInt4(label: [*:0]const u8, v: *[4]c_int, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderInt4 = ImGui_SliderInt4;
extern fn ImGui_SliderScalar(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderScalar = ImGui_SliderScalar;
extern fn ImGui_SliderScalarN(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const sliderScalarN = ImGui_SliderScalarN;
extern fn ImGui_VSliderFloat(label: [*:0]const u8, size: Vec2, v: *f32, v_min: f32, v_max: f32, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const vSliderFloat = ImGui_VSliderFloat;
extern fn ImGui_VSliderInt(label: [*:0]const u8, size: Vec2, v: *c_int, v_min: c_int, v_max: c_int, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const vSliderInt = ImGui_VSliderInt;
extern fn ImGui_VSliderScalar(label: [*:0]const u8, size: Vec2, data_type: DataType, p_data: *anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: ?[*:0]const u8, flags: SliderFlags) bool;
pub const vSliderScalar = ImGui_VSliderScalar;

extern fn ImGui_InputText(label: [*:0]const u8, buf: [*]u8, buf_size: usize, flags: InputTextFlags, callback: ?*const InputTextCallback, user_data: ?*anyopaque) bool;
pub const inputText = ImGui_InputText;
extern fn ImGui_InputTextMultiline(label: [*:0]const u8, buf: [*]u8, buf_size: usize, size: Vec2, flags: InputTextFlags, callback: ?*const InputTextCallback, user_data: ?*anyopaque) bool;
pub const inputTextMultiline = ImGui_InputTextMultiline;
extern fn ImGui_InputTextWithHint(label: [*:0]const u8, hint: [*:0]const u8, buf: [*]u8, buf_size: usize, flags: InputTextFlags, callback: ?*const InputTextCallback, user_data: ?*anyopaque) bool;
pub const inputTextWithHint = ImGui_InputTextWithHint;
extern fn ImGui_InputFloat(label: [*:0]const u8, v: *f32, step: f32, step_fast: f32, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputFloat = ImGui_InputFloat;
extern fn ImGui_InputFloat2(label: [*:0]const u8, v: *[2]f32, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputFloat2 = ImGui_InputFloat2;
extern fn ImGui_InputFloat3(label: [*:0]const u8, v: *[3]f32, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputFloat3 = ImGui_InputFloat3;
extern fn ImGui_InputFloat4(label: [*:0]const u8, v: *[4]f32, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputFloat4 = ImGui_InputFloat4;
extern fn ImGui_InputInt(label: [*:0]const u8, v: *c_int, step: c_int, step_fast: c_int, flags: InputTextFlags) bool;
pub const inputInt = ImGui_InputInt;
extern fn ImGui_InputInt2(label: [*:0]const u8, v: *[2]c_int, flags: InputTextFlags) bool;
pub const inputInt2 = ImGui_InputInt2;
extern fn ImGui_InputInt3(label: [*:0]const u8, v: *[3]c_int, flags: InputTextFlags) bool;
pub const inputInt3 = ImGui_InputInt3;
extern fn ImGui_InputInt4(label: [*:0]const u8, v: *[4]c_int, flags: InputTextFlags) bool;
pub const inputInt4 = ImGui_InputInt4;
extern fn ImGui_InputDouble(label: [*:0]const u8, v: *f64, step: f64, step_fast: f64, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputDouble = ImGui_InputDouble;
extern fn ImGui_InputScalar(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputScalar = ImGui_InputScalar;
extern fn ImGui_InputScalarN(label: [*:0]const u8, data_type: DataType, p_data: *anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: ?[*:0]const u8, flags: InputTextFlags) bool;
pub const inputScalarN = ImGui_InputScalarN;

extern fn ImGui_ColorEdit3(label: [*:0]const u8, col: *[3]f32, flags: ColorEditFlags) bool;
pub const colorEdit3 = ImGui_ColorEdit3;
extern fn ImGui_ColorEdit4(label: [*:0]const u8, col: *[4]f32, flags: ColorEditFlags) bool;
pub const colorEdit4 = ImGui_ColorEdit4;
extern fn ImGui_ColorPicker3(label: [*:0]const u8, col: *[3]f32, flags: ColorEditFlags) bool;
pub const colorPicker3 = ImGui_ColorPicker3;
extern fn ImGui_ColorPicker4(label: [*:0]const u8, col: *[4]f32, flags: ColorEditFlags, ref_col: ?*const [4]f32) bool;
pub const colorPicker4 = ImGui_ColorPicker4;
extern fn ImGui_ColorButton(desc_id: [*:0]const u8, col: Vec4, flags: ColorEditFlags, size: Vec2) bool;
pub const colorButton = ImGui_ColorButton;
extern fn ImGui_SetColorEditOptions(flags: ColorEditFlags) void;
pub const setColorEditOptions = ImGui_SetColorEditOptions;

extern fn ImGui_TreeNode(label: [*:0]const u8, flags: TreeNodeFlags) bool;
pub const treeNode = ImGui_TreeNode;
extern fn ImGui_TreePush(str_id: [*:0]const u8) void;
pub const treePush = ImGui_TreePush;
extern fn ImGui_TreePop() void;
pub const treePop = ImGui_TreePop;
extern fn ImGui_GetTreeNodeToLabelSpacing() f32;
pub const getTreeNodeToLabelSpacing = ImGui_GetTreeNodeToLabelSpacing;
extern fn ImGui_CollapsingHeader(label: [*:0]const u8, p_visible: ?*bool, flags: TreeNodeFlags) bool;
pub const collapsingHeader = ImGui_CollapsingHeader;
extern fn ImGui_SetNextItemOpen(is_open: bool, cond: Cond) void;
pub const setNextItemOpen = ImGui_SetNextItemOpen;

extern fn ImGui_Selectable(label: [*:0]const u8, selected: bool, flags: SelectableFlags, size: Vec2) bool;
pub const selectable = ImGui_Selectable;
extern fn ImGui_SelectablePtr(label: [*:0]const u8, p_selected: *bool, flags: SelectableFlags, size: Vec2) bool;
pub const selectablePtr = ImGui_SelectablePtr;

extern fn ImGui_BeginListBox(label: [*:0]const u8, size: Vec2) bool;
pub const beginListBox = ImGui_BeginListBox;
extern fn ImGui_EndListBox() void;
pub const endListBox = ImGui_EndListBox;
extern fn ImGui_ListBox(label: [*:0]const u8, current_item: *c_int, items: [*]const [*:0]const u8, items_count: c_int, height_in_items: c_int) bool;
pub const listBox = ImGui_ListBox;
extern fn ImGui_ListBoxGetter(label: [*:0]const u8, current_item: *c_int, items_getter: *const fn (data: ?*anyopaque, idx: c_int, out_text: *[*:0]const u8) callconv(.C) bool, data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub const listBoxGetter = ImGui_ListBoxGetter;

extern fn ImGui_PlotLines(label: [*:0]const u8, values: [*]const f32, values_count: c_int, values_offset: c_int, overlay_text: ?[*:0]const u8, scale_min: f32, scale_max: f32, graph_size: Vec2, stride: c_int) void;
pub const plotLines = ImGui_PlotLines;
extern fn ImGui_PlotLinesGetter(label: [*:0]const u8, values_getter: *const fn (data: ?*anyopaque, idx: c_int) callconv(.C) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: ?[*:0]const u8, scale_min: f32, scale_max: f32, graph_size: Vec2) void;
pub const plotLinesGetter = ImGui_PlotLinesGetter;
extern fn ImGui_PlotHistogram(label: [*:0]const u8, values: [*]const f32, values_count: c_int, values_offset: c_int, overlay_text: ?[*:0]const u8, scale_min: f32, scale_max: f32, graph_size: Vec2, stride: c_int) void;
pub const plotHistogram = ImGui_PlotHistogram;
extern fn ImGui_PlotHistogramGetter(label: [*:0]const u8, values_getter: *const fn (data: ?*anyopaque, idx: c_int) callconv(.C) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: ?[*:0]const u8, scale_min: f32, scale_max: f32, graph_size: Vec2) void;
pub const plotHistogramGetter = ImGui_PlotHistogramGetter;

extern fn ImGui_ValueBool(prefix: [*:0]const u8, b: bool) void;
pub const valueBool = ImGui_ValueBool;
extern fn ImGui_ValueInt(prefix: [*:0]const u8, v: c_int) void;
pub const valueInt = ImGui_ValueInt;
extern fn ImGui_ValueUInt(prefix: [*:0]const u8, v: c_uint) void;
pub const valueUInt = ImGui_ValueUInt;
extern fn ImGui_ValueFloat(prefix: [*:0]const u8, v: f32, float_format: ?[*:0]const u8) void;
pub const valueFloat = ImGui_ValueFloat;

extern fn ImGui_BeginMenuBar() bool;
pub const beginMenuBar = ImGui_BeginMenuBar;
extern fn ImGui_EndMenuBar() void;
pub const endMenuBar = ImGui_EndMenuBar;
extern fn ImGui_BeginMainMenuBar() bool;
pub const beginMainMenuBar = ImGui_BeginMainMenuBar;
extern fn ImGui_EndMainMenuBar() void;
pub const endMainMenuBar = ImGui_EndMainMenuBar;
extern fn ImGui_BeginMenu(label: [*:0]const u8, enabled: bool) bool;
pub const beginMenu = ImGui_BeginMenu;
extern fn ImGui_EndMenu() void;
pub const endMenu = ImGui_EndMenu;
extern fn ImGui_MenuItem(label: [*:0]const u8, shortcut: ?[*:0]const u8, selected: bool, enabled: bool) bool;
pub const menuItem = ImGui_MenuItem;
extern fn ImGui_MenuItemPtr(label: [*:0]const u8, shortcut: ?[*:0]const u8, p_selected: ?*bool, enabled: bool) bool;
pub const menuItemPtr = ImGui_MenuItemPtr;

extern fn ImGui_BeginTooltip() void;
pub const beginTooltip = ImGui_BeginTooltip;
extern fn ImGui_EndTooltip() void;
pub const endTooltip = ImGui_EndTooltip;
extern fn ImGui_SetTooltip(fmt: [*:0]const u8, ...) void;
pub const setTooltip = ImGui_SetTooltip;

extern fn ImGui_BeginPopup(str_id: [*:0]const u8, flags: WindowFlags) bool;
pub const beginPopup = ImGui_BeginPopup;
extern fn ImGui_BeginPopupModal(name: [*:0]const u8, p_open: ?*bool, flags: WindowFlags) bool;
pub const beginPopupModal = ImGui_BeginPopupModal;
extern fn ImGui_EndPopup() void;
pub const endPopup = ImGui_EndPopup;
extern fn ImGui_OpenPopup(str_id: [*:0]const u8, popup_flags: PopupFlags) void;
pub const openPopup = ImGui_OpenPopup;
extern fn ImGui_OpenPopupOnItemClick(str_id: [*:0]const u8, popup_flags: PopupFlags) void;
pub const openPopupOnItemClick = ImGui_OpenPopupOnItemClick;
extern fn ImGui_CloseCurrentPopup() void;
pub const closeCurrentPopup = ImGui_CloseCurrentPopup;
extern fn ImGui_BeginPopupContextItem(str_id: [*:0]const u8, popup_flags: PopupFlags) bool;
pub const beginPopupContextItem = ImGui_BeginPopupContextItem;
extern fn ImGui_BeginPopupContextWindow(str_id: [*:0]const u8, popup_flags: PopupFlags) bool;
pub const beginPopupContextWindow = ImGui_BeginPopupContextWindow;
extern fn ImGui_BeginPopupContextVoid(str_id: [*:0]const u8, popup_flags: PopupFlags) bool;
pub const beginPopupContextVoid = ImGui_BeginPopupContextVoid;
extern fn ImGui_IsPopupOpen(str_id: [*:0]const u8, flags: PopupFlags) bool;
pub const isPopupOpen = ImGui_IsPopupOpen;

extern fn ImGui_BeginTable(str_id: [*:0]const u8, column: c_int, flags: TableFlags, outer_size: Vec2, inner_width: f32) bool;
pub const beginTable = ImGui_BeginTable;
extern fn ImGui_EndTable() void;
pub const endTable = ImGui_EndTable;
extern fn ImGui_TableNextRow(row_flags: TableRowFlags, min_row_height: f32) void;
pub const tableNextRow = ImGui_TableNextRow;
extern fn ImGui_TableNextColumn() bool;
pub const tableNextColumn = ImGui_TableNextColumn;
extern fn ImGui_TableSetColumnIndex(column_n: c_int) bool;
pub const tableSetColumnIndex = ImGui_TableSetColumnIndex;
extern fn ImGui_TableSetupColumn(label: [*:0]const u8, flags: TableColumnFlags, init_width_or_weight: f32, user_id: ID) void;
pub const tableSetupColumn = ImGui_TableSetupColumn;
extern fn ImGui_TableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub const tableSetupScrollFreeze = ImGui_TableSetupScrollFreeze;
extern fn ImGui_TableHeadersRow() void;
pub const tableHeadersRow = ImGui_TableHeadersRow;
extern fn ImGui_TableHeader(label: [*:0]const u8) void;
pub const tableHeader = ImGui_TableHeader;
extern fn ImGui_TableGetSortSpecs() ?*TableSortSpecs;
pub const tableGetSortSpecs = ImGui_TableGetSortSpecs;
extern fn ImGui_TableGetColumnCount() c_int;
pub const tableGetColumnCount = ImGui_TableGetColumnCount;
extern fn ImGui_TableGetColumnIndex() c_int;
pub const tableGetColumnIndex = ImGui_TableGetColumnIndex;
extern fn ImGui_TableGetRowIndex() c_int;
pub const tableGetRowIndex = ImGui_TableGetRowIndex;
extern fn ImGui_TableGetColumnName(column_n: c_int) [*:0]const u8;
pub const tableGetColumnName = ImGui_TableGetColumnName;
extern fn ImGui_TableGetColumnFlags(column_n: c_int) TableColumnFlags;
pub const tableGetColumnFlags = ImGui_TableGetColumnFlags;
extern fn ImGui_TableSetColumnEnabled(column_n: c_int, v: bool) void;
pub const tableSetColumnEnabled = ImGui_TableSetColumnEnabled;
extern fn ImGui_TableSetBgColor(target: TableBgTarget, color: u32, column_n: c_int) void;
pub const tableSetBgColor = ImGui_TableSetBgColor;

extern fn ImGui_Columns(count: c_int, id: ?[*:0]const u8, border: bool) void;
pub const columns = ImGui_Columns;
extern fn ImGui_NextColumn() void;
pub const nextColumn = ImGui_NextColumn;
extern fn ImGui_GetColumnIndex() c_int;
pub const getColumnIndex = ImGui_GetColumnIndex;
extern fn ImGui_GetColumnWidth(column_index: c_int) f32;
pub const getColumnWidth = ImGui_GetColumnWidth;
extern fn ImGui_SetColumnWidth(column_index: c_int, width: f32) void;
pub const setColumnWidth = ImGui_SetColumnWidth;
extern fn ImGui_GetColumnOffset(column_index: c_int) f32;
pub const getColumnOffset = ImGui_GetColumnOffset;
extern fn ImGui_SetColumnOffset(column_index: c_int, offset_x: f32) void;
pub const setColumnOffset = ImGui_SetColumnOffset;
extern fn ImGui_GetColumnsCount() c_int;
pub const getColumnsCount = ImGui_GetColumnsCount;

extern fn ImGui_BeginTabBar(str_id: [*:0]const u8, flags: TabBarFlags) bool;
pub const beginTabBar = ImGui_BeginTabBar;
extern fn ImGui_EndTabBar() void;
pub const endTabBar = ImGui_EndTabBar;
extern fn ImGui_BeginTabItem(label: [*:0]const u8, p_open: ?*bool, flags: TabItemFlags) bool;
pub const beginTabItem = ImGui_BeginTabItem;
extern fn ImGui_EndTabItem() void;
pub const endTabItem = ImGui_EndTabItem;
extern fn ImGui_TabItemButton(label: [*:0]const u8, flags: TabItemFlags) bool;
pub const tabItemButton = ImGui_TabItemButton;
extern fn ImGui_SetTabItemClosed(tab_or_docked_window_label: [*:0]const u8) void;
pub const setTabItemClosed = ImGui_SetTabItemClosed;

extern fn ImGui_LogToTTY(auto_open_depth: c_int) void;
pub const logToTTY = ImGui_LogToTTY;
extern fn ImGui_LogToFile(auto_open_depth: c_int, filename: ?[*:0]const u8) void;
pub const logToFile = ImGui_LogToFile;
extern fn ImGui_LogToClipboard(auto_open_depth: c_int) void;
pub const logToClipboard = ImGui_LogToClipboard;
extern fn ImGui_LogFinish() void;
pub const logFinish = ImGui_LogFinish;
extern fn ImGui_LogButtons() void;
pub const logButtons = ImGui_LogButtons;
extern fn ImGui_LogText(fmt: [*:0]const u8, ...) void;
pub const logText = ImGui_LogText;

extern fn ImGui_BeginDragDropSource(flags: DragDropFlags) bool;
pub const beginDragDropSource = ImGui_BeginDragDropSource;
extern fn ImGui_SetDragDropPayload(type: [*:0]const u8, data: ?*const anyopaque, sz: usize, cond: Cond) bool;
pub const setDragDropPayload = ImGui_SetDragDropPayload;
extern fn ImGui_EndDragDropSource() void;
pub const endDragDropSource = ImGui_EndDragDropSource;
extern fn ImGui_BeginDragDropTarget() bool;
pub const beginDragDropTarget = ImGui_BeginDragDropTarget;
extern fn ImGui_AcceptDragDropPayload(type: [*:0]const u8, flags: DragDropFlags) ?*const Payload;
pub const acceptDragDropPayload = ImGui_AcceptDragDropPayload;
extern fn ImGui_EndDragDropTarget() void;
pub const endDragDropTarget = ImGui_EndDragDropTarget;
extern fn ImGui_GetDragDropPayload() ?*const Payload;
pub const getDragDropPayload = ImGui_GetDragDropPayload;

extern fn ImGui_BeginDisabled(disabled: bool) void;
pub const beginDisabled = ImGui_BeginDisabled;
extern fn ImGui_EndDisabled() void;
pub const endDisabled = ImGui_EndDisabled;

extern fn ImGui_PushClipRect(clip_rect_min: Vec2, clip_rect_max: Vec2, intersect_with_current_clip_rect: bool) void;
pub const pushClipRect = ImGui_PushClipRect;
extern fn ImGui_PopClipRect() void;
pub const popClipRect = ImGui_PopClipRect;

extern fn ImGui_SetItemDefaultFocus() void;
pub const setItemDefaultFocus = ImGui_SetItemDefaultFocus;
extern fn ImGui_SetKeyboardFocusHere(offset: c_int) void;
pub const setKeyboardFocusHere = ImGui_SetKeyboardFocusHere;

extern fn ImGui_IsItemHovered(flags: HoveredFlags) bool;
pub const isItemHovered = ImGui_IsItemHovered;
extern fn ImGui_IsItemActive() bool;
pub const isItemActive = ImGui_IsItemActive;
extern fn ImGui_IsItemFocused() bool;
pub const isItemFocused = ImGui_IsItemFocused;
extern fn ImGui_IsItemClicked(mouse_button: MouseButton) bool;
pub const isItemClicked = ImGui_IsItemClicked;
extern fn ImGui_IsItemVisible() bool;
pub const isItemVisible = ImGui_IsItemVisible;
extern fn ImGui_IsItemEdited() bool;
pub const isItemEdited = ImGui_IsItemEdited;
extern fn ImGui_IsItemActivated() bool;
pub const isItemActivated = ImGui_IsItemActivated;
extern fn ImGui_IsItemDeactivated() bool;
pub const isItemDeactivated = ImGui_IsItemDeactivated;
extern fn ImGui_IsItemDeactivatedAfterEdit() bool;
pub const isItemDeactivatedAfterEdit = ImGui_IsItemDeactivatedAfterEdit;
extern fn ImGui_IsItemToggledOpen() bool;
pub const isItemToggledOpen = ImGui_IsItemToggledOpen;
extern fn ImGui_IsAnyItemHovered() bool;
pub const isAnyItemHovered = ImGui_IsAnyItemHovered;
extern fn ImGui_IsAnyItemActive() bool;
pub const isAnyItemActive = ImGui_IsAnyItemActive;
extern fn ImGui_IsAnyItemFocused() bool;
pub const isAnyItemFocused = ImGui_IsAnyItemFocused;
extern fn ImGui_GetItemID() bool;
pub const getItemID = ImGui_GetItemID;
extern fn ImGui_GetItemRectMin() Vec2;
pub const getItemRectMin = ImGui_GetItemRectMin;
extern fn ImGui_GetItemRectMax() Vec2;
pub const getItemRectMax = ImGui_GetItemRectMax;
extern fn ImGui_GetItemRectSize() Vec2;
pub const getItemRectSize = ImGui_GetItemRectSize;
extern fn ImGui_SetItemAllowOverlap() void;
pub const setItemAllowOverlap = ImGui_SetItemAllowOverlap;

extern fn ImGui_GetMainViewport() *Viewport;
pub const getMainViewport = ImGui_GetMainViewport;

extern fn ImGui_GetBackgroundDrawList() *DrawList;
pub const getBackgroundDrawList = ImGui_GetBackgroundDrawList;
extern fn ImGui_GetForegroundDrawList() *DrawList;
pub const getForegroundDrawList = ImGui_GetForegroundDrawList;

extern fn ImGui_IsRectFromCursorVisible(size: Vec2) bool;
pub const isRectFromCursorVisible = ImGui_IsRectFromCursorVisible;
extern fn ImGui_IsRectVisible(rect_min: Vec2, rect_max: Vec2) bool;
pub const isRectVisible = ImGui_IsRectVisible;
extern fn ImGui_GetTime() f64;
pub const getTime = ImGui_GetTime;
extern fn ImGui_GetFrameCount() c_int;
pub const getFrameCount = ImGui_GetFrameCount;
extern fn ImGui_GetDrawListSharedData() *DrawListSharedData;
pub const getDrawListSharedData = ImGui_GetDrawListSharedData;
extern fn ImGui_GetStyleColorName(idx: Col) [*:0]const u8;
pub const getStyleColorName = ImGui_GetStyleColorName;
extern fn ImGui_SetStateStorage(storage: ?*Storage) void;
pub const setStateStorage = ImGui_SetStateStorage;
extern fn ImGui_GetStateStorage() *Storage;
pub const getStateStorage = ImGui_GetStateStorage;
extern fn ImGui_BeginChildFrame(id: ID, size: Vec2, flags: WindowFlags) bool;
pub const beginChildFrame = ImGui_BeginChildFrame;
extern fn ImGui_EndChildFrame() void;
pub const endChildFrame = ImGui_EndChildFrame;

extern fn ImGui_CalcTextSize(text: [*]const u8, text_end: ?[*]const u8, hide_text_after_double_hash: bool, wrap_width: f32) Vec2;
pub const calcTextSize = ImGui_CalcTextSize;

extern fn ImGui_ColorConvertU32ToFloat4(in: u32) Vec4;
pub const colorConvertU32ToFloat4 = ImGui_ColorConvertU32ToFloat4;
extern fn ImGui_ColorConvertFloat4ToU32(in: Vec4) u32;
pub const colorConvertFloat4ToU32 = ImGui_ColorConvertFloat4ToU32;
extern fn ImGui_ColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: *f32, out_s: *f32, out_v: *f32) void;
pub const colorConvertRGBtoHSV = ImGui_ColorConvertRGBtoHSV;
extern fn ImGui_ColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: *f32, out_g: *f32, out_b: *f32) void;
pub const colorConvertHSVtoRGB = ImGui_ColorConvertHSVtoRGB;

extern fn ImGui_IsKeyDown(key: Key) bool;
pub const isKeyDown = ImGui_IsKeyDown;
extern fn ImGui_IsKeyPressed(key: Key, repeat: bool) bool;
pub const isKeyPressed = ImGui_IsKeyPressed;
extern fn ImGui_IsKeyReleased(key: Key) bool;
pub const isKeyReleased = ImGui_IsKeyReleased;
extern fn ImGui_GetKeyPressedAmount(key: Key, repeat_delay: f32, rate: f32) c_int;
pub const getKeyPressedAmount = ImGui_GetKeyPressedAmount;
extern fn ImGui_GetKeyName(key: Key) [*:0]const u8;
pub const getKeyName = ImGui_GetKeyName;
extern fn ImGui_SetNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub const setNextFrameWantCaptureKeyboard = ImGui_SetNextFrameWantCaptureKeyboard;

extern fn ImGui_IsMouseDown(button: MouseButton) bool;
pub const isMouseDown = ImGui_IsMouseDown;
extern fn ImGui_IsMouseClicked(button: MouseButton, repeat: bool) bool;
pub const isMouseClicked = ImGui_IsMouseClicked;
extern fn ImGui_IsMouseReleased(button: MouseButton) bool;
pub const isMouseReleased = ImGui_IsMouseReleased;
extern fn ImGui_IsMouseDoubleClicked(button: MouseButton) bool;
pub const isMouseDoubleClicked = ImGui_IsMouseDoubleClicked;
extern fn ImGui_GetMouseClickedCount(button: MouseButton) c_int;
pub const getMouseClickedCount = ImGui_GetMouseClickedCount;
extern fn ImGui_IsMouseHoveringRect(r_min: Vec2, r_max: Vec2, clip: bool) bool;
pub const isMouseHoveringRect = ImGui_IsMouseHoveringRect;
extern fn ImGui_IsMousePosValid(mouse_pos: ?*const Vec2) bool;
pub const isMousePosValid = ImGui_IsMousePosValid;
extern fn ImGui_IsAnyMouseDown() bool;
pub const isAnyMouseDown = ImGui_IsAnyMouseDown;
extern fn ImGui_GetMousePos() Vec2;
pub const getMousePos = ImGui_GetMousePos;
extern fn ImGui_GetMousePosOnOpeningCurrentPopup() Vec2;
pub const getMousePosOnOpeningCurrentPopup = ImGui_GetMousePosOnOpeningCurrentPopup;
extern fn ImGui_IsMouseDragging(button: MouseButton, lock_threshold: f32) bool;
pub const isMouseDragging = ImGui_IsMouseDragging;
extern fn ImGui_GetMouseDragDelta(button: MouseButton, lock_threshold: f32) Vec2;
pub const getMouseDragDelta = ImGui_GetMouseDragDelta;
extern fn ImGui_ResetMouseDragDelta(button: MouseButton) void;
pub const resetMouseDragDelta = ImGui_ResetMouseDragDelta;
extern fn ImGui_GetMouseCursor() MouseCursor;
pub const getMouseCursor = ImGui_GetMouseCursor;
extern fn ImGui_SetMouseCursor(cursor_type: MouseCursor) void;
pub const setMouseCursor = ImGui_SetMouseCursor;
extern fn ImGui_SetNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub const setNextFrameWantCaptureMouse = ImGui_SetNextFrameWantCaptureMouse;

extern fn ImGui_GetClipboardText() [*:0]const u8;
pub const getClipboardText = ImGui_GetClipboardText;
extern fn ImGui_SetClipboardText(text: [*:0]const u8) void;
pub const setClipboardText = ImGui_SetClipboardText;

extern fn ImGui_LoadIniSettingsFromDisk(ini_filename: [*:0]const u8) void;
pub const loadIniSettingsFromDisk = ImGui_LoadIniSettingsFromDisk;
extern fn ImGui_LoadIniSettingsFromMemory(ini_data: [*]const u8, ini_size: usize) void;
pub const loadIniSettingsFromMemory = ImGui_LoadIniSettingsFromMemory;
extern fn ImGui_SaveIniSettingsToDisk(ini_filename: [*:0]const u8) void;
pub const saveIniSettingsToDisk = ImGui_SaveIniSettingsToDisk;
extern fn ImGui_SaveIniSettingsToMemory(out_ini_size: ?*usize) [*:0]const u8;
pub const saveIniSettingsToMemory = ImGui_SaveIniSettingsToMemory;

extern fn ImGui_DebugTextEncoding(text: [*:0]const u8) void;
pub const debugTextEncoding = ImGui_DebugTextEncoding;
extern fn ImGui_DebugCheckVersionAndDataLayout(version_str: [*:0]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub const debugCheckVersionAndDataLayout = ImGui_DebugCheckVersionAndDataLayout;

extern fn ImGui_SetAllocatorFunctions(alloc_func: *const MemAllocFunc, free_func: *const MemFreeFunc, user_data: ?*anyopaque) void;
pub const setAllocatorFunctions = ImGui_SetAllocatorFunctions;
extern fn ImGui_GetAllocatorFunctions(p_alloc_func: **const MemAllocFunc, p_free_func: **const MemFreeFunc, p_user_data: *?*anyopaque) void;
pub const getAllocatorFunctions = ImGui_GetAllocatorFunctions;
extern fn ImGui_MemAlloc(size: usize) ?*anyopaque;
pub const memAlloc = ImGui_MemAlloc;
extern fn ImGui_MemFree(ptr: ?*anyopaque) void;
pub const memFree = ImGui_MemFree;

pub const WindowFlags = packed struct {
    no_title_bar: bool = false,
    no_resize: bool = false,
    no_move: bool = false,
    no_scrollbar: bool = false,
    no_scroll_with_mouse: bool = false,
    no_collapse: bool = false,
    always_auto_resize: bool = false,
    no_background: bool = false,
    no_saved_settings: bool = false,
    no_mouse_inputs: bool = false,
    menu_bar: bool = false,
    horizontal_scrollbar: bool = false,
    no_focus_on_appearing: bool = false,
    no_bring_to_front_on_focus: bool = false,
    always_vertical_scrollbar: bool = false,
    always_horizontal_scrollbar: bool = false,
    always_use_window_padding: bool = false,
    _: u1 = 0,
    no_nav_inputs: bool = false,
    no_nav_focus: bool = false,
    unsaved_document: bool = false,
    __: u11 = 0,
};

pub const InputTextFlags = packed struct {
    chars_decimal: bool = false,
    chars_hexadecimal: bool = false,
    chars_uppercase: bool = false,
    chars_no_blank: bool = false,
    auto_select_all: bool = false,
    enter_returns_true: bool = false,
    callback_completion: bool = false,
    callback_history: bool = false,
    callback_always: bool = false,
    callback_char_filter: bool = false,
    allow_tab_input: bool = false,
    ctrl_enter_for_new_line: bool = false,
    no_horizontal_scroll: bool = false,
    always_overwrite: bool = false,
    read_only: bool = false,
    password: bool = false,
    no_undo_redo: bool = false,
    chars_scientific: bool = false,
    callback_resize: bool = false,
    callback_edit: bool = false,
    escape_clears_all: bool = false,
    _: u11 = 0,
};

pub const TreeNodeFlags = packed struct {
    selected: bool = false,
    framed: bool = false,
    allow_item_overlap: bool = false,
    no_tree_push_on_open: bool = false,
    no_auto_open_on_log: bool = false,
    default_open: bool = false,
    open_on_double_click: bool = false,
    open_on_arrow: bool = false,
    leaf: bool = false,
    bullet: bool = false,
    frame_padding: bool = false,
    span_avail_width: bool = false,
    span_full_width: bool = false,
    nav_left_jumps_back_here: bool = false,
    _: u18 = 0,
};

pub const PopupFlags = packed struct {
    mouse_button_right: bool = false,
    mouse_button_middle: bool = false,
    _: u3 = 0,
    no_open_over_existing_popup: bool = false,
    no_open_over_items: bool = false,
    any_popup_id: bool = false,
    any_popup_level: bool = false,
    __: u23 = 0,
};

pub const SelectableFlags = packed struct {
    dont_close_popups: bool = false,
    span_all_columns: bool = false,
    allow_double_click: bool = false,
    disabled: bool = false,
    allow_item_overlap: bool = false,
    _: u27 = 0,
};

pub const ComboFlags = packed struct {
    popup_align_left: bool = false,
    height_small: bool = false,
    height_regular: bool = false,
    height_large: bool = false,
    height_largest: bool = false,
    no_arrow_button: bool = false,
    no_preview: bool = false,
    _: u25 = 0,
};

pub const TabBarFlags = packed struct {
    reorderable: bool = false,
    auto_select_new_tabs: bool = false,
    tab_list_popup_button: bool = false,
    no_close_with_middle_mouse_button: bool = false,
    no_tab_list_scrolling_buttons: bool = false,
    no_tooltip: bool = false,
    fitting_policy_resize_down: bool = false,
    fitting_policy_scroll: bool = false,
    _: u24 = 0,
};

pub const TabItemFlags = packed struct {
    unsaved_document: bool = false,
    set_selected: bool = false,
    no_close_with_middle_mouse_button: bool = false,
    no_push_id: bool = false,
    no_tooltip: bool = false,
    no_reorder: bool = false,
    leading: bool = false,
    trailing: bool = false,
    _: u24 = 0,
};

pub const TableFlags = packed struct {
    resizable: bool = false,
    reorderable: bool = false,
    hideable: bool = false,
    sortable: bool = false,
    no_saved_settings: bool = false,
    context_menu_in_body: bool = false,
    row_bg: bool = false,
    borders_inner_h: bool = false,
    borders_outer_h: bool = false,
    borders_inner_v: bool = false,
    borders_outer_v: bool = false,
    no_borders_in_body: bool = false,
    no_borders_in_body_until_resize: bool = false,
    sizing_fixed_fit: bool = false,
    sizing_fixed_same: bool = false,
    sizing_stretch_same: bool = false,
    no_host_extend_x: bool = false,
    no_host_extend_y: bool = false,
    no_keep_columns_visible: bool = false,
    precise_widths: bool = false,
    no_clip: bool = false,
    pad_outer_x: bool = false,
    no_pad_outer_x: bool = false,
    no_pad_inner_x: bool = false,
    scroll_x: bool = false,
    scroll_y: bool = false,
    sort_multi: bool = false,
    sort_tristate: bool = false,
    _: u4 = 0,
};

pub const TableColumnFlags = packed struct {
    disabled: bool = false,
    default_hide: bool = false,
    default_sort: bool = false,
    width_stretch: bool = false,
    width_fixed: bool = false,
    no_resize: bool = false,
    no_reorder: bool = false,
    no_hide: bool = false,
    no_clip: bool = false,
    no_sort: bool = false,
    no_sort_ascending: bool = false,
    no_sort_descending: bool = false,
    no_header_label: bool = false,
    no_header_width: bool = false,
    prefer_sort_ascending: bool = false,
    prefer_sort_descending: bool = false,
    indent_enable: bool = false,
    indent_disable: bool = false,
    _: u6 = 0,
    is_enabled: bool = false,
    is_visible: bool = false,
    is_sorted: bool = false,
    is_hovered: bool = false,
    __: u4 = 0,
};

pub const TableRowFlags = packed struct {
    headers: bool = false,
    _: u31 = 0,
};

pub const TableBgTarget = enum(c_int) {
    none = 0,
    row_bg_0 = 1,
    row_bg_1 = 2,
    cell_bg = 3,
};

pub const FocusedFlags = packed struct {
    child_windows: bool = false,
    root_window: bool = false,
    any_window: bool = false,
    no_popup_hierarchy: bool = false,
    dock_hierarchy: bool = false,
    _: u27 = 0,
};

pub const HoveredFlags = packed struct {
    child_windows: bool = false,
    root_window: bool = false,
    any_window: bool = false,
    no_popup_hierarchy: bool = false,
    dock_hierarchy: bool = false,
    allow_when_blocked_by_popup: bool = false,
    allow_when_blocked_by_modal: bool = false,
    allow_when_blocked_by_active_item: bool = false,
    allow_when_overlapped: bool = false,
    allow_when_disabled: bool = false,
    no_nav_override: bool = false,
    delay_normal: bool = false,
    delay_short: bool = false,
    no_shared_delay: bool = false,
    _: u18 = 0,
};

pub const DragDropFlags = packed struct {
    source_no_preview_tooltip: bool = false,
    source_no_disable_hover: bool = false,
    source_no_hold_to_open_others: bool = false,
    source_allow_null_id: bool = false,
    source_extern: bool = false,
    source_auto_expire_payload: bool = false,
    _: u4 = 0,
    accept_before_delivery: bool = false,
    accept_no_draw_default_rect: bool = false,
    accept_no_preview_tooltip: bool = false,
    __: u19 = 0,
};

pub const DataType = enum(c_int) {
    i8,
    u8,
    i16,
    u16,
    i32,
    u32,
    i64,
    u64,
    f32,
    f64,
};

pub const Dir = enum(c_int) {
    none = -1,
    left = 0,
    right = 1,
    up = 2,
    down = 3,
    _,
};

pub const SortDirection = enum(i8) {
    none = 0,
    ascending = 1,
    descending = -1,
};

pub const Key = enum(c_int) {
    none = 0,
    tab = 512,
    left_arrow,
    right_arrow,
    up_arrow,
    down_arrow,
    page_up,
    page_down,
    home,
    end,
    insert,
    delete,
    backspace,
    space,
    enter,
    escape,
    left_ctrl,
    left_shift,
    left_alt,
    left_super,
    right_ctrl,
    right_shift,
    right_alt,
    right_super,
    menu,
    n_0,
    n_1,
    n_2,
    n_3,
    n_4,
    n_5,
    n_6,
    n_7,
    n_8,
    n_9,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h,
    i,
    j,
    k,
    l,
    m,
    n,
    o,
    p,
    q,
    r,
    s,
    t,
    u,
    v,
    w,
    x,
    y,
    z,
    f1,
    f2,
    f3,
    f4,
    f5,
    f6,
    f7,
    f8,
    f9,
    f10,
    f11,
    f12,
    apostrophe,
    comma,
    minus,
    period,
    slash,
    semicolon,
    equal,
    left_bracket,
    backslash,
    right_bracket,
    grave_accent,
    caps_lock,
    scroll_lock,
    num_lock,
    print_screen,
    pause,
    keypad_0,
    keypad_1,
    keypad_2,
    keypad_3,
    keypad_4,
    keypad_5,
    keypad_6,
    keypad_7,
    keypad_8,
    keypad_9,
    keypad_decimal,
    keypad_divide,
    keypad_multiply,
    keypad_subtract,
    keypad_add,
    keypad_enter,
    keypad_equal,

    gamepad_start,
    gamepad_back,
    gamepad_face_left,
    gamepad_face_right,
    gamepad_face_up,
    gamepad_face_down,
    gamepad_dpad_left,
    gamepad_dpad_right,
    gamepad_dpad_up,
    gamepad_dpad_down,
    gamepad_l1,
    gamepad_r1,
    gamepad_l2,
    gamepad_r2,
    gamepad_l3,
    gamepad_r3,
    gamepad_l_stick_left,
    gamepad_l_stick_right,
    gamepad_l_stick_up,
    gamepad_l_stick_down,
    gamepad_r_stick_left,
    gamepad_r_stick_right,
    gamepad_r_stick_up,
    gamepad_r_stick_down,

    mouse_left,
    mouse_right,
    mouse_middle,
    mouse_x1,
    mouse_x2,
    mouse_wheel_x,
    mouse_wheel_y,

    mod_ctrl = 1 << 12,
    mod_shift = 1 << 13,
    mod_alt = 1 << 14,
    mod_super = 1 << 15,
    mod_shortcut = 1 << 11,

    const count = 140;
};

pub const KeyChord = c_int; // key xored with mods

pub const ConfigFlags = packed struct {
    nav_enable_keyboard: bool = false,
    nav_enable_gamepad: bool = false,
    nav_enable_set_mouse_pos: bool = false,
    nav_no_capture_keyboard: bool = false,
    no_mouse: bool = false,
    no_mouse_cursor_change: bool = false,
    _: u14 = 0,
    is_srgb: bool = false,
    is_touch_screen: bool = false,
    __: u10 = 0,
};

pub const BackendFlags = packed struct {
    has_gamepad: bool = false,
    has_mouse_cursors: bool = false,
    has_set_mouse_pos: bool = false,
    renderer_has_vtx_offset: bool = false,
    _: u28 = 0,
};

pub const Col = enum(c_int) {
    text,
    text_disabled,
    window_bg,
    child_bg,
    popup_bg,
    border,
    border_shadow,
    frame_bg,
    frame_bg_hovered,
    frame_bg_active,
    title_bg,
    title_bg_active,
    title_bg_collapsed,
    menu_bar_bg,
    scrollbar_bg,
    scrollbar_grab,
    scrollbar_grab_hovered,
    scrollbar_grab_active,
    check_mark,
    slider_grab,
    slider_grab_active,
    button,
    button_hovered,
    button_active,
    header,
    header_hovered,
    header_active,
    separator,
    separator_hovered,
    separator_active,
    resize_grip,
    resize_grip_hovered,
    resize_grip_active,
    tab,
    tab_hovered,
    tab_active,
    tab_unfocused,
    tab_unfocused_active,
    plot_lines,
    plot_lines_hovered,
    plot_histogram,
    plot_histogram_hovered,
    table_header_bg,
    table_border_strong,
    table_border_light,
    table_row_bg,
    table_row_bg_alt,
    text_selected_bg,
    drag_drop_target,
    nav_highlight,
    nav_windowing_highlight,
    nav_windowing_dim_bg,
    modal_window_dim_bg,

    const count = 53;
};

pub const StyleVar = enum(c_int) {
    alpha,
    disabled_alpha,
    window_padding,
    window_rounding,
    window_border_size,
    window_min_size,
    window_title_align,
    child_rounding,
    child_border_size,
    popup_rounding,
    popup_border_size,
    frame_padding,
    frame_rounding,
    frame_border_size,
    item_spacing,
    item_inner_spacing,
    indent_spacing,
    cell_padding,
    scrollbar_size,
    scrollbar_rounding,
    grab_min_size,
    grab_rounding,
    tab_rounding,
    button_text_align,
    selectable_text_align,
};

pub const ButtonFlags = packed struct {
    mouse_button_left: bool = false,
    mouse_button_right: bool = false,
    mouse_button_middle: bool = false,
    _: u29 = 0,
};

pub const ColorEditFlags = packed struct {
    _: u1 = 0,
    no_alpha: bool = false,
    no_picker: bool = false,
    no_options: bool = false,
    no_small_preview: bool = false,
    no_inputs: bool = false,
    no_tooltip: bool = false,
    no_label: bool = false,
    no_side_preview: bool = false,
    no_drag_drop: bool = false,
    no_border: bool = false,
    __: u5 = 0,
    alpha_bar: bool = false,
    alpha_preview: bool = false,
    alpha_preview_half: bool = false,
    hdr: bool = false,
    display_rgb: bool = false,
    display_hsv: bool = false,
    display_hex: bool = false,
    uint8: bool = false,
    float: bool = false,
    picker_hue_bar: bool = false,
    picker_hue_wheel: bool = false,
    input_rgb: bool = false,
    input_hsv: bool = false,
    ___: u3 = 0,
};

pub const SliderFlags = packed struct {
    _: u4 = 0,
    always_clamp: bool = false,
    logarithmic: bool = false,
    no_round_to_format: bool = false,
    no_input: bool = false,
    __: u24 = 0,
};

pub const MouseButton = enum(c_int) {
    left = 0,
    right = 1,
    middle = 2,
    _,
};

pub const MouseCursor = enum(c_int) {
    none = -1,
    arrow = 0,
    text_input,
    resize_all,
    resize_ns,
    resize_ew,
    resize_nesw,
    resize_nwse,
    hand,
    not_allowed,
};

pub const Cond = enum(c_int) {
    none = 0,
    always = 1 << 0,
    once = 1 << 1,
    first_use_ever = 1 << 2,
    appearing = 1 << 3,
};

pub fn Vector(comptime T: type) type {
    return extern struct {
        size: c_int,
        capacity: c_int,
        data: ?[*]T,
    };
}

pub const Style = extern struct {
    alpha: f32,
    disabled_alpha: f32,
    window_padding: Vec2,
    window_rounding: f32,
    window_border_size: f32,
    window_min_size: Vec2,
    window_title_align: Vec2,
    window_menu_button_position: Dir,
    child_rounding: f32,
    child_border_size: f32,
    popup_rounding: f32,
    popup_border_size: f32,
    frame_padding: Vec2,
    frame_rounding: f32,
    frame_border_size: f32,
    item_spacing: Vec2,
    item_inner_spacing: Vec2,
    cell_padding: Vec2,
    touch_extra_padding: Vec2,
    indent_spacing: f32,
    columns_min_spacing: f32,
    scrollbar_size: f32,
    scrollbar_rounding: f32,
    grab_min_size: f32,
    grab_rounding: f32,
    log_slider_deadzone: f32,
    tab_rounding: f32,
    tab_border_size: f32,
    tab_min_width_for_close_button: f32,
    color_button_position: Dir,
    button_text_align: Vec2,
    selectable_text_align: Vec2,
    display_window_padding: Vec2,
    display_safe_area_padding: Vec2,
    mouse_cursor_scale: f32,
    anti_aliased_lines: bool,
    anti_aliased_lines_use_tex: bool,
    anti_aliased_fill: bool,
    curve_tessellation_tol: f32,
    circle_tessellation_max_error: f32,
    colors: [Col.count]Vec4,

    extern fn ImGuiStyle_init() Style;
    pub const init = ImGuiStyle_init;
    extern fn ImGuiStyle_ScaleAllSizes(self: *Style, scale_factor: f32) void;
    pub const scaleAllSizes = ImGuiStyle_ScaleAllSizes;
};

pub const KeyData = extern struct {
    down: bool,
    down_duration: f32,
    down_duration_prev: f32,
    analog_value: f32,
};

pub const IO = extern struct {
    config_flags: ConfigFlags,
    backend_flags: BackendFlags,
    display_size: Vec2,
    delta_time: f32,
    ini_saving_rate: f32,
    ini_filename: ?[*:0]const u8,
    log_filename: ?[*:0]const u8,
    mouse_double_click_time: f32,
    mouse_double_click_max_dist: f32,
    mouse_drag_threshold: f32,
    key_repeat_delay: f32,
    key_repeat_rate: f32,
    hover_delay_normal: f32,
    hover_delay_short: f32,
    user_data: ?*anyopaque,

    fonts: ?*FontAtlas,
    font_global_scale: f32,
    font_allow_user_scaling: bool,
    font_default: ?*Font,
    display_framebuffer_scale: Vec2,

    mouse_draw_cursor: bool,
    config_mac_osx_behaviors: bool,
    config_input_trickle_event_queue: bool,
    config_input_text_cursor_blink: bool,
    config_input_text_enter_keep_active: bool,
    config_drag_click_to_input_text: bool,
    config_windows_resize_from_edges: bool,
    config_windows_move_from_title_bar_only: bool,
    config_memory_compact_timer: f32,

    backend_platform_name: ?[*:0]const u8,
    backend_renderer_name: ?[*:0]const u8,
    backend_platform_user_data: ?*anyopaque,
    backend_renderer_user_data: ?*anyopaque,
    backend_language_user_data: ?*anyopaque,

    get_clipboard_text_fn: *const fn (user_data: ?*anyopaque) callconv(.C) [*:0]const u8,
    set_clipboard_text_fn: *const fn (user_data: ?*anyopaque, text: [*:0]const u8) callconv(.C) void,
    clipboard_user_data: ?*anyopaque,

    set_platform_ime_data_fn: *const fn (viewport: *Viewport, data: *PlatformImeData) callconv(.C) void,
    _unused_padding: ?*anyopaque,

    want_capture_mouse: bool,
    want_capture_keyboard: bool,
    want_text_input: bool,
    want_set_mouse_pos: bool,
    want_save_ini_settings: bool,
    nav_active: bool,
    nav_visible: bool,
    framerate: f32,
    metrics_render_vertices: c_int,
    metrics_render_indices: c_int,
    metrics_render_windows: c_int,
    metrics_active_windows: c_int,
    metrics_active_allocations: c_int,
    mouse_delta: Vec2,

    mouse_pos: Vec2,
    mouse_down: [5]bool,
    mouse_wheel: f32,
    mouse_wheel_h: f32,
    key_ctrl: bool,
    key_shift: bool,
    key_alt: bool,
    key_super: bool,

    key_mods: KeyChord,
    keys_data: [Key.count]KeyData,
    want_capture_mouse_unless_popup_close: bool,
    mouse_pos_prev: Vec2,
    mouse_clicked_pos: [5]Vec2,
    mouse_clicked_time: [5]f64,
    mouse_clicked: [5]bool,
    mouse_double_clicked: [5]bool,
    mouse_clicked_count: [5]u16,
    mouse_clicked_last_count: [5]u16,
    mouse_released: [5]bool,
    mouse_down_owned: [5]bool,
    mouse_down_owned_unless_popup_close: [5]bool,
    mouse_down_duration: [5]f32,
    mouse_down_duration_prev: [5]f32,
    mouse_drag_max_distance_sqr: [5]f32,
    pen_pressure: f32,
    app_focus_lost: bool,
    app_accepting_events: bool,
    backend_using_legacy_key_arrays: i8,
    backend_using_legacy_nav_input_array: bool,
    input_queue_surrogate: u16,
    input_queue_characters: Vector(Wchar),

    extern fn ImGuiIO_AddKeyEvent(self: *IO, key: Key, down: bool) void;
    pub const addKeyEvent = ImGuiIO_AddKeyEvent;
    extern fn ImGuiIO_AddKeyAnalogEvent(self: *IO, key: Key, down: bool, v: f32) void;
    pub const addKeyAnalogEvent = ImGuiIO_AddKeyAnalogEvent;
    extern fn ImGuiIO_AddMousePosEvent(self: *IO, x: f32, y: f32) void;
    pub const addMousePosEvent = ImGuiIO_AddMousePosEvent;
    extern fn ImGuiIO_AddMouseButtonEvent(self: *IO, button: MouseButton, down: bool) void;
    pub const addMouseButtonEvent = ImGuiIO_AddMouseButtonEvent;
    extern fn ImGuiIO_AddMouseWheelEvent(self: *IO, wh_x: f32, wh_y: f32) void;
    pub const addMouseWheelEvent = ImGuiIO_AddMouseWheelEvent;
    extern fn ImGuiIO_AddMouseViewportEvent(self: *IO, id: ID) void;
    pub const addMouseViewportEvent = ImGuiIO_AddMouseViewportEvent;
    extern fn ImGuiIO_AddFocusEvent(self: *IO, focused: bool) void;
    pub const addFocusEvent = ImGuiIO_AddFocusEvent;
    extern fn ImGuiIO_AddInputCharacter(self: *IO, c: c_uint) void;
    pub const addInputCharacter = ImGuiIO_AddInputCharacter;
    extern fn ImGuiIO_AddInputCharacterUTF16(self: *IO, c: u16) void;
    pub const addInputCharacterUTF16 = ImGuiIO_AddInputCharacterUTF16;
    extern fn ImGuiIO_AddInputCharactersUTF8(self: *IO, str: [*:0]const u8) void;
    pub const addInputCharactersUTF8 = ImGuiIO_AddInputCharactersUTF8;
    extern fn ImGuiIO_SetKeyEventNativeData(self: *IO, key: Key, native_keycode: c_int, native_scancode: c_int, native_legacy_index: c_int) void;
    pub const setKeyEventNativeData = ImGuiIO_SetKeyEventNativeData;
    extern fn ImGuiIO_SetAppAcceptingEvents(self: *IO, accepting_events: bool) void;
    pub const setAppAcceptingEvents = ImGuiIO_SetAppAcceptingEvents;
    extern fn ImGuiIO_init() IO;
    pub const init = ImGuiIO_init;
};

pub const InputTextCallbackData = extern struct {
    event_flag: InputTextFlags,
    flags: InputTextFlags,
    user_data: ?*anyopaque,
    event_char: Wchar,
    event_key: Key,
    buf: ?[*]u8,
    buf_text_len: c_int,
    buf_size: c_int,
    buf_dirty: bool,
    cursor_pos: c_int,
    selection_start: c_int,
    selection_end: c_int,

    extern fn ImGuiInputTextCallbackData_init() InputTextCallbackData;
    pub const init = ImGuiInputTextCallbackData_init;
    extern fn ImGuiInputTextCallbackData_DeleteChars(self: *InputTextCallbackData, pos: c_int, bytes_count: c_int) void;
    pub const deleteChars = ImGuiInputTextCallbackData_DeleteChars;
    extern fn ImGuiInputTextCallbackData_InsertChars(self: *InputTextCallbackData, pos: c_int, text: [*]const u8, text_end: ?[*]const u8) void;
    pub const insertChars = ImGuiInputTextCallbackData_InsertChars;
};

pub const SizeCallbackData = extern struct {
    user_data: ?*anyopaque,
    pos: Vec2,
    current_size: Vec2,
    desired_size: Vec2,
};

pub const Payload = extern struct {
    data: ?*anyopaque,
    data_size: c_int,
    _source_id: ID,
    _source_parent_id: ID,
    _data_frame_count: c_int,
    _data_type: [32 + 1]u8,
    _preview: bool,
    _delivery: bool,
};

pub const TableColumnSortSpecs = extern struct {
    column_user_id: ID,
    column_index: i16,
    sort_order: i16,
    sort_direction: SortDirection,
};

pub const TableSortSpecs = extern struct {
    specs: ?*const TableColumnSortSpecs,
    specs_count: c_int,
    specs_dirty: bool,
};

pub const OnceUponAFrame = extern struct {
    ref_frame: c_int,
};

pub const TextFilter = extern struct {
    pub const TextRange = extern struct {
        b: ?[*]const u8,
        e: ?[*]const u8,
    };
    input_buf: [256]u8,
    filters: Vector(TextRange),
    count_grep: c_int,

    extern fn ImGuiTextFilter_init(default_filter: [*:0]const u8) TextFilter;
    pub const init = ImGuiTextFilter_init;
    extern fn ImGuiTextFilter_Draw(self: *TextFilter, label: [*:0]const u8, width: f32) bool;
    pub const draw = ImGuiTextFilter_Draw;
    extern fn ImGuiTextFilter_PassFilter(self: *const TextFilter, text: [*]const u8, text_end: ?[*]const u8) bool;
    pub const passFilter = ImGuiTextFilter_PassFilter;
    extern fn ImGuiTextFilter_Build(self: *TextFilter) void;
    pub const build = ImGuiTextFilter_Build;
};

pub const TextBuffer = extern struct {
    buf: Vector(u8),

    extern fn ImGuiTextBuffer_append(self: *TextBuffer, str: [*]const u8, str_end: ?[*]const u8) void;
    pub const append = ImGuiTextBuffer_append;
    extern fn ImGuiTextBuffer_appendf(self: *TextBuffer, fmt: [*:0]const u8, ...) void;
    pub const appendf = ImGuiTextBuffer_appendf;
};

pub const Storage = extern struct {
    pub const StoragePair = extern struct {
        key: ID,
        val: extern union { i: c_int, f: f32, p: ?*anyopaque },
    };

    data: Vector(StoragePair),

    extern fn ImGuiStorage_GetInt(self: *const Storage, key: ID, default_val: c_int) c_int;
    pub const getInt = ImGuiStorage_GetInt;
    extern fn ImGuiStorage_SetInt(self: *Storage, key: ID, val: c_int) void;
    pub const setInt = ImGuiStorage_SetInt;
    extern fn ImGuiStorage_GetBool(self: *const Storage, key: ID, default_val: bool) bool;
    pub const getBool = ImGuiStorage_GetBool;
    extern fn ImGuiStorage_SetBool(self: *Storage, key: ID, val: bool) void;
    pub const setBool = ImGuiStorage_SetBool;
    extern fn ImGuiStorage_GetFloat(self: *const Storage, key: ID, default_val: f32) f32;
    pub const getFloat = ImGuiStorage_GetFloat;
    extern fn ImGuiStorage_SetFloat(self: *Storage, key: ID, val: f32) void;
    pub const setFloat = ImGuiStorage_SetFloat;
    extern fn ImGuiStorage_GetVoidPtr(self: *const Storage, key: ID) ?*anyopaque;
    pub const getVoidPtr = ImGuiStorage_GetVoidPtr;
    extern fn ImGuiStorage_SetVoidPtr(self: *Storage, key: ID, val: ?*anyopaque) void;
    pub const setVoidPtr = ImGuiStorage_SetVoidPtr;
    extern fn ImGuiStorage_GetIntRef(self: *Storage, key: ID, default_val: c_int) *c_int;
    pub const getIntRef = ImGuiStorage_GetIntRef;
    extern fn ImGuiStorage_GetBoolRef(self: *Storage, key: ID, default_val: bool) *bool;
    pub const getBoolRef = ImGuiStorage_GetBoolRef;
    extern fn ImGuiStorage_GetFloatRef(self: *Storage, key: ID, default_val: f32) *f32;
    pub const getFloatRef = ImGuiStorage_GetFloatRef;
    extern fn ImGuiStorage_GetVoidPtrRef(self: *Storage, key: ID, default_val: ?*anyopaque) *?*anyopaque;
    pub const getVoidPtrRef = ImGuiStorage_GetVoidPtrRef;
    extern fn ImGuiStorage_SetAllInt(self: *Storage, val: c_int) void;
    pub const setAllInt = ImGuiStorage_SetAllInt;
    extern fn ImGuiStorage_BuildSortByKey(self: *Storage) void;
    pub const buildSortByKey = ImGuiStorage_BuildSortByKey;
};

pub const ListClipper = extern struct {
    display_start: c_int,
    display_end: c_int,
    _items_count: c_int,
    _items_height: f32,
    _start_pos_y: f32,
    _temp_data: ?*anyopaque,

    extern fn ImGuiListClipper_init() ListClipper;
    pub const init = ImGuiListClipper_init;
    extern fn ImGuiListClipper_deinit(self: *ListClipper) void;
    pub const deinit = ImGuiListClipper_deinit;
    extern fn ImGuiListClipper_Begin(self: *ListClipper, items_count: c_int, items_height: f32) void;
    pub const begin = ImGuiListClipper_Begin;
    extern fn ImGuiListClipper_End(self: *ListClipper) void;
    pub const end = ImGuiListClipper_End;
    extern fn ImGuiListClipper_Step(self: *ListClipper) bool;
    pub const step = ImGuiListClipper_Step;
    extern fn ImGuiListClipper_ForceDisplayRangeByIndices(self: *ListClipper, item_min: c_int, item_max: c_int) void;
    pub const forceDisplayRangeByIndices = ImGuiListClipper_ForceDisplayRangeByIndices;
};

pub const Color = extern struct {
    value: Vec4,
};

pub const DrawCallback = fn (parent_list: *const DrawList, cmd: *const DrawCmd) callconv(.C) void;

pub const DrawCmd = extern struct {
    clip_rect: Vec4,
    texture_id: TextureID,
    vtx_offset: c_uint,
    idx_offset: c_uint,
    elem_count: c_uint,
    user_callback: ?*const DrawCallback,
    user_callback_data: ?*anyopaque,
};

pub const DrawVert = extern struct {
    pos: Vec2,
    uv: Vec2,
    col: u32,
};

pub const DrawCmdHeader = extern struct {
    clip_rect: Vec4,
    texture_id: TextureID,
    vtx_offset: c_uint,
};

pub const DrawChannel = extern struct {
    _cmd_buffer: Vector(DrawCmd),
    _idx_buffer: Vector(DrawIdx),
};

pub const DrawListSplitter = extern struct {
    _current: c_int,
    _count: c_int,
    _channels: Vector(DrawChannel),

    extern fn ImDrawListSplitter_ClearFreeMemory(self: *DrawListSplitter) void;
    pub const clearFreeMemory = ImDrawListSplitter_ClearFreeMemory;
    extern fn ImDrawListSplitter_Split(self: *DrawListSplitter, draw_list: *DrawList, count: c_int) void;
    pub const split = ImDrawListSplitter_Split;
    extern fn ImDrawListSplitter_Merge(self: *DrawListSplitter, draw_list: *DrawList) void;
    pub const merge = ImDrawListSplitter_Merge;
    extern fn ImDrawListSplitter_SetCurrentChannel(self: *DrawListSplitter, draw_list: *DrawList, channel_idx: c_int) void;
    pub const setCurrentChannel = ImDrawListSplitter_SetCurrentChannel;
};

pub const DrawFlags = packed struct {
    closed: bool = false,
    _: u3 = 0,
    round_corners_top_left: bool = false,
    round_corners_top_right: bool = false,
    round_corners_bottom_left: bool = false,
    round_corners_bottom_right: bool = false,
    round_corners_none: bool = false,
    __: u23 = 0,

    pub const round_corners_top = DrawFlags{ .round_corners_top_left = true, .round_corners_top_right = true };
    pub const round_corners_bottom = DrawFlags{ .round_corners_bottom_left = true, .round_corners_bottom_right = true };
    pub const round_corners_left = DrawFlags{ .round_corners_top_left = true, .round_corners_bottom_left = true };
    pub const round_corners_right = DrawFlags{ .round_corners_top_right = true, .round_corners_bottom_right = true };
    pub const round_corners_all = DrawFlags{ .round_corners_top_left = true, .round_corners_top_right = true, .round_corners_bottom_left = true, .round_corners_bottom_right = true };
};

pub const DrawListFlags = packed struct {
    anti_aliased_lines: bool = false,
    anti_aliased_lines_use_tex: bool = false,
    anti_aliased_fill: bool = false,
    allow_vtx_offset: bool = false,
    _: u28 = 0,
};

pub const DrawList = extern struct {
    cmd_buffer: Vector(DrawCmd),
    idx_buffer: Vector(DrawIdx),
    vtx_buffer: Vector(DrawVert),
    flags: DrawListFlags,
    _vtx_current_idx: c_uint,
    _data: *DrawListSharedData,
    _owner_name: ?[*:0]const u8,
    _vtx_write_ptr: ?*DrawVert,
    _idx_write_ptr: ?*DrawIdx,
    _clip_rect_stack: Vector(Vec4),
    _texture_id_stack: Vector(TextureID),
    _path: Vector(Vec2),
    _cmd_header: DrawCmdHeader,
    _splitter: DrawListSplitter,
    _fringe_scale: f32,

    extern fn ImDrawList_PushClipRect(self: *DrawList, clip_rect_min: Vec2, clip_rect_max: Vec2, intersect_with_current_clip_rect: bool) void;
    pub const pushClipRect = ImDrawList_PushClipRect;
    extern fn ImDrawList_PushClipRectFullScreen(self: *DrawList) void;
    pub const pushClipRectFullScreen = ImDrawList_PushClipRectFullScreen;
    extern fn ImDrawList_PopClipRect(self: *DrawList) void;
    pub const popClipRect = ImDrawList_PopClipRect;
    extern fn ImDrawList_PushTextureID(self: *DrawList, texture_id: TextureID) void;
    pub const pushTextureID = ImDrawList_PushTextureID;
    extern fn ImDrawList_PopTextureID(self: *DrawList) void;
    pub const popTextureID = ImDrawList_PopTextureID;
    extern fn ImDrawList_AddLine(self: *DrawList, p1: Vec2, p2: Vec2, col: u32, thickness: f32) void;
    pub const addLine = ImDrawList_AddLine;
    extern fn ImDrawList_AddRect(self: *DrawList, p_min: Vec2, p_max: Vec2, col: u32, rounding: f32, flags: DrawFlags, thickness: f32) void;
    pub const addRect = ImDrawList_AddRect;
    extern fn ImDrawList_AddRectFilled(self: *DrawList, p_min: Vec2, p_max: Vec2, col: u32, rounding: f32, flags: DrawFlags) void;
    pub const addRectFilled = ImDrawList_AddRectFilled;
    extern fn ImDrawList_AddRectFilledMultiColor(self: *DrawList, p_min: Vec2, p_max: Vec2, col_upr_left: u32, col_upr_right: u32, col_bot_right: u32, col_bot_left: u32) void;
    pub const addRectFilledMultiColor = ImDrawList_AddRectFilledMultiColor;
    extern fn ImDrawList_AddQuad(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, p4: Vec2, col: u32, thickness: f32) void;
    pub const addQuad = ImDrawList_AddQuad;
    extern fn ImDrawList_AddQuadFilled(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, p4: Vec2, col: u32) void;
    pub const addQuadFilled = ImDrawList_AddQuadFilled;
    extern fn ImDrawList_AddTriangle(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, col: u32, thickness: f32) void;
    pub const addTriangle = ImDrawList_AddTriangle;
    extern fn ImDrawList_AddTriangleFilled(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, col: u32) void;
    pub const addTriangleFilled = ImDrawList_AddTriangleFilled;
    extern fn ImDrawList_AddCircle(self: *DrawList, center: Vec2, radius: f32, col: u32, num_segments: c_int, thickness: f32) void;
    pub const addCircle = ImDrawList_AddCircle;
    extern fn ImDrawList_AddCircleFilled(self: *DrawList, center: Vec2, radius: f32, col: u32, num_segments: c_int) void;
    pub const addCircleFilled = ImDrawList_AddCircleFilled;
    extern fn ImDrawList_AddNgon(self: *DrawList, center: Vec2, radius: f32, col: u32, num_segments: c_int, thickness: f32) void;
    pub const addNgon = ImDrawList_AddNgon;
    extern fn ImDrawList_AddNgonFilled(self: *DrawList, center: Vec2, radius: f32, col: u32, num_segments: c_int) void;
    pub const addNgonFilled = ImDrawList_AddNgonFilled;
    extern fn ImDrawList_AddText(self: *DrawList, font: ?*const Font, font_size: f32, pos: Vec2, col: u32, text_begin: [*]const u8, text_end: ?[*]const u8, wrap_width: f32, cpu_fine_clip_rect: ?*const Vec4) void;
    pub const addText = ImDrawList_AddText;
    extern fn ImDrawList_AddPolyline(self: *DrawList, points: [*]const Vec2, num_points: c_int, col: u32, flags: DrawFlags, thickness: f32) void;
    pub const addPolyline = ImDrawList_AddPolyline;
    extern fn ImDrawList_AddConvexPolyFilled(self: *DrawList, points: [*]const Vec2, num_points: c_int, col: u32) void;
    pub const addConvexPolyFilled = ImDrawList_AddConvexPolyFilled;
    extern fn ImDrawList_AddBezierCubic(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, p4: Vec2, col: u32, thickness: f32, num_segments: c_int) void;
    pub const addBezierCubic = ImDrawList_AddBezierCubic;
    extern fn ImDrawList_AddBezierQuadratic(self: *DrawList, p1: Vec2, p2: Vec2, p3: Vec2, col: u32, thickness: f32, num_segments: c_int) void;
    pub const addBezierQuadratic = ImDrawList_AddBezierQuadratic;
    extern fn ImDrawList_AddImage(self: *DrawList, user_texture_id: TextureID, p_min: Vec2, p_max: Vec2, uv_min: Vec2, uv_max: Vec2, col: u32) void;
    pub const addImage = ImDrawList_AddImage;
    extern fn ImDrawList_AddImageQuad(self: *DrawList, user_texture_id: TextureID, p1: Vec2, p2: Vec2, p3: Vec2, p4: Vec2, uv1: Vec2, uv2: Vec2, uv3: Vec2, uv4: Vec2, col: u32) void;
    pub const addImageQuad = ImDrawList_AddImageQuad;
    extern fn ImDrawList_AddImageRounded(self: *DrawList, user_texture_id: TextureID, p_min: Vec2, p_max: Vec2, uv_min: Vec2, uv_max: Vec2, col: u32, rounding: f32, flags: DrawFlags) void;
    pub const addImageRounded = ImDrawList_AddImageRounded;
    extern fn ImDrawList_PathArcTo(self: *DrawList, center: Vec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
    pub const pathArcTo = ImDrawList_PathArcTo;
    extern fn ImDrawList_PathArcToFast(self: *DrawList, center: Vec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
    pub const pathArcToFast = ImDrawList_PathArcToFast;
    extern fn ImDrawList_PathBezierCubicCurveTo(self: *DrawList, p2: Vec2, p3: Vec2, p4: Vec2, num_segments: c_int) void;
    pub const pathBezierCubicCurveTo = ImDrawList_PathBezierCubicCurveTo;
    extern fn ImDrawList_PathBezierQuadraticCurveTo(self: *DrawList, p2: Vec2, p3: Vec2, num_segments: c_int) void;
    pub const pathBezierQuadraticCurveTo = ImDrawList_PathBezierQuadraticCurveTo;
    extern fn ImDrawList_PathRect(self: *DrawList, rect_min: Vec2, rect_max: Vec2, rounding: f32, flags: DrawFlags) void;
    pub const pathRect = ImDrawList_PathRect;
    extern fn ImDrawList_AddCallback(self: *DrawList, callback: *const DrawCallback, callback_data: ?*anyopaque) void;
    pub const addCallback = ImDrawList_AddCallback;
    extern fn ImDrawList_AddDrawCmd(self: *DrawList) void;
    pub const addDrawCmd = ImDrawList_AddDrawCmd;
    extern fn ImDrawList_CloneOutput(self: *const DrawList) *DrawList;
    pub const cloneOutput = ImDrawList_CloneOutput;
    extern fn ImDrawList_PrimReserve(self: *DrawList, idx_count: c_int, vtx_count: c_int) void;
    pub const primReserve = ImDrawList_PrimReserve;
    extern fn ImDrawList_PrimUnreserve(self: *DrawList, idx_count: c_int, vtx_count: c_int) void;
    pub const primUnreserve = ImDrawList_PrimUnreserve;
    extern fn ImDrawList_PrimRect(self: *DrawList, a: Vec2, b: Vec2, col: u32) void;
    pub const primRect = ImDrawList_PrimRect;
    extern fn ImDrawList_PrimRectUV(self: *DrawList, a: Vec2, b: Vec2, uv_a: Vec2, uv_b: Vec2, col: u32) void;
    pub const primRectUV = ImDrawList_PrimRectUV;
    extern fn ImDrawList_PrimQuadUV(self: *DrawList, a: Vec2, b: Vec2, c: Vec2, d: Vec2, uv_a: Vec2, uv_b: Vec2, uv_c: Vec2, uv_d: Vec2, col: u32) void;
    pub const primQuadUV = ImDrawList_PrimQuadUV;
};

pub const DrawData = extern struct {
    valid: bool,
    cmd_lists_count: c_int,
    total_idx_count: c_int,
    total_vtx_count: c_int,
    cmd_lists: [*]*DrawList,
    display_pos: Vec2,
    display_size: Vec2,
    framebuffer_scale: Vec2,

    extern fn ImDrawData_DeIndexAllBuffers(self: *DrawData) void;
    pub const deIndexAllBuffers = ImDrawData_DeIndexAllBuffers;
    extern fn ImDrawData_ScaleClipRects(self: *DrawData, fb_scale: Vec2) void;
    pub const scaleClipRects = ImDrawData_ScaleClipRects;
};

pub const FontConfig = extern struct {
    font_data: ?*anyopaque,
    font_data_size: c_int,
    font_data_owned_by_atlas: bool,
    font_no: c_int,
    size_pixels: f32,
    oversample_h: c_int,
    oversample_v: c_int,
    pixel_snap_h: bool,
    glyph_extra_spacing: Vec2,
    glyph_offset: Vec2,
    glyph_ranges: ?[*:0]const Wchar,
    glyph_min_advance_x: f32,
    glyph_max_advance_x: f32,
    merge_mode: bool,
    font_builder_flags: c_uint,
    rasterizer_multiply: f32,
    ellipsis_char: Wchar,
    _name: [40]u8,
    _dst_font: ?*Font,

    extern fn ImFontConfig_init() FontConfig;
    pub const init = ImFontConfig_init;
};

pub const FontGlyph = packed struct {
    colored: bool,
    visible: bool,
    codepoint: u30,
    advance_x: f32,
    x0: f32,
    y0: f32,
    x1: f32,
    y1: f32,
    u0: f32,
    v0: f32,
    u1: f32,
    v1: f32,

    extern fn ImFontGlyphRangesBuilder_AddText(self: *FontGlyphRangesBuilder, text: [*]const u8, text_end: ?[*]const u8) void;
    pub const addText = ImFontGlyphRangesBuilder_AddText;
    extern fn ImFontGlyphRangesBuilder_AddRanges(self: *FontGlyphRangesBuilder, ranges: [*:0]const Wchar) void;
    pub const addRanges = ImFontGlyphRangesBuilder_AddRanges;
    extern fn ImFontGlyphRangesBuilder_BuildRanges(self: *FontGlyphRangesBuilder, out_ranges: *Vector(Wchar)) void;
    pub const buildRanges = ImFontGlyphRangesBuilder_BuildRanges;
};

pub const FontGlyphRangesBuilder = extern struct {
    used_chars: Vector(u32),
};

pub const FontAtlasCustomRect = extern struct {
    width: c_ushort,
    height: c_ushort,
    x: c_ushort,
    y: c_ushort,
    glyph_id: c_uint,
    glyph_advance_x: f32,
    glyph_offset: Vec2,
    font: ?*Font,
};

pub const FontAtlasFlags = packed struct {
    no_power_of_two_height: bool = false,
    no_mouse_cursors: bool = false,
    no_baked_lines: bool = false,
    _: u29 = 0,
};

pub const FontAtlas = extern struct {
    flags: FontAtlasFlags,
    tex_id: TextureID,
    tex_desired_width: c_int,
    tex_glyph_padding: c_int,
    locked: bool,
    user_data: ?*anyopaque,
    _tex_ready: bool,
    _tex_pixels_use_colors: bool,
    _tex_pixels_alpha8: [*]u8,
    _tex_pixels_rgba32: [*]c_uint,
    _tex_width: c_int,
    _tex_height: c_int,
    _tex_uv_scale: Vec2,
    _tex_uv_white_pixel: Vec2,
    _fonts: Vector(*Font),
    _custom_rects: Vector(FontAtlasCustomRect),
    _config_data: Vector(FontConfig),
    _tex_uv_lines: [64]Vec4,
    _font_builder_io: ?*FontBuilderIO,
    _font_builder_flags: c_uint,
    _pack_id_mouse_cursors: c_int,
    _pack_id_lines: c_int,

    extern fn ImFontAtlas_init() FontAtlas;
    pub const init = ImFontAtlas_init;
    extern fn ImFontAtlas_deinit(self: *FontAtlas) void;
    pub const deinit = ImFontAtlas_deinit;
    extern fn ImFontAtlas_AddFont(self: *FontAtlas, font_cfg: *const FontConfig) *Font;
    pub const addFont = ImFontAtlas_AddFont;
    extern fn ImFontAtlas_AddFontDefault(self: *FontAtlas, font_cfg: ?*const FontConfig) *Font;
    pub const addFontDefault = ImFontAtlas_AddFontDefault;
    extern fn ImFontAtlas_AddFontFromFileTTF(self: *FontAtlas, filename: [*:0]const u8, size_pixels: f32, font_cfg: ?*const FontConfig, glyph_ranges: ?[*:0]const Wchar) *Font;
    pub const addFontFromFileTTF = ImFontAtlas_AddFontFromFileTTF;
    extern fn ImFontAtlas_AddFontFromMemoryTTF(self: *FontAtlas, font_data: ?*anyopaque, font_size: c_int, size_pixels: f32, font_cfg: ?*const FontConfig, glyph_ranges: ?[*:0]const Wchar) *Font;
    pub const addFontFromMemoryTTF = ImFontAtlas_AddFontFromMemoryTTF;
    extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: *FontAtlas, compressed_font_data: *const anyopaque, compressed_font_size: c_int, size_pixels: f32, font_cfg: ?*const FontConfig, glyph_ranges: ?[*:0]const Wchar) *Font;
    pub const addFontFromMemoryCompressedTTF = ImFontAtlas_AddFontFromMemoryCompressedTTF;
    extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: *FontAtlas, compressed_font_data_base85: [*]const u8, size_pixels: f32, font_cfg: ?*const FontConfig, glyph_ranges: ?[*:0]const Wchar) *Font;
    pub const addFontFromMemoryCompressedBase85TTF = ImFontAtlas_AddFontFromMemoryCompressedBase85TTF;
    extern fn ImFontAtlas_ClearInputData(self: *FontAtlas) void;
    pub const clearInputData = ImFontAtlas_ClearInputData;
    extern fn ImFontAtlas_ClearTexData(self: *FontAtlas) void;
    pub const clearTexData = ImFontAtlas_ClearTexData;
    extern fn ImFontAtlas_ClearFonts(self: *FontAtlas) void;
    pub const clearFonts = ImFontAtlas_ClearFonts;
    extern fn ImFontAtlas_Clear(self: *FontAtlas) void;
    pub const clear = ImFontAtlas_Clear;
    extern fn ImFontAtlas_Build(self: *FontAtlas) bool;
    pub const build = ImFontAtlas_Build;
    extern fn ImFontAtlas_GetTexDataAsAlpha8(self: *FontAtlas, out_pixels: *[*]u8, out_width: *c_int, out_height: *c_int, out_bytes_per_pixel: ?*c_int) void;
    pub const getTexDataAsAlpha8 = ImFontAtlas_GetTexDataAsAlpha8;
    extern fn ImFontAtlas_GetTexDataAsRGBA32(self: *FontAtlas, out_pixels: *[*]u8, out_width: *c_int, out_height: *c_int, out_bytes_per_pixel: ?*c_int) void;
    pub const getTexDataAsRGBA32 = ImFontAtlas_GetTexDataAsRGBA32;
    extern fn ImFontAtlas_GetGlyphRangesDefault(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesDefault = ImFontAtlas_GetGlyphRangesDefault;
    extern fn ImFontAtlas_GetGlyphRangesGreek(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesGreek = ImFontAtlas_GetGlyphRangesGreek;
    extern fn ImFontAtlas_GetGlyphRangesKorean(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesKorean = ImFontAtlas_GetGlyphRangesKorean;
    extern fn ImFontAtlas_GetGlyphRangesJapanese(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesJapanese = ImFontAtlas_GetGlyphRangesJapanese;
    extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesChineseFull = ImFontAtlas_GetGlyphRangesChineseFull;
    extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesChineseSimplifiedCommon = ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon;
    extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesCyrillic = ImFontAtlas_GetGlyphRangesCyrillic;
    extern fn ImFontAtlas_GetGlyphRangesThai(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesThai = ImFontAtlas_GetGlyphRangesThai;
    extern fn ImFontAtlas_GetGlyphRangesVietnamese(self: *FontAtlas) [*:0]const Wchar;
    pub const getGlyphRangesVietnamese = ImFontAtlas_GetGlyphRangesVietnamese;
    extern fn ImFontAtlas_AddCustomRectRegular(self: *FontAtlas, width: c_int, height: c_int) c_int;
    pub const addCustomRectRegular = ImFontAtlas_AddCustomRectRegular;
    extern fn ImFontAtlas_AddCustomRectFontGlyph(self: *FontAtlas, font: *Font, id: Wchar, width: c_int, height: c_int, advance_x: f32, offset: Vec2) c_int;
    pub const addCustomRectFontGlyph = ImFontAtlas_AddCustomRectFontGlyph;
};

pub const Font = extern struct {
    index_advance_x: Vector(f32),
    fallback_advance_x: f32,
    font_size: f32,
    index_lookup: Vector(Wchar),
    glyphs: Vector(FontGlyph),
    fallback_glyph: ?*const FontGlyph,
    container_atlas: ?*FontAtlas,
    config_data: ?*const FontConfig,
    config_data_count: c_short,
    fallback_char: Wchar,
    ellipsis_char: Wchar,
    dot_char: Wchar,
    dirty_lookup_tables: bool,
    scale: f32,
    ascent: f32,
    descent: f32,
    metrics_total_surface: c_int,
    used_4k_pages_map: [2]u8,

    extern fn ImFont_init() Font;
    pub const init = ImFont_init;
    extern fn ImFont_deinit(self: *Font) void;
    pub const deinit = ImFont_deinit;
    extern fn ImFont_FindGlyph(self: *const Font, c: Wchar) ?*const FontGlyph;
    pub const findGlyph = ImFont_FindGlyph;
    extern fn ImFont_FindGlyphNoFallback(self: *const Font, c: Wchar) ?*const FontGlyph;
    pub const findGlyphNoFallback = ImFont_FindGlyphNoFallback;
    extern fn ImFont_CalcTextSizeA(self: *const Font, size: f32, max_width: f32, wrap_width: f32, text_begin: [*]const u8, text_end: ?[*]const u8, remaining: ?*[*]const u8) Vec2;
    pub const calcTextSizeA = ImFont_CalcTextSizeA;
    extern fn ImFont_CalcWordWrapPositionA(self: *const Font, scale: f32, text: [*]const u8, text_end: ?[*]const u8, wrap_width: f32) [*]const u8;
    pub const calcWordWrapPositionA = ImFont_CalcWordWrapPositionA;
    extern fn ImFont_RenderChar(self: *const Font, draw_list: *DrawList, size: f32, pos: Vec2, col: u32, c: Wchar) void;
    pub const renderChar = ImFont_RenderChar;
    extern fn ImFont_RenderText(self: *const Font, draw_list: *DrawList, size: f32, pos: Vec2, col: u32, clip_rect: Vec4, text_begin: [*]const u8, text_end: ?[*]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
    pub const renderText = ImFont_RenderText;
};

pub const ViewportFlags = packed struct {
    is_platform_window: bool = false,
    is_platform_monitor: bool = false,
    owned_by_app: bool = false,
    _: u29 = 0,
};

pub const Viewport = extern struct {
    flags: ViewportFlags,
    pos: Vec2,
    size: Vec2,
    work_pos: Vec2,
    work_size: Vec2,
    platform_handle_raw: ?*anyopaque,
};

pub const PlatformImeData = extern struct {
    want_visible: bool,
    input_pos: Vec2,
    input_line_height: f32,
};

const testing = @import("std").testing;

test {
    testing.refAllDeclsRecursive(@This());
}
test {
    try testing.expect(checkVersion());
}
