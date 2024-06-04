class CalcController > ApplicationController
  def new_square
    render({ :template => "pages_templates/new_square"})
  end

  def square_results 
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2

    render({ :template => "pages_templates/square_results"})
  end
   
  def new_squareroot 
    render({ :template => "pages_templates/new_squareroot"})
  end

  def squareroot_results
    @the_num = params.fetch("user_number").to_f
    @the_result = Math.sqrt(@the_num)

    render({ :template => "pages_templates/squareroot_results"})
  end

end
