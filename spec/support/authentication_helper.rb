module AuthenticationHelper
  def sign_in
    visit '/login'

    user = FactoryGirl.create(:user)
    fill_in 'username',    with: user.username
    fill_in 'password', with: user.password
    click_button "Sign In"

    return user
  end
end