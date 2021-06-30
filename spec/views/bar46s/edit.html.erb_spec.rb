require 'rails_helper'

RSpec.describe "bar46s/edit", type: :view do
  before(:each) do
    @bar46 = assign(:bar46, Bar46.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar46 form" do
    render

    assert_select "form[action=?][method=?]", bar46_path(@bar46), "post" do

      assert_select "input[name=?]", "bar46[foo1]"

      assert_select "input[name=?]", "bar46[foo2]"

      assert_select "input[name=?]", "bar46[foo3]"

      assert_select "input[name=?]", "bar46[foo4]"

      assert_select "textarea[name=?]", "bar46[foo5]"
    end
  end
end
