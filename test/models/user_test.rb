require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user1 = users(:jhon)
    @user2 = users(:jane)
    @user3 = users(:david)
    @user4 = users(:juan)
  end

  test "should be valid" do
    puts "El usuario 1 deberia ser valido: #{assert @user1.valid?}"
    puts "El usuario 2 NO deberia ser valido: #{assert_not @user2.valid?}"
    puts "El usuario 3 NO deberia ser valido: #{assert_not @user3.valid?}"
    puts "El usuario 4 NO deberia ser valido: #{assert_not @user4.valid?}"
  end

  test "jhon has the expected email" do
    assert_equal "default@example.com", @user1.email
  end

  test "Jhon is admin" do
    assert_equal true, @user1.admin?
    assert_equal false, @user1.client?
  end

  test "Jane is client" do
    assert_equal false, @user2.admin?
    assert_equal true, @user2.client?
  end

  test "david full name" do
    assert_equal "david doe", @user3.full_name
  end

  test "juan assign role" do
    @user4.assign_role
    assert_equal roles(:two), @user4.roles.first
  end

  test "jhon complete tasks" do
    puts "El usuario #{@user1.name} completó #{@user1.task_complete} tareas"
    assert_equal 2, @user1.task_complete
  end

  test "jhon incomplete tasks" do
    puts "El usuario #{@user1.name} no ha completado #{@user1.task_incomplete} tareas"
    assert_equal 1, @user1.task_incomplete
  end

end
