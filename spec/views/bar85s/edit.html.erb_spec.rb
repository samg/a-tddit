require 'rails_helper'

RSpec.describe "bar85s/edit", type: :view do
  before(:each) do
    @bar85 = assign(:bar85, Bar85.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar85 form" do
    render

    assert_select "form[action=?][method=?]", bar85_path(@bar85), "post" do

      assert_select "input[name=?]", "bar85[foo1]"

      assert_select "input[name=?]", "bar85[foo2]"

      assert_select "input[name=?]", "bar85[foo3]"

      assert_select "input[name=?]", "bar85[foo4]"

      assert_select "textarea[name=?]", "bar85[foo5]"
    end
  end
end
