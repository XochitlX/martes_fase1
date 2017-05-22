
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]


=begin
initialize an array with names and qualifications called: students

DEF best_students(students)
  set an empty array of best_students
  initializing variables x and y to zero

  WHILE y < length of students
    check each student by themself 

    IF the qualification of the current student == 10
      save its name in the array
    END IF

    IF x == length of students - 1
      initializing x to 0
      increment y by 1
    ELSE
      increment x by 1
    END IF
  END WHILE
  return the las value of best_students
END DEF 

Testing the method
p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]
=end