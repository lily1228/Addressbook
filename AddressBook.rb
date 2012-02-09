require "Contact"

class AddressBook
 def initialize 
   @contacts=[]
 end
  def addContact(fname="", lname="", dob="", mobile="", home="", address="", id="", friends=[])
    c=Contact.new
    c.firstName=fname
    c.lastName=lname
    c.birthDate=dob
    c.address=address
    c.id=id
    c.friends=friends
    c.addPhoneNumber(mobile, "mobile")
    c.addPhoneNumber(home, "home")
    c.addressbook=self
    @contacts<<c
  end
  def to_h
    contactHashes=[]
    @contacts.each do|c|
      contactHashes<<c.to_h
    end
    return {"contacts" => contactHashes}
  end
  def listContacts
    puts contacts
  end
  def contacts
    return @contacts
  end
  def nameFromID(id="")
    return "" if id==""
    @contacts.each do |c|
      return c.fullName if id==c.id
    end 
     return ""
  end
    
end

