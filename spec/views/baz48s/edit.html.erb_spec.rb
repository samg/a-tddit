require 'rails_helper'

RSpec.describe "baz48s/edit", type: :view do
  before(:each) do
    @baz48 = assign(:baz48, Baz48.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz48 form" do
    render

    assert_select "form[action=?][method=?]", baz48_path(@baz48), "post" do

      assert_select "input[name=?]", "baz48[foo1]"

      assert_select "input[name=?]", "baz48[foo2]"

      assert_select "input[name=?]", "baz48[foo3]"

      assert_select "input[name=?]", "baz48[foo4]"

      assert_select "textarea[name=?]", "baz48[foo5]"
    end
  end
end
