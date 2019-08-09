class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
		products_path
	end
	before_action :set_title

	def set_title
		@page_title = "Shopping Zone | My Application"
	end
end
