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
p "ok"; puts bubble_sort([1,2])[1]; p"ok"
result, swaps, cpt = bubble_sort_2 sequence = [4, 3, 5, 0, 1]
puts "Final result: #{result}"
puts "Swaps: #{swaps}"
puts "iterations : #{cpt}"


#bonus added
puts "\n\n"
puts "you can run: ruby bubblesort.rb '[4, 3, 5, 0, 1]'" if ARGV.empty?
for i in 0 ... ARGV.length
    puts "\nArgument n°#{i} #{ARGV[i]}"
    puts "ARGV.length: " + ARGV.length.to_s
    puts "ARGV.class: " + ARGV[i].class.to_s

    array_of_int = ARGV[i].scan(/\d/).map(&:to_i)
    result, swaps, cpt = bubble_sort_2 sequence = array_of_int
    puts "\nFinal result: #{result}"
    puts "Swaps: #{swaps}"
    puts "iterations : #{cpt}"
end


class BubbleSort
    def basic_sort(tab)
        tab = [tab] if tab.class == Integer
        bubble_sort(tab)
    end

    def smart_sort(tab=[])
        tab = [tab] if tab.class == Integer
	      bubble_sort_2(tab)
    end
end

# gem "minitest", "5.8.4"
require "minitest/spec"
require "minitest/autorun"

    describe BubbleSort do
        describe "sort" do
            describe "basic" do
                describe "resultat_tri" do
                    it "should return nothing" do
                        BubbleSort.new.basic_sort([])[0].must_be_empty
                    end

                    it "should return unique element" do
                        BubbleSort.new.basic_sort([10])[0].must_equal([10])
                    end

                    it "should be an string" do
                        BubbleSort.new.basic_sort("zyxolifeda")[0].must_equal("adefiloxyz")
                    end


                    it "should integer as mere element" do
                        BubbleSort.new.basic_sort(123)[0].must_equal([123])
                    end

                    it "should accept duplicated element" do
                        BubbleSort.new.basic_sort([9,3,4,1,5,3,2,7])[0].grep(3).size.must_equal(2)
                    end

                    it "should be sorted and accepted duplicated element" do
                        BubbleSort.new.basic_sort([9,3,4,1,5,3,2,7])[0].must_equal([1,2,3,3,4,5,7,9])
                    end
                end
            end

            describe "smart" do
                describe "resultat_tri" do
                    it "should return nothing" do
                        BubbleSort.new.smart_sort([])[0].must_be_empty
                    end

                    it "should return unique element" do
                        BubbleSort.new.smart_sort([10])[0].must_equal([10])
                    end

                    it "should be an string" do
                        BubbleSort.new.smart_sort("zyxolifeda")[0].must_equal("adefiloxyz")
                    end


                    it "should integer as mere element" do
                        BubbleSort.new.smart_sort(123)[0].must_equal([123])
                    end

                    it "should accept duplicated element" do
                        BubbleSort.new.smart_sort([9,3,4,1,5,3,2,7])[0].grep(3).size.must_equal(2)
                    end

                    it "should be sorted and accepted duplicated element" do
                        BubbleSort.new.smart_sort([9,3,4,1,5,3,2,7])[0].must_equal([1,2,3,3,4,5,7,9])
                    end
                end
            end

            describe "basic vs smart" do
                it "should have smart_sort less greater than basic_sort" do
                    assert_operator BubbleSort.new.basic_sort([9,3,4,1,5,3,2,7])[1], :>= , BubbleSort.new.smart_sort([9,3,4,1,5,3,2,7])[1]
                end
            end
        end
    end
