class CalcController > ApplicationController
  def new_square
    render({ :template => "pages_templates/new_square"})
  end

  def square_results 
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2

    render({ :template => "pages_templates/square_results"})
  end
    
end
