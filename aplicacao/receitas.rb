#Vamos criar um app simples salvar as suas receitas

class Recipe
  attr_reader :name, :ingredients, :instructions
  
  def initialize(name, ingredients, instructions)
    @name, @ingredients, @instructions = name, ingredients, instructions
  end

  def to_s
    "Receita:#{name} Ingredientes: #{@ingredients.join(',')}Instruções: #{instructions}"
  end
end

class RecipeApp
  def initialize
    @recipes = {}
  end

  def add_recipe(recipe)
    @recipes[recipe.name] = recipe
  end

  def display_recipes
    puts "Receitas Disponiveis:"
    @recipes.each do |name, recipe|
      puts recipe
      puts "-" * 20
    end
  end
end

recipe_app = RecipeApp.new

loop do
  puts "Digite o nome da receita: (ou Sair):"
  name = gets.chomp
  break if name.downcase == 'sair'

  puts "Digite os ingredientes da receita (separados por virgulas):"
  ingredients = gets.chomp.split(',').map(&:strip)

  puts "Digite as instruções da receita:"
  instructions = gets.chomp

  recipe = Recipe.new(name, ingredients, instructions)
  recipe_app.add_recipe(recipe)
  recipe_app.display_recipes
end