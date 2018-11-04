class School
    
    attr_accessor :roster

    def initialize(roster)
        @roster = roster
        @roster = Hash.new
    end
    
    def add_student(name, grade)
        self.roster[grade] ||= []
    #   if @roster.include?(grade)
    #       @roster[grade] << name
    #   else
    #     @roster[grade] = [name]
    #   end 
        self.roster[grade] << name
    end

    def grade(grade)
        grade = @roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort!
        end
    end

end