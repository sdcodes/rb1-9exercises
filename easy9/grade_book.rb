require 'pry'
def get_grade(score1, score2, score3)
  grades = {"A" => 90..100, "B" => 80..89, "C" => 70..79, "D" => 60..69, "F" => 0..59}
  mean = (score1 + score2 + score3)/3
  grades.each_pair do |grade, score|
    return grade if score.include?(mean)
  end
end 

#FURTHER EXPLORATIOM

def get_grade_w_extra_credit(score1, score2, score3)
  grades = {"A" => 90..100, "B" => 80..89, "C" => 70..79, "D" => 60..69, "F" => 0..59}
  mean = (score1 + score2 + score3)/3
  extra_credit = mean - 100
  if extra_credit > 1
    grades.each_pair do |grade, score|
      return grade + " plus #{extra_credit} extra credits"
    end 
  else 
    grades.each_pair do |grade, score|
      return grade if score.include?(mean)
    end
  end
end 
  
  
  

p get_grade_w_extra_credit(95, 120, 120) #== "A"
p get_grade(50, 50, 95) #== "D"