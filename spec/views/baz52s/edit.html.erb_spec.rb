require 'rails_helper'

RSpec.describe "baz52s/edit", type: :view do
  before(:each) do
    @baz52 = assign(:baz52, Baz52.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz52 form" do
    render

    assert_select "form[action=?][method=?]", baz52_path(@baz52), "post" do

      assert_select "input[name=?]", "baz52[foo1]"

      assert_select "input[name=?]", "baz52[foo2]"

      assert_select "input[name=?]", "baz52[foo3]"

      assert_select "input[name=?]", "baz52[foo4]"

      assert_select "textarea[name=?]", "baz52[foo5]"
    end
  end
end
