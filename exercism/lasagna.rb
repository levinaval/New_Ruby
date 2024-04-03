class Lasagna
  # Constante que define o tempo esperado no forno em minutos
  EXPECTED_MINUTES_IN_OVEN = 40

  # Método que calcula os minutos restantes no forno
  def remaining_minutes_in_oven(minutes_baking)
    minutes_remaining = EXPECTED_MINUTES_IN_OVEN - minutes_baking
    return minutes_remaining
  end

  # Método que retorna o tempo de preparo em minutos, baseado no número de camadas
  def preparation_time_in_minutes(layers)
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  # Método que retorna o tempo total em minutos, baseado no número de camadas e no tempo real no forno
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end

# Criando uma instância da classe Lasagna
lasagna = Lasagna.new

# Chamando o método remaining_minutes_in_oven para calcular os minutos restantes no forno
puts lasagna.remaining_minutes_in_oven(30)  # Saída esperada: 10
