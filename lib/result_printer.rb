class ResultPrinter
  def initialize(current_path, answers)
    result_path = "#{current_path}/data/results_list.txt"

    @result = File.readlines(result_path)
  end

  def print(answers)
    "Результат вашего теста:"
    if answers.all.between?(30, 32)
      @result[0]
    elsif answers.all.between?(25, 29)
      @result[1]
    elsif answers.all.between?(19, 24)
      @result[2]
    elsif answers.all.between?(14, 18)
      @result[3]
    elsif answers.all.between?(9, 13)
      @result[4]
    elsif answers.all.between?(4, 8)
      @result[5]
    else
      @result[6]
    end
  end
end

#
# '============================================='
#
# "Количество ответов:"
#
# "да - #{answers.answers.count(2)}"
#
# "нет - #{answers.answers.count(0)}"
#
# "иногда - #{answers.answers.count(1)}"
#
# "Общее количество баллов: #{answers.all}"
# '============================================='
# ''
