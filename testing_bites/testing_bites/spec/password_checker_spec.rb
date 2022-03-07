require 'password_checker'

RSpec.describe PasswordChecker do 
  it 'passes' do
    password_checker = PasswordChecker.new()
    expect(password_checker.check('chocolate')).to eq true
  end
  it 'fails' do
    password_checker = PasswordChecker.new()
    expect{password_checker.check('flower')}.to raise_error "Invalid password, must be 8+ characters." 
  end
  
end