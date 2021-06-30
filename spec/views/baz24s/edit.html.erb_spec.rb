require 'rails_helper'

RSpec.describe "baz24s/edit", type: :view do
  before(:each) do
    @baz24 = assign(:baz24, Baz24.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz24 form" do
    render

    assert_select "form[action=?][method=?]", baz24_path(@baz24), "post" do

      assert_select "input[name=?]", "baz24[foo1]"

      assert_select "input[name=?]", "baz24[foo2]"

      assert_select "input[name=?]", "baz24[foo3]"

      assert_select "input[name=?]", "baz24[foo4]"

      assert_select "textarea[name=?]", "baz24[foo5]"
    end
  end
end
