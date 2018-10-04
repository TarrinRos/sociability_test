# Lesson12, task4
# ==============================================================
# Тест "Ваш уровень общительности" OOP
# ==============================================================

require_relative 'answers_processing'

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

questions_path = "#{current_path}/questions_list.txt"

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
puts '============================================='

puts "Количество ответов:"
puts "да - #{answers.amount.count(2)}"
puts "нет - #{answers.amount.count(0)}"
puts "иногда - #{answers.amount.count(1)}"

puts "Общее количество баллов: #{answers.all}"

puts '============================================='

puts ''

puts "Результат вашего теста:"

puts ''

result_path = "#{current_path}/results_list.txt"

result = File.readlines(result_path)

res = if answers.all.between?(30, 32)
  result[0]
elsif answers.all.between?(25, 29)
  result[1]
elsif answers.all.between?(19, 24)
  presult[2]
elsif answers.all.between?(14, 18)
  result[3]
elsif answers.all.between?(9, 13)
  result[4]
elsif answers.all.between?(4, 8)
  result[5]
else
  result[6]
end

puts res
