require 'rails_helper'

RSpec.describe "baz99s/edit", type: :view do
  before(:each) do
    @baz99 = assign(:baz99, Baz99.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz99 form" do
    render

    assert_select "form[action=?][method=?]", baz99_path(@baz99), "post" do

      assert_select "input[name=?]", "baz99[foo1]"

      assert_select "input[name=?]", "baz99[foo2]"

      assert_select "input[name=?]", "baz99[foo3]"

      assert_select "input[name=?]", "baz99[foo4]"

      assert_select "textarea[name=?]", "baz99[foo5]"
    end
  end
end
