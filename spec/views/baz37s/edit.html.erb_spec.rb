require 'rails_helper'

RSpec.describe "baz37s/edit", type: :view do
  before(:each) do
    @baz37 = assign(:baz37, Baz37.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz37 form" do
    render

    assert_select "form[action=?][method=?]", baz37_path(@baz37), "post" do

      assert_select "input[name=?]", "baz37[foo1]"

      assert_select "input[name=?]", "baz37[foo2]"

      assert_select "input[name=?]", "baz37[foo3]"

      assert_select "input[name=?]", "baz37[foo4]"

      assert_select "textarea[name=?]", "baz37[foo5]"
    end
  end
end
