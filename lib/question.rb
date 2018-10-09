class Question
  attr_reader :questions

  def initialize(current_path)
    questions_path = "#{current_path}/data/questions_list.txt"

    @questions = File.readlines(questions_path)
  end
end


