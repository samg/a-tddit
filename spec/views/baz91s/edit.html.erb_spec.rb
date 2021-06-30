require 'rails_helper'

RSpec.describe "baz91s/edit", type: :view do
  before(:each) do
    @baz91 = assign(:baz91, Baz91.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz91 form" do
    render

    assert_select "form[action=?][method=?]", baz91_path(@baz91), "post" do

      assert_select "input[name=?]", "baz91[foo1]"

      assert_select "input[name=?]", "baz91[foo2]"

      assert_select "input[name=?]", "baz91[foo3]"

      assert_select "input[name=?]", "baz91[foo4]"

      assert_select "textarea[name=?]", "baz91[foo5]"
    end
  end
end
