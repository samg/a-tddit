require 'rails_helper'

RSpec.describe "bar81s/edit", type: :view do
  before(:each) do
    @bar81 = assign(:bar81, Bar81.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar81 form" do
    render

    assert_select "form[action=?][method=?]", bar81_path(@bar81), "post" do

      assert_select "input[name=?]", "bar81[foo1]"

      assert_select "input[name=?]", "bar81[foo2]"

      assert_select "input[name=?]", "bar81[foo3]"

      assert_select "input[name=?]", "bar81[foo4]"

      assert_select "textarea[name=?]", "bar81[foo5]"
    end
  end
end
