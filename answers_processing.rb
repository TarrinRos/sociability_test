class AnswersProcessing
  def initialize
    @answers = []
    @answers_all = 0
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

  # Массив ответов для подсчета количества каждого варианта
  def amount
    @answers
  end

  # Суммирует полученные баллы
  def calculate!
    @answers_all = @answers.sum
  end

  # Возвращает общее количество баллов
  def all
    @answers_all
  end
end
