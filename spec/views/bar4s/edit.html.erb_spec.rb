require 'rails_helper'

RSpec.describe "bar4s/edit", type: :view do
  before(:each) do
    @bar4 = assign(:bar4, Bar4.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar4 form" do
    render

    assert_select "form[action=?][method=?]", bar4_path(@bar4), "post" do

      assert_select "input[name=?]", "bar4[foo1]"

      assert_select "input[name=?]", "bar4[foo2]"

      assert_select "input[name=?]", "bar4[foo3]"

      assert_select "input[name=?]", "bar4[foo4]"

      assert_select "textarea[name=?]", "bar4[foo5]"
    end
  end
end
