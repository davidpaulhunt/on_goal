class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :check_format

  def check_format
    if params[:format] != 'json'
      url = "#{params[:controller]}"
      case params[:action]
      when "index"
        redirect_to "/#{url}.json"
      when "show"
        redirect_to "/#{url}/#{params[:id]}.json"
      when "create"
        create{send("#{url}_path", method: :post, team: params[url.singularize.to_sym], format: 'json')}
      when "update"
        # update{send("edit_#{url.singularize}_path", id: params[:id], team: params[url.singularize.to_sym], format: 'json')}
      when "destroy"
        index{send("#{url}_path", method: :get, format: 'json')}
      else
        render :nothing => true, :status => 406
      end
    end
  end
end
