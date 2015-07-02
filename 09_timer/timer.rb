class Timer
  @seconds
  @minutes
  @hours
  @time_string

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
    @time_string = "00:00:00"
  end

  def hour(hrs)
    @hours = hrs
    @time_string[0]="#{hrs/10}"
    @time_string[1]="#{hrs%10}"
  end

  def minute(min)
    @minutes = min%60
    hour(min/60)
    @time_string[3]="#{@minutes/10}"
    @time_string[4]="#{@minutes%10}"
  end

  def seconds=(sec)
    @seconds = sec%60
    minute(sec/60)
    @time_string[6]="#{@seconds/10}"
    @time_string[7]="#{@seconds%10}"
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end
end
