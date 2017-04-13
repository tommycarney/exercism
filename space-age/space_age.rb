class SpaceAge
  attr_reader :seconds

  SECONDS_IN_A_YEAR = {
    :earth   => 31_557_600.00,
    :mercury => 7_600_543.82,
    :venus   => 19_414_149.05,
    :mars    => 59_354_032.69,
    :jupiter => 374_355_659.12,
    :saturn  => 929_292_362.88,
    :uranus  => 2_651_370_019.3,
    :neptune => 5_200_418_560.00
  }.freeze

  SECONDS_IN_A_YEAR.each do |planet, time|
    define_method "on_#{planet}" do
      sprintf("%.2f",(@seconds/time)).to_f
    end
  end

  def initialize(seconds)
    @seconds = seconds.to_f
  end
end
