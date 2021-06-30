require 'rails_helper'

RSpec.describe "baz42s/edit", type: :view do
  before(:each) do
    @baz42 = assign(:baz42, Baz42.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz42 form" do
    render

    assert_select "form[action=?][method=?]", baz42_path(@baz42), "post" do

      assert_select "input[name=?]", "baz42[foo1]"

      assert_select "input[name=?]", "baz42[foo2]"

      assert_select "input[name=?]", "baz42[foo3]"

      assert_select "input[name=?]", "baz42[foo4]"

      assert_select "textarea[name=?]", "baz42[foo5]"
    end
  end
end
