require 'rails_helper'

RSpec.describe "bar2s/edit", type: :view do
  before(:each) do
    @bar2 = assign(:bar2, Bar2.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar2 form" do
    render

    assert_select "form[action=?][method=?]", bar2_path(@bar2), "post" do

      assert_select "input[name=?]", "bar2[foo1]"

      assert_select "input[name=?]", "bar2[foo2]"

      assert_select "input[name=?]", "bar2[foo3]"

      assert_select "input[name=?]", "bar2[foo4]"

      assert_select "textarea[name=?]", "bar2[foo5]"
    end
  end
end
