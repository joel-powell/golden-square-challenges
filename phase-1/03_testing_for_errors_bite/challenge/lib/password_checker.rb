class PasswordChecker
  def check(password)
    return true if password.length >= 8

    raise "Invalid password, must be 8+ characters."
  end
end
