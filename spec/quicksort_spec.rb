require 'simplecov'
SimpleCov.start

require './quicksort'

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
          eq([1, 122, 332])
    end
    
    it 'pusta tablica' do
          expect { quicksort([]).to be_a_kind_of(Boolean) }
    end  
    it 'method returns the correct boolean' do
      expect(starts_with_vowel?('asdfgh'))
        .to be(true), 'Incorrect results for input: \"aaaaaaaaaa\"'
      expect(starts_with_vowel?('Veeeeeeee'))
        .to be(false), 'Incorrect results for input: \"nooooooooo\"'
    end
  end

  describe '#binary_multiple_of_4?' do
    it 'should be defined' do
      expect { binary_multiple_of_4?('yes') }.not_to raise_error
    end

    it 'returns the correct boolean' do
      expect(binary_multiple_of_4?('111111101'))
        .to be(false), 'Incorrect results for input: \"111111101\"'
      expect(binary_multiple_of_4?('1010101010100'))
        .to be(true), 'Incorrect results for input: \"1010101010100\"'
    
   end
  end
end
