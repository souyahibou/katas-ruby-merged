sequence = [4, 3, 5, 0, 1]
swaps = 0

#Your Code Here

#1 Write an implementation of bubble sort that does not use any custom classes. You'll likely want to use methods and will surely needs arrays and a while loop.
result = []
def bubble_sort( tab)
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
    return tab, swaps_nbr, cpt
end


#2 what would be the worst case scenario for bubble sort? #=> the worst case scenario for bubble sort is [5, 4, 3, 1, 0]


#3 How many swaps would that worst case take?  #=>the worst case take 10 swaps and 25 iterations(while)


#4 Can you tweak the algorithm so that it takes the same number of swaps (7) but fewer total operations?   #=> 
def bubble_sort_2( tab=[])
    j=0
    cpt=1		
    swaps_nbr=0
    while tab[j]                    #tant que l'on est pas à la fin du tableau à partir de l'indice 0
	i=j+1                       #on commence le tri à partir d'un indice j+1 (et non plus au début(indice 1) comme précédemment)
        while tab[i]                #tant que l'on a pas atteint la fin du tableau à partir du dernier indice non trié
            if tab[i] < tab[j]      #tri si case index j est plus grand que le suivant 
	        temp = tab[i]
                tab[i] = tab[j]
                tab[j] = temp
                swaps_nbr+=1
            end
            i+=1
            cpt+=1
        end
        j+=1
    end
    return tab, swaps_nbr, cpt
end

#end code


result, swaps, cpt = bubble_sort sequence
puts "Final result: #{result}"
puts "Swaps: #{swaps}"
puts "iterations : #{cpt}"

result, swaps, cpt = bubble_sort_2 sequence = [4, 3, 5, 0, 1]
puts "Final result: #{result}"
puts "Swaps: #{swaps}"
puts "iterations : #{cpt}"

