require 'rails_helper'

RSpec.describe "baz49s/edit", type: :view do
  before(:each) do
    @baz49 = assign(:baz49, Baz49.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz49 form" do
    render

    assert_select "form[action=?][method=?]", baz49_path(@baz49), "post" do

      assert_select "input[name=?]", "baz49[foo1]"

      assert_select "input[name=?]", "baz49[foo2]"

      assert_select "input[name=?]", "baz49[foo3]"

      assert_select "input[name=?]", "baz49[foo4]"

      assert_select "textarea[name=?]", "baz49[foo5]"
    end
  end
end
