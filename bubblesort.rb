def bubble_sort( tab=[] )
    tail = tab.length
    i=1
    while ( tab[i] )
        if tab[i-1] > tab[i]
	    temp = tab[i]
            tab[i] = tab[i-1]
            tab[i-1] = temp
            i=0
        end
        i+=1
    end
    tab
end
