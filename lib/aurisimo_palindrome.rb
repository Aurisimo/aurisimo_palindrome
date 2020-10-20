require "aurisimo_palindrome/version"

module AurisimoPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.gsub(/[^a-z0-9]/i, "").downcase
    end
end

class String
  include AurisimoPalindrome
end
              
class Integer
  include AurisimoPalindrome
end