require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

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

  describe('#definition') do
    it("returns the definition of the word") do
      test_word = Word.new('Water')
      expect(test_word.definition()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new('water')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("water").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('find') do
    it('returns a word by its id number') do
      test_word = Word.new('Water')
      test_word.save()
      test_word2 = Word.new('Fire')
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('#add_def') do
    it("adds a new def to a word") do
      test_word = Word.new("Water")
      test_def = Definition.new("liquid")
      test_word.add_definition(test_def)
      expect(test_word.definition()).to(eq([test_def]))
    end
  end






end
