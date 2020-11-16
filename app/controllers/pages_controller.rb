class PagesController < ApplicationController


  def home
  end

  def about
    @members = ['morgan', 'jean', 'anna', 'marie', 'marc']

    # raise

    if params[:member]
      @members = @members.select { |member| member.starts_with?(params[:member]) }
    end
  end
  
  def contact
  end

end
