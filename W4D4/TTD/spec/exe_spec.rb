require 'exe'
require 'rspec'

# take in an array
# removes dupes- subject:[1, 2, 1, 3, 3] => result:[1, 2, 3]
# input arr is not the same obj id as output arr

describe "my_uniq" do 
    let(:arr) {[1, 2, 1, 3, 3]}

    it "should take in an array as an argument" do 
        expect{my_uniq(arr)}.to_not raise_error(ArgumentError)    
    end
    
    it "should remove duplicates" do 
        expect(my_uniq(arr)).to eq([1,2,3])
    end 
    
    it "should return new array" do 
        expect(my_uniq(arr)).to_not be([1,2,3])
    end 
end 


describe "two_sum" do
  let(:arr1) {[-1, 0, 2, -2, 1]}
  let(:arr2) {[-1, 1, 0, 0, 2]}

  it "should find all pairs of positions where the elements sum to 0" do
    expect(two_sum(arr1)).to eq([[0,4],[2,3]])
    expect(two_sum(arr2)).to eq([[0,1], [2,3]])
  end
end


describe "my_transpose" do 
    let (:matrix1) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]}

    let (:matrix2) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
    ]}


    it "should transpose real good" do 
        expect(my_transpose(matrix1)).to eq(matrix2)
    end 

end 
