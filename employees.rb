class Employee
  attr_reader :first_name, :last_name
  attr_accessor :active

  def initialize(input_options)
    if input_options[:first_name]
      @first_name = input_options[:first_name]
    else
      @first_name = "Jane"
    end
    if input_options[:last_name]
      @last_name = input_options[:last_name]
    else
      @last_name = "Doe"
    end
    if input_options[:salary]
      @salary = input_options[:salary]
    else
      @salary = 50000
    end
    if input_options[:active]
      @active = input_options[:active]
    else
      @active = true
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    if @last_name[-1] == 's'
      return "#{@first_name} #{@last_name}, Esquire"
    else
      return "#{@first_name} #{@last_name}"
    end
  end
end

arr = []

100.times do
  arr << Employee.new({})
end

arr.each do |employee|
  puts employee.full_name
end

es = Employee.new({first_name: "Jack", last_name: "Nicolsons", salary: 60000, active: true})

es.print_info
puts es.full_name


