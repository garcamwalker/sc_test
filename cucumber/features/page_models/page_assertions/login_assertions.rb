# encoding: UTF-8
module PageModels
  module LoginAssertions

    def dashboard_display
      @login_page.wait_until_safety_culture_header_visible(10)
      expect(@login_page).to have_no_login_button
    end

  end
end
World(PageModels::LoginAssertions)