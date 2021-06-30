require 'rails_helper'

RSpec.describe "baz58s/edit", type: :view do
  before(:each) do
    @baz58 = assign(:baz58, Baz58.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz58 form" do
    render

    assert_select "form[action=?][method=?]", baz58_path(@baz58), "post" do

      assert_select "input[name=?]", "baz58[foo1]"

      assert_select "input[name=?]", "baz58[foo2]"

      assert_select "input[name=?]", "baz58[foo3]"

      assert_select "input[name=?]", "baz58[foo4]"

      assert_select "textarea[name=?]", "baz58[foo5]"
    end
  end
end
