module BinaryPower
  def power(base, exponent)
    if base.is_a?(Integer) && exponent.is_a?(Integer) && base > 0 && exponent > 0
      result = 1
      factor = base
      exponent.to_s(2).split("").reverse.each do |i|
        result *= factor if i=="1"
        factor *= factor
      end
      result
    else
      base ** exponent
    end
  end
end
