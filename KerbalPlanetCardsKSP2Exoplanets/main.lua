--- STEAMODDED HEADER
--- MOD_NAME: Kerbal Planet Cards - KSP2 Exoplanets
--- MOD_ID: kplanetcardsksp2exo
--- MOD_AUTHOR: [PSRPulsar]
--- MOD_DESCRIPTION: Replaces planet cards with the exoplanets that were planned to be added to Kerbal Space Program 2
--- PREFIX: kpcex
--- VERSION: 1.0.0
--- DEPENDENCIES: [malverk]

Malverk.badges.badge_moon = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('k_moon'), get_type_colour(self or card.config, card), nil, 1.2)
end

Malverk.badges.badge_binary_planet = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('k_binary_planet'), get_type_colour(self or card.config, card), nil, 1.2)
end

Malverk.badges.badge_asteroid = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('k_asteroid'), get_type_colour(self or card.config, card), nil, 1.2)
end

AltTexture{ 
    key = 'planets',
    set = 'Planet',
    path = 'exoplanet-tarot.png',
    original_sheet = true,
    display_pos = 'c_earth',
    localization = true
}
AltTexture{
    key = 'spectral',
    set = 'Spectral',
    path = 'exoplanet-tarot.png',
    original_sheet = true,
    keys = {'c_black_hole'},
    loc_txt = {name = 'Black Hole'},
    localization = {
        c_black_hole = {
            name = 'Galactic Origin'
        }
    }
}
AltTexture{
    key = 'joker',
    set = 'Joker',
    path = 'exoplanet-joker.png',
    original_sheet = true,
    keys = {'j_astronomer'},
    loc_txt = {name = 'Astronomer'},
}
AltTexture{ 
    key = 'boosters',
    set = 'Booster',
    original_sheet = true,
    path = 'exoplanet-booster.png',
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
TexturePack{ 
    key = 'kspcards',
    textures = {
        'kpcex_planets',
        'kpcex_spectral',
        'kpcex_boosters',
        'kpcex_joker',
    },
    loc_txt = {
        name = 'KSP2 Exoplanets',
        text = {
             'Replaces planet cards with the exoplanets',
               'that were planned for KSP2'
        }
    }
}