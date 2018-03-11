Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
  root to: 'tasks#index'
  resources:tasks
  end

  get "*path", to: redirect("/#{I18n.default_locale}/%{path}")
  get "", to: redirect("/#{I18n.default_locale}")
end
