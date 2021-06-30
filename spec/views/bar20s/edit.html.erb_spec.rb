require 'rails_helper'

RSpec.describe "bar20s/edit", type: :view do
  before(:each) do
    @bar20 = assign(:bar20, Bar20.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar20 form" do
    render

    assert_select "form[action=?][method=?]", bar20_path(@bar20), "post" do

      assert_select "input[name=?]", "bar20[foo1]"

      assert_select "input[name=?]", "bar20[foo2]"

      assert_select "input[name=?]", "bar20[foo3]"

      assert_select "input[name=?]", "bar20[foo4]"

      assert_select "textarea[name=?]", "bar20[foo5]"
    end
  end
end
