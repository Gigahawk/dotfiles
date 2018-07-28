-- Set allowed keys for hint following
local select = require "select"

select.label_maker = function (s)
    local chars = s.charset("asdfqwerzxcv")
    return s.trim(s.sort(s.reverse(chars)))
end

-- Only match generated labels (allows for exhaustive matching)
local follow = require "follow"
follow.pattern_maker = follow.pattern_styles.match_label

-- Custom bindings
local modes = require "modes"

modes.add_binds("normal", {
    { "J", "Go to next tab.", function(w) w:next_tab() end },
    { "K", "Go to previous tab.", function(w) w:prev_tab() end }
})


