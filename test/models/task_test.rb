require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "Task is not created without a description" do
    assert_not tasks(:four).valid?
  end

  test "Task is not created without a status" do
    assert_not tasks(:three).valid?
  end

  test "status is not allowed" do
    assert_not tasks(:six).valid?
  end

  test "task is valid" do
    assert tasks(:one).valid?
  end

  test "get tasks when user is admin" do
    assert_equal Task.all, Task.get_tasks(users(:jhon))
  end

  test "get tasks when user is client" do
    assert_equal users(:jane).tasks, Task.get_tasks(users(:jane))
  end

  test "search get results" do
    assert_equal users(:jane).tasks, Task.search(users(:jane), "MyString")
  end


end
