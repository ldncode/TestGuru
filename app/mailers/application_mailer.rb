class ApplicationMailer < ActionMailer::Base
  default from: %{"TestGuru" <mail@testguru.com>}
  layout 'mailer'
end
