class BeerSong
    def verse(nbr)
      @nbr = nbr
      verse = "#{(bottles[2]||nbr).to_s.capitalize} #{bottles[0]} of beer on the wall, #{bottles[2]||nbr} #{bottles[0]} of beer.\n" \
        "Take #{nbr_before[:sub]} down and pass it around, #{nbr_before[:nbr]} #{bottles[1]} of beer on the wall.\n"
      !nbr.zero? ? verse : verse.sub!(/Take.+around/,"Go to the store and buy some more")
    end

    def bottles
        case @nbr
        when 0 then (return "bottles", "bottles", "no more")
        when 1 then (return "bottle", "bottles", nil)
        when 2 then (return "bottles", "bottle", nil)
        else        (return "bottles", "bottles", nil)
        end
    end

    def nbr_before
        @nbr == 0 ? (return {sub: 'one', nbr: 99}) : @nbr == 1 ? (return {sub: 'it', nbr: "no more"}) : (return {sub: 'one', nbr: @nbr-1})
    end

    def verses(fin, debut)
        verses = String.new
        for i in (fin).downto(debut)
            verses += verse(i) + "\n"
        end
        verses[0...-1]
    end

    def lyrics
        verses(99,0)
    end
end


class BookKeeping
    VERSION = 2
end
