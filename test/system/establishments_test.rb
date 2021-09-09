require "application_system_test_case"

class EstablishmentsTest < ApplicationSystemTestCase
  setup do
    @establishment = establishments(:one)
  end

  test "visiting the index" do
    visit establishments_url
    assert_selector "h1", text: "Establishments"
  end

  test "creating a Establishment" do
    visit establishments_url
    click_on "New Establishment"

    fill_in "Address", with: @establishment.address
    fill_in "Code", with: @establishment.code
    fill_in "Email", with: @establishment.email
    fill_in "Fax", with: @establishment.fax
    fill_in "Locality", with: @establishment.locality
    fill_in "Npa", with: @establishment.npa
    fill_in "Phone1", with: @establishment.phone1
    fill_in "Phone2", with: @establishment.phone2
    fill_in "Title", with: @establishment.title
    click_on "Create Establishment"

    assert_text "Establishment was successfully created"
    click_on "Back"
  end

  test "updating a Establishment" do
    visit establishments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @establishment.address
    fill_in "Code", with: @establishment.code
    fill_in "Email", with: @establishment.email
    fill_in "Fax", with: @establishment.fax
    fill_in "Locality", with: @establishment.locality
    fill_in "Npa", with: @establishment.npa
    fill_in "Phone1", with: @establishment.phone1
    fill_in "Phone2", with: @establishment.phone2
    fill_in "Title", with: @establishment.title
    click_on "Update Establishment"

    assert_text "Establishment was successfully updated"
    click_on "Back"
  end

  test "destroying a Establishment" do
    visit establishments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Establishment was successfully destroyed"
  end
end
