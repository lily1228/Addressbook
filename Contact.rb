require "Person"
require "PhoneNumber"
class Contact < Person
  attr_accessor :address, :id, :friends, :addressbook
  def initialize
    @id=""
    @friends=[]
    @address=""
    @phoneNumbers=[]
  end
  def fullName 
   return firstName+ " " +lastName
  end
  def to_s
    
    _friends=[]

    @friends.each do |f|
      _friends<<@addressbook.nameFromID(f)      
    end
    return fullName+ " " +birthDate+ " " +phoneNumbers.to_s+ " "+address+" "+id.to_s+" ("+_friends.join(", ")+") "
  end
  def to_h 
    phoneHashes= []
    @phoneNumbers.each do |p|
      phoneHashes<<p.to_h
    end
    

    hash=super
    myHash={"address"=> address, "id" => id,
      "friends" => friends, "phoneNumbers" => phoneHashes}
      return hash.merge(myHash)
  end
  def phoneNumbers
    return @phoneNumbers
  end
  def addPhoneNumber(num, type)
    phoneNumber=PhoneNumber.new
    phoneNumber.number=num
    phoneNumber.type=type
    @phoneNumbers<<phoneNumber
  end
  def friends
    return @friends
  end
    
end
  
