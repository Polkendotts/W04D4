def stock(arr)
  hash = Hash.new {|h,k| h[k] = [] }
  
  arr.each_with_index do |el, i|
    arr.each_with_index do |ele , j|
      if j > i
        profit = ele - el 
        if profit > 0
          hash[profit] = [i,j]
        end
      end 
    end
  end

  max_profit_key = hash.keys.max 
  hash[max_profit_key]
end


a = [100, 95, 97, 120] #=> [1,3]
p stock(a)