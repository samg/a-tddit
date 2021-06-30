require 'rails_helper'

RSpec.describe "baz10s/edit", type: :view do
  before(:each) do
    @baz10 = assign(:baz10, Baz10.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz10 form" do
    render

    assert_select "form[action=?][method=?]", baz10_path(@baz10), "post" do

      assert_select "input[name=?]", "baz10[foo1]"

      assert_select "input[name=?]", "baz10[foo2]"

      assert_select "input[name=?]", "baz10[foo3]"

      assert_select "input[name=?]", "baz10[foo4]"

      assert_select "textarea[name=?]", "baz10[foo5]"
    end
  end
end
