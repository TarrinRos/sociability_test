# Lesson12, task4 / Lesson 26 - Refactoring
# ==============================================================
# Тест "Ваш уровень общительности" OOP
# ==============================================================

require_relative 'lib/question'
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
current_path = File.dirname(__FILE__)

question = Question.new(current_path)

answers = AnswersProcessing.new

question.print(answers)

# Суммирует полученные баллы
answers.calculate!

# ==============================================================
# Вывод результата теста
# ==============================================================

result = ResultPrinter.new(current_path)

puts '============================================='

puts "Количество ответов:"

puts "да - #{answers.variant.count(2)}"

puts "нет - #{answers.variant.count(0)}"

puts "иногда - #{answers.variant.count(1)}"

puts "Общее количество баллов: #{answers.all}"

puts '============================================='

puts ''

puts "Результат вашего теста:"

puts result.print(answers)
