require_relative 'array_list'

describe ArrayList do

  let(:test_list) { ArrayList.new(5) }

  it "instantiates a new object with initial size n" do
    expect(test_list).to be_a(ArrayList)
    expect(test_list.size).to eq(5)
    expect(test_list.size).not_to eq(1)
  end

  it "adds an element to the end of the list and returns the added element" do
    expect{ test_list.get(6) }.to raise_error(IndexError)
    test_list.add("Hello, I am a test.")
    expect(test_list.get(6)).to eq("Hello, I am a test.")
  end

  it "returns the added element" do
    expect(test_list.add("I am also a test")).to eq("I am also a test")
  end

  it "raises an Out of Bounds/IndexError if asked to return an element that is not in the bounds of the array" do
    expect{ test_list.get(7) }.to raise_error(IndexError)
    expect(test_list.get(2)).to be_nil
  end

  it "returns an item at the specified index" do
    test_list.set(3, "Hello")
    expect(test_list.get(3)).to eq("Hello")
  end

  it "sets a value in the array at a specific index and return the element." do
    expect(test_list.set(2, "shirt")).to eq("shirt")
    expect(test_list.set(0, "pants")).not_to eq("shirt")
  end

  it "returns an out of bounds error if the index at the set element does not exist" do
    expect{ test_list.set(7, "shirt") }.to raise_error(IndexError)
  end

  it "returns the length of the list object" do
    expect(test_list.length).to eq(5)
    test_list.add("addition")
    expect(test_list.length).to eq(6)
  end

  it "raises an IndexError if there is no element at a specified index" do
    expect{ test_list.insert(1, "data") }.to raise_error(IndexError)
  end

  it "inserts a value at the specified index if it's replacing an existing value" do
    test_list.set(0, "data")
    test_list.insert(0, "frog")
    expect(test_list.get(0)).to eq("frog")
  end



end
