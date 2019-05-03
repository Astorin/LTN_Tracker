
default = data.raw["gui-style"].default
function add_style(name, style_definition)
  default[name] = style_definition
end

require("prototypes.styles.buttons")
require("prototypes.styles.labels")
require("prototypes.styles.depot_tab")

local default_gui = data.raw["gui-style"].default

-- table styles
do
default_gui["ltnt_table_default"] = {
  type = "table_style",
	parent = "table_with_selection",
}

default_gui["ltnt_shipment_table"] =
{
  type = "table_style",
  parent = "slot_table",
  vertical_align = "center",
  horizontal_align = "center",
  width = 34,
}
end

-- pane styles
default_gui["ltnt_sp_vertical"] =
{
  type = "scroll_pane_style",
  parent = "scroll_pane",
  vertical_scroll_policy = "auto",
  horizontal_scroll_policy = "never",
}

default_gui["ltnt_it_scroll_pane"] =
{
  type = "scroll_pane_style",
  vertical_scroll_policy = "auto-and-reserve-space",
  horizontal_scroll_policy = "never",
  vertical_align = "center",
}

default[defs.styles.depot_tab.no_frame_scroll_pane] = {
  type = "scroll_pane_style",
  parent = egm_defs.style_names.table.scroll_pane,
  padding = 0,
}


-- frame styles
default_gui["ltnt_slot_table_frame"] =
{
  type = "frame_style",
  parent = "frame",
  padding = 0,
  vertical_align = "center",
  minimal_height = 38,
  vertically_stretchable = "off",
	horizontally_stretchable = "off",
}

default[defs.styles.depot_tab.no_padding_frame] =
{
  type = "frame_style",
  padding = 0,
  flow_style = {type = "flow_style", padding = 0},
  horizontal_flow_style = {type = "horizontal_flow_style", padding = 0},
  vertical_flow_style = {type = "vertical_flow_style", padding = 0},
  use_header_filler = false,
}

-- textbox styles

default_gui["ltnt_invalid_value_tf"] =
{
  type = "textbox_style",
  default_background =
  {
    filename = "__core__/graphics/gui.png",
    corner_size = 3,
    position = {16, 16},
    scale = 1
  },
  active_background =
  {
    filename = "__core__/graphics/gui.png",
    corner_size = 3,
    position = {16, 16},
    scale = 1
  }
}