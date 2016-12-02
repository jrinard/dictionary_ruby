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

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new("Water")
      expect(test_word.id()).to(eq(1))
    end
  end








end
