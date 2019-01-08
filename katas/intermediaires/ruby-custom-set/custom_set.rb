module BookKeeping
  VERSION = 1
end

class CustomSet
      attr_reader :tab

      def initialize(tab)
          @tab = tab
      end

      def empty?
          @tab.empty?
      end

      def member?(tab)
          return true  if     @tab.empty?  && tab.nil?
          return false if     @tab.empty? && !tab.nil?
          return true  if     @tab.member?(tab)
          return false
      end

      def subset?(set)
          @tab.each{|element| return false unless set.member?(element)}
      end

      def disjoint?(set)
          set.empty?
          @tab.each{|element| return false if set.member?(element)}
          return true
      end

      def ==(set)
          unless disjoint?(set)
             @tab.each{|element| return false unless set.member?(element)}
             return true
          end
          return true   if set.empty? && @tab.empty?
          return false
      end

      def add(number)
          @tab << number
      end

      def intersection(set)
          @tab.select{|element| element if set.member?(element)}
      end

      def difference(set)
          @tab - intersection(set)
      end

      def union(set)
          @tab + set.tab
      end
end
