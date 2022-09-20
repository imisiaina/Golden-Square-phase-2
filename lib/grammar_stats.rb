class GrammarStats
  def initialize
    @pass_count = 0
    @overall_count = 0
  end

  def check(text) 
    fail "No text input!" if text.empty?
    check_result = (text.match?(/^[A-Z]/) && text.match?(/[.!?]$/)) 

    if check_result == true 
      @pass_count +=1
    end
    @overall_count +=1
  
    return check_result
  end
  
  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    percentage = ((@pass_count / @overall_count.to_f) * 100).ceil
  end
end            
