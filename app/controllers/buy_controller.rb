class BuyController < ApplicationController
  def buyitems
     if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] ={}
      cart = session[:cart]
    end
  end
end



  

