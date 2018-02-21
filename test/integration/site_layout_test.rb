require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", news_path
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contact_path
  end
end