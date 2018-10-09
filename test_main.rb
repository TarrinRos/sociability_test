# Lesson12, task4 / Lesson 26 - Refactoring
# ==============================================================
# Тест "Ваш уровень общительности" OOP
# ==============================================================

require_relative 'lib/answers_processing'
require_relative 'lib/result_printer'

# ==============================================================
# Приветствие
# ==============================================================

# Запрашивает имя тестируемого
puts 'Введите Ваше имя:'
tester_name = STDIN.gets.chomp

if tester_name == " " || tester_name == ""
  tester_name = 'Подопытный'
end

puts "Привет тебе #{tester_name}. Пройди тест на общительность."

# ==============================================================
# Вывод вопросов и обработка ответов
# ==============================================================
answers = AnswersProcessing.new

current_path = File.dirname(__FILE__)

questions_path = "#{current_path}/data/questions_list.txt"

questions = File.open(questions_path)
questions.each_line do |line|
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
questions.close

# Суммирует полученные баллы
answers.calculate!

# ==============================================================
# Вывод результата теста
# ==============================================================

result = ResultPrinter.new(current_path, answers)

puts result.print(answers)
