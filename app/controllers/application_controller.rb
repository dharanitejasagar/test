class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

   def load_commentable
  	resources, id = request.path.split('/')[1,2]
  	@commentable = resources.singularize.classify.constantize.find(id)
  end
  
end
