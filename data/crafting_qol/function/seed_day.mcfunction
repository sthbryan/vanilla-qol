# Solo la primera vez. gametime/24000 subestima el dia si ya se durmio mucho,
# pero da un punto de partida razonable. Para corregirlo a mano:
#   scoreboard players set #day qol.sys <numero>
execute store result score #day qol.sys run time query gametime
scoreboard players operation #day qol.sys /= #daylen qol.sys
