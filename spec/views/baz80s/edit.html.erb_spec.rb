require 'rails_helper'

RSpec.describe "baz80s/edit", type: :view do
  before(:each) do
    @baz80 = assign(:baz80, Baz80.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz80 form" do
    render

    assert_select "form[action=?][method=?]", baz80_path(@baz80), "post" do

      assert_select "input[name=?]", "baz80[foo1]"

      assert_select "input[name=?]", "baz80[foo2]"

      assert_select "input[name=?]", "baz80[foo3]"

      assert_select "input[name=?]", "baz80[foo4]"

      assert_select "textarea[name=?]", "baz80[foo5]"
    end
  end
end
