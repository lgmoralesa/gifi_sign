require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: "Example User", email: "user@example.com",
						password: "foobar", password_confirmation: "foobar")
	end

	test "should be valid" do
		assert @user.valid?
	end


	#validar que el nombre no sea vacio
	test "name should be present" do
		@user.name = "    "
		assert_not @user.valid?
	end

	#validar que el correo no sea vacio
	test "email should be present" do
		@user.email = "    "
		assert_not @user.valid?
	end

	#validar que el nombre no sea mayor a 51 caracteres
	test "name should not be too long" do
		@user.name = "a" * 51
		assert_not @user.valid?
	end

	#validar que el correo no sea mayor a 256 caracteres
	test "email should not be too long" do
		@user.email = "a" * 256
		assert_not @user.valid?
	end

	#validar sintaxis valida del correo
	test "email validation should accept valid addresses" do
		valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
							fist.last@foo.jp alice+bob@baz.cn]
		valid_addresses.each do |valid_address|
			@user.email = valid_address
			assert @user.valid?, "#{valid_address.inspect} should be valid"
		end
	end

	#validar sintaxis invalida del correo
	test "email validation should reject invalid addresses" do
		invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
								foo@bar_baz.com foo@bar+baz.com]
		invalid_addresses.each do |invalid_address|
			@user.email = invalid_address
			assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
		end
	end

	#validar duplicacion del correo
	test "email address should be unique" do
		duplicate_user = @user.dup
		duplicate_user.email = @user.email.upcase
		@user.save
		assert_not duplicate_user.valid?
	end

	#validar que la contraseña no sea mayor a 6 caracteres
	test "password should have a minimum length" do
		@user.password = @user.password_confirmation = "a" * 5
		assert_not @user.valid?
	end

end
