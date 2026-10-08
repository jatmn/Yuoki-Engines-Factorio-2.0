stds.factorio = {
  read_globals = {
    "defines", "log", "settings",
    table = {fields = {deepcopy = {}}},
  },
}
std = "lua52+factorio"
not_globals = {"io", "os", "dofile", "loadfile", "coroutine"}
max_line_length = false
exclude_files = {"build/**", ".cache/**"}

-- Factorio 2.0 data-stage helpers used by Engines.
local data_reads = {
  "mods", "util", "kg", "pipecoverspictures", "assembler2pipepictures",
  "circuit_connector_definitions", "transport_belt_connector_frame_sprites",
  "transport_belt_circuit_wire_max_distance",
}
files["data*.lua"].globals = {"data"}
files["data*.lua"].read_globals = data_reads
files["settings*.lua"].globals = {"data"}
files["prototypes/**"].globals = {"data"}
files["prototypes/**"].read_globals = data_reads

-- Existing shared exports are limited to their defining files.
files["prototypes/e_pipes.lua"].globals = {"mftrans_w", "mftrans_red"}
files["prototypes/e_transport_tube.lua"].globals = {"belt_reader_gfx"}

files["migrations/**"].globals = {"game", "storage"}
files["migrations/**"].read_globals = {"script", "remote", "prototypes"}

-- Archived data-stage script: retain its optional external electric-machine flags.
-- It is not loaded by data.lua, but remains part of the tracked Lua baseline.
files["_old/yi_engines_016_data-updates.lua"].globals = {"data"}
files["_old/yi_engines_016_data-updates.lua"].read_globals = {"electric_Form_press", "electric_Crusher"}
