class CartController < ApplicationController
  def add
    #get the ID of the product
    id = params[:id]
    
    #if the cart is already created, used the existing, else create a blank
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] ={}
      cart = session[:cart]
    end
    
    #if the product has already been added to the cart, increment value, otherwise set value to 1
    if cart[id] then
      cart[id] =cart[id]+1
    else
      cart[id]=1
    end
    
    #redirect to the cart display page
    redirect_to :action => :index
  end
  
  def clearCart
    #set the session variable to nil and redirect
    session[:cart] = nilredirect_to :action => :index
  end
  
  def buyitems
      
      
  end
  
  
  
  def index
    #if there is a cart, pass it to the page for display otherwise pass an empty value
    if session[:cart]then
      @cart=session[:cart]
    else
      @cart={}
    end
  end
end

