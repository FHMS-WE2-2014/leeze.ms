require 'rails_helper'

describe 'Sign in' do
  context 'existing user' do
    let!(:user) { FactoryGirl.create(:user) }

    before(:each) do
      sign_in user
    end

    it 'allows to sign in' do
      expect(page).to have_content "Welcome, #{user.email}"
    end

    it 'allows to sign out' do
      expect(page).to_not have_content "Welcome, #{user.email}"
      expect(page).to have_content 'Sign in'
    end
  end
end