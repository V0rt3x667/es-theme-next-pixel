list=(
# Edit game list below (full game list available from ./data/games folder)
chase_hq
crazy_taxi
daytona_usa_2_power_edition
f_zero
f_zero_x
lunar_rover_patrol
mario_kart_8
sega_rally
super_mario_kart
vs_excitebike
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_horizontal.xml
sed -i "s/random(.*)/random(${games})/" game_theme_horizontal_legacy.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml
sed -i "s/random(.*)/random(${games})/" game_theme_vertical_wheel.xml