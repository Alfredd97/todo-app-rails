require "application_system_test_case"

class TodoItemsTest < ApplicationSystemTestCase
  setup do
    @todo_item = todo_items(:one)
  end

  test "visiting the index" do
    visit todo_items_url
    assert_selector "h1", text: "Todo items"
  end

  test "should create todo item" do
    visit todo_items_url
    click_on "New todo item"

    fill_in "Description", with: @todo_item.description
    fill_in "Due date", with: @todo_item.due_date
    fill_in "Priority", with: @todo_item.priority
    fill_in "Title", with: @todo_item.title
    click_on "Create Todo item"

    assert_text "Todo item was successfully created"
    click_on "Back"
  end

  test "should update Todo item" do
    visit todo_item_url(@todo_item)
    click_on "Edit this todo item", match: :first

    fill_in "Description", with: @todo_item.description
    fill_in "Due date", with: @todo_item.due_date
    fill_in "Priority", with: @todo_item.priority
    fill_in "Title", with: @todo_item.title
    click_on "Update Todo item"

    assert_text "Todo item was successfully updated"
    click_on "Back"
  end

  test "should destroy Todo item" do
    visit todo_item_url(@todo_item)
    click_on "Destroy this todo item", match: :first

    assert_text "Todo item was successfully destroyed"
  end
end
