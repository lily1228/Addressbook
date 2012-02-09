class PhoneNumber
  attr_accessor :number, :type
  def to_s
    return number+" ("+type+") "
  end
  def to_h
    return {"number" => number, "type" => type}
  end
  
end
