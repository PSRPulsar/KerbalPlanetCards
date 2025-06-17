--- STEAMODDED HEADER
--- MOD_NAME: Kerbal Planet Cards - OPM + MPE
--- MOD_ID: kplanetcardsopm
--- MOD_AUTHOR: [PSRPulsar]
--- MOD_DESCRIPTION: Replaces planet cards with the planets from stock Kerbal Space Program 1, Outer Planets Mod, and Minor Planets Expansion
--- PREFIX: kpco
--- VERSION: 1.0.0
--- DEPENDENCIES: [malverk]

Malverk.badges.badge_dwarfplanet = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('k_dwarfplanet'), get_type_colour(self or card.config, card), nil, 1.2)
end

AltTexture{ 
    key = 'planets',
    set = 'Planet',
    path = 'opm-tarot.png',
    original_sheet = true,
    display_pos = 'c_saturn',
    localization = true
}
AltTexture{ 
    key = 'boosters',
    set = 'Booster',
    original_sheet = true,
    path = 'opm-booster.png',
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
    path = 'opm-tarot.png',
    original_sheet = true,
    keys = {'c_black_hole'},
    loc_txt = {name = 'Black Hole'},
    localization = {
        c_black_hole = {
            name = 'Magic Boulder'
        }
    }
}
AltTexture{
    key = 'joker',
    set = 'Joker',
    path = 'opm-joker.png',
    original_sheet = true,
    keys = {'j_astronomer'},
    loc_txt = {name = 'Astronomer'},
}
TexturePack{ 
    key = 'kspcards',
    textures = {
        'kpco_planets',
        'kpco_spectral',
        'kpco_joker',
        'kpco_boosters',
    },
    loc_txt = {
        name = 'OPM + MPE',
        text = {
             'Replaces planet cards with planets',
               'from stock KSP1, OPM, and MPE'
        }
    }
}
