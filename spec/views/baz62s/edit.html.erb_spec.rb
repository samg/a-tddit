require 'rails_helper'

RSpec.describe "baz62s/edit", type: :view do
  before(:each) do
    @baz62 = assign(:baz62, Baz62.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz62 form" do
    render

    assert_select "form[action=?][method=?]", baz62_path(@baz62), "post" do

      assert_select "input[name=?]", "baz62[foo1]"

      assert_select "input[name=?]", "baz62[foo2]"

      assert_select "input[name=?]", "baz62[foo3]"

      assert_select "input[name=?]", "baz62[foo4]"

      assert_select "textarea[name=?]", "baz62[foo5]"
    end
  end
end
