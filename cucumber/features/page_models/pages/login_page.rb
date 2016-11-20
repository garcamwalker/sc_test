# encoding: UTF-8
class LoginPage < SitePrism::Page
  set_url 'https://app.safetyculture.io/#/login'
  element :login_email, '#email'
  element :login_password, '#password'
  element :login_button, '.btn'
  element :safety_culture_header, '#topBar'
  element :dashboard_title, '.buttonsList'
  element :missing_credentials, '.input-error'
  element :signin_error, '.alert-in'
end
