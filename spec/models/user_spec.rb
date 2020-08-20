require 'rails_helper'

RSpec.describe User, type: :model do

    subject(:user2) { FactoryBot.build(:user)}

  describe "validations" do
    it { should validate_presence_of(:username)}
    it { should validate_presence_of(:password_digest)}
    it { should validate_length_of(:password).is_at_least(6)}
    
    it "should allow for nil passwords" do
        let(:bad_user) { FactoryBot.build(:no_pass_user) }
        expect(bad_user.valid?).to be true
    end
  end

  describe "associations" do
    #no associations yet
  end

  describe "class methods" do
    #find by credentials
    #generate session token

    #instance methods?
      #password= (spits out a digest)
      #is_password?
      #ensure session token
      #reset session token
  end
  
  describe "error messages" do
    #
  end
end


# self.Find by credentials(username/email, password)
# Is_password?
# self.Generate session token(SecureRandom.urlsafe_base64)
# Validations (password digest must exist, password can be nil otherwise pass requirements)
# Attributes (attr_reader for password)
# Password=(password)
# Ensure_session_token
# Reset session token!

# ApplicationController
# Current_user
    # Ensure_logged_in ... ?
# Login!(user)
# Logout!
# Logged_in?