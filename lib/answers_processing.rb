class AnswersProcessing
  attr_reader :user_answer, :all

  def initialize
    @user_answer = []
    @all = 0
  end

  # Обработка пользовательского ввода
  def save_input!(user_input)
    # Добавляет баллы в массив
    if user_input == 'y'
      @user_answer.push(2)
    elsif user_input == 's'
      @user_answer.push(1)
    else
      @user_answer.push(0)
    end
  end

  # Суммирует полученные баллы
  def calculate!
    @all = @user_answer.sum
  end
end
