--- STEAMODDED HEADER
--- MOD_NAME: Kerbal Planet Cards - Stock KSP2
--- MOD_ID: kplanetcardsksp2
--- MOD_AUTHOR: [PSRPulsar]
--- MOD_DESCRIPTION: Replaces planet cards with the planets from stock Kerbal Space Program 2
--- PREFIX: kpc2
--- VERSION: 1.0.0
--- DEPENDENCIES: [malverk]

Malverk.badges.badge_moon = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('k_moon'), get_type_colour(self or card.config, card), nil, 1.2)
end

AltTexture{ 
    key = 'planets',
    set = 'Planet',
    path = 'stockksp2-tarot.png',
    original_sheet = true,
    display_pos = 'c_earth',
    localization = true
}
AltTexture{ 
    key = 'boosters',
    set = 'Booster',
    original_sheet = true,
    path = 'stockksp2-booster.png',
    loc_txt = {name = 'Celestial Packs'},
    keys = {
        'p_celestial_normal_1',
        'p_celestial_normal_2',
        'p_celestial_normal_3',
        'p_celestial_normal_4',
        'p_celestial_jumbo_1',
        'p_celestial_jumbo_2',
        'p_celestial_mega_1',
        'p_celestial_mega_2',
    },
}
AltTexture{
    key = 'spectral',
    set = 'Spectral',
    path = 'stockksp2-tarot.png',
    original_sheet = true,
    keys = {'c_black_hole'},
    loc_txt = {name = 'Black Hole'},
}
AltTexture{
    key = 'joker',
    set = 'Joker',
    path = 'stockksp2-joker.png',
    original_sheet = true,
    keys = {'j_astronomer'},
    loc_txt = {name = 'Astronomer'},
}
TexturePack{ 
    key = 'kspcards',
    textures = {
        'kpc2_planets',
        'kpc2_spectral',
        'kpc2_joker',
        'kpc2_boosters',
    },
    loc_txt = {
        name = 'Stock KSP1',
        text = {
             'Replaces planet cards with planets',
               'from stock Kerbal Space Program 1'
        }
    }
}