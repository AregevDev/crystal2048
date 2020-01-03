module Crystal2048
    class Board
        property elements : Array(Int32)
        getter size : Int32

    def initialize(n : Int32)
        @size = n
        @elements = Array(Int32).new(@size * @size, 0)

        fill
    end

    def fill
        locs = (0...15).to_a.sample(2)
        
        locs.each do |loc|
            @elements[loc] = [2, 4].shuffle[0]
        end
    end

    def to_s(io)
        @elements.each_with_index do |elem, i|
            if (i % @size == 0 && i != 0)
            io << '\n'
            end
            io << "[#{elem}]"
        end

        end
    end
end
