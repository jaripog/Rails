require 'a.rb'

describe StringAnalyzer do
    context "checking the has_vowels? method" do
        
        it "should detect has vowels" do
            a = StringAnalyzer.new
            message = a.has_vowels?("gopi")
            expect(message).to be true
        end
        it "should not detect has vowels" do
            a = StringAnalyzer.new
            message = a.has_vowels?("qwrt")
            expect(message).to be false
        end
    end
end