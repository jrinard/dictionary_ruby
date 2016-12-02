require('rspec')
require('word')
# require('definition')

describe(Word) do

  describe('#word') do
    it('returns the word') do
      test_word = Word.new("Water")
      expect(test_word.word()).to(eq("Water"))
    end
  end








end
