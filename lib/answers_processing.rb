class AnswersProcessing
  attr_reader :variant, :all

  def initialize
    @variant = []
    @all = 0
  end

  # Обработка пользовательского ввода
  def save_input!(user_input)
    # Добавляет баллы в массив
    if user_input == 'y'
      @variant.push(2)
    elsif user_input == 's'
      @variant.push(1)
    else
      @variant.push(0)
    end
  end

  # Суммирует полученные баллы
  def calculate!
    @all = @variant.sum
  end
end
