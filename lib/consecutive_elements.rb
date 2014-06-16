class ConsecutiveElements

  def initialize(schedule)
    @schedule = schedule
  end

  def into_array
    result = []
    @schedule.each do |activity|
      result << [activity]
    end
    result
  end

end