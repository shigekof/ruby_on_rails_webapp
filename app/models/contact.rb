class Contact < MailForm::Base

  attribute :company_name
  attribute :name,         :validate => true
  attribute :email,        :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,      :validate => true
  attribute :nickname,     :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "問い合わせ",
      :to => "info@wisteriawebsolutions.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
