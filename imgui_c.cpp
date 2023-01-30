#include "imgui.h"

#ifndef IMGUI_C_API
#define IMGUI_C_API extern "C"
#endif

#define VA_WRAP(X)       \
    va_list args;        \
    va_start(args, fmt); \
    X;                   \
    va_end(args);

#define VA_WRAP_RET(X)   \
    va_list args;        \
    va_start(args, fmt); \
    auto ret = X;        \
    va_end(args);        \
    return ret;

IMGUI_C_API ImGuiContext* ImGui_CreateContext(ImFontAtlas* shared_font_atlas) { return ImGui::CreateContext(shared_font_atlas); }
IMGUI_C_API void ImGui_DestroyContext(ImGuiContext* ctx) { return ImGui::DestroyContext(ctx); }
IMGUI_C_API ImGuiContext* ImGui_GetCurrentContext() { return ImGui::GetCurrentContext(); }
IMGUI_C_API void ImGui_SetCurrentContext(ImGuiContext* ctx) { return ImGui::SetCurrentContext(ctx); }

IMGUI_C_API ImGuiIO* ImGui_GetIO() { return &ImGui::GetIO(); }
IMGUI_C_API ImGuiStyle* ImGui_GetStyle() { return &ImGui::GetStyle(); }
IMGUI_C_API void ImGui_NewFrame() { return ImGui::NewFrame(); }
IMGUI_C_API void ImGui_EndFrame() { return ImGui::EndFrame(); }
IMGUI_C_API void ImGui_Render() { return ImGui::Render(); }
IMGUI_C_API ImDrawData* ImGui_GetDrawData() { return ImGui::GetDrawData(); }

IMGUI_C_API void ImGui_ShowDemoWindow(bool* p_open) { return ImGui::ShowDemoWindow(p_open); }
IMGUI_C_API void ImGui_ShowMetricsWindow(bool* p_open) { return ImGui::ShowMetricsWindow(p_open); }
IMGUI_C_API void ImGui_ShowDebugLogWindow(bool* p_open) { return ImGui::ShowDebugLogWindow(p_open); }
IMGUI_C_API void ImGui_ShowStackToolWindow(bool* p_open) { return ImGui::ShowStackToolWindow(p_open); }
IMGUI_C_API void ImGui_ShowAboutWindow(bool* p_open) { return ImGui::ShowAboutWindow(p_open); }
IMGUI_C_API void ImGui_ShowStyleEditor(ImGuiStyle* ref) { return ImGui::ShowStyleEditor(ref); }
IMGUI_C_API bool ImGui_ShowStyleSelector(const char* label) { return ImGui::ShowStyleSelector(label); }
IMGUI_C_API void ImGui_ShowFontSelector(const char* label) { return ImGui::ShowFontSelector(label); }
IMGUI_C_API void ImGui_ShowUserGuide() { return ImGui::ShowUserGuide(); }
IMGUI_C_API const char* ImGui_GetVersion() { return ImGui::GetVersion(); }

IMGUI_C_API void ImGui_StyleColorsDark(ImGuiStyle* dst) { return ImGui::StyleColorsDark(dst); }
IMGUI_C_API void ImGui_StyleColorsLight(ImGuiStyle* dst) { return ImGui::StyleColorsLight(dst); }
IMGUI_C_API void ImGui_StyleColorsClassic(ImGuiStyle* dst) { return ImGui::StyleColorsClassic(dst); }

IMGUI_C_API bool ImGui_Begin(const char* name, bool* p_open, ImGuiWindowFlags flags) { return ImGui::Begin(name, p_open, flags); }
IMGUI_C_API void ImGui_End() { return ImGui::End(); }

IMGUI_C_API bool ImGui_BeginChild(const char* str_id, ImVec2 size, bool border, ImGuiWindowFlags flags) { return ImGui::BeginChild(str_id, size, border, flags); }
// IMGUI_C_API bool ImGui_BeginChild(ImGuiID id, ImVec2 size, bool border, ImGuiWindowFlags flags) { return ImGui::BeginChild(id, size, border, flags); }
IMGUI_C_API void ImGui_EndChild() { return ImGui::EndChild(); }

IMGUI_C_API bool ImGui_IsWindowAppearing() { return ImGui::IsWindowAppearing(); }
IMGUI_C_API bool ImGui_IsWindowCollapsed() { return ImGui::IsWindowCollapsed(); }
IMGUI_C_API bool ImGui_IsWindowFocused(ImGuiFocusedFlags flags) { return ImGui::IsWindowFocused(flags); }
IMGUI_C_API bool ImGui_IsWindowHovered(ImGuiHoveredFlags flags) { return ImGui::IsWindowHovered(flags); }
IMGUI_C_API ImDrawList* ImGui_GetWindowDrawList() { return ImGui::GetWindowDrawList(); }
IMGUI_C_API ImVec2 ImGui_GetWindowPos() { return ImGui::GetWindowPos(); }
IMGUI_C_API ImVec2 ImGui_GetWindowSize() { return ImGui::GetWindowSize(); }
IMGUI_C_API float ImGui_GetWindowWidth() { return ImGui::GetWindowWidth(); }
IMGUI_C_API float ImGui_GetWindowHeight() { return ImGui::GetWindowHeight(); }

IMGUI_C_API void ImGui_SetNextWindowPos(ImVec2 pos, ImGuiCond cond, ImVec2 pivot) { return ImGui::SetNextWindowPos(pos, cond, pivot); }
IMGUI_C_API void ImGui_SetNextWindowSize(ImVec2 size, ImGuiCond cond) { return ImGui::SetNextWindowSize(size, cond); }
IMGUI_C_API void ImGui_SetNextWindowSizeConstraints(ImVec2 size_min, ImVec2 size_max, ImGuiSizeCallback custom_callback, void* custom_callback_data) { return ImGui::SetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data); }
IMGUI_C_API void ImGui_SetNextWindowContentSize(ImVec2 size) { return ImGui::SetNextWindowContentSize(size); }
IMGUI_C_API void ImGui_SetNextWindowCollapsed(bool collapsed, ImGuiCond cond) { return ImGui::SetNextWindowCollapsed(collapsed, cond); }
IMGUI_C_API void ImGui_SetNextWindowFocus() { return ImGui::SetNextWindowFocus(); }
IMGUI_C_API void ImGui_SetNextWindowScroll(ImVec2 scroll) { return ImGui::SetNextWindowScroll(scroll); }
IMGUI_C_API void ImGui_SetNextWindowBgAlpha(float alpha) { return ImGui::SetNextWindowBgAlpha(alpha); }
IMGUI_C_API void ImGui_SetCurrentWindowPos(ImVec2 pos, ImGuiCond cond) { return ImGui::SetWindowPos(pos, cond); }
IMGUI_C_API void ImGui_SetCurrentWindowSize(ImVec2 size, ImGuiCond cond) { return ImGui::SetWindowSize(size, cond); }
IMGUI_C_API void ImGui_SetCurrentWindowCollapsed(bool collapsed, ImGuiCond cond) { return ImGui::SetWindowCollapsed(collapsed, cond); }
IMGUI_C_API void ImGui_SetCurrentWindowFocus() { return ImGui::SetWindowFocus(); }
// IMGUI_C_API void ImGui_SetCurrentWindowFontScale(float scale) { return ImGui::SetWindowFontScale(scale); }
IMGUI_C_API void ImGui_SetWindowPos(const char* name, ImVec2 pos, ImGuiCond cond) { return ImGui::SetWindowPos(name, pos, cond); }
IMGUI_C_API void ImGui_SetWindowSize(const char* name, ImVec2 size, ImGuiCond cond) { return ImGui::SetWindowSize(name, size, cond); }
IMGUI_C_API void ImGui_SetWindowCollapsed(const char* name, bool collapsed, ImGuiCond cond) { return ImGui::SetWindowCollapsed(name, collapsed, cond); }
IMGUI_C_API void ImGui_SetWindowFocus(const char* name) { return ImGui::SetWindowFocus(name); }

IMGUI_C_API ImVec2 ImGui_GetContentRegionAvail() { return ImGui::GetContentRegionAvail(); }
IMGUI_C_API ImVec2 ImGui_GetContentRegionMax() { return ImGui::GetContentRegionMax(); }
IMGUI_C_API ImVec2 ImGui_GetWindowContentRegionMin() { return ImGui::GetWindowContentRegionMin(); }
IMGUI_C_API ImVec2 ImGui_GetWindowContentRegionMax() { return ImGui::GetWindowContentRegionMax(); }

IMGUI_C_API float ImGui_GetScrollX() { return ImGui::GetScrollX(); }
IMGUI_C_API float ImGui_GetScrollY() { return ImGui::GetScrollY(); }
IMGUI_C_API void ImGui_SetScrollX(float scroll_x) { return ImGui::SetScrollX(scroll_x); }
IMGUI_C_API void ImGui_SetScrollY(float scroll_y) { return ImGui::SetScrollY(scroll_y); }
IMGUI_C_API float ImGui_GetScrollMaxX() { return ImGui::GetScrollMaxX(); }
IMGUI_C_API float ImGui_GetScrollMaxY() { return ImGui::GetScrollMaxY(); }
IMGUI_C_API void ImGui_SetScrollHereX(float center_x_ratio) { return ImGui::SetScrollHereX(center_x_ratio); }
IMGUI_C_API void ImGui_SetScrollHereY(float center_y_ratio) { return ImGui::SetScrollHereY(center_y_ratio); }
IMGUI_C_API void ImGui_SetScrollFromPosX(float local_x, float center_x_ratio) { return ImGui::SetScrollFromPosX(local_x, center_x_ratio); }
IMGUI_C_API void ImGui_SetScrollFromPosY(float local_y, float center_y_ratio) { return ImGui::SetScrollFromPosY(local_y, center_y_ratio); }

IMGUI_C_API void ImGui_PushFont(ImFont* font) { return ImGui::PushFont(font); }
IMGUI_C_API void ImGui_PopFont() { return ImGui::PopFont(); }
IMGUI_C_API void ImGui_PushStyleColorU32(ImGuiCol idx, ImU32 col) { return ImGui::PushStyleColor(idx, col); }
IMGUI_C_API void ImGui_PushStyleColorVec4(ImGuiCol idx, ImVec4 col) { return ImGui::PushStyleColor(idx, col); }
IMGUI_C_API void ImGui_PopStyleColor(int count) { return ImGui::PopStyleColor(count); }
IMGUI_C_API void ImGui_PushStyleVar(ImGuiStyleVar idx, float val) { return ImGui::PushStyleVar(idx, val); }
IMGUI_C_API void ImGui_PushStyleVar2(ImGuiStyleVar idx, ImVec2 val) { return ImGui::PushStyleVar(idx, val); }
IMGUI_C_API void ImGui_PopStyleVar(int count) { return ImGui::PopStyleVar(count); }
IMGUI_C_API void ImGui_PushAllowKeyboardFocus(bool allow_keyboard_focus) { return ImGui::PushAllowKeyboardFocus(allow_keyboard_focus); }
IMGUI_C_API void ImGui_PopAllowKeyboardFocus() { return ImGui::PopAllowKeyboardFocus(); }
IMGUI_C_API void ImGui_PushButtonRepeat(bool repeat) { return ImGui::PushButtonRepeat(repeat); }
IMGUI_C_API void ImGui_PopButtonRepeat() { return ImGui::PopButtonRepeat(); }
IMGUI_C_API void ImGui_PushItemWidth(float item_width) { return ImGui::PushItemWidth(item_width); }
IMGUI_C_API void ImGui_PopItemWidth() { return ImGui::PopItemWidth(); }
IMGUI_C_API void ImGui_SetNextItemWidth(float item_width) { return ImGui::SetNextItemWidth(item_width); }
IMGUI_C_API float ImGui_CalcItemWidth() { return ImGui::CalcItemWidth(); }
IMGUI_C_API void ImGui_PushTextWrapPos(float wrap_local_pos_x) { return ImGui::PushTextWrapPos(wrap_local_pos_x); }
IMGUI_C_API void ImGui_PopTextWrapPos() { return ImGui::PopTextWrapPos(); }

IMGUI_C_API ImFont* ImGui_GetFont() { return ImGui::GetFont(); }
IMGUI_C_API float ImGui_GetFontSize() { return ImGui::GetFontSize(); }
IMGUI_C_API ImVec2 ImGui_GetFontTexUvWhitePixel() { return ImGui::GetFontTexUvWhitePixel(); }
IMGUI_C_API ImU32 ImGui_GetColorU32(ImGuiCol idx, float alpha_mul) { return ImGui::GetColorU32(idx, alpha_mul); }
IMGUI_C_API ImU32 ImGui_GetColorU32FromVec4(ImVec4 col) { return ImGui::GetColorU32(col); }
IMGUI_C_API ImU32 ImGui_GetColorU32FromU32(ImU32 col) { return ImGui::GetColorU32(col); }
IMGUI_C_API ImVec4 ImGui_GetStyleColorVec4(ImGuiCol idx) { return ImGui::GetStyleColorVec4(idx); }

IMGUI_C_API void ImGui_Separator() { return ImGui::Separator(); }
IMGUI_C_API void ImGui_SameLine(float offset_from_start_x, float spacing) { return ImGui::SameLine(offset_from_start_x, spacing); }
IMGUI_C_API void ImGui_NewLine() { return ImGui::NewLine(); }
IMGUI_C_API void ImGui_Spacing() { return ImGui::Spacing(); }
IMGUI_C_API void ImGui_Dummy(ImVec2 size) { return ImGui::Dummy(size); }
IMGUI_C_API void ImGui_Indent(float indent_w) { return ImGui::Indent(indent_w); }
IMGUI_C_API void ImGui_Unindent(float indent_w) { return ImGui::Unindent(indent_w); }
IMGUI_C_API void ImGui_BeginGroup() { return ImGui::BeginGroup(); }
IMGUI_C_API void ImGui_EndGroup() { return ImGui::EndGroup(); }
IMGUI_C_API ImVec2 ImGui_GetCursorPos() { return ImGui::GetCursorPos(); }
IMGUI_C_API float ImGui_GetCursorPosX() { return ImGui::GetCursorPosX(); }
IMGUI_C_API float ImGui_GetCursorPosY() { return ImGui::GetCursorPosY(); }
IMGUI_C_API void ImGui_SetCursorPos(ImVec2 local_pos) { return ImGui::SetCursorPos(local_pos); }
IMGUI_C_API void ImGui_SetCursorPosX(float local_x) { return ImGui::SetCursorPosX(local_x); }
IMGUI_C_API void ImGui_SetCursorPosY(float local_y) { return ImGui::SetCursorPosY(local_y); }
IMGUI_C_API ImVec2 ImGui_GetCursorStartPos() { return ImGui::GetCursorStartPos(); }
IMGUI_C_API ImVec2 ImGui_GetCursorScreenPos() { return ImGui::GetCursorScreenPos(); }
IMGUI_C_API void ImGui_SetCursorScreenPos(ImVec2 pos) { return ImGui::SetCursorScreenPos(pos); }
IMGUI_C_API void ImGui_AlignTextToFramePadding() { return ImGui::AlignTextToFramePadding(); }
IMGUI_C_API float ImGui_GetTextLineHeight() { return ImGui::GetTextLineHeight(); }
IMGUI_C_API float ImGui_GetTextLineHeightWithSpacing() { return ImGui::GetTextLineHeightWithSpacing(); }
IMGUI_C_API float ImGui_GetFrameHeight() { return ImGui::GetFrameHeight(); }
IMGUI_C_API float ImGui_GetFrameHeightWithSpacing() { return ImGui::GetFrameHeightWithSpacing(); }

IMGUI_C_API void ImGui_PushID(const char* str_id) { return ImGui::PushID(str_id); }
// IMGUI_C_API void ImGui_PushID(const char* str_id_begin, const char* str_id_end) { return ImGui::PushID(str_id_begin, str_id_end); }
IMGUI_C_API void ImGui_PushIDPtr(const void* ptr_id) { return ImGui::PushID(ptr_id); }
IMGUI_C_API void ImGui_PushIDInt(int int_id) { return ImGui::PushID(int_id); }
IMGUI_C_API void ImGui_PopID() { return ImGui::PopID(); }
IMGUI_C_API ImGuiID ImGui_GetID(const char* str_id) { return ImGui::GetID(str_id); }
// IMGUI_C_API ImGuiID ImGui_GetID(const char* str_id_begin, const char* str_id_end) { return ImGui::GetID(str_id_begin, str_id_end); }
IMGUI_C_API ImGuiID ImGui_GetIDPtr(const void* ptr_id) { return ImGui::GetID(ptr_id); }

IMGUI_C_API void ImGui_TextUnformatted(const char* text, const char* text_end) { return ImGui::TextUnformatted(text, text_end); }
IMGUI_C_API void ImGui_Text(const char* fmt, ...) { VA_WRAP(ImGui::TextV(fmt, args)); }
IMGUI_C_API void ImGui_TextV(const char* fmt, va_list args) { return ImGui::TextV(fmt, args); }
IMGUI_C_API void ImGui_TextColored(ImVec4 col, const char* fmt, ...) { VA_WRAP(ImGui::TextColoredV(col, fmt, args)); }
IMGUI_C_API void ImGui_TextColoredV(ImVec4 col, const char* fmt, va_list args) { return ImGui::TextColoredV(col, fmt, args); }
IMGUI_C_API void ImGui_TextDisabled(const char* fmt, ...) { VA_WRAP(ImGui::TextDisabledV(fmt, args)); }
IMGUI_C_API void ImGui_TextDisabledV(const char* fmt, va_list args) { return ImGui::TextDisabledV(fmt, args); }
IMGUI_C_API void ImGui_TextWrapped(const char* fmt, ...) { VA_WRAP(ImGui::TextWrappedV(fmt, args)); }
IMGUI_C_API void ImGui_TextWrappedV(const char* fmt, va_list args) { return ImGui::TextWrappedV(fmt, args); }
IMGUI_C_API void ImGui_LabelText(const char* label, const char* fmt, ...) { VA_WRAP(ImGui::LabelTextV(label, fmt, args)); }
IMGUI_C_API void ImGui_LabelTextV(const char* label, const char* fmt, va_list args) { return ImGui::LabelTextV(label, fmt, args); }
IMGUI_C_API void ImGui_BulletText(const char* fmt, ...) { VA_WRAP(ImGui::BulletTextV(fmt, args)); }
IMGUI_C_API void ImGui_BulletTextV(const char* fmt, va_list args) { return ImGui::BulletTextV(fmt, args); }

IMGUI_C_API bool ImGui_Button(const char* label, ImVec2 size) { return ImGui::Button(label, size); }
IMGUI_C_API bool ImGui_SmallButton(const char* label) { return ImGui::SmallButton(label); }
IMGUI_C_API bool ImGui_InvisibleButton(const char* str_id, ImVec2 size, ImGuiButtonFlags flags) { return ImGui::InvisibleButton(str_id, size, flags); }
IMGUI_C_API bool ImGui_ArrowButton(const char* str_id, ImGuiDir dir) { return ImGui::ArrowButton(str_id, dir); }
IMGUI_C_API bool ImGui_Checkbox(const char* label, bool* v) { return ImGui::Checkbox(label, v); }
IMGUI_C_API bool ImGui_CheckboxFlagsInt(const char* label, int* flags, int flags_value) { return ImGui::CheckboxFlags(label, flags, flags_value); }
IMGUI_C_API bool ImGui_CheckboxFlagsUInt(const char* label, unsigned int* flags, unsigned int flags_value) { return ImGui::CheckboxFlags(label, flags, flags_value); }
IMGUI_C_API bool ImGui_RadioButton(const char* label, bool active) { return ImGui::RadioButton(label, active); }
IMGUI_C_API bool ImGui_RadioButtonInt(const char* label, int* v, int v_button) { return ImGui::RadioButton(label, v, v_button); }
IMGUI_C_API void ImGui_ProgressBar(float fraction, ImVec2 size_arg, const char* overlay) { return ImGui::ProgressBar(fraction, size_arg, overlay); }
IMGUI_C_API void ImGui_Bullet() { return ImGui::Bullet(); }

IMGUI_C_API void ImGui_Image(ImTextureID user_texture_id, ImVec2 size, ImVec2 uv0, ImVec2 uv1, ImVec4 tint_col, ImVec4 border_col) { return ImGui::Image(user_texture_id, size, uv0, uv1, tint_col, border_col); }
IMGUI_C_API bool ImGui_ImageButton(const char* str_id, ImTextureID user_texture_id, ImVec2 size, ImVec2 uv0, ImVec2 uv1, ImVec4 bg_col, ImVec4 tint_col) { return ImGui::ImageButton(str_id, user_texture_id, size, uv0, uv1, bg_col, tint_col); }

IMGUI_C_API bool ImGui_BeginCombo(const char* label, const char* preview_value, ImGuiComboFlags flags) { return ImGui::BeginCombo(label, preview_value, flags); }
IMGUI_C_API void ImGui_EndCombo() { return ImGui::EndCombo(); }
IMGUI_C_API bool ImGui_Combo(const char* label, int* current_item, const char* const items[], int items_count, int popup_max_height_in_items) { return ImGui::Combo(label, current_item, items, items_count, popup_max_height_in_items); }
IMGUI_C_API bool ImGui_ComboSeparatedByZeros(const char* label, int* current_item, const char* items_separated_by_zeros, int popup_max_height_in_items) { return ImGui::Combo(label, current_item, items_separated_by_zeros, popup_max_height_in_items); }
IMGUI_C_API bool ImGui_ComboGetter(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int popup_max_height_in_items) { return ImGui::Combo(label, current_item, items_getter, data, items_count, popup_max_height_in_items); }

IMGUI_C_API bool ImGui_DragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragFloat(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragFloat2(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragFloat3(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragFloat4(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) { return ImGui::DragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags); }
IMGUI_C_API bool ImGui_DragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragInt(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragInt2(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragInt3(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragInt4(label, v, v_speed, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) { return ImGui::DragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags); }
IMGUI_C_API bool ImGui_DragScalar(const char* label, ImGuiDataType data_type, void* p_data, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragScalar(label, data_type, p_data, v_speed, p_min, p_max, format, flags); }
IMGUI_C_API bool ImGui_DragScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) { return ImGui::DragScalarN(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags); }

IMGUI_C_API bool ImGui_SliderFloat(const char* label, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderFloat(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderFloat2(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderFloat3(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderFloat4(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderAngle(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags); }
IMGUI_C_API bool ImGui_SliderInt(const char* label, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderInt(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderInt2(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderInt3(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderInt4(label, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_SliderScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderScalar(label, data_type, p_data, p_min, p_max, format, flags); }
IMGUI_C_API bool ImGui_SliderScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) { return ImGui::SliderScalarN(label, data_type, p_data, components, p_min, p_max, format, flags); }
IMGUI_C_API bool ImGui_VSliderFloat(const char* label, ImVec2 size, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::VSliderFloat(label, size, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_VSliderInt(const char* label, ImVec2 size, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) { return ImGui::VSliderInt(label, size, v, v_min, v_max, format, flags); }
IMGUI_C_API bool ImGui_VSliderScalar(const char* label, ImVec2 size, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) { return ImGui::VSliderScalar(label, size, data_type, p_data, p_min, p_max, format, flags); }

IMGUI_C_API bool ImGui_InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) { return ImGui::InputText(label, buf, buf_size, flags, callback, user_data); }
IMGUI_C_API bool ImGui_InputTextMultiline(const char* label, char* buf, size_t buf_size, ImVec2 size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) { return ImGui::InputTextMultiline(label, buf, buf_size, size, flags, callback, user_data); }
IMGUI_C_API bool ImGui_InputTextWithHint(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) { return ImGui::InputTextWithHint(label, hint, buf, buf_size, flags, callback, user_data); }
IMGUI_C_API bool ImGui_InputFloat(const char* label, float* v, float step, float step_fast, const char* format, ImGuiInputTextFlags flags) { return ImGui::InputFloat(label, v, step, step_fast, format, flags); }
IMGUI_C_API bool ImGui_InputFloat2(const char* label, float v[2], const char* format, ImGuiInputTextFlags flags) { return ImGui::InputFloat2(label, v, format, flags); }
IMGUI_C_API bool ImGui_InputFloat3(const char* label, float v[3], const char* format, ImGuiInputTextFlags flags) { return ImGui::InputFloat3(label, v, format, flags); }
IMGUI_C_API bool ImGui_InputFloat4(const char* label, float v[4], const char* format, ImGuiInputTextFlags flags) { return ImGui::InputFloat4(label, v, format, flags); }
IMGUI_C_API bool ImGui_InputInt(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags flags) { return ImGui::InputInt(label, v, step, step_fast, flags); }
IMGUI_C_API bool ImGui_InputInt2(const char* label, int v[2], ImGuiInputTextFlags flags) { return ImGui::InputInt2(label, v, flags); }
IMGUI_C_API bool ImGui_InputInt3(const char* label, int v[3], ImGuiInputTextFlags flags) { return ImGui::InputInt3(label, v, flags); }
IMGUI_C_API bool ImGui_InputInt4(const char* label, int v[4], ImGuiInputTextFlags flags) { return ImGui::InputInt4(label, v, flags); }
IMGUI_C_API bool ImGui_InputDouble(const char* label, double* v, double step, double step_fast, const char* format, ImGuiInputTextFlags flags) { return ImGui::InputDouble(label, v, step, step_fast, format, flags); }
IMGUI_C_API bool ImGui_InputScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) { return ImGui::InputScalar(label, data_type, p_data, p_step, p_step_fast, format, flags); }
IMGUI_C_API bool ImGui_InputScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) { return ImGui::InputScalarN(label, data_type, p_data, components, p_step, p_step_fast, format, flags); }

IMGUI_C_API bool ImGui_ColorEdit3(const char* label, float col[3], ImGuiColorEditFlags flags) { return ImGui::ColorEdit3(label, col, flags); }
IMGUI_C_API bool ImGui_ColorEdit4(const char* label, float col[4], ImGuiColorEditFlags flags) { return ImGui::ColorEdit4(label, col, flags); }
IMGUI_C_API bool ImGui_ColorPicker3(const char* label, float col[3], ImGuiColorEditFlags flags) { return ImGui::ColorPicker3(label, col, flags); }
IMGUI_C_API bool ImGui_ColorPicker4(const char* label, float col[4], ImGuiColorEditFlags flags, const float* ref_col) { return ImGui::ColorPicker4(label, col, flags, ref_col); }
IMGUI_C_API bool ImGui_ColorButton(const char* desc_id, ImVec4 col, ImGuiColorEditFlags flags, ImVec2 size) { return ImGui::ColorButton(desc_id, col, flags, size); }
IMGUI_C_API void ImGui_SetColorEditOptions(ImGuiColorEditFlags flags) { return ImGui::SetColorEditOptions(flags); }

// IMGUI_C_API bool ImGui_TreeNode(const char* label) { return ImGui::TreeNode(label); }
// IMGUI_C_API bool ImGui_TreeNode(const char* str_id, const char* fmt, ...) { VA_WRAP_RET(ImGui::TreeNodeV(str_id, fmt, args)); }
// IMGUI_C_API bool ImGui_TreeNode(const void* ptr_id, const char* fmt, ...) { VA_WRAP_RET(ImGui::TreeNodeV(ptr_id, fmt, args)); }
// IMGUI_C_API bool ImGui_TreeNodeV(const char* str_id, const char* fmt, va_list args) { return ImGui::TreeNodeV(str_id, fmt, args); }
// IMGUI_C_API bool ImGui_TreeNodeV(const void* ptr_id, const char* fmt, va_list args) { return ImGui::TreeNodeV(ptr_id, fmt, args); }
IMGUI_C_API bool ImGui_TreeNode(const char* label, ImGuiTreeNodeFlags flags) { return ImGui::TreeNodeEx(label, flags); }
// IMGUI_C_API bool ImGui_TreeNode(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) { VA_WRAP_RET(ImGui::TreeNodeExV(str_id, flags, fmt, args)); }
// IMGUI_C_API bool ImGui_TreeNode(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) { VA_WRAP_RET(ImGui::TreeNodeExV(ptr_id, flags, fmt, args)); }
// IMGUI_C_API bool ImGui_TreeNodeV(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args) { return ImGui::TreeNodeExV(str_id, flags, fmt, args); }
// IMGUI_C_API bool ImGui_TreeNodeV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args) { return ImGui::TreeNodeExV(ptr_id, flags, fmt, args); }
IMGUI_C_API void ImGui_TreePush(const char* str_id) { return ImGui::TreePush(str_id); }
// IMGUI_C_API void ImGui_TreePush(const void* ptr_id) { return ImGui::TreePush(ptr_id); }
IMGUI_C_API void ImGui_TreePop() { return ImGui::TreePop(); }
IMGUI_C_API float ImGui_GetTreeNodeToLabelSpacing() { return ImGui::GetTreeNodeToLabelSpacing(); }
// IMGUI_C_API bool ImGui_CollapsingHeader(const char* label, ImGuiTreeNodeFlags flags) { return ImGui::CollapsingHeader(label, flags); }
IMGUI_C_API bool ImGui_CollapsingHeader(const char* label, bool* p_visible, ImGuiTreeNodeFlags flags) { return ImGui::CollapsingHeader(label, p_visible, flags); }
IMGUI_C_API void ImGui_SetNextItemOpen(bool is_open, ImGuiCond cond) { return ImGui::SetNextItemOpen(is_open, cond); }

IMGUI_C_API bool ImGui_Selectable(const char* label, bool selected, ImGuiSelectableFlags flags, ImVec2 size) { return ImGui::Selectable(label, selected, flags, size); }
IMGUI_C_API bool ImGui_SelectablePtr(const char* label, bool* p_selected, ImGuiSelectableFlags flags, ImVec2 size) { return ImGui::Selectable(label, p_selected, flags, size); }

IMGUI_C_API bool ImGui_BeginListBox(const char* label, ImVec2 size) { return ImGui::BeginListBox(label, size); }
IMGUI_C_API void ImGui_EndListBox() { return ImGui::EndListBox(); }
IMGUI_C_API bool ImGui_ListBox(const char* label, int* current_item, const char* const items[], int items_count, int height_in_items) { return ImGui::ListBox(label, current_item, items, items_count, height_in_items); }
IMGUI_C_API bool ImGui_ListBoxGetter(const char* label, int* current_item, bool (*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items) { return ImGui::ListBox(label, current_item, items_getter, data, items_count, height_in_items); }

IMGUI_C_API void ImGui_PlotLines(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride) { return ImGui::PlotLines(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride); }
IMGUI_C_API void ImGui_PlotLinesGetter(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size) { return ImGui::PlotLines(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size); }
IMGUI_C_API void ImGui_PlotHistogram(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride) { return ImGui::PlotHistogram(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride); }
IMGUI_C_API void ImGui_PlotHistogramGetter(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size) { return ImGui::PlotHistogram(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size); }

IMGUI_C_API void ImGui_ValueBool(const char* prefix, bool b) { return ImGui::Value(prefix, b); }
IMGUI_C_API void ImGui_ValueInt(const char* prefix, int v) { return ImGui::Value(prefix, v); }
IMGUI_C_API void ImGui_ValueUInt(const char* prefix, unsigned int v) { return ImGui::Value(prefix, v); }
IMGUI_C_API void ImGui_ValueFloat(const char* prefix, float v, const char* float_format) { return ImGui::Value(prefix, v, float_format); }

IMGUI_C_API bool ImGui_BeginMenuBar() { return ImGui::BeginMenuBar(); }
IMGUI_C_API void ImGui_EndMenuBar() { return ImGui::EndMenuBar(); }
IMGUI_C_API bool ImGui_BeginMainMenuBar() { return ImGui::BeginMainMenuBar(); }
IMGUI_C_API void ImGui_EndMainMenuBar() { return ImGui::EndMainMenuBar(); }
IMGUI_C_API bool ImGui_BeginMenu(const char* label, bool enabled) { return ImGui::BeginMenu(label, enabled); }
IMGUI_C_API void ImGui_EndMenu() { return ImGui::EndMenu(); }
IMGUI_C_API bool ImGui_MenuItem(const char* label, const char* shortcut, bool selected, bool enabled) { return ImGui::MenuItem(label, shortcut, selected, enabled); }
IMGUI_C_API bool ImGui_MenuItemPtr(const char* label, const char* shortcut, bool* p_selected, bool enabled) { return ImGui::MenuItem(label, shortcut, p_selected, enabled); }

IMGUI_C_API void ImGui_BeginTooltip() { return ImGui::BeginTooltip(); }
IMGUI_C_API void ImGui_EndTooltip() { return ImGui::EndTooltip(); }
IMGUI_C_API void ImGui_SetTooltip(const char* fmt, ...) { VA_WRAP(ImGui::SetTooltipV(fmt, args)); }
IMGUI_C_API void ImGui_SetTooltipV(const char* fmt, va_list args) { return ImGui::SetTooltipV(fmt, args); }

IMGUI_C_API bool ImGui_BeginPopup(const char* str_id, ImGuiWindowFlags flags) { return ImGui::BeginPopup(str_id, flags); }
IMGUI_C_API bool ImGui_BeginPopupModal(const char* name, bool* p_open, ImGuiWindowFlags flags) { return ImGui::BeginPopupModal(name, p_open, flags); }
IMGUI_C_API void ImGui_EndPopup() { return ImGui::EndPopup(); }
IMGUI_C_API void ImGui_OpenPopup(const char* str_id, ImGuiPopupFlags popup_flags) { return ImGui::OpenPopup(str_id, popup_flags); }
// IMGUI_C_API void ImGui_OpenPopup(ImGuiID id, ImGuiPopupFlags popup_flags) { return ImGui::OpenPopup(id, popup_flags); }
IMGUI_C_API void ImGui_OpenPopupOnItemClick(const char* str_id, ImGuiPopupFlags popup_flags) { return ImGui::OpenPopupOnItemClick(str_id, popup_flags); }
IMGUI_C_API void ImGui_CloseCurrentPopup() { return ImGui::CloseCurrentPopup(); }
IMGUI_C_API bool ImGui_BeginPopupContextItem(const char* str_id, ImGuiPopupFlags popup_flags) { return ImGui::BeginPopupContextItem(str_id, popup_flags); }
IMGUI_C_API bool ImGui_BeginPopupContextWindow(const char* str_id, ImGuiPopupFlags popup_flags) { return ImGui::BeginPopupContextWindow(str_id, popup_flags); }
IMGUI_C_API bool ImGui_BeginPopupContextVoid(const char* str_id, ImGuiPopupFlags popup_flags) { return ImGui::BeginPopupContextVoid(str_id, popup_flags); }
IMGUI_C_API bool ImGui_IsPopupOpen(const char* str_id, ImGuiPopupFlags flags) { return ImGui::IsPopupOpen(str_id, flags); }

IMGUI_C_API bool ImGui_BeginTable(const char* str_id, int column, ImGuiTableFlags flags, ImVec2 outer_size, float inner_width) { return ImGui::BeginTable(str_id, column, flags, outer_size, inner_width); }
IMGUI_C_API void ImGui_EndTable() { return ImGui::EndTable(); }
IMGUI_C_API void ImGui_TableNextRow(ImGuiTableRowFlags row_flags, float min_row_height) { return ImGui::TableNextRow(row_flags, min_row_height); }
IMGUI_C_API bool ImGui_TableNextColumn() { return ImGui::TableNextColumn(); }
IMGUI_C_API bool ImGui_TableSetColumnIndex(int column_n) { return ImGui::TableSetColumnIndex(column_n); }
IMGUI_C_API void ImGui_TableSetupColumn(const char* label, ImGuiTableColumnFlags flags, float init_width_or_weight, ImGuiID user_id) { return ImGui::TableSetupColumn(label, flags, init_width_or_weight, user_id); }
IMGUI_C_API void ImGui_TableSetupScrollFreeze(int cols, int rows) { return ImGui::TableSetupScrollFreeze(cols, rows); }
IMGUI_C_API void ImGui_TableHeadersRow() { return ImGui::TableHeadersRow(); }
IMGUI_C_API void ImGui_TableHeader(const char* label) { return ImGui::TableHeader(label); }
IMGUI_C_API ImGuiTableSortSpecs* ImGui_TableGetSortSpecs() { return ImGui::TableGetSortSpecs(); }
IMGUI_C_API int ImGui_TableGetColumnCount() { return ImGui::TableGetColumnCount(); }
IMGUI_C_API int ImGui_TableGetColumnIndex() { return ImGui::TableGetColumnIndex(); }
IMGUI_C_API int ImGui_TableGetRowIndex() { return ImGui::TableGetRowIndex(); }
IMGUI_C_API const char* ImGui_TableGetColumnName(int column_n) { return ImGui::TableGetColumnName(column_n); }
IMGUI_C_API ImGuiTableColumnFlags ImGui_TableGetColumnFlags(int column_n) { return ImGui::TableGetColumnFlags(column_n); }
IMGUI_C_API void ImGui_TableSetColumnEnabled(int column_n, bool v) { return ImGui::TableSetColumnEnabled(column_n, v); }
IMGUI_C_API void ImGui_TableSetBgColor(ImGuiTableBgTarget target, ImU32 color, int column_n) { return ImGui::TableSetBgColor(target, color, column_n); }

IMGUI_C_API void ImGui_Columns(int count, const char* id, bool border) { return ImGui::Columns(count, id, border); }
IMGUI_C_API void ImGui_NextColumn() { return ImGui::NextColumn(); }
IMGUI_C_API int ImGui_GetColumnIndex() { return ImGui::GetColumnIndex(); }
IMGUI_C_API float ImGui_GetColumnWidth(int column_index) { return ImGui::GetColumnWidth(column_index); }
IMGUI_C_API void ImGui_SetColumnWidth(int column_index, float width) { return ImGui::SetColumnWidth(column_index, width); }
IMGUI_C_API float ImGui_GetColumnOffset(int column_index) { return ImGui::GetColumnOffset(column_index); }
IMGUI_C_API void ImGui_SetColumnOffset(int column_index, float offset_x) { return ImGui::SetColumnOffset(column_index, offset_x); }
IMGUI_C_API int ImGui_GetColumnsCount() { return ImGui::GetColumnsCount(); }

IMGUI_C_API bool ImGui_BeginTabBar(const char* str_id, ImGuiTabBarFlags flags) { return ImGui::BeginTabBar(str_id, flags); }
IMGUI_C_API void ImGui_EndTabBar() { return ImGui::EndTabBar(); }
IMGUI_C_API bool ImGui_BeginTabItem(const char* label, bool* p_open, ImGuiTabItemFlags flags) { return ImGui::BeginTabItem(label, p_open, flags); }
IMGUI_C_API void ImGui_EndTabItem() { return ImGui::EndTabItem(); }
IMGUI_C_API bool ImGui_TabItemButton(const char* label, ImGuiTabItemFlags flags) { return ImGui::TabItemButton(label, flags); }
IMGUI_C_API void ImGui_SetTabItemClosed(const char* tab_or_docked_window_label) { return ImGui::SetTabItemClosed(tab_or_docked_window_label); }

IMGUI_C_API void ImGui_LogToTTY(int auto_open_depth) { return ImGui::LogToTTY(auto_open_depth); }
IMGUI_C_API void ImGui_LogToFile(int auto_open_depth, const char* filename) { return ImGui::LogToFile(auto_open_depth, filename); }
IMGUI_C_API void ImGui_LogToClipboard(int auto_open_depth) { return ImGui::LogToClipboard(auto_open_depth); }
IMGUI_C_API void ImGui_LogFinish() { return ImGui::LogFinish(); }
IMGUI_C_API void ImGui_LogButtons() { return ImGui::LogButtons(); }
IMGUI_C_API void ImGui_LogText(const char* fmt, ...) { VA_WRAP(ImGui::LogTextV(fmt, args)); }
IMGUI_C_API void ImGui_LogTextV(const char* fmt, va_list args) { return ImGui::LogTextV(fmt, args); }

IMGUI_C_API bool ImGui_BeginDragDropSource(ImGuiDragDropFlags flags) { return ImGui::BeginDragDropSource(flags); }
IMGUI_C_API bool ImGui_SetDragDropPayload(const char* type, const void* data, size_t sz, ImGuiCond cond) { return ImGui::SetDragDropPayload(type, data, sz, cond); }
IMGUI_C_API void ImGui_EndDragDropSource() { return ImGui::EndDragDropSource(); }
IMGUI_C_API bool ImGui_BeginDragDropTarget() { return ImGui::BeginDragDropTarget(); }
IMGUI_C_API const ImGuiPayload* ImGui_AcceptDragDropPayload(const char* type, ImGuiDragDropFlags flags) { return ImGui::AcceptDragDropPayload(type, flags); }
IMGUI_C_API void ImGui_EndDragDropTarget() { return ImGui::EndDragDropTarget(); }
IMGUI_C_API const ImGuiPayload* ImGui_GetDragDropPayload() { return ImGui::GetDragDropPayload(); }

IMGUI_C_API void ImGui_BeginDisabled(bool disabled) { return ImGui::BeginDisabled(disabled); }
IMGUI_C_API void ImGui_EndDisabled() { return ImGui::EndDisabled(); }

IMGUI_C_API void ImGui_PushClipRect(ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect) { return ImGui::PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect); }
IMGUI_C_API void ImGui_PopClipRect() { return ImGui::PopClipRect(); }

IMGUI_C_API void ImGui_SetItemDefaultFocus() { return ImGui::SetItemDefaultFocus(); }
IMGUI_C_API void ImGui_SetKeyboardFocusHere(int offset) { return ImGui::SetKeyboardFocusHere(offset); }

IMGUI_C_API bool ImGui_IsItemHovered(ImGuiHoveredFlags flags) { return ImGui::IsItemHovered(flags); }
IMGUI_C_API bool ImGui_IsItemActive() { return ImGui::IsItemActive(); }
IMGUI_C_API bool ImGui_IsItemFocused() { return ImGui::IsItemFocused(); }
IMGUI_C_API bool ImGui_IsItemClicked(ImGuiMouseButton mouse_button) { return ImGui::IsItemClicked(mouse_button); }
IMGUI_C_API bool ImGui_IsItemVisible() { return ImGui::IsItemVisible(); }
IMGUI_C_API bool ImGui_IsItemEdited() { return ImGui::IsItemEdited(); }
IMGUI_C_API bool ImGui_IsItemActivated() { return ImGui::IsItemActivated(); }
IMGUI_C_API bool ImGui_IsItemDeactivated() { return ImGui::IsItemDeactivated(); }
IMGUI_C_API bool ImGui_IsItemDeactivatedAfterEdit() { return ImGui::IsItemDeactivatedAfterEdit(); }
IMGUI_C_API bool ImGui_IsItemToggledOpen() { return ImGui::IsItemToggledOpen(); }
IMGUI_C_API bool ImGui_IsAnyItemHovered() { return ImGui::IsAnyItemHovered(); }
IMGUI_C_API bool ImGui_IsAnyItemActive() { return ImGui::IsAnyItemActive(); }
IMGUI_C_API bool ImGui_IsAnyItemFocused() { return ImGui::IsAnyItemFocused(); }
IMGUI_C_API bool ImGui_GetItemID() { return ImGui::GetItemID(); }
IMGUI_C_API ImVec2 ImGui_GetItemRectMin() { return ImGui::GetItemRectMin(); }
IMGUI_C_API ImVec2 ImGui_GetItemRectMax() { return ImGui::GetItemRectMax(); }
IMGUI_C_API ImVec2 ImGui_GetItemRectSize() { return ImGui::GetItemRectSize(); }
IMGUI_C_API void ImGui_SetItemAllowOverlap() { return ImGui::SetItemAllowOverlap(); }

IMGUI_C_API ImGuiViewport* ImGui_GetMainViewport() { return ImGui::GetMainViewport(); }

IMGUI_C_API ImDrawList* ImGui_GetBackgroundDrawList() { return ImGui::GetBackgroundDrawList(); }
IMGUI_C_API ImDrawList* ImGui_GetForegroundDrawList() { return ImGui::GetForegroundDrawList(); }

IMGUI_C_API bool ImGui_IsRectFromCursorVisible(ImVec2 size) { return ImGui::IsRectVisible(size); }
IMGUI_C_API bool ImGui_IsRectVisible(ImVec2 rect_min, ImVec2 rect_max) { return ImGui::IsRectVisible(rect_min, rect_max); }
IMGUI_C_API double ImGui_GetTime() { return ImGui::GetTime(); }
IMGUI_C_API int ImGui_GetFrameCount() { return ImGui::GetFrameCount(); }
IMGUI_C_API ImDrawListSharedData* ImGui_GetDrawListSharedData() { return ImGui::GetDrawListSharedData(); }
IMGUI_C_API const char* ImGui_GetStyleColorName(ImGuiCol idx) { return ImGui::GetStyleColorName(idx); }
IMGUI_C_API void ImGui_SetStateStorage(ImGuiStorage* storage) { return ImGui::SetStateStorage(storage); }
IMGUI_C_API ImGuiStorage* ImGui_GetStateStorage() { return ImGui::GetStateStorage(); }
IMGUI_C_API bool ImGui_BeginChildFrame(ImGuiID id, ImVec2 size, ImGuiWindowFlags flags) { return ImGui::BeginChildFrame(id, size, flags); }
IMGUI_C_API void ImGui_EndChildFrame() { return ImGui::EndChildFrame(); }

IMGUI_C_API ImVec2 ImGui_CalcTextSize(const char* text, const char* text_end, bool hide_text_after_double_hash, float wrap_width) { return ImGui::CalcTextSize(text, text_end, hide_text_after_double_hash, wrap_width); }

IMGUI_C_API ImVec4 ImGui_ColorConvertU32ToFloat4(ImU32 in) { return ImGui::ColorConvertU32ToFloat4(in); }
IMGUI_C_API ImU32 ImGui_ColorConvertFloat4ToU32(ImVec4 in) { return ImGui::ColorConvertFloat4ToU32(in); }
IMGUI_C_API void ImGui_ColorConvertRGBtoHSV(float r, float g, float b, float* out_h, float* out_s, float* out_v) { return ImGui::ColorConvertRGBtoHSV(r, g, b, *out_h, *out_s, *out_v); }
IMGUI_C_API void ImGui_ColorConvertHSVtoRGB(float h, float s, float v, float* out_r, float* out_g, float* out_b) { return ImGui::ColorConvertHSVtoRGB(h, s, v, *out_r, *out_g, *out_b); }

IMGUI_C_API bool ImGui_IsKeyDown(ImGuiKey key) { return ImGui::IsKeyDown(key); }
IMGUI_C_API bool ImGui_IsKeyPressed(ImGuiKey key, bool repeat) { return ImGui::IsKeyPressed(key, repeat); }
IMGUI_C_API bool ImGui_IsKeyReleased(ImGuiKey key) { return ImGui::IsKeyReleased(key); }
IMGUI_C_API int ImGui_GetKeyPressedAmount(ImGuiKey key, float repeat_delay, float rate) { return ImGui::GetKeyPressedAmount(key, repeat_delay, rate); }
IMGUI_C_API const char* ImGui_GetKeyName(ImGuiKey key) { return ImGui::GetKeyName(key); }
IMGUI_C_API void ImGui_SetNextFrameWantCaptureKeyboard(bool want_capture_keyboard) { return ImGui::SetNextFrameWantCaptureKeyboard(want_capture_keyboard); }

IMGUI_C_API bool ImGui_IsMouseDown(ImGuiMouseButton button) { return ImGui::IsMouseDown(button); }
IMGUI_C_API bool ImGui_IsMouseClicked(ImGuiMouseButton button, bool repeat) { return ImGui::IsMouseClicked(button, repeat); }
IMGUI_C_API bool ImGui_IsMouseReleased(ImGuiMouseButton button) { return ImGui::IsMouseReleased(button); }
IMGUI_C_API bool ImGui_IsMouseDoubleClicked(ImGuiMouseButton button) { return ImGui::IsMouseDoubleClicked(button); }
IMGUI_C_API int ImGui_GetMouseClickedCount(ImGuiMouseButton button) { return ImGui::GetMouseClickedCount(button); }
IMGUI_C_API bool ImGui_IsMouseHoveringRect(ImVec2 r_min, ImVec2 r_max, bool clip) { return ImGui::IsMouseHoveringRect(r_min, r_max, clip); }
IMGUI_C_API bool ImGui_IsMousePosValid(const ImVec2* mouse_pos) { return ImGui::IsMousePosValid(mouse_pos); }
IMGUI_C_API bool ImGui_IsAnyMouseDown() { return ImGui::IsAnyMouseDown(); }
IMGUI_C_API ImVec2 ImGui_GetMousePos() { return ImGui::GetMousePos(); }
IMGUI_C_API ImVec2 ImGui_GetMousePosOnOpeningCurrentPopup() { return ImGui::GetMousePosOnOpeningCurrentPopup(); }
IMGUI_C_API bool ImGui_IsMouseDragging(ImGuiMouseButton button, float lock_threshold) { return ImGui::IsMouseDragging(button, lock_threshold); }
IMGUI_C_API ImVec2 ImGui_GetMouseDragDelta(ImGuiMouseButton button, float lock_threshold) { return ImGui::GetMouseDragDelta(button, lock_threshold); }
IMGUI_C_API void ImGui_ResetMouseDragDelta(ImGuiMouseButton button) { return ImGui::ResetMouseDragDelta(button); }
IMGUI_C_API ImGuiMouseCursor ImGui_GetMouseCursor() { return ImGui::GetMouseCursor(); }
IMGUI_C_API void ImGui_SetMouseCursor(ImGuiMouseCursor cursor_type) { return ImGui::SetMouseCursor(cursor_type); }
IMGUI_C_API void ImGui_SetNextFrameWantCaptureMouse(bool want_capture_mouse) { return ImGui::SetNextFrameWantCaptureMouse(want_capture_mouse); }

IMGUI_C_API const char* ImGui_GetClipboardText() { return ImGui::GetClipboardText(); }
IMGUI_C_API void ImGui_SetClipboardText(const char* text) { return ImGui::SetClipboardText(text); }

IMGUI_C_API void ImGui_LoadIniSettingsFromDisk(const char* ini_filename) { return ImGui::LoadIniSettingsFromDisk(ini_filename); }
IMGUI_C_API void ImGui_LoadIniSettingsFromMemory(const char* ini_data, size_t ini_size) { return ImGui::LoadIniSettingsFromMemory(ini_data, ini_size); }
IMGUI_C_API void ImGui_SaveIniSettingsToDisk(const char* ini_filename) { return ImGui::SaveIniSettingsToDisk(ini_filename); }
IMGUI_C_API const char* ImGui_SaveIniSettingsToMemory(size_t* out_ini_size) { return ImGui::SaveIniSettingsToMemory(out_ini_size); }

IMGUI_C_API void ImGui_DebugTextEncoding(const char* text) { return ImGui::DebugTextEncoding(text); }
IMGUI_C_API bool ImGui_DebugCheckVersionAndDataLayout(const char* version_str, size_t sz_io, size_t sz_style, size_t sz_vec2, size_t sz_vec4, size_t sz_drawvert, size_t sz_drawidx) { return ImGui::DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx); }

IMGUI_C_API void ImGui_SetAllocatorFunctions(ImGuiMemAllocFunc alloc_func, ImGuiMemFreeFunc free_func, void* user_data) { return ImGui::SetAllocatorFunctions(alloc_func, free_func, user_data); }
IMGUI_C_API void ImGui_GetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func, ImGuiMemFreeFunc* p_free_func, void** p_user_data) { return ImGui::GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data); }
IMGUI_C_API void* ImGui_MemAlloc(size_t size) { return ImGui::MemAlloc(size); }
IMGUI_C_API void ImGui_MemFree(void* ptr) { return ImGui::MemFree(ptr); }

IMGUI_C_API ImGuiStyle ImGuiStyle_init(void) { return ImGuiStyle(); }
IMGUI_C_API void ImGuiStyle_ScaleAllSizes(ImGuiStyle* self, float scale_factor) { return self->ScaleAllSizes(scale_factor); }

IMGUI_C_API void ImGuiIO_AddKeyEvent(ImGuiIO* self, ImGuiKey key, bool down) { return self->AddKeyEvent(key, down); }
IMGUI_C_API void ImGuiIO_AddKeyAnalogEvent(ImGuiIO* self, ImGuiKey key, bool down, float v) { return self->AddKeyAnalogEvent(key, down, v); }
IMGUI_C_API void ImGuiIO_AddMousePosEvent(ImGuiIO* self, float x, float y) { return self->AddMousePosEvent(x, y); }
IMGUI_C_API void ImGuiIO_AddMouseButtonEvent(ImGuiIO* self, int button, bool down) { return self->AddMouseButtonEvent(button, down); }
IMGUI_C_API void ImGuiIO_AddMouseWheelEvent(ImGuiIO* self, float wh_x, float wh_y) { return self->AddMouseWheelEvent(wh_x, wh_y); }
IMGUI_C_API void ImGuiIO_AddFocusEvent(ImGuiIO* self, bool focused) { return self->AddFocusEvent(focused); }
IMGUI_C_API void ImGuiIO_AddInputCharacter(ImGuiIO* self, unsigned int c) { return self->AddInputCharacter(c); }
IMGUI_C_API void ImGuiIO_AddInputCharacterUTF16(ImGuiIO* self, ImWchar16 c) { return self->AddInputCharacterUTF16(c); }
IMGUI_C_API void ImGuiIO_AddInputCharactersUTF8(ImGuiIO* self, const char* str) { return self->AddInputCharactersUTF8(str); }
IMGUI_C_API void ImGuiIO_SetKeyEventNativeData(ImGuiIO* self, ImGuiKey key, int native_keycode, int native_scancode, int native_legacy_index) { return self->SetKeyEventNativeData(key, native_keycode, native_scancode, native_legacy_index); }
IMGUI_C_API void ImGuiIO_SetAppAcceptingEvents(ImGuiIO* self, bool accepting_events) { return self->SetAppAcceptingEvents(accepting_events); }
// IMGUI_C_API void ImGuiIO_ClearInputCharacters(ImGuiIO* self) { return self->ClearInputCharacters(); }
// IMGUI_C_API void ImGuiIO_ClearInputKeys(ImGuiIO* self) { return self->ClearInputKeys(); }
IMGUI_C_API ImGuiIO ImGuiIO_init(void) { return ImGuiIO(); }

IMGUI_C_API ImGuiInputTextCallbackData ImGuiInputTextCallbackData_init(void) { return ImGuiInputTextCallbackData(); }
IMGUI_C_API void ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* self, int pos, int bytes_count) { return self->DeleteChars(pos, bytes_count); }
IMGUI_C_API void ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* self, int pos, const char* text, const char* text_end) { return self->InsertChars(pos, text, text_end); }

IMGUI_C_API ImGuiTextFilter ImGuiTextFilter_init(const char* default_filter) { return ImGuiTextFilter(default_filter); }
IMGUI_C_API bool ImGuiTextFilter_Draw(ImGuiTextFilter* self, const char* label, float width) { return self->Draw(label, width); }
IMGUI_C_API bool ImGuiTextFilter_PassFilter(const ImGuiTextFilter* self, const char* text, const char* text_end) { return self->PassFilter(text, text_end); }
IMGUI_C_API void ImGuiTextFilter_Build(ImGuiTextFilter* self) { return self->Build(); }

// IMGUI_C_API void ImGuiTextFilter_ImGuiTextRange_split(const ImGuiTextFilter::ImGuiTextRange* self, char separator, ImVector<ImGuiTextFilter::ImGuiTextRange>* out) { return self->split(separator, out); }

IMGUI_C_API void ImGuiTextBuffer_append(ImGuiTextBuffer* self, const char* str, const char* str_end) { return self->append(str, str_end); }
IMGUI_C_API void ImGuiTextBuffer_appendf(ImGuiTextBuffer* self, const char* fmt, ...) { VA_WRAP(self->appendfv(fmt, args)); }
IMGUI_C_API void ImGuiTextBuffer_appendfv(ImGuiTextBuffer* self, const char* fmt, va_list args) { return self->appendfv(fmt, args); }

IMGUI_C_API int ImGuiStorage_GetInt(const ImGuiStorage* self, ImGuiID key, int default_val) { return self->GetInt(key, default_val); }
IMGUI_C_API void ImGuiStorage_SetInt(ImGuiStorage* self, ImGuiID key, int val) { return self->SetInt(key, val); }
IMGUI_C_API bool ImGuiStorage_GetBool(const ImGuiStorage* self, ImGuiID key, bool default_val) { return self->GetBool(key, default_val); }
IMGUI_C_API void ImGuiStorage_SetBool(ImGuiStorage* self, ImGuiID key, bool val) { return self->SetBool(key, val); }
IMGUI_C_API float ImGuiStorage_GetFloat(const ImGuiStorage* self, ImGuiID key, float default_val) { return self->GetFloat(key, default_val); }
IMGUI_C_API void ImGuiStorage_SetFloat(ImGuiStorage* self, ImGuiID key, float val) { return self->SetFloat(key, val); }
IMGUI_C_API void* ImGuiStorage_GetVoidPtr(const ImGuiStorage* self, ImGuiID key) { return self->GetVoidPtr(key); }
IMGUI_C_API void ImGuiStorage_SetVoidPtr(ImGuiStorage* self, ImGuiID key, void* val) { return self->SetVoidPtr(key, val); }
IMGUI_C_API int* ImGuiStorage_GetIntRef(ImGuiStorage* self, ImGuiID key, int default_val) { return self->GetIntRef(key, default_val); }
IMGUI_C_API bool* ImGuiStorage_GetBoolRef(ImGuiStorage* self, ImGuiID key, bool default_val) { return self->GetBoolRef(key, default_val); }
IMGUI_C_API float* ImGuiStorage_GetFloatRef(ImGuiStorage* self, ImGuiID key, float default_val) { return self->GetFloatRef(key, default_val); }
IMGUI_C_API void** ImGuiStorage_GetVoidPtrRef(ImGuiStorage* self, ImGuiID key, void* default_val) { return self->GetVoidPtrRef(key, default_val); }
IMGUI_C_API void ImGuiStorage_SetAllInt(ImGuiStorage* self, int val) { return self->SetAllInt(val); }
IMGUI_C_API void ImGuiStorage_BuildSortByKey(ImGuiStorage* self) { return self->BuildSortByKey(); }

IMGUI_C_API ImGuiListClipper ImGuiListClipper_init(void) { return ImGuiListClipper(); }
IMGUI_C_API void ImGuiListClipper_deinit(ImGuiListClipper* self) { self->~ImGuiListClipper(); }
IMGUI_C_API void ImGuiListClipper_Begin(ImGuiListClipper* self, int items_count, float items_height) { return self->Begin(items_count, items_height); }
IMGUI_C_API void ImGuiListClipper_End(ImGuiListClipper* self) { return self->End(); }
IMGUI_C_API bool ImGuiListClipper_Step(ImGuiListClipper* self) { return self->Step(); }
IMGUI_C_API void ImGuiListClipper_ForceDisplayRangeByIndices(ImGuiListClipper* self, int item_min, int item_max) { return self->ForceDisplayRangeByIndices(item_min, item_max); }

IMGUI_C_API void ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* self) { return self->ClearFreeMemory(); }
IMGUI_C_API void ImDrawListSplitter_Split(ImDrawListSplitter* self, ImDrawList* draw_list, int count) { return self->Split(draw_list, count); }
IMGUI_C_API void ImDrawListSplitter_Merge(ImDrawListSplitter* self, ImDrawList* draw_list) { return self->Merge(draw_list); }
IMGUI_C_API void ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* self, ImDrawList* draw_list, int channel_idx) { return self->SetCurrentChannel(draw_list, channel_idx); }

IMGUI_C_API void ImDrawList_PushClipRect(ImDrawList* self, ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect) { return self->PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect); }
IMGUI_C_API void ImDrawList_PushClipRectFullScreen(ImDrawList* self) { return self->PushClipRectFullScreen(); }
IMGUI_C_API void ImDrawList_PopClipRect(ImDrawList* self) { return self->PopClipRect(); }
IMGUI_C_API void ImDrawList_PushTextureID(ImDrawList* self, ImTextureID texture_id) { return self->PushTextureID(texture_id); }
IMGUI_C_API void ImDrawList_PopTextureID(ImDrawList* self) { return self->PopTextureID(); }
IMGUI_C_API void ImDrawList_AddLine(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImU32 col, float thickness) { return self->AddLine(p1, p2, col, thickness); }
IMGUI_C_API void ImDrawList_AddRect(ImDrawList* self, ImVec2 p_min, ImVec2 p_max, ImU32 col, float rounding, ImDrawFlags flags, float thickness) { return self->AddRect(p_min, p_max, col, rounding, flags, thickness); }
IMGUI_C_API void ImDrawList_AddRectFilled(ImDrawList* self, ImVec2 p_min, ImVec2 p_max, ImU32 col, float rounding, ImDrawFlags flags) { return self->AddRectFilled(p_min, p_max, col, rounding, flags); }
IMGUI_C_API void ImDrawList_AddRectFilledMultiColor(ImDrawList* self, ImVec2 p_min, ImVec2 p_max, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left) { return self->AddRectFilledMultiColor(p_min, p_max, col_upr_left, col_upr_right, col_bot_right, col_bot_left); }
IMGUI_C_API void ImDrawList_AddQuad(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, ImU32 col, float thickness) { return self->AddQuad(p1, p2, p3, p4, col, thickness); }
IMGUI_C_API void ImDrawList_AddQuadFilled(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, ImU32 col) { return self->AddQuadFilled(p1, p2, p3, p4, col); }
IMGUI_C_API void ImDrawList_AddTriangle(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImU32 col, float thickness) { return self->AddTriangle(p1, p2, p3, col, thickness); }
IMGUI_C_API void ImDrawList_AddTriangleFilled(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImU32 col) { return self->AddTriangleFilled(p1, p2, p3, col); }
IMGUI_C_API void ImDrawList_AddCircle(ImDrawList* self, ImVec2 center, float radius, ImU32 col, int num_segments, float thickness) { return self->AddCircle(center, radius, col, num_segments, thickness); }
IMGUI_C_API void ImDrawList_AddCircleFilled(ImDrawList* self, ImVec2 center, float radius, ImU32 col, int num_segments) { return self->AddCircleFilled(center, radius, col, num_segments); }
IMGUI_C_API void ImDrawList_AddNgon(ImDrawList* self, ImVec2 center, float radius, ImU32 col, int num_segments, float thickness) { return self->AddNgon(center, radius, col, num_segments, thickness); }
IMGUI_C_API void ImDrawList_AddNgonFilled(ImDrawList* self, ImVec2 center, float radius, ImU32 col, int num_segments) { return self->AddNgonFilled(center, radius, col, num_segments); }
IMGUI_C_API void ImDrawList_AddText(ImDrawList* self, ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end) { return self->AddText(pos, col, text_begin, text_end); }
IMGUI_C_API void ImDrawList_AddTextFont(ImDrawList* self, const ImFont* font, float font_size, ImVec2 pos, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const ImVec4* cpu_fine_clip_rect) { return self->AddText(font, font_size, pos, col, text_begin, text_end, wrap_width, cpu_fine_clip_rect); }
IMGUI_C_API void ImDrawList_AddPolyline(ImDrawList* self, const ImVec2* points, int num_points, ImU32 col, ImDrawFlags flags, float thickness) { return self->AddPolyline(points, num_points, col, flags, thickness); }
IMGUI_C_API void ImDrawList_AddConvexPolyFilled(ImDrawList* self, const ImVec2* points, int num_points, ImU32 col) { return self->AddConvexPolyFilled(points, num_points, col); }
IMGUI_C_API void ImDrawList_AddBezierCubic(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, ImU32 col, float thickness, int num_segments) { return self->AddBezierCubic(p1, p2, p3, p4, col, thickness, num_segments); }
IMGUI_C_API void ImDrawList_AddBezierQuadratic(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImU32 col, float thickness, int num_segments) { return self->AddBezierQuadratic(p1, p2, p3, col, thickness, num_segments); }
IMGUI_C_API void ImDrawList_AddImage(ImDrawList* self, ImTextureID user_texture_id, ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, ImU32 col) { return self->AddImage(user_texture_id, p_min, p_max, uv_min, uv_max, col); }
IMGUI_C_API void ImDrawList_AddImageQuad(ImDrawList* self, ImTextureID user_texture_id, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, ImVec2 uv1, ImVec2 uv2, ImVec2 uv3, ImVec2 uv4, ImU32 col) { return self->AddImageQuad(user_texture_id, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col); }
IMGUI_C_API void ImDrawList_AddImageRounded(ImDrawList* self, ImTextureID user_texture_id, ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, ImU32 col, float rounding, ImDrawFlags flags) { return self->AddImageRounded(user_texture_id, p_min, p_max, uv_min, uv_max, col, rounding, flags); }
IMGUI_C_API void ImDrawList_PathArcTo(ImDrawList* self, ImVec2 center, float radius, float a_min, float a_max, int num_segments) { return self->PathArcTo(center, radius, a_min, a_max, num_segments); }
IMGUI_C_API void ImDrawList_PathArcToFast(ImDrawList* self, ImVec2 center, float radius, int a_min_of_12, int a_max_of_12) { return self->PathArcToFast(center, radius, a_min_of_12, a_max_of_12); }
IMGUI_C_API void ImDrawList_PathBezierCubicCurveTo(ImDrawList* self, ImVec2 p2, ImVec2 p3, ImVec2 p4, int num_segments) { return self->PathBezierCubicCurveTo(p2, p3, p4, num_segments); }
IMGUI_C_API void ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* self, ImVec2 p2, ImVec2 p3, int num_segments) { return self->PathBezierQuadraticCurveTo(p2, p3, num_segments); }
IMGUI_C_API void ImDrawList_PathRect(ImDrawList* self, ImVec2 rect_min, ImVec2 rect_max, float rounding, ImDrawFlags flags) { return self->PathRect(rect_min, rect_max, rounding, flags); }
IMGUI_C_API void ImDrawList_AddCallback(ImDrawList* self, ImDrawCallback callback, void* callback_data) { return self->AddCallback(callback, callback_data); }
IMGUI_C_API void ImDrawList_AddDrawCmd(ImDrawList* self) { return self->AddDrawCmd(); }
IMGUI_C_API ImDrawList* ImDrawList_CloneOutput(const ImDrawList* self) { return self->CloneOutput(); }
IMGUI_C_API void ImDrawList_PrimReserve(ImDrawList* self, int idx_count, int vtx_count) { return self->PrimReserve(idx_count, vtx_count); }
IMGUI_C_API void ImDrawList_PrimUnreserve(ImDrawList* self, int idx_count, int vtx_count) { return self->PrimUnreserve(idx_count, vtx_count); }
IMGUI_C_API void ImDrawList_PrimRect(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col) { return self->PrimRect(a, b, col); }
IMGUI_C_API void ImDrawList_PrimRectUV(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 uv_a, ImVec2 uv_b, ImU32 col) { return self->PrimRectUV(a, b, uv_a, uv_b, col); }
IMGUI_C_API void ImDrawList_PrimQuadUV(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImVec2 uv_a, ImVec2 uv_b, ImVec2 uv_c, ImVec2 uv_d, ImU32 col) { return self->PrimQuadUV(a, b, c, d, uv_a, uv_b, uv_c, uv_d, col); }
// IMGUI_C_API void ImDrawList__ResetForNewFrame(ImDrawList* self) { return self->_ResetForNewFrame(); }
// IMGUI_C_API void ImDrawList__ClearFreeMemory(ImDrawList* self) { return self->_ClearFreeMemory(); }
// IMGUI_C_API void ImDrawList__PopUnusedDrawCmd(ImDrawList* self) { return self->_PopUnusedDrawCmd(); }
// IMGUI_C_API void ImDrawList__TryMergeDrawCmds(ImDrawList* self) { return self->_TryMergeDrawCmds(); }
// IMGUI_C_API void ImDrawList__OnChangedClipRect(ImDrawList* self) { return self->_OnChangedClipRect(); }
// IMGUI_C_API void ImDrawList__OnChangedTextureID(ImDrawList* self) { return self->_OnChangedTextureID(); }
// IMGUI_C_API void ImDrawList__OnChangedVtxOffset(ImDrawList* self) { return self->_OnChangedVtxOffset(); }
// IMGUI_C_API int ImDrawList__CalcCircleAutoSegmentCount(const ImDrawList* self, float radius) { return self->_CalcCircleAutoSegmentCount(radius); }
// IMGUI_C_API void ImDrawList__PathArcToFastEx(ImDrawList* self, ImVec2 center, float radius, int a_min_sample, int a_max_sample, int a_step) { return self->_PathArcToFastEx(center, radius, a_min_sample, a_max_sample, a_step); }
// IMGUI_C_API void ImDrawList__PathArcToN(ImDrawList* self, ImVec2 center, float radius, float a_min, float a_max, int num_segments) { return self->_PathArcToN(center, radius, a_min, a_max, num_segments); }

IMGUI_C_API void ImDrawData_DeIndexAllBuffers(ImDrawData* self) { return self->DeIndexAllBuffers(); }
IMGUI_C_API void ImDrawData_ScaleClipRects(ImDrawData* self, ImVec2 fb_scale) { return self->ScaleClipRects(fb_scale); }

IMGUI_C_API ImFontConfig ImFontConfig_init(void) { return ImFontConfig(); }

IMGUI_C_API void ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* self, const char* text, const char* text_end) { return self->AddText(text, text_end); }
IMGUI_C_API void ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* self, const ImWchar* ranges) { return self->AddRanges(ranges); }
IMGUI_C_API void ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* self, ImVector<ImWchar>* out_ranges) { return self->BuildRanges(out_ranges); }

IMGUI_C_API ImFontAtlas ImFontAtlas_init(void) { return ImFontAtlas(); }
IMGUI_C_API void ImFontAtlas_deinit(ImFontAtlas* self) { self->~ImFontAtlas(); }
IMGUI_C_API ImFont* ImFontAtlas_AddFont(ImFontAtlas* self, const ImFontConfig* font_cfg) { return self->AddFont(font_cfg); }
IMGUI_C_API ImFont* ImFontAtlas_AddFontDefault(ImFontAtlas* self, const ImFontConfig* font_cfg) { return self->AddFontDefault(font_cfg); }
IMGUI_C_API ImFont* ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* self, const char* filename, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) { return self->AddFontFromFileTTF(filename, size_pixels, font_cfg, glyph_ranges); }
IMGUI_C_API ImFont* ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* self, void* font_data, int font_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) { return self->AddFontFromMemoryTTF(font_data, font_size, size_pixels, font_cfg, glyph_ranges); }
IMGUI_C_API ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* self, const void* compressed_font_data, int compressed_font_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) { return self->AddFontFromMemoryCompressedTTF(compressed_font_data, compressed_font_size, size_pixels, font_cfg, glyph_ranges); }
IMGUI_C_API ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* self, const char* compressed_font_data_base85, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) { return self->AddFontFromMemoryCompressedBase85TTF(compressed_font_data_base85, size_pixels, font_cfg, glyph_ranges); }
IMGUI_C_API void ImFontAtlas_ClearInputData(ImFontAtlas* self) { return self->ClearInputData(); }
IMGUI_C_API void ImFontAtlas_ClearTexData(ImFontAtlas* self) { return self->ClearTexData(); }
IMGUI_C_API void ImFontAtlas_ClearFonts(ImFontAtlas* self) { return self->ClearFonts(); }
IMGUI_C_API void ImFontAtlas_Clear(ImFontAtlas* self) { return self->Clear(); }
IMGUI_C_API bool ImFontAtlas_Build(ImFontAtlas* self) { return self->Build(); }
IMGUI_C_API void ImFontAtlas_GetTexDataAsAlpha8(ImFontAtlas* self, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel) { return self->GetTexDataAsAlpha8(out_pixels, out_width, out_height, out_bytes_per_pixel); }
IMGUI_C_API void ImFontAtlas_GetTexDataAsRGBA32(ImFontAtlas* self, unsigned char** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel) { return self->GetTexDataAsRGBA32(out_pixels, out_width, out_height, out_bytes_per_pixel); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* self) { return self->GetGlyphRangesDefault(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesGreek(ImFontAtlas* self) { return self->GetGlyphRangesGreek(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesKorean(ImFontAtlas* self) { return self->GetGlyphRangesKorean(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesJapanese(ImFontAtlas* self) { return self->GetGlyphRangesJapanese(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesChineseFull(ImFontAtlas* self) { return self->GetGlyphRangesChineseFull(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(ImFontAtlas* self) { return self->GetGlyphRangesChineseSimplifiedCommon(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesCyrillic(ImFontAtlas* self) { return self->GetGlyphRangesCyrillic(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesThai(ImFontAtlas* self) { return self->GetGlyphRangesThai(); }
IMGUI_C_API const ImWchar* ImFontAtlas_GetGlyphRangesVietnamese(ImFontAtlas* self) { return self->GetGlyphRangesVietnamese(); }
IMGUI_C_API int ImFontAtlas_AddCustomRectRegular(ImFontAtlas* self, int width, int height) { return self->AddCustomRectRegular(width, height); }
IMGUI_C_API int ImFontAtlas_AddCustomRectFontGlyph(ImFontAtlas* self, ImFont* font, ImWchar id, int width, int height, float advance_x, ImVec2 offset) { return self->AddCustomRectFontGlyph(font, id, width, height, advance_x, offset); }
// IMGUI_C_API void ImFontAtlas_CalcCustomRectUV(const ImFontAtlas* self, const ImFontAtlasCustomRect* rect, ImVec2* out_uv_min, ImVec2* out_uv_max) { return self->CalcCustomRectUV(rect, out_uv_min, out_uv_max); }
// IMGUI_C_API bool ImFontAtlas_GetMouseCursorTexData(ImFontAtlas* self, ImGuiMouseCursor cursor, ImVec2* out_offset, ImVec2* out_size, ImVec2 out_uv_border[2], ImVec2 out_uv_fill[2]) { return self->GetMouseCursorTexData(cursor, out_offset, out_size, out_uv_border, out_uv_fill); }

IMGUI_C_API ImFont ImFont_init(void) { return ImFont(); }
IMGUI_C_API void ImFont_deinit(ImFont* self) { self->~ImFont(); }
IMGUI_C_API const ImFontGlyph* ImFont_FindGlyph(const ImFont* self, ImWchar c) { return self->FindGlyph(c); }
IMGUI_C_API const ImFontGlyph* ImFont_FindGlyphNoFallback(const ImFont* self, ImWchar c) { return self->FindGlyphNoFallback(c); }
IMGUI_C_API ImVec2 ImFont_CalcTextSizeA(const ImFont* self, float size, float max_width, float wrap_width, const char* text_begin, const char* text_end, const char** remaining) { return self->CalcTextSizeA(size, max_width, wrap_width, text_begin, text_end, remaining); }
IMGUI_C_API const char* ImFont_CalcWordWrapPositionA(const ImFont* self, float scale, const char* text, const char* text_end, float wrap_width) { return self->CalcWordWrapPositionA(scale, text, text_end, wrap_width); }
IMGUI_C_API void ImFont_RenderChar(const ImFont* self, ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, ImWchar c) { return self->RenderChar(draw_list, size, pos, col, c); }
IMGUI_C_API void ImFont_RenderText(const ImFont* self, ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, ImVec4 clip_rect, const char* text_begin, const char* text_end, float wrap_width, bool cpu_fine_clip) { return self->RenderText(draw_list, size, pos, col, clip_rect, text_begin, text_end, wrap_width, cpu_fine_clip); }
// IMGUI_C_API void ImFont_BuildLookupTable(ImFont* self) { return self->BuildLookupTable(); }
// IMGUI_C_API void ImFont_ClearOutputData(ImFont* self) { return self->ClearOutputData(); }
// IMGUI_C_API void ImFont_GrowIndex(ImFont* self, int new_size) { return self->GrowIndex(new_size); }
// IMGUI_C_API void ImFont_AddGlyph(ImFont* self, const ImFontConfig* src_cfg, ImWchar c, float x0, float y0, float x1, float y1, float u0, float v0, float u1, float v1, float advance_x) { return self->AddGlyph(src_cfg, c, x0, y0, x1, y1, u0, v0, u1, v1, advance_x); }
// IMGUI_C_API void ImFont_AddRemapChar(ImFont* self, ImWchar dst, ImWchar src, bool overwrite_dst) { return self->AddRemapChar(dst, src, overwrite_dst); }
// IMGUI_C_API void ImFont_SetGlyphVisible(ImFont* self, ImWchar c, bool visible) { return self->SetGlyphVisible(c, visible); }
// IMGUI_C_API bool ImFont_IsGlyphRangeUnused(ImFont* self, unsigned int c_begin, unsigned int c_last) { return self->IsGlyphRangeUnused(c_begin, c_last); }