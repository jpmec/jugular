class ApplicationController < ActionController::API
  ActiveRecord::Base.include_root_in_json = false

end
