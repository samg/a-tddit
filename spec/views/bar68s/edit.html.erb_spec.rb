require 'rails_helper'

RSpec.describe "bar68s/edit", type: :view do
  before(:each) do
    @bar68 = assign(:bar68, Bar68.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar68 form" do
    render

    assert_select "form[action=?][method=?]", bar68_path(@bar68), "post" do

      assert_select "input[name=?]", "bar68[foo1]"

      assert_select "input[name=?]", "bar68[foo2]"

      assert_select "input[name=?]", "bar68[foo3]"

      assert_select "input[name=?]", "bar68[foo4]"

      assert_select "textarea[name=?]", "bar68[foo5]"
    end
  end
end
