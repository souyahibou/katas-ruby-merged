class Bst
  VERSION = 1

  attr_accessor :right
  attr_accessor :left
  attr_accessor :data

    def initialize(value)
        @data = value
        @right= nil
        @left = nil
    end

    def insert(number)
        if    number > @data then @right&.insert(number) || @right = Bst.new(number)
        elsif number <= @data then@left&.insert(number)  ||  @left = Bst.new(number)
        else  raise IOError
        end
    end

    def each
       if block_given? then
          [@left&.each&.entries, @data, @right&.each&.entries].compact.flatten.to_enum.each{ |element| yield(element) }
       else
          [@left&.each&.entries, @data, @right&.each&.entries].compact.flatten.to_enum
       end
    end
end
