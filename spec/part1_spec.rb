require 'hw1.rb'

describe 'Ruby homework part 1' do

  describe "#validate_email?" do
    it "should be defined" do
      expect { validate_email?('email@example.com') }.not_to raise_error
    end
    it "returns true" do
      expect(validate_email?('email@example.com')).to be true
      expect(validate_email?('my_email@example.com.ar')).to be true
      expect(validate_email?('student1@fcyt2.edu.ar')).to be true
    end
    it "returns false for an invalid email" do
      expect(validate_email?('email!!')).not_to be true
      expect(validate_email?('email@bad_domain!!!')).to be false
      expect(validate_email?('')).to be false
    end
  end
  
  describe "#is_palindrome?" do
    it "should be defined" do
      expect { is_palindrome?('word') }.not_to raise_error
    end
    it "returns true" do
      expect(is_palindrome?('Amor, Roma')).to be true
      expect(is_palindrome?('step on no pets')).to be true
      expect(is_palindrome?('noon')).to be true
    end
    it "returns false for a non palindrome" do
      expect(is_palindrome?('chair')).not_to be true
      expect(is_palindrome?('divide and conquer')).to be false
      expect(is_palindrome?('')).to be false
    end
  end
end
