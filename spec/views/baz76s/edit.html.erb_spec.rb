require 'rails_helper'

RSpec.describe "baz76s/edit", type: :view do
  before(:each) do
    @baz76 = assign(:baz76, Baz76.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz76 form" do
    render

    assert_select "form[action=?][method=?]", baz76_path(@baz76), "post" do

      assert_select "input[name=?]", "baz76[foo1]"

      assert_select "input[name=?]", "baz76[foo2]"

      assert_select "input[name=?]", "baz76[foo3]"

      assert_select "input[name=?]", "baz76[foo4]"

      assert_select "textarea[name=?]", "baz76[foo5]"
    end
  end
end
