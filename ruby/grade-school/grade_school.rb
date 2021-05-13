=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end

class School
  def initialize
    @students_by_grade = []
  end

  def add(student, student_grade)
    grade_info = get_grade_info(student_grade)

    if grade_info
      grade_info[:students] << student
      grade_info[:students].sort!
    else
      @students_by_grade << {grade: student_grade, students: [student]}
    end
  end

  def students(grade)
    return [] if @students_by_grade.empty?

    get_grade_info(grade)[:students]
  end

  def students_by_grade
    @students_by_grade.sort_by { |grade| grade[:grade] }
  end

  def get_grade_info(requested)
    @students_by_grade.detect { |grade| grade[:grade] == requested }
  end
end
