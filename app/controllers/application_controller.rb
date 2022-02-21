class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_locale

  # リンクの多言語化に対応する
  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    I18n.locale = I18n.available_locales.include?(locale) ?
        locale :
        I18n.default_locale
  end

  def default_url_options(options={})
    #デバッグのためのログ出力
    logger.debug "default_url_options is passed options: #{options.inspect}"
    #ロケールの指定
    { locale: I18n.locale }
  end

 #  def set_locale
 #   I18n.locale = locale
 # end
 #
 # def locale
 #   @locale ||= params[:locale] || I18n.default_locale
 # end
 #
 #  def default_url_options(options={})
 #    options.merge(locale: locale)
 #  end
end
