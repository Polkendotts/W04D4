class Tower

    attr_reader :game, :take_from_row, :put_on_row, :disk, :play_game

    def initialize 
        @game = [
            [3,2,1]
            []
            []
        ]

        @disk = 0
        @take_from_row = 0
        @put_on_row = 0
        @play_game
    end 



    def play_game
        until won?
            

        end 
    end 

    def take_prompt 
        p game
        puts "Pick a pile"
        @take_from_row = gets.chomp.to_i
        @disk = @take_from_row.pop
    end 

    def put_prompt
        puts "Put it somewhere idiot"
        put_on_row = gets.chomp.to_i
        valid_prompt
    end 

    def won?
      game[2] == [3,2,1] ? true : false    
    end 

    def move
      game[put_on_row] << disk
    end 

    def valid_take
        if !game[take_from_row].empty?
            put_prompt
            true
        else
          raise "this pile is empty, try again"
        end
        

    end

    def valid_put?
      if (game[put_on_row][-1] < disk) 
          return false
      else
        return true
      end 
      

    end

    def 
    
end