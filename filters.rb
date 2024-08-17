# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    @candidates.find { |candidate| candidate[:id] == id }

  end

  def experienced?(candidate)
  candidate[:years_of_experience] >= 2
  end

  def qualified_candidates(candidates)
    candidates.select do |candidate|
      if experienced?(candidate) &&
        candidate[:github_points] >= 100
        (candidate[:languages].include?("Ruby") ||
        candidate[:languages].include?("Python")) &&
        candidate[:date_applied] >= 15.days.ago.to_date &&
        candidate[:age] >= 18
        true
      else
        false
      end
    end
  end



  # More methods will go below
  def ordered_by_qualifications(candidates)
    candidates.sort_by do |candidate|
      [-candidate[:years_of_experience], -candidate[:github_points], candidate[:languages]]
    end
  end


  # sort_by method iterates over each element of the array
  # the do method is a keyword in ruby used to begin a block of code
  # use the - sign to sort in descending order