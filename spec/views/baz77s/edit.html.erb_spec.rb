require 'rails_helper'

RSpec.describe "baz77s/edit", type: :view do
  before(:each) do
    @baz77 = assign(:baz77, Baz77.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz77 form" do
    render

    assert_select "form[action=?][method=?]", baz77_path(@baz77), "post" do

      assert_select "input[name=?]", "baz77[foo1]"

      assert_select "input[name=?]", "baz77[foo2]"

      assert_select "input[name=?]", "baz77[foo3]"

      assert_select "input[name=?]", "baz77[foo4]"

      assert_select "textarea[name=?]", "baz77[foo5]"
    end
  end
end
