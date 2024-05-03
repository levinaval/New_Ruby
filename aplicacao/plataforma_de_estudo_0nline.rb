# Aplicação simples para fornecer, aulas e materias educacionasem diversos assuntos.

class Course
  attr_reader :name, :instructor, :description
  def initialize(name, instructor, description)
    @name, @instructor, @description = name, instructor, description
  end

  def to_s
    "#{name} - Instrutor: #{instructor}, Descrição: #{description}"
  end
end

class EducationPlatform
  def initialize
   @courses = []
   @enrolled_courses = [] 
  end

  def add_course(course)
    @courses << course
  end

  def display_courses
    puts "Cursos Disponíveis:"
    @courses.each_with_index do |course, index|
      puts "#{index + 1}. #{course}"
    end
  end

  def enroll(course_index)
    @enrolled_courses << @courses[course_index]
  end

  def display_enrolled_courses
    puts "Cursos Inscritos:"
    @enrolled_courses.each do |course|
      puts course
      puts "-" * 20
    end
  end
end

education_platform = EducationPlatform.new

education_platform.add_course(Course.new("Instrução à Progamação", "João Silva", "Aprenda os fundamentos da programação"))
education_platform.add_course(Course.new("Inglês Básico", "Maria Santos", "Melhore suas habilidades de comunicação em inglês"))
education_platform.add_course(Course.new("Matemática Financeira", "Pedro Oliveira", "Aprenda a calcular juros, taxas e investimentos"))

loop do
  puts "Estes são os cursos:"
  puts "1 - Instrodução à Progamação"
  puts "2 - Inglês Básico"
  puts "3 - Matemática Financeira"
  puts ""
  print "digite o número do cursos para se inscrever e saber mais(ou 'Sair'): "
  
  input = gets.chomp
  break if input.downcase == 'sair'

  course_index = input.to_i - 1
  education_platform.enroll(course_index)
  education_platform.display_enrolled_courses
end