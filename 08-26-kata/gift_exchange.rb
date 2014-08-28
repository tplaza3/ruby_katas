require "pry"

module GiftExchange
  # Just a sample list of members for your gift exchange. Feel free to change/ignore.
  #
  # Returns an Array of member names.
  def self.sample_members
    ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
  end

  # Assign members to each other.
  #
  # members - Array containing member names.
  #
  # Examples
  #
  #   assign_gift_givers(sample_members)
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", "Sachin Jain" => "Richa Goyal", "Suneel Jain" => "Arjun Goyal", "Prisha Gupta" => "Beth Haubert", ...etc }
  #
  # Returns a Hash with each member's name as a key and the person to whom they
  # should give a gift as the value.
  
  def self.shuffle_with_conditions
    arr = self.sample_members
    arr2 = arr.shuffle
    arr2
  end
  
  def self.associate
     arr = self.sample_members
     h = arr.split.to_h
     h
   end

    
  
  def self.assign_gift_givers2
    members = self.sample_members
    members_shuffled = self.shuffle_with_conditions
    
    h = Hash[*members_shuffled]
    h
  end
  
  def self.assign_gift_givers1
    members = self.sample_members
    h = Hash[*members]
    h
  end
  
  binding.pry
  
end