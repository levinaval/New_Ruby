require_relative 'menu' # Substitua com o nome do seu arquivo principal

describe SnackMenu do
  let(:snack_menu) { SnackMenu.new("sopa", "cachorro_quente", "amburgue", "batata_frita", "filer_parmagiana", "pastel") }

  it "deve inicializar corretamente" do
    expect(snack_menu).to be_a(SnackMenu)
  end

  it "deve exibir o menu corretamente" do
    expect { snack_menu.menu1 }.to output(/Este é o nosso Menu:/).to_stdout
  end
end

describe DrinksMenu do
  let(:drinks_menu) { DrinksMenu.new("Suco", "Refrigerante", "Água de coco", "Caldo de cana") }

  it "deve inicializar corretamente" do
    expect(drinks_menu).to be_a(DrinksMenu)
  end

  it "deve exibir o menu de bebidas corretamente" do
    expect { drinks_menu.menu2 }.to output(/Este é o nosso menu de bebidas:/).to_stdout
  end
end


describe "interações do usuário" do
  it "deve lidar com 'sim'" do
    input = StringIO.new("sim\n")
    output = StringIO.new
    $stdin = input
    $stdout = output

    # Chame o método ou a parte do código que solicita entrada do usuário aqui
    decisao = gets.chomp
    puts "Alguma saída esperada quando o usuário digita 'sim'" if decisao == "sim"

    $stdin = STDIN
    $stdout = STDOUT

    expect(output.string).to include("Alguma saída esperada quando o usuário digita 'sim'")
  end

  it "deve lidar com 'não'" do
    input = StringIO.new("não\n")
    output = StringIO.new
    $stdin = input
    $stdout = output

    # Chame o método ou a parte do código que solicita entrada do usuário aqui
    decisao = gets.chomp
    puts "Alguma saída esperada quando o usuário digita 'não'" if decisao == "não"

    $stdin = STDIN
    $stdout = STDOUT

    expect(output.string).to include("Alguma saída esperada quando o usuário digita 'não'")
  end
end
