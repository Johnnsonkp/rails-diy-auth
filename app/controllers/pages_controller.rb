class PagesController < ApplicationController
  def home
    # ternary operator (one of two things) - if cookies[:count] does exist, we'll set it to an integer + 1
    # if it doesn't exist we'll give it the value of 1 
    cookies[:count] = cookies[:count] ? cookies[:count].to_i + 1 : 1
    @count = cookies[:count]
  end

  def restricted
  end
end
