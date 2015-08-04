module SessionHelpers

  def sign_in(email, password)
    visit '/sessions/new'
    fill_in 'email', :with => email
    fill_in 'password', :with => password
    click_button 'Sign in'
  end

  def sign_up(name, username, email, password, password_confirmation)
    visit '/users/new'
    fill_in :name, :with => name
    fill_in :username, :with => username
    fill_in :email, :with => email
    fill_in :password, :with => password
    fill_in :password_confirmation, :with => password_confirmation
    click_button "Sign up"
  end

  def add_peep(message)
      visit('/')
      click_link 'Add new peep'
      fill_in 'message', :with => message
      click_button 'Add peep'
  end

  def reply_to_peep(message)
      visit('/')
      click_button "Reply"
      fill_in 'message', :with => message
      click_button 'Add peep'
    end
end