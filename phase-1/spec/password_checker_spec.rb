require "password_checker"

RSpec.describe PasswordChecker do
  context "when no password is given" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when the given password is less than 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("passwor") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when the given password is 8 characters" do
    it "passes" do
      password = PasswordChecker.new
      result = password.check("password")
      expect(result).to be true
    end
  end

  context "when the given password is more than 8 characters" do
    it "passes" do
      password = PasswordChecker.new
      result = password.check("password123")
      expect(result).to be true
    end
  end
end