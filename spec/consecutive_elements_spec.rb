require 'rspec'
require 'consecutive_elements'

describe ConsecutiveElements do
  it 'Turns array into an array of arrays' do
    schedule = ["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]

    input = ConsecutiveElements.new(schedule)

    expected = [
      ["archery"],
      ["swimming"],
      ["swimming"],
      ["crafts"],
      ["archery"],
      ["archery"],
      ["crafts"]
    ]

    expect(input.into_array).to eq(expected)
  end
end