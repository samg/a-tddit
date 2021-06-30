require 'rails_helper'

RSpec.describe "baz60s/edit", type: :view do
  before(:each) do
    @baz60 = assign(:baz60, Baz60.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz60 form" do
    render

    assert_select "form[action=?][method=?]", baz60_path(@baz60), "post" do

      assert_select "input[name=?]", "baz60[foo1]"

      assert_select "input[name=?]", "baz60[foo2]"

      assert_select "input[name=?]", "baz60[foo3]"

      assert_select "input[name=?]", "baz60[foo4]"

      assert_select "textarea[name=?]", "baz60[foo5]"
    end
  end
end
