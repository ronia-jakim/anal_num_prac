using Base

module chudnowsky
# https://en.wikipedia.org/wiki/Chudnovsky_algorithm

function fact(x::Int)
    res = 1.0
    for i in 1::x
        res *= i
    end
end

function chud(iterations::Int)
    res = 0
    for q in 0:iterations
        sign = 1 
        if q % 2 
            sign = -1
        end
        a = fact(6 * q) / (fact(3 * q) * fact(q))
        b = (545140134 * q + 13591409) / ((640320)^(3 * q + 3/2))
        res += sign * a * b
    end

    return 1.0/(res * 12.0)
end
