class LargestPrimeFactor
    attr_reader :number

    def initialize(num)
        @num = num
        find_largest_factor
    end

    def find_largest_factor
        factors=[]
        drain = @num
        loop do
            factor = find_factor(drain)
    
            if factor && factor != @num
                factors << factor
                drain = drain / factor
            else
                break
            end
        end
        @number = factors.max
    end
    
    def find_factor(num)
        for i in 2..num
            if num % i == 0
                return i
            end
        end
        return nil
    end
end