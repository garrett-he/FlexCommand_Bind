local _, FlexCommand_Bind = ...

FlexCommand_Bind.bind = {}

local bindingOwnerFrame = CreateFrame("Frame")

local buttonIndex = 1

FlexCommand_Bind.bind.SetActionBinding = function(key, action)
    SetOverrideBinding(bindingOwnerFrame, true, key, action)
end

FlexCommand_Bind.bind.SetSpellBinding = function(key, spell)
    SetOverrideBindingSpell(bindingOwnerFrame, true, key, spell)
end

FlexCommand_Bind.bind.SetItemBinding = function(key, item)
    SetOverrideBindingItem(bindingOwnerFrame, true, key, item)
end

FlexCommand_Bind.bind.SetMacroTextBinding = function(key, text)
    local button = CreateFrame("Button", "FlexCommand_Bind_MacroButton" .. buttonIndex, UIParent, "SecureActionButtonTemplate")

    button:SetAttribute("type", "macro")
    button:SetAttribute("macrotext", text)

    buttonIndex = buttonIndex + 1

    SetOverrideBindingClick(bindingOwnerFrame, true, key, button:GetName())
end
