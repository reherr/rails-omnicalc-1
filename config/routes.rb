Rails.application.routes.draw do

  get("/square/new" , { :controller => "calc" , :action => "new_square" })

  get("/square/results" , { :controller => "calc" , :action => "square_results" })
  
  get("/square_root/new" , { :controller => "calc" , :action => "new_squareroot" })

  get("/square_root/results" , { :controller => "calc" , :action => "squareroot_results" })

  get("/payment/new" , { :controller => "calc" , :action => "payment_new" })
  
  get("/payment/results" , { :controller => "calc" , :action => "payment_results"})

  get("/random/new" , { :controller => "calc" , :action => "random_new"})
  
  get("/random/results" , { :controller => "calc" , :action => "random_results"})

end
