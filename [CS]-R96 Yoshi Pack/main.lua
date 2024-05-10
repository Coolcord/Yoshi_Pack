-- name: [CS]-R96 Yoshi Pack
-- description: Render96 version of 10 different colors of Yoshis! Each with their own voice pitch and flutter jump!\n\n\\#ff7777\\This Mod Requires the Character Select Mod\nto use as a Library!

local TEXT_MOD_NAME = "Yoshi-R96 Pack"
local CHARACTER_DESCRIPTION = {
	"Yoshi is here with his Flutter Jump!",
	"",
	"Additional Credits:",
	"Lucho_Gamer:",
	"Some Code, Sounds, and Model",
	"melzinoff:",
	"Yoshi Cap Models",
	"YellowBlur:",
	"Flutter Jump Code"
}
local CREDITS = "Coolcord"

local E_MODEL_R96_YOSHI_GREEN = smlua_model_util_get_id("r96_yoshi_player_geo_green")
local E_MODEL_R96_YOSHI_RED = smlua_model_util_get_id("r96_yoshi_player_geo_red")
local E_MODEL_R96_YOSHI_BLUE = smlua_model_util_get_id("r96_yoshi_player_geo_blue")
local E_MODEL_R96_YOSHI_LIGHT_BLUE = smlua_model_util_get_id("r96_yoshi_player_geo_light_blue")
local E_MODEL_R96_YOSHI_YELLOW = smlua_model_util_get_id("r96_yoshi_player_geo_yellow")
local E_MODEL_R96_YOSHI_ORANGE = smlua_model_util_get_id("r96_yoshi_player_geo_orange")
local E_MODEL_R96_YOSHI_PINK = smlua_model_util_get_id("r96_yoshi_player_geo_pink")
local E_MODEL_R96_YOSHI_PURPLE = smlua_model_util_get_id("r96_yoshi_player_geo_purple")
local E_MODEL_R96_YOSHI_BLACK = smlua_model_util_get_id("r96_yoshi_player_geo_black")
local E_MODEL_R96_YOSHI_WHITE = smlua_model_util_get_id("r96_yoshi_player_geo_white")

local TEX_GREEN_YOSHI_ICON = get_texture_info("green_yoshi_icon")
local TEX_RED_YOSHI_ICON = get_texture_info("red_yoshi_icon")
local TEX_BLUE_YOSHI_ICON = get_texture_info("blue_yoshi_icon")
local TEX_LIGHT_BLUE_YOSHI_ICON = get_texture_info("light_blue_yoshi_icon")
local TEX_YELLOW_YOSHI_ICON = get_texture_info("yellow_yoshi_icon")
local TEX_ORANGE_YOSHI_ICON = get_texture_info("orange_yoshi_icon")
local TEX_PINK_YOSHI_ICON = get_texture_info("pink_yoshi_icon")
local TEX_PURPLE_YOSHI_ICON = get_texture_info("purple_yoshi_icon")
local TEX_BLACK_YOSHI_ICON = get_texture_info("black_yoshi_icon")
local TEX_WHITE_YOSHI_ICON = get_texture_info("white_yoshi_icon")

local FLUTTER_SOUND_NORMAL = audio_sample_load('N-Flutter.mp3')
local FLUTTER_SOUND_UP1 = audio_sample_load('U1-Flutter.mp3')
local FLUTTER_SOUND_UP2 = audio_sample_load('U2-Flutter.mp3')
local FLUTTER_SOUND_UP3 = audio_sample_load('U3-Flutter.mp3')
local FLUTTER_SOUND_UP4 = audio_sample_load('U4-Flutter.mp3')
local FLUTTER_SOUND_UP5 = audio_sample_load('U5-Flutter.mp3')
local FLUTTER_SOUND_DOWN1 = audio_sample_load('D1-Flutter.mp3')
local FLUTTER_SOUND_DOWN2 = audio_sample_load('D2-Flutter.mp3')
local FLUTTER_SOUND_DOWN3 = audio_sample_load('D3-Flutter.mp3')
local FLUTTER_SOUND_DOWN4 = audio_sample_load('D4-Flutter.mp3')

local VOICETABLE_CHAR_NORMAL = {
    [CHAR_SOUND_ATTACKED] = {'N-Hurt 1.mp3', 'N-Hurt 2.mp3', 'N-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'N-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'N-Dying 1.mp3', 'N-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'N-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'N-Electrocuted.mp3', 'N-Thrown.mp3', 'N-Get Picked up.mp3', 'N-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'N-Ground Pound.mp3', 'N-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'N-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'N-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'N-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'N-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'N-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'N-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'N-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'N-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'N-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'N-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'N-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'N-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'N-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'N-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'N-Triple Jump 1.mp3', 'N-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'N-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'N-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'N-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'N-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'N-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'N-Sleeping 1.mp3', 'N-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'N-Throw Bowser 1.mp3', 'N-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'N-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'N-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'N-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'N-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'N-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'N-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'N-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'N-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'N-Triple Jump 1.mp3', 'N-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'N-Jump 2.mp3', 'N-Jump 3.mp3', 'N-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'N-Tired 2.mp3',
}

local VOICETABLE_CHAR_UP1 = {
    [CHAR_SOUND_ATTACKED] = {'U1-Hurt 1.mp3', 'U1-Hurt 2.mp3', 'U1-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'U1-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'U1-Dying 1.mp3', 'U1-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'U1-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'U1-Electrocuted.mp3', 'U1-Thrown.mp3', 'U1-Get Picked up.mp3', 'U1-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'U1-Ground Pound.mp3', 'U1-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'U1-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'U1-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'U1-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'U1-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'U1-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'U1-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'U1-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'U1-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'U1-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'U1-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'U1-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'U1-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'U1-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'U1-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'U1-Triple Jump 1.mp3', 'U1-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'U1-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'U1-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'U1-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'U1-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'U1-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'U1-Sleeping 1.mp3', 'U1-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'U1-Throw Bowser 1.mp3', 'U1-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'U1-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'U1-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'U1-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'U1-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'U1-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'U1-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'U1-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'U1-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'U1-Triple Jump 1.mp3', 'U1-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'U1-Jump 2.mp3', 'U1-Jump 3.mp3', 'U1-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'U1-Tired 2.mp3',
}

local VOICETABLE_CHAR_UP2 = {
    [CHAR_SOUND_ATTACKED] = {'U2-Hurt 1.mp3', 'U2-Hurt 2.mp3', 'U2-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'U2-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'U2-Dying 1.mp3', 'U2-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'U2-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'U2-Electrocuted.mp3', 'U2-Thrown.mp3', 'U2-Get Picked up.mp3', 'U2-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'U2-Ground Pound.mp3', 'U2-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'U2-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'U2-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'U2-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'U2-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'U2-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'U2-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'U2-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'U2-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'U2-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'U2-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'U2-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'U2-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'U2-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'U2-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'U2-Triple Jump 1.mp3', 'U2-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'U2-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'U2-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'U2-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'U2-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'U2-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'U2-Sleeping 1.mp3', 'U2-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'U2-Throw Bowser 1.mp3', 'U2-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'U2-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'U2-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'U2-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'U2-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'U2-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'U2-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'U2-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'U2-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'U2-Triple Jump 1.mp3', 'U2-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'U2-Jump 2.mp3', 'U2-Jump 3.mp3', 'U2-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'U2-Tired 2.mp3',
}

local VOICETABLE_CHAR_UP3 = {
    [CHAR_SOUND_ATTACKED] = {'U3-Hurt 1.mp3', 'U3-Hurt 2.mp3', 'U3-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'U3-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'U3-Dying 1.mp3', 'U3-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'U3-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'U3-Electrocuted.mp3', 'U3-Thrown.mp3', 'U3-Get Picked up.mp3', 'U3-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'U3-Ground Pound.mp3', 'U3-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'U3-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'U3-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'U3-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'U3-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'U3-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'U3-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'U3-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'U3-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'U3-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'U3-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'U3-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'U3-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'U3-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'U3-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'U3-Triple Jump 1.mp3', 'U3-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'U3-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'U3-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'U3-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'U3-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'U3-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'U3-Sleeping 1.mp3', 'U3-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'U3-Throw Bowser 1.mp3', 'U3-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'U3-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'U3-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'U3-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'U3-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'U3-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'U3-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'U3-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'U3-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'U3-Triple Jump 1.mp3', 'U3-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'U3-Jump 2.mp3', 'U3-Jump 3.mp3', 'U3-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'U3-Tired 2.mp3',
}

local VOICETABLE_CHAR_UP4 = {
    [CHAR_SOUND_ATTACKED] = {'U4-Hurt 1.mp3', 'U4-Hurt 2.mp3', 'U4-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'U4-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'U4-Dying 1.mp3', 'U4-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'U4-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'U4-Electrocuted.mp3', 'U4-Thrown.mp3', 'U4-Get Picked up.mp3', 'U4-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'U4-Ground Pound.mp3', 'U4-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'U4-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'U4-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'U4-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'U4-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'U4-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'U4-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'U4-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'U4-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'U4-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'U4-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'U4-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'U4-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'U4-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'U4-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'U4-Triple Jump 1.mp3', 'U4-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'U4-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'U4-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'U4-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'U4-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'U4-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'U4-Sleeping 1.mp3', 'U4-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'U4-Throw Bowser 1.mp3', 'U4-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'U4-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'U4-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'U4-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'U4-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'U4-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'U4-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'U4-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'U4-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'U4-Triple Jump 1.mp3', 'U4-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'U4-Jump 2.mp3', 'U4-Jump 3.mp3', 'U4-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'U4-Tired 2.mp3',
}

local VOICETABLE_CHAR_UP5 = {
    [CHAR_SOUND_ATTACKED] = {'U5-Hurt 1.mp3', 'U5-Hurt 2.mp3', 'U5-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'U5-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'U5-Dying 1.mp3', 'U5-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'U5-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'U5-Electrocuted.mp3', 'U5-Thrown.mp3', 'U5-Get Picked up.mp3', 'U5-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'U5-Ground Pound.mp3', 'U5-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'U5-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'U5-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'U5-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'U5-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'U5-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'U5-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'U5-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'U5-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'U5-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'U5-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'U5-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'U5-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'U5-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'U5-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'U5-Triple Jump 1.mp3', 'U5-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'U5-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'U5-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'U5-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'U5-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'U5-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'U5-Sleeping 1.mp3', 'U5-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'U5-Throw Bowser 1.mp3', 'U5-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'U5-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'U5-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'U5-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'U5-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'U5-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'U5-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'U5-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'U5-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'U5-Triple Jump 1.mp3', 'U5-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'U5-Jump 2.mp3', 'U5-Jump 3.mp3', 'U5-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'U5-Tired 2.mp3',
}

local VOICETABLE_CHAR_DOWN1 = {
    [CHAR_SOUND_ATTACKED] = {'D1-Hurt 1.mp3', 'D1-Hurt 2.mp3', 'D1-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'D1-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'D1-Dying 1.mp3', 'D1-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'D1-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'D1-Electrocuted.mp3', 'D1-Thrown.mp3', 'D1-Get Picked up.mp3', 'D1-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'D1-Ground Pound.mp3', 'D1-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'D1-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'D1-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'D1-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'D1-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'D1-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'D1-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'D1-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'D1-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'D1-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'D1-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'D1-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'D1-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'D1-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'D1-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'D1-Triple Jump 1.mp3', 'D1-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'D1-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'D1-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'D1-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'D1-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'D1-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'D1-Sleeping 1.mp3', 'D1-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'D1-Throw Bowser 1.mp3', 'D1-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'D1-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'D1-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'D1-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'D1-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'D1-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'D1-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'D1-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'D1-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'D1-Triple Jump 1.mp3', 'D1-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'D1-Jump 2.mp3', 'D1-Jump 3.mp3', 'D1-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'D1-Tired 2.mp3',
}

local VOICETABLE_CHAR_DOWN2 = {
    [CHAR_SOUND_ATTACKED] = {'D2-Hurt 1.mp3', 'D2-Hurt 2.mp3', 'D2-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'D2-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'D2-Dying 1.mp3', 'D2-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'D2-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'D2-Electrocuted.mp3', 'D2-Thrown.mp3', 'D2-Get Picked up.mp3', 'D2-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'D2-Ground Pound.mp3', 'D2-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'D2-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'D2-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'D2-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'D2-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'D2-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'D2-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'D2-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'D2-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'D2-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'D2-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'D2-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'D2-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'D2-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'D2-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'D2-Triple Jump 1.mp3', 'D2-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'D2-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'D2-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'D2-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'D2-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'D2-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'D2-Sleeping 1.mp3', 'D2-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'D2-Throw Bowser 1.mp3', 'D2-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'D2-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'D2-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'D2-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'D2-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'D2-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'D2-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'D2-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'D2-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'D2-Triple Jump 1.mp3', 'D2-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'D2-Jump 2.mp3', 'D2-Jump 3.mp3', 'D2-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'D2-Tired 2.mp3',
}

local VOICETABLE_CHAR_DOWN3 = {
    [CHAR_SOUND_ATTACKED] = {'D3-Hurt 1.mp3', 'D3-Hurt 2.mp3', 'D3-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'D3-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'D3-Dying 1.mp3', 'D3-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'D3-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'D3-Electrocuted.mp3', 'D3-Thrown.mp3', 'D3-Get Picked up.mp3', 'D3-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'D3-Ground Pound.mp3', 'D3-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'D3-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'D3-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'D3-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'D3-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'D3-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'D3-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'D3-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'D3-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'D3-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'D3-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'D3-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'D3-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'D3-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'D3-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'D3-Triple Jump 1.mp3', 'D3-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'D3-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'D3-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'D3-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'D3-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'D3-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'D3-Sleeping 1.mp3', 'D3-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'D3-Throw Bowser 1.mp3', 'D3-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'D3-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'D3-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'D3-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'D3-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'D3-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'D3-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'D3-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'D3-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'D3-Triple Jump 1.mp3', 'D3-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'D3-Jump 2.mp3', 'D3-Jump 3.mp3', 'D3-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'D3-Tired 2.mp3',
}

local VOICETABLE_CHAR_DOWN4 = {
    [CHAR_SOUND_ATTACKED] = {'D4-Hurt 1.mp3', 'D4-Hurt 2.mp3', 'D4-Hurt 3.mp3'},
    [CHAR_SOUND_DOH] = 'D4-oof 1.mp3',
    [CHAR_SOUND_DYING] = {'D4-Dying 1.mp3', 'D4-Dying 2.mp3'},
    [CHAR_SOUND_EEUH] = {'D4-Slow Get up from Ledge 1.mp3',},
    [CHAR_SOUND_GAME_OVER] = {'D4-Electrocuted.mp3', 'D4-Thrown.mp3', 'D4-Get Picked up.mp3', 'D4-Squished.mp3'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'D4-Ground Pound.mp3', 'D4-Ground Pound 2.mp3',},
    [CHAR_SOUND_HAHA] = 'D4-Long Jump.mp3',
    [CHAR_SOUND_HAHA_2] = 'D4-Lands 1.mp3',
    [CHAR_SOUND_HELLO] = 'D4-Quiet Mario.mp3',
    [CHAR_SOUND_HERE_WE_GO] = {'D4-Star Get 1.mp3',},
    [CHAR_SOUND_HOOHOO] = 'D4-Double Jump 1.mp3',
    [CHAR_SOUND_HRMM] = 'D4-Grab Ledge 1.mp3',
    [CHAR_SOUND_IMA_TIRED] = 'D4-Quiet Mario.mp3',
    [CHAR_SOUND_LETS_A_GO] = 'D4-Yoshi.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'D4-Slow Get up from Ledge 3.mp3',
    [CHAR_SOUND_ON_FIRE] = {'D4-Hurt in Lava 1.mp3',},
    [CHAR_SOUND_OOOF] = 'D4-ooof 2.mp3',
    [CHAR_SOUND_OOOF2] = 'D4-ooof 2.mp3',
    [CHAR_SOUND_PANTING] = {'D4-Panting 1.mp3',},
    [CHAR_SOUND_PANTING_COLD] = 'D4-Panting 1.mp3',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = {'D4-Triple Jump 1.mp3', 'D4-Triple Jump 2.mp3'},
    [CHAR_SOUND_PUNCH_HOO] = {'D4-Kick 1.mp3',},
    [CHAR_SOUND_PUNCH_WAH] = 'D4-Punch 1.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'D4-Punch 2.mp3',
    [CHAR_SOUND_SNORING1] = 'D4-Sleeping 1.mp3',
    [CHAR_SOUND_SNORING2] = 'D4-Sleeping 2.mp3',
    [CHAR_SOUND_SNORING3] = {'D4-Sleeping 1.mp3', 'D4-Sleeping 2.mp3'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = {'D4-Throw Bowser 1.mp3', 'D4-Throw Bowser 2.mp3'},
    [CHAR_SOUND_TWIRL_BOUNCE] = {'D4-Triple Jump 5.mp3'},
    [CHAR_SOUND_UH] = 'D4-Ledge Miss.mp3',
    [CHAR_SOUND_UH2] = {'D4-Get up from Ledge.mp3',},
    [CHAR_SOUND_UH2_2] = 'D4-Ledge Miss.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'D4-Falling.mp3',
    [CHAR_SOUND_WAH2] = 'D4-Kick 2.mp3',
    [CHAR_SOUND_WHOA] = 'D4-Grab Ledge 1.mp3',
    [CHAR_SOUND_YAHOO] = {'D4-Long Jump.mp3',},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'D4-Triple Jump 1.mp3', 'D4-Long Jump.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'D4-Jump 2.mp3', 'D4-Jump 3.mp3', 'D4-Jump 4.mp3'},
    [CHAR_SOUND_YAWNING] = 'D4-Tired 2.mp3',
}

local SOUND_MAPPING = {
	[VOICETABLE_CHAR_NORMAL] = FLUTTER_SOUND_NORMAL,
	[VOICETABLE_CHAR_UP1] = FLUTTER_SOUND_UP1,
	[VOICETABLE_CHAR_UP2] = FLUTTER_SOUND_UP2,
	[VOICETABLE_CHAR_UP3] = FLUTTER_SOUND_UP3,
	[VOICETABLE_CHAR_UP4] = FLUTTER_SOUND_UP4,
	[VOICETABLE_CHAR_UP5] = FLUTTER_SOUND_UP5,
	[VOICETABLE_CHAR_DOWN1] = FLUTTER_SOUND_DOWN1,
	[VOICETABLE_CHAR_DOWN2] = FLUTTER_SOUND_DOWN2,
	[VOICETABLE_CHAR_DOWN3] = FLUTTER_SOUND_DOWN3,
	[VOICETABLE_CHAR_DOWN4] = FLUTTER_SOUND_DOWN4,
}

local yoshiCaps = {
    normal = smlua_model_util_get_id("yoshi_cap_geo"),
    wing = smlua_model_util_get_id("yoshi_wing_cap_geo"),
    metal = smlua_model_util_get_id("yoshi_metal_cap_geo"),
    metalWing = smlua_model_util_get_id("yoshi_metal_wing_cap_geo")
}

local PALETTE_YOSHI_GREEN = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0x00, g = 0x89, b = 0x00},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x79, g = 0x4D, b = 0x00},
    [HAIR]   = {r = 0xFF, g = 0x00, b = 0x00},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0x00, g = 0x89, b = 0x00},
}

local PALETTE_YOSHI_RED = {
    [PANTS]  = {r = 0x82, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0xEE, g = 0x00, b = 0x00},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x35, g = 0x83, b = 0xFF},
    [HAIR]   = {r = 0x35, g = 0x83, b = 0xFF},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0xEE, g = 0x00, b = 0x00},
}

local PALETTE_YOSHI_BLUE = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0x00, g = 0x00, b = 0x89},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0xFF, g = 0x36, b = 0xBD},
    [HAIR]   = {r = 0xFF, g = 0x36, b = 0xBD},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0x00, g = 0x00, b = 0x89},
}

local PALETTE_YOSHI_LIGHT_BLUE = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0x00, g = 0xFF, b = 0xFF},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0xFF, g = 0x59, b = 0xFF},
    [HAIR]   = {r = 0xFF, g = 0x59, b = 0xFF},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0x00, g = 0xFF, b = 0xFF},
}

local PALETTE_YOSHI_YELLOW = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0xD9, g = 0xD9, b = 0x00},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x60, g = 0xFF, b = 0x2A},
    [HAIR]   = {r = 0x60, g = 0xFF, b = 0x2A},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0xD9, g = 0xD9, b = 0x00},
}

local PALETTE_YOSHI_ORANGE = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0xFF, g = 0x80, b = 0x00},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x1B, g = 0x62, b = 0xFF},
    [HAIR]   = {r = 0x1B, g = 0x62, b = 0xFF},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0xFF, g = 0x80, b = 0x00},
}
local PALETTE_YOSHI_PINK = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0xFF, g = 0x80, b = 0x80},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0xFF, g = 0xFF, b = 0x33},
    [HAIR]   = {r = 0xFF, g = 0xFF, b = 0x33},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0xFF, g = 0x80, b = 0x80},
}

local PALETTE_YOSHI_PURPLE = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0x9E, g = 0x40, b = 0xBA},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x79, g = 0x4D, b = 0x00},
    [HAIR]   = {r = 0x79, g = 0x4D, b = 0x00},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0x9E, g = 0x40, b = 0xBA},
}

local PALETTE_YOSHI_BLACK = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0x00, g = 0x00, b = 0x00},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0xE0, g = 0xE0, b = 0xE0},
    [HAIR]   = {r = 0xE0, g = 0xE0, b = 0xE0},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0x00, g = 0x00, b = 0x00},
}

local PALETTE_YOSHI_WHITE = {
    [PANTS]  = {r = 0xFF, g = 0x00, b = 0x00},
	[SHIRT]  = {r = 0xC0, g = 0xC0, b = 0xC0},
    [GLOVES] = {r = 0x00, g = 0x00, b = 0x00},
    [SHOES]  = {r = 0x23, g = 0x95, b = 0xDB},
    [HAIR]   = {r = 0x23, g = 0x95, b = 0xDB},
    [SKIN]   = {r = 0xFF, g = 0xFF, b = 0xFF},
    [CAP]    = {r = 0xC0, g = 0xC0, b = 0xC0},
}

gPlayerSyncTable[0].yoshiMoveset = false
local gYoshiMovesetsTable = {}

local function character_set_yoshi_moveset(characterModelID)
	if characterModelID == nil then return end
	gYoshiMovesetsTable[characterModelID] = true
end

if _G.charSelectExists then
    _G.charSelect.character_add("Yoshi-R96 (Green)", CHARACTER_DESCRIPTION, CREDITS, { r = 65, g = 235, b = 35}, E_MODEL_R96_YOSHI_GREEN, CT_TOAD, TEX_GREEN_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Red)", CHARACTER_DESCRIPTION, CREDITS, { r = 238, g = 0, b = 0 }, E_MODEL_R96_YOSHI_RED, CT_TOAD, TEX_RED_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Blue)", CHARACTER_DESCRIPTION, CREDITS, { r = 100, g = 150, b = 250 }, E_MODEL_R96_YOSHI_BLUE, CT_TOAD, TEX_BLUE_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (L Blue)", CHARACTER_DESCRIPTION, CREDITS, { r = 0, g = 255, b = 255 }, E_MODEL_R96_YOSHI_LIGHT_BLUE, CT_TOAD, TEX_LIGHT_BLUE_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Yellow)", CHARACTER_DESCRIPTION, CREDITS, { r = 255, g = 255, b = 0 }, E_MODEL_R96_YOSHI_YELLOW, CT_TOAD, TEX_YELLOW_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Orange)", CHARACTER_DESCRIPTION, CREDITS, { r = 255, g = 128, b = 0 }, E_MODEL_R96_YOSHI_ORANGE, CT_TOAD, TEX_ORANGE_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Pink)", CHARACTER_DESCRIPTION, CREDITS, { r = 255, g = 128, b = 128 }, E_MODEL_R96_YOSHI_PINK, CT_TOAD, TEX_PINK_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Purple)", CHARACTER_DESCRIPTION, CREDITS, { r = 158, g = 64, b = 186 }, E_MODEL_R96_YOSHI_PURPLE, CT_TOAD, TEX_PURPLE_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (Black)", CHARACTER_DESCRIPTION, CREDITS, { r = 150, g = 150, b = 150 }, E_MODEL_R96_YOSHI_BLACK, CT_TOAD, TEX_BLACK_YOSHI_ICON)
	_G.charSelect.character_add("Yoshi-R96 (White)", CHARACTER_DESCRIPTION, CREDITS, { r = 255, g = 255, b = 255 }, E_MODEL_R96_YOSHI_WHITE, CT_TOAD, TEX_WHITE_YOSHI_ICON)
	
	-- add the caps for each yoshi
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_GREEN, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_RED, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_BLUE, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_LIGHT_BLUE, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_YELLOW, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_ORANGE, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_PINK, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_PURPLE, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_BLACK, yoshiCaps)
	_G.charSelect.character_add_caps(E_MODEL_R96_YOSHI_WHITE, yoshiCaps)
	
	-- add the palettes for each yoshi
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_GREEN, PALETTE_YOSHI_GREEN)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_RED, PALETTE_YOSHI_RED)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_BLUE, PALETTE_YOSHI_BLUE)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_LIGHT_BLUE, PALETTE_YOSHI_LIGHT_BLUE)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_YELLOW, PALETTE_YOSHI_YELLOW)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_ORANGE, PALETTE_YOSHI_ORANGE)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_PINK, PALETTE_YOSHI_PINK)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_PURPLE, PALETTE_YOSHI_PURPLE)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_BLACK, PALETTE_YOSHI_BLACK)
	_G.charSelect.character_add_palette_preset(E_MODEL_R96_YOSHI_WHITE, PALETTE_YOSHI_WHITE)

	-- the following must be hooked for each character added
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_GREEN, VOICETABLE_CHAR_NORMAL)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_RED, VOICETABLE_CHAR_UP3)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_BLUE, VOICETABLE_CHAR_DOWN2)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_LIGHT_BLUE, VOICETABLE_CHAR_DOWN1)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_YELLOW, VOICETABLE_CHAR_UP1)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_ORANGE, VOICETABLE_CHAR_UP2)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_PINK, VOICETABLE_CHAR_UP4)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_PURPLE, VOICETABLE_CHAR_DOWN3)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_BLACK, VOICETABLE_CHAR_DOWN4)
	_G.charSelect.character_add_voice(E_MODEL_R96_YOSHI_WHITE, VOICETABLE_CHAR_UP5)
	
	-- add in movesets
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_GREEN)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_RED)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_BLUE)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_LIGHT_BLUE)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_YELLOW)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_ORANGE)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_PINK)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_PURPLE)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_BLACK)
	character_set_yoshi_moveset(E_MODEL_R96_YOSHI_WHITE)
	
	-- add in voices
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_NORMAL then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP1 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP2 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP3 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP4 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP5 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN1 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN2 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN3 then return _G.charSelect.voice.sound(m, sound) end
    end)
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN4 then return _G.charSelect.voice.sound(m, sound) end
    end)
	
	-- add in snores
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_NORMAL then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP1 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP2 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP3 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP4 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_UP5 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN1 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN2 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN3 then return _G.charSelect.voice.snore(m) end
    end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR_DOWN4 then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end


------------------------------------------------
-- Flutter Code (based on code by YellowBlur) --
------------------------------------------------

local ACT_FLUTTER = allocate_mario_action(ACT_GROUP_AIRBORNE | ACT_FLAG_AIR | ACT_FLAG_ALLOW_VERTICAL_WIND_ACTION)
local ACT_FLUTTER_FREEFALL = allocate_mario_action(ACT_GROUP_AIRBORNE | ACT_FLAG_AIR | ACT_FLAG_ALLOW_VERTICAL_WIND_ACTION)
local ANGLE_QUEUE_SIZE = 9
local gEventTable = {}
local gStateExtras = {}

for i = 0, (MAX_PLAYERS - 1) do
    gStateExtras[i] = {}
    local m = gMarioStates[i]
    local e = gStateExtras[i]
	local s = gPlayerSyncTable[i]
    e.canflutter = true
    e.angleDeltaQueue = {}
    for j = 0, (ANGLE_QUEUE_SIZE - 1) do e.angleDeltaQueue[j] = 0 end
    e.animFrame = 0
	s.heMario = false
end

function play_yoshi_flutter_sound(m, vol)
    if is_game_paused() then vol = 0.1 end
	
	local voicetable = _G.charSelect.character_get_voice(m)
	local sample = SOUND_MAPPING[voicetable] or FLUTTER_SOUND_NORMAL
	
    audio_sample_play(sample, m.pos, vol)
end

function act_flutter(m)
    local e = gStateExtras[m.playerIndex]
    common_air_action_step(m, ACT_JUMP_LAND, MARIO_ANIM_RUNNING_UNUSED, AIR_STEP_NONE)

    if m.actionTimer == 0 then
        m.actionState = m.actionArg
		play_yoshi_flutter_sound(m, 0.5)
    end

    m.vel.y = m.actionTimer / 2
    if m.prevAction ~= ACT_TRIPLE_JUMP then  
        if m.actionTimer > 30 or (m.controller.buttonDown & A_BUTTON) == 0 then
            set_mario_action(m, ACT_FREEFALL, 0)
        end
    else
        if m.actionTimer > 30 or (m.controller.buttonDown & A_BUTTON) == 0 then
            set_mario_action(m, ACT_FLUTTER_FREEFALL, 0)
        end
    end

    set_mario_animation(m, MARIO_ANIM_RUNNING_UNUSED)
    set_anim_to_frame(m, e.animFrame)
    e.animFrame = e.animFrame + 10
    if e.animFrame >= m.marioObj.header.gfx.animInfo.curAnim.loopEnd then
        e.animFrame = e.animFrame - m.marioObj.header.gfx.animInfo.curAnim.loopEnd
    end

    m.actionTimer = m.actionTimer + 1
    return 0
end

function act_flutter_freefall(m)
    local e = gStateExtras[m.playerIndex]
    common_air_action_step(m, ACT_TRIPLE_JUMP_LAND, MARIO_ANIM_FORWARD_SPINNING, AIR_STEP_NONE)
end

function mario_update(m)
    local e = gStateExtras[m.playerIndex]
    local s = gPlayerSyncTable[m.playerIndex]
    local np = gNetworkPlayers[m.playerIndex]

	-- Flutter Jump
    if gPlayerSyncTable[0].yoshiMoveset and gMarioStates[0].character.type == 0 then
        if e.canflutter == true then
            if m.action == ACT_JUMP and (m.controller.buttonPressed & A_BUTTON) ~= 0 and m.actionTimer > 0 or m.action == ACT_DOUBLE_JUMP and (m.controller.buttonPressed & A_BUTTON) ~= 0 and m.actionTimer > 0 or m.action == ACT_TRIPLE_JUMP and (m.controller.buttonPressed & A_BUTTON) ~= 0 and m.actionTimer > 0 or m.action == ACT_SIDE_FLIP and (m.controller.buttonPressed & A_BUTTON) ~= 0 and m.actionTimer > 0 or m.action == ACT_FREEFALL and m.prevAction ~= ACT_FLUTTER and (m.controller.buttonPressed & A_BUTTON) ~= 0 and m.actionTimer > 0 then
                set_mario_action(m, ACT_FLUTTER, 0)
                e.canflutter = false
            end
        end
        if m.action == ACT_JUMP or m.action == ACT_DOUBLE_JUMP or m.action == ACT_TRIPLE_JUMP or  m.action == ACT_LONG_JUMP or  m.action == ACT_SIDE_FLIP or m.action == ACT_FREEFALL then
            m.actionTimer = m.actionTimer + 1
        end
        if m.action == ACT_JUMP_LAND or m.action == ACT_DOUBLE_JUMP or m.action == ACT_TRIPLE_JUMP_LAND or m.action == ACT_IDLE or m.action == ACT_WALKING then
            e.canflutter = true
        end
    end

    if s.heMario then
        np.overrideModelIndex = 0
    else
        np.overrideModelIndex = np.modelIndex
    end
end

local function before_set_mario_action(m, nextAction)
    local flags = gYoshiMovesetsTable[_G.charSelect.character_get_current_table().model]
	if flags ~= nil then
		gPlayerSyncTable[0].yoshiMoveset = true
	else
		gPlayerSyncTable[0].yoshiMoveset = false
	end
end

hook_event(HOOK_BEFORE_SET_MARIO_ACTION, before_set_mario_action)
hook_event(HOOK_MARIO_UPDATE, mario_update)
hook_mario_action(ACT_FLUTTER,     { every_frame = act_flutter })
hook_mario_action(ACT_FLUTTER_FREEFALL,     { every_frame = act_flutter_freefall })
