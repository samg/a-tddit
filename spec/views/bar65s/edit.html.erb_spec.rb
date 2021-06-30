require 'rails_helper'

RSpec.describe "bar65s/edit", type: :view do
  before(:each) do
    @bar65 = assign(:bar65, Bar65.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar65 form" do
    render

    assert_select "form[action=?][method=?]", bar65_path(@bar65), "post" do

      assert_select "input[name=?]", "bar65[foo1]"

      assert_select "input[name=?]", "bar65[foo2]"

      assert_select "input[name=?]", "bar65[foo3]"

      assert_select "input[name=?]", "bar65[foo4]"

      assert_select "textarea[name=?]", "bar65[foo5]"
    end
  end
end
