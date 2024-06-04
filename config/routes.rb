Rails.application.routes.draw do

  get("/square/new" , { :controller => calc , :action => new_square })

  get("/square/results" , { :controller => calc , :action => square_results })
  
  get("/square_root/new" , { :controller => calc , :action => new_squareroot })

  get("/square_root/results" , { :controller => calc , :action => squareroot_results })

  get("/payment/new" , { :controller => calc , :action => payment_new })
    

  
  
end
