require "application_system_test_case"

class CashflowsTest < ApplicationSystemTestCase
  setup do
    @cashflow = cashflows(:one)
  end

  test "visiting the index" do
    visit cashflows_url
    assert_selector "h1", text: "Cashflows"
  end

  test "should create cashflow" do
    visit cashflows_url
    click_on "New cashflow"

    fill_in "Category", with: @cashflow.category_id
    fill_in "User", with: @cashflow.user_id
    click_on "Create Cashflow"

    assert_text "Cashflow was successfully created"
    click_on "Back"
  end

  test "should update Cashflow" do
    visit cashflow_url(@cashflow)
    click_on "Edit this cashflow", match: :first

    fill_in "Category", with: @cashflow.category_id
    fill_in "User", with: @cashflow.user_id
    click_on "Update Cashflow"

    assert_text "Cashflow was successfully updated"
    click_on "Back"
  end

  test "should destroy Cashflow" do
    visit cashflow_url(@cashflow)
    click_on "Destroy this cashflow", match: :first

    assert_text "Cashflow was successfully destroyed"
  end
end
