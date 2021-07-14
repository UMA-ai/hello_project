class TestController < ApplicationController
    
  def hello
    render html:"I've hacked your PC"
  end

end
