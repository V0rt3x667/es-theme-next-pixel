list=(
# Edit game list below (full game list available from ./data/games folder)
defender_of_the_crown_amigacdtv
der_langrisser
fire_emblem_awakening
lemmings_lynx
monopoly
pikmin_2
pikmin_3
rampart
sd_gundam_colony_kakutouki
stone_sling
worms
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_horizontal.xml
sed -i "s/random(.*)/random(${games})/" game_theme_horizontal_legacy.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml
sed -i "s/random(.*)/random(${games})/" game_theme_vertical_wheel.xml