class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter init_vars

  def init_vars
    @site_desc = "This comic (komik) series created by Manish Wadhwa (aka M or Dr.M) is the komik with a 'K'. The komik of Me, You and the big 'K' of life. Now what's the big 'K', that's a mystery."
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "kachchha"
    end
  end
end
