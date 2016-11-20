# encoding: UTF-8
module PageModels
  module LoginAssertions
    def dashboard_display
      @login_page.wait_until_safety_culture_header_visible(10)
      expect(@login_page).to have_no_login_button
    end

    def missing_password
      expect(@login_page).to have_missing_credentials(text: 'Password must be provided')
    end

    def missing_email
      expect(@login_page).to have_missing_credentials(text: 'Email is not a valid email address.')
    end

    def incorrect_credentials
      @login_page.wait_until_signin_error_visible(10)
      expect(@login_page).to have_signin_error(text: "Those details don't appear to be correct.")
    end
  end
end
World(PageModels::LoginAssertions)
