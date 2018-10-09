class Question
  def initialize(current_path)
    questions_path = "#{current_path}/data/questions_list.txt"

    @questions = File.readlines(questions_path)
  end

  def print(answers)
    @questions.each do |line|
      puts '============================================='

      puts line

      user_input = nil
      while (user_input != 'y' && user_input != 'n' && user_input != 's')
        puts ''

        puts 'Пожалуйста, введите "y" (да) / "n" (нет) / "s" (иногда) и нажмите Ввод'
        user_input = STDIN.gets.chomp.downcase
      end
      # Отправляет введенные данные на обработку
      answers.save_input!(user_input)
    end
  end
end



