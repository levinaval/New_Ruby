class HealthData
  attr_reader :date, :heart_rate, :activity_level, :sleep_quality

  def initialize(date, heart_rate, activity_level, sleep_quality)
    @date, @heart_rate, @activity_level, @sleep_quality = date, heart_rate, activity_level, sleep_quality
  end

  def to_s
    "Data: #{@date}\nBatimentos Cardíacos: #{@heart_rate}\nNível de Atividade: #{@activity_level}\nQualidade do Sono: #{@sleep_quality}"
  end
end

class HealthApp
  def initialize
    @health_data = []
  end

  def add_data(data)
    @health_data << data
  end

  def display_data
    puts "Dados de Saúde:"
    @health_data.each do |data|
      puts data
      puts "-" * 20
    end
  end
end

health_app = HealthApp.new

loop do
  puts "Digite a data (ou 'sair' para sair):"
  date = gets.chomp
  break if date.downcase == 'sair'
  
  puts "Digite os batimentos cardíacos:"
  heart_rate = gets.chomp.to_i
  
  puts "Digite o nível de atividade:"
  activity_level = gets.chomp
  
  puts "Digite a qualidade do sono:"
  sleep_quality = gets.chomp

  data = HealthData.new(date, heart_rate, activity_level, sleep_quality)
  health_app.add_data(data)
  health_app.display_data
end
