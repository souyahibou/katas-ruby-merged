class Array
    def accumulate
        new_array = []
        return self if empty?
        if block_given?
            each do |element|
                new_array << yield(element)
                p element
                p yield(element)
            end
            return new_array
        end
    end
end
