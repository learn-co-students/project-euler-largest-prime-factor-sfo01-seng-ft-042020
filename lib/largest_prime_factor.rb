def largest_prime_factor(input)
    factors=[]
    drain = input
    loop do
        factor = find_factor(drain)

        if factor && factor != input
            factors << factor
            drain = drain / factor
        else
            break
        end
    end
    factors.max
end

def find_factor(num)
    for i in 2..num
        if num % i == 0
            return i
        end
    end
    return nil
end