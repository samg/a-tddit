require 'rails_helper'

RSpec.describe "bar43s/edit", type: :view do
  before(:each) do
    @bar43 = assign(:bar43, Bar43.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar43 form" do
    render

    assert_select "form[action=?][method=?]", bar43_path(@bar43), "post" do

      assert_select "input[name=?]", "bar43[foo1]"

      assert_select "input[name=?]", "bar43[foo2]"

      assert_select "input[name=?]", "bar43[foo3]"

      assert_select "input[name=?]", "bar43[foo4]"

      assert_select "textarea[name=?]", "bar43[foo5]"
    end
  end
end
