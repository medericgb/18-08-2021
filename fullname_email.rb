class Employee
  attr_accessor :firstname, :lastname

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def fullname
    p "#{@firstname} #{@lastname}"
  end

  def email
    p "#{@firstname.downcase}.#{@lastname.downcase}@company.com"
  end

  def firstname
    p @firstname
  end
end

emp_1 = Employee.new("John", "Smith")
emp_2 = Employee.new("Mary",  "Sue")
emp_3 = Employee.new("Antony", "Walker")

emp_1.fullname # "John Smith"
emp_2.email # "mary.sue@company.com"
emp_3.firstname # "Antony"