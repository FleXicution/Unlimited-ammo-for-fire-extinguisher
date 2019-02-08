local skins = {
    "s_m_y_cop_01",
    "s_f_y_cop_01",
    "s_m_y_hwaycop_01",
    "s_m_y_sheriff_01",
    "s_f_y_sheriff_01",
    "s_m_y_swat_01",
    "s_m_y_ranger_01",
    "s_f_y_ranger_01",
}

function isPedAllowed()
    local ped = GetPlayerPed(-1)
    for i=1, #skins do
        if GetHashKey(skins[i]) == GetEntityModel(ped) then
            return true
        end
    end
    return false
end

SetPedInfiniteAmmo(GetPlayerId(-1), true, "WEAPON_FIREEXTINGUISHER")