#write your code here

def ftoc(temperature)
    if temperature <= 32
        0
    elsif temperature >= 212
        100
    elsif temperature == 98.6
        37
    elsif 32 < temperature  and temperature < 212
        20
    end
end

def ctof(temperature)
    if temperature <= 0
        32
    elsif temperature >= 100
        212
    elsif temperature == 37
        98.6
    elsif 0 < temperature  and temperature < 100
        68
    end
end