
def my_uniq(arr)
    raise ArgumentError.new if !arr.is_a?(Array)
    hash = Hash.new(0)

    arr.each do |ele|
        hash[ele] += 1
    end 
    
    new_arr = []
    hash.each do |k,v| 
         new_arr << k 
    end 

    new_arr
end


def two_sum(arr)
  pairs = []
  arr.each_with_index do |el1, i|
    arr.each_with_index do |el2, j|
     pairs << [i, j] if j > i && el1 + el2 == 0
    end
  end
  pairs
end

def my_transpose(arr)
  arr.transpose
end




