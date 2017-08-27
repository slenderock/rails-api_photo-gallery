class StaticPagesController < ActionController::Base
  def home
    render file: 'public/home.html'
  end
end
