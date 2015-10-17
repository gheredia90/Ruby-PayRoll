class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def calculate_salary
         
    end
end



class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
      super(name, email) 
      @hourly_rate = hourly_rate
      @hours_worked = hours_worked
  end

  def calculate_salary
      @hourly_rate * @hours_worked
  end
end

class SalariedEmployee < Employee

	def initialize(name, email, yearly_salary)

		@name = name
		@email = email
		@yearly_salary = yearly_salary

	end	


end	