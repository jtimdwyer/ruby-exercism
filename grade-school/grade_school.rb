class School
    def initialize
        @students = Hash.new
    end

    def add name, grade
        if @students.key? grade
            @students[grade].push name
            @students[grade].sort!
        else
            @students[grade] = [name]
        end
    end

    def students grade
        if @students.key? grade
            @students[grade]
        else
            []
        end
    end

    def students_by_grade
        @students
        .keys
        .sort
        .map do |gr|
            {
                :grade => gr,
                :students => self.students(gr),
            }
        end
    end
end