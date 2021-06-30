require 'rails_helper'

RSpec.describe "bar85s/new", type: :view do
  before(:each) do
    assign(:bar85, Bar85.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar85 form" do
    render

    assert_select "form[action=?][method=?]", bar85s_path, "post" do

      assert_select "input[name=?]", "bar85[foo1]"

      assert_select "input[name=?]", "bar85[foo2]"

      assert_select "input[name=?]", "bar85[foo3]"

      assert_select "input[name=?]", "bar85[foo4]"

      assert_select "textarea[name=?]", "bar85[foo5]"
    end
  end
end
