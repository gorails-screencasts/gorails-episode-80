module ApplicationHelper
  def login_options
    @redirect_path ? {redirect_to: @redirect_path} : {}
  end
end
