class EstimateMailer < ActionMailer::Base
  default from: "reform@factoru.jp"
  def received_email(estimate)
    @estimate = estimate
    mail to: "reform@factoru.jp"
    mail(subject: 'リフォーム一括見積ねっとより依頼が届きました') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.email
    mail(subject: 'リフォーム一括見積ねっとにお問い合わせ頂きありがとうございます') do |format|
      format.text
    end
  end

  def client_email(estimate)
    @estimate = estimate
    mail bcc: Company.all.map{|company| company.mail}
    mail(subject: 'リフォーム一括見積ねっとより依頼が届きました') do |format|
      format.text
    end
  end

  def regist_user(user)
    @user = user
    mail to: @user.email
    mail(subject: 'リフォーム一括見積ねっとに会員登録頂きありがとう御座います') do |format|
      format.text
    end
  end
end
