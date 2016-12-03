require('rspec')
require('definition')

describe(Definition) do
  before() do
  Definition.clear()
end

  describe('#definition') do
    it('returns the definition') do
      test_def = Definition.new("liquid")
      expect(test_def.definition()).to(eq("liquid"))
    end
  end

describe("#id") do
  it("returns the id of the definition") do
    test_def = Definition.new("liquid")
    test_def.save()
    expect(test_def.id()).to(eq(1))
  end
end

describe('.all') do
  it("it is empty at first") do
    expect(Definition.all()).to(eq([]))
  end
end

describe('#save') do
    it("adds a definition to the array of saved definitions") do
      test_def = Definition.new("liquid")
      test_def.save()
      expect(Definition.all()).to(eq([test_def]))
    end
  end

describe('.clear') do
  it("empties out all of the saved definitions") do
    Definition.new("liquid").save()
    Definition.clear()
    expect(Definition.all()).to(eq([]))
  end
end
end
