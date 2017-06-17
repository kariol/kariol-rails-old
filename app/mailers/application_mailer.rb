class ApplicationMailer < ActionMailer::Base
  default from: I18n.t('meta-email'), reply_to: I18n.t('meta-email')
  layout 'mailer'
end
