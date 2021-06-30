require 'rails_helper'

RSpec.describe "bar31s/edit", type: :view do
  before(:each) do
    @bar31 = assign(:bar31, Bar31.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar31 form" do
    render

    assert_select "form[action=?][method=?]", bar31_path(@bar31), "post" do

      assert_select "input[name=?]", "bar31[foo1]"

      assert_select "input[name=?]", "bar31[foo2]"

      assert_select "input[name=?]", "bar31[foo3]"

      assert_select "input[name=?]", "bar31[foo4]"

      assert_select "textarea[name=?]", "bar31[foo5]"
    end
  end
end
