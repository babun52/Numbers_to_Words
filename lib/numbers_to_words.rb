class Fixnum
  define_method(:numbers_to_words) do
    numbers_to_words = Hash.new()

    singles = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }

    teens = { 0 => "", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

    tens = { 0 => "", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }

    hundreds = { 0 => "", 100 => "one-hundred", 200 => "two-hundred", 300 => "three-hundred", 400 => "four-hundred", 500 => "five-hundred", 600 => "six-hundred", 700 => "seven-hundred", 800 => "eight-hundred", 900 => "nine-hundred" }

    thousands = { 0 => "", 1000 => "one-thousand", 2000 => "two-thousand", 3000 => "three-thousand", 4000 => "four-thousand", 5000 => "five-thousand", 6000 => "six-thousand", 7000 => "seven-thousand", 8000 => "eight-thousand", 9000 => "nine-thousand" }

    output_number = ""
    if self == 0
      output_number = ("zero")
    elsif self > 999 && self < 10000
      teen = (self.%(100))
      hundred = (self.%(1000))-(self.%(100))
      thousand = self-(self.%(1000))
      output_number = (thousands.fetch(thousand).concat(" ")).concat(hundreds.fetch(hundred).concat(" ")).concat(teens.fetch(teen))
    elsif self > 99 && self < 1000
      single = self.%(10)
      ten = (self.%(100))
      hundred = self-(self.%(100))
      output_number = (hundreds.fetch(hundred).concat(" ")).concat(teens.fetch(teen))
    elsif self > 19 && self < 100
      single = self.%(10)
      ten = self-(single)
      output_number = (tens.fetch(ten)).concat(" ").concat(singles.fetch(single))
    elsif self > 9 && self < 20
      output_number = teens.fetch(self)
    else
      output_number = singles.fetch(self)
    end
    output_number
  end
end
