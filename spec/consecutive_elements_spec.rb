require 'rspec'
require 'consecutive_elements'

describe ConsecutiveElements do
  before do
    @schedule = ["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]
  end
  it 'Produces an array of all the activities and the number of consecutive occurrences for that activity ' do
    input = ConsecutiveElements.new(@schedule)

    expected = [
      ["archery", 1],
      ["swimming", 2],
      ["crafts", 1],
      ["archery", 2],
      ["crafts", 1]
    ]

    expect(input.find_consecutives).to eq(expected)
  end

    it 'Checks to see if a schedule is invalid' do

      input = ConsecutiveElements.new(@schedule)

      expect(input.schedule_valid?).to eq false
    end

    it 'Checks to see if a schedule is valid' do
      schedule = ["archery", "archery", "swimming", "swimming", "archery", "archery", "crafts"]

      input = ConsecutiveElements.new(schedule)

      expect(input.schedule_valid?).to eq true
    end


  end
