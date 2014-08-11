class ConsecutiveElements

  def initialize(schedule)
    @schedule = schedule
  end

  def find_consecutives
    result = []
    length = @schedule.length
    count = 1
    length.times do |i|
      curr_el = @schedule[i+1]
      if curr_el != @schedule[i]
        result << [@schedule[i], count]
        count = 1
      else
        count += 1
      end
    end
    result
  end

  def schedule_valid?
    find_consecutives[0..-2].all? { |activity| activity[1] >= 2 }
  end
end


