class Rover

  def initialize(probe)
    @probe = probe
    @position = 0
  end

  def move
    @position+=1
  end

  def survey
    @probe.take_sample
  end

  def report
    probe_status = @probe.status.empty? ? "" : ", #{@probe.status}"
    "#{@position}" + probe_status
  end

end
