class AnswersProcessing
  attr_reader :answers, :all

  def initialize
    @answers = []
    @all = 0
  end

  # Обработка пользовательского ввода
  def save_input!(user_input)
    # Добавляет баллы в массив
    if user_input == 'y'
      @answers.push(2)
    elsif user_input == 's'
      @answers.push(1)
    else
      @answers.push(0)
    end
  end

  # Суммирует полученные баллы
  def calculate!
    @all = @answers.sum
  end
end
