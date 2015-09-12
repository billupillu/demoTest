class WelcomeController < ApplicationController
  def index
  	@lists = City.sort
  	
  end
  
  def ada
  lists = City.loid(params['name'].to_s)

  	lists.each do |list|
  		a = list.id
  		@areaz = Area.cityareas(a);
 	  end

    respond_to do |format|
      format.js
    end 

  end

  def search
  end	

end
