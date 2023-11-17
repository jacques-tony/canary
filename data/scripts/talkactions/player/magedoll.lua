local outfits = {
 
    -- Config
        dollID = 5903, -- Change this to your dolls or items, item ID
     
        -- Main Window Messages (The first window the player sees)
        mainTitle = "Choose an outfit",
        mainMsg = "You will recieve both addons aswell as the outfit you choose.",
     
        -- Already Owned Window (The window that appears when the player already owns the addon)
        ownedTitle = "Whoops!",
        ownedMsg = "You already have this addon. Please choose another.",
     
        -- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
        dollTitle = "Whoops!",
        dollMsg = "The addon doll must be in your backpack.",
    -- End Config

    -- Outfit Table
        [1] = {name = "Ferumbras Hat", male = 130, female = 141},
    }

local hatDollModal = TalkAction("!hatdoll") 

    function hatDollModal.onSay(player, words, param)
        player:sendAddonWindow(outfits)
        return true
    end

hatDollModal:separator(" ")
hatDollModal:groupType("normal")
hatDollModal:register()