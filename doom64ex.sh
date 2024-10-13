#!/usr/bin/bash

# Set game folder paths
game_data_dir=${XDG_DATA_HOME}/doom64ex

# Check data folder
if [ ! -d ${game_data_dir} ]; then
    mkdir ${game_data_dir}
    cp /app/share/games/doom64ex/doom64ex.pk3 ${game_data_dir}
fi

# Check game files
if [ ! -f ${game_data_dir}/doom64.wad ] || [ ! -f ${game_data_dir}/doomsnd.sf2 ]; then
    zenity --width=400 --error --title="Game data files not found" \
    --no-wrap --text="doom64.wad and doomsnd.sf2 files must be copied in:\n${game_data_dir}" \
    --ok-label "Close"
    exit 1
fi

# Run game engine
exec /app/bin/doom64ex "$@"
