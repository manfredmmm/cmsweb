class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  before_filter :set_locale
  protect_from_forgery

private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end

  def default_url_options(options = {})
    { locale: I18n.locale }
  end

protected

  def load_departments
    @departments = Department.all
  end
end
