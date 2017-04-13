class PhoneNumber

  INVALID_PHONE_NUMBER = '0000000000'
  INVALID_CHARACTERS = /[^\d+|\-. ()]/

  def initialize(number)
    @number = number
  end

  def number
    return INVALID_PHONE_NUMBER unless valid_number?(@number)
    ten_digits?(international_prefix?(@number.scan(/\d/).join('')))
  end

  def area_code
  number.slice(0, 3)
  end

  def to_s
    "(#{number.slice(0, 3)}) #{number.slice(3, 3)}-#{number.slice(6, 4)}"
  end

  private

  def valid_number?(number)
    number.scan(INVALID_CHARACTERS).empty?
  end

  def international_prefix?(number)
    number.chars[0] == "1" && number.length > 10 ? number = number.chars.slice(1, number.length).join('') : number
  end

  def ten_digits?(number)
    number.length == 10 ? number : INVALID_PHONE_NUMBER
  end

end
