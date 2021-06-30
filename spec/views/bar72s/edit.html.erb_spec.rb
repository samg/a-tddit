require 'rails_helper'

RSpec.describe "bar72s/edit", type: :view do
  before(:each) do
    @bar72 = assign(:bar72, Bar72.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar72 form" do
    render

    assert_select "form[action=?][method=?]", bar72_path(@bar72), "post" do

      assert_select "input[name=?]", "bar72[foo1]"

      assert_select "input[name=?]", "bar72[foo2]"

      assert_select "input[name=?]", "bar72[foo3]"

      assert_select "input[name=?]", "bar72[foo4]"

      assert_select "textarea[name=?]", "bar72[foo5]"
    end
  end
end
