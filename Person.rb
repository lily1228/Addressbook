class Person
  attr_accessor :firstName, :lastName, :birthDate
  def to_s
    return firstName+ " " +lastName+ " " +birthDate
  end
  def to_h
    return {"firstname"=> firstName, "lastName" => lastName, "birthDate" => birthDate}
  end
end