require 'rails_helper'

RSpec.describe "bar58s/edit", type: :view do
  before(:each) do
    @bar58 = assign(:bar58, Bar58.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar58 form" do
    render

    assert_select "form[action=?][method=?]", bar58_path(@bar58), "post" do

      assert_select "input[name=?]", "bar58[foo1]"

      assert_select "input[name=?]", "bar58[foo2]"

      assert_select "input[name=?]", "bar58[foo3]"

      assert_select "input[name=?]", "bar58[foo4]"

      assert_select "textarea[name=?]", "bar58[foo5]"
    end
  end
end
