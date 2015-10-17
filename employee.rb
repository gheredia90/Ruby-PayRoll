class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
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
		super(name, email)
		@yearly_salary = yearly_salary
	end	

	def calculate_salary
		@yearly_salary / 52
    end    
end	

class MultiPaymentEmployee < Employee

	def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
		super(name, email)
		@yearly_salary = yearly_salary
		@hourly_rate = hourly_rate
        @hours_worked = hours_worked
	end	

	def calculate_salary
		(@yearly_salary/52) + (@hourly_rate * @hours_worked)

    end

end	

class Payroll

    def initialize(employees)
      @employees = employees
    end

  	def pay_employees
  		total = 0
  		@employees.each do |employee|
  			puts "Nombre: #{employee.name} => #{employee.calculate_salary}"
  			total += employee.calculate_salary
   		end   		
    	puts "Total amount spent this week: #{total*0.82}"
  	end

  	def notify_employee(employee)
  		"You have been paid"          
  	end
end



josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
carlo = HourlyEmployee.new('Carlo', 'carlo@example.com', 15, 40)
gonzalo = HourlyEmployee.new('Gonzalo', 'gonzalo@example.com', 15, 40)

employees = [josh, nizar, ted, carlo, gonzalo]
payroll = Payroll.new(employees)
payroll.pay_employees