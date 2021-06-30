require 'rails_helper'

RSpec.describe "baz59s/edit", type: :view do
  before(:each) do
    @baz59 = assign(:baz59, Baz59.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz59 form" do
    render

    assert_select "form[action=?][method=?]", baz59_path(@baz59), "post" do

      assert_select "input[name=?]", "baz59[foo1]"

      assert_select "input[name=?]", "baz59[foo2]"

      assert_select "input[name=?]", "baz59[foo3]"

      assert_select "input[name=?]", "baz59[foo4]"

      assert_select "textarea[name=?]", "baz59[foo5]"
    end
  end
end
