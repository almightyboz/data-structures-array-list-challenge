require_relative 'array_list'

describe ArrayList do

  let(:test_list) { ArrayList.new(5) }

  it "instantiates a new object with initial capacity n" do
    expect(test_list).to be_a(ArrayList)
    expect(test_list.capacity).to eq(5)
    expect(test_list.capacity).not_to eq(1)
  end

  it "adds an element to the end of the list and returns the added element" do
    expect{ test_list.get(0) }.to raise_error(IndexError)
    test_list.add("Hello, I am a test.")
    expect(test_list.get(0)).to eq("Hello, I am a test.")
  end

  it "returns the added element" do
    expect(test_list.add("I am also a test")).to eq("I am also a test")
  end

  it "raises an Out of Bounds/IndexError if asked to return an element that is not in the bounds of the array" do
    expect{ test_list.get(7) }.to raise_error(IndexError)
  end

  it "returns an item at the specified index" do
    test_list.add("leaf")
    test_list.add("flower")
    expect(test_list.get(0)).to eq("leaf")
    expect(test_list.get(0)).not_to eq("flower")
    expect(test_list.get(1)).to eq("flower")
  end

  it "sets a value in the array at a specific index and return the element." do
    test_list.add("leaf")
    test_list.add("flower")
    expect(test_list.set(0, "shirt")).to eq("shirt")
    expect(test_list.get(0)).to eq("shirt")
  end

  it "returns an out of bounds error if the index at the set element does not exist" do
    expect{ test_list.set(7, "shirt") }.to raise_error(IndexError)
  end

  it "returns the length of the list object" do
    expect(test_list.length).to eq(0)
    test_list.add("addition")
    expect(test_list.length).to eq(1)
  end

  it "raises an IndexError if there is no element at a specified index" do
    expect{ test_list.insert(1, "data") }.to raise_error(IndexError)
  end

  it "inserts a value at the specified index if it's replacing an existing value" do
    test_list.add("data")
    test_list.insert(0, "frog")
    expect(test_list.get(0)).to eq("frog")
    expect(test_list.get(1)).to eq("data")

  end

end
