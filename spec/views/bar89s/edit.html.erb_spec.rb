require 'rails_helper'

RSpec.describe "bar89s/edit", type: :view do
  before(:each) do
    @bar89 = assign(:bar89, Bar89.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar89 form" do
    render

    assert_select "form[action=?][method=?]", bar89_path(@bar89), "post" do

      assert_select "input[name=?]", "bar89[foo1]"

      assert_select "input[name=?]", "bar89[foo2]"

      assert_select "input[name=?]", "bar89[foo3]"

      assert_select "input[name=?]", "bar89[foo4]"

      assert_select "textarea[name=?]", "bar89[foo5]"
    end
  end
end
