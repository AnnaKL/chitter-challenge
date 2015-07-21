class Pet

  def name
    "bob"
  end

end


pet = Pet.new



class Cat < Pet
end

# Cat *is a* pet


module SecruityDevice
  def key
    "bob"
  end

end

class Garage
  include SecurityDevice
end

# Garage *has a* security device

