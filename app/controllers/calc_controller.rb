class CalcController < ApplicationController
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

  def payment_new
    render({ :template => "pages_templates/payment_new"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
  
    @user_apr = params.fetch("user_apr").to_f / 100
    
  
    @years_input = params.fetch("user_years").to_f
    
    @principal_input = params.fetch("user_pv").to_f
    
    
  
    @monthly_rate = @user_apr / 12
    @total_payments = @years_input * 12
  
    @monthly_payment = @principal_input * (@monthly_rate / (1 - (1 + @monthly_rate)**(-@total_payments)))
 
    render({ :template => "pages_templates/payment_results"})
  end

  def random_new
    render({ :template => "pages_templates/random_new"})
  end

  def random_results
    @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f

  @random_num = rand(@user_min..@user_max).round(15)

  render({ :template => "pages_templates/random_results"})
  end
end
