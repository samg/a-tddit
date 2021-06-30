require 'rails_helper'

RSpec.describe "bar86s/edit", type: :view do
  before(:each) do
    @bar86 = assign(:bar86, Bar86.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar86 form" do
    render

    assert_select "form[action=?][method=?]", bar86_path(@bar86), "post" do

      assert_select "input[name=?]", "bar86[foo1]"

      assert_select "input[name=?]", "bar86[foo2]"

      assert_select "input[name=?]", "bar86[foo3]"

      assert_select "input[name=?]", "bar86[foo4]"

      assert_select "textarea[name=?]", "bar86[foo5]"
    end
  end
end
