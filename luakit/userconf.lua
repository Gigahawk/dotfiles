local select = require "select"

select.label_maker = function ()
    local chars = charset("asdfqwerzxcv")
    return trim(sort(reverse(chars)))
end
