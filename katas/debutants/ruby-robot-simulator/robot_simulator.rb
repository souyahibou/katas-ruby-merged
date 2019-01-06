class Robot
      @direction_face = nil

      def bearing
          @direction_face
      end

      def orient(direction)
          if [:east, :west, :north, :south].include?(direction) then
            @direction_face = direction
          else
            raise ArgumentError
          end
      end

      def turn_right
          case bearing
          when :east  then orient(:south)
          when :west  then orient(:north)
          when :north then orient(:east)
          when :south then orient(:west)

          end
      end

      def turn_left
          case bearing
          when :south then orient(:east)
          when :north then orient(:west)
          when :east  then orient(:north)
          when :west  then orient(:south)

          end
      end

      def at(x, y)
          @x, @y = x, y
      end

      def coordinates
          return @x, @y
      end

      def advance
          case bearing
          when :east  then @x += 1
          when :west  then @x -= 1
          when :north then @y += 1
          when :south then @y -= 1
          end
      end
end

class Simulator
      COMMANDS = {R: :turn_right, A: :advance, L: :turn_left}
      def instructions(order)
          order.chars.map{ |chr| COMMANDS[chr.to_sym]}
      end

      def place(robot, x:, y:, direction:)
          robot.at(x,y)
          robot.orient(direction)
      end

      def evaluate(robot, orders)
          instructions(orders).each{ |order| robot.send order}
      end

end
