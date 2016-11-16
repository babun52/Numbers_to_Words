require('rspec')
require('numbers_to_words')

describe("Fixnum#numbers_to_words") do
  it("translates single digit numbers in numeric form into a written word") do
  expect(1.numbers_to_words()).to(eq("one"))
  end

  it("translates numbers less than twenty in numeric form into a written word") do
  expect(12.numbers_to_words()).to(eq("twelve"))
  end

  it("translates numbers less than one-hundred in numeric form into a written word") do
  expect(73.numbers_to_words()).to(eq("seventy three"))
  end

  it("translates numbers less than one_thousand is numeric form into a written word") do
  expect(192.numbers_to_words()).to(eq("one-hundred ninety two"))
  end

  it("translates numbers less than ten_thousand is numeric form into a written word") do
  expect(7777.numbers_to_words()).to(eq("seven-thousand seven-hundred seventy seven"))
  end
end
