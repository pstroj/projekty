require 'simplecov'
SimpleCov.start

require 'quicksort'

RSpec.describe 'quicksort.rb' do
  describe '#quicksort' do

    it 'floaty zwracają floaty' do
          expect { quicksort([5.0, 70.1, 20.23, -8.09]).to be_a_kind_of(float) }
    end
 it 'błędny string w tablicy' do
          expect(quicksort([0, 1, 2, "test"])).to raise_error 
    end
 it 'prawidłowe sortowanie na intach' do
          expect(quicksort([122, 21, 332]))
          eq([21, 122, 332])
end	
end
 it 'brak strat' do
 	expect (quicksort([3,11,24,9]))
  	contain_exactly(3,9,11,24)
	end

 it 'sort stringa  wedlug alfabetu' do
        expect(quicksort(%w(ala ma kota))).to
	 eq(%w(ala kota ma))
    end

  describe '#binary_multiple_of_4?' do
    it 'should be defined' do
      expect { binary_multiple_of_4?('yes') }.not_to raise_error
    end

    it 'returns the correct boolean' do
      expect(quicksort('111111101'))
        .to be(false), 'Incorrect results for input: \"111111101\"'
      expect(quicksort('1010101010100'))
        .to be(true), 'Incorrect results for input: \"1010101010100\"'
    
   end
  end
end
