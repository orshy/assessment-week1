require('rspec')
require('word_count')

describe('String#word_count') do

  it("will return the number of times the word matches the users sentence") do
    expect(("epicodus").word_count("epicodus")).to(eq(1))
  end
  it("will return the number of times the same word appears in one string.") do
    expect(("epicodus epicodus").word_count("epicodus")).to(eq(2))
  end
  it("will recongnize a word in a sentence") do
    expect(("today is friday").word_count("friday")).to(eq(1))
  end

  it("will return the correct count regardless of capitalization") do
    expect(("Friday").word_count("friday")).to(eq(1))
  end

end
