


sequence = [4, 3, 5, 0, 1]
swaps = 0

# Your Code Here
result = []
def bubble_sort( tab=[])
    tail = tab.length
    i=1
    cpt=1		
    swaps_nbr=0
    while ( tab[i] )
        if tab[i-1] > tab[i]
	    temp = tab[i]
            tab[i] = tab[i-1]
            tab[i-1] = temp
            i=0
            swaps_nbr+=1
        end
        i+=1
        cpt+=1
    end
#   puts swaps_nbr.to_s + " swaps"
#   puts cpt.to_s + " iterations"
#   puts tab.to_s + " array sorted"
   return tab, swaps_nbr, cpt
end

result, swaps, cpt = bubble_sort(sequence)
#end code



puts "Final result: #{result}"
puts "Swaps: #{swaps}"
puts "iterations : #{cpt}"

# the worst case scenario for bubble sort is [5, 4, 3, 1, 0]
