class SettingsController < ApplicationController

  def language
    redirect_to request.referer.gsub(/locale=(es|en)/, "locale=#{I18n.locale}")
  end

end