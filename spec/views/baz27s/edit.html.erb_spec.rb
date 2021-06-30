require 'rails_helper'

RSpec.describe "baz27s/edit", type: :view do
  before(:each) do
    @baz27 = assign(:baz27, Baz27.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz27 form" do
    render

    assert_select "form[action=?][method=?]", baz27_path(@baz27), "post" do

      assert_select "input[name=?]", "baz27[foo1]"

      assert_select "input[name=?]", "baz27[foo2]"

      assert_select "input[name=?]", "baz27[foo3]"

      assert_select "input[name=?]", "baz27[foo4]"

      assert_select "textarea[name=?]", "baz27[foo5]"
    end
  end
end
