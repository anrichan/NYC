class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_article 

  def find_article
    @q = Article.search
  end

end
