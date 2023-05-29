#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  # (Contemplaremos a verdade testando a realidade, via afirmações.)
  def test_assert_truth
    assert false                # This should be true
  end                           # (isso deveria ser verdade)

  # Enlightenment may be more easily achieved with appropriate messages.
  # (A iluminação pode ser mais facilmente alcançada com mensagens.)
  def test_assert_with_message
    assert false, "This should be true -- Please fix this"
  end

  # To understand reality, we must compare our expectations against reality.
  # (Para entender a realidade, devemos comparar nossas expectativas com a realidade)
  def test_assert_equality
    expected_value = __
    actual_value = 1 + 1

    assert expected_value == actual_value
  end

  # Some ways of asserting equality are better than others.
  # (Algumas formas de afirmar a igualdade são melhores do que outras.)
  def test_a_better_way_of_asserting_equality
    expected_value = __
    actual_value = 1 + 1

    assert_equal expected_value, actual_value
  end

  # Sometimes we will ask you to fill in the values
  # (Às vezes, pediremos que você preencha os valores)
  def test_fill_in_values
    assert_equal __, 1 + 1
  end
end
