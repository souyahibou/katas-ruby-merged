module BookKeeping
  VERSION = 2
end

# "I"=1
# "V"=5
# "X"=10
# "L"=50
# "C"=100
# "D"=500
# "M"=1000

def convert(nbr)
  #Milliers
   mil = nbr/1000
   m_rom = romain(4, mil)
  #Centaines
   cen = (nbr - mil*1000)/100
   c_rom = romain(3, cen)
  #Dizaines
   diz = (nbr - mil*1000 - cen*100)/10
   d_rom = romain(2, diz)
  #Unites
   uni = (nbr - mil*1000 - cen*100 - diz*10)
   u_rom = romain(1, uni)
   # p [mil,cen,diz,uni], [m_rom,c_rom,d_rom,u_rom]
   [m_rom,c_rom,d_rom,u_rom].join
end

def romain(ordre, chiffre)
    if ordre == 1
         case chiffre
         when 1 then return "I"
         when 2 then return "II"
         when 3 then return "III"
         when 4 then return "IV"
         when 5 then return "V"
         when 6 then return "VI"
         when 7 then return "VII"
         when 8 then return "VIII"
         when 9 then return "IX"
         end
    end

    if ordre == 2
        case chiffre
        when 1 then return "X"
        when 2 then return "XX"
        when 3 then return "XXX"
        when 4 then return "XL"
        when 5 then return "L"
        when 6 then return "LX"
        when 7 then return "LXX"
        when 8 then return "LXXX"
        when 9 then return "XC"
        end
    end

    if ordre == 3
        case chiffre
        when 1 then return "C"
        when 2 then return "CC"
        when 3 then return "CCC"
        when 4 then return "CD"
        when 5 then return "D"
        when 6 then return "DC"
        when 7 then return "DCC"
        when 8 then return "DCCC"
        when 9 then return "CM"
        end
    end

    if ordre == 4
        case chiffre
        when 1 then return "M"
        when 2 then return "MM "
        when 3 then return "MMM"
        end
    end
end

class Numeric
    def to_roman
        convert(self)
    end
end
