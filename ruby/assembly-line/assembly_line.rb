class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    produced = 221 * @speed
    successful = 0
    if @speed.between?(1, 4)
      successful = produced
    elsif @speed.between?(5, 8)
      successful = produced * 0.9
    elsif @speed == 9
      successful = produced * 0.8
    elsif @speed == 10
      successful = produced * 0.77
    else
      "error"
    end
    successful
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
