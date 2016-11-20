# encoding: UTF-8
module PageModels
  module LoginActions

    def input_email (email)
      @login_page.login_email.set(email)
    end

  end
end
World(PageModels::LoginActions)