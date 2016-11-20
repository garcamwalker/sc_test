# encoding: UTF-8
module PageModels
  module LoginActions

    def input_email (email)
      @login_page.login_email.set(email)
    end

    def input_password (password)
      @login_page.login_password.set(password)
    end

    def click_login
      @login_page.login_button.click
    end
  end
end
World(PageModels::LoginActions)