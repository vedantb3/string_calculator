class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = string.split(/,|\n|;/).map(&:to_i)
    negative_numbers = numbers.select(&:negative?)
    raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?

    numbers.sum
  end
end
