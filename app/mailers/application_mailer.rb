class ApplicationMailer < ActionMailer::Base
  default from: I18n.t('meta-email')
  layout 'mailer'
end
