module CalendarHelper
  def calendar(date = Date.today, &block)
    Calendar.new(self, date, block).table
    @challenges_by_date = Challenge.group_by(&:date)
  end
end
