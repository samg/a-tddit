require 'rails_helper'

RSpec.describe "baz65s/edit", type: :view do
  before(:each) do
    @baz65 = assign(:baz65, Baz65.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz65 form" do
    render

    assert_select "form[action=?][method=?]", baz65_path(@baz65), "post" do

      assert_select "input[name=?]", "baz65[foo1]"

      assert_select "input[name=?]", "baz65[foo2]"

      assert_select "input[name=?]", "baz65[foo3]"

      assert_select "input[name=?]", "baz65[foo4]"

      assert_select "textarea[name=?]", "baz65[foo5]"
    end
  end
end
