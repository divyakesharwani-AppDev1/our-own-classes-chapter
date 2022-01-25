# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

require("date")

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    dob = Date.parse(self.birthdate)
    dob_yr = dob.year
    now = Date.today
    now_yr = now.year
    number_of_yr = now_yr - dob_yr
    age_in_days = now - dob
    age_in_years = age_in_days / 365
    #return age_in_years.to_i
    return number_of_yr.to_i
  end


end

c = Person.new #create an instance of class Person
c.first_name = "Yash" #this class has following attributes defined using a method
c.last_name = "Kesharwani"
c.birthdate = "March 15, 2021"
c.full_name
c.age

#p c.first_name
#p c.first_name
#p c.birthdate
#p c.full_name
#p c.age


