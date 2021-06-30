require 'rails_helper'

RSpec.describe "bar51s/edit", type: :view do
  before(:each) do
    @bar51 = assign(:bar51, Bar51.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar51 form" do
    render

    assert_select "form[action=?][method=?]", bar51_path(@bar51), "post" do

      assert_select "input[name=?]", "bar51[foo1]"

      assert_select "input[name=?]", "bar51[foo2]"

      assert_select "input[name=?]", "bar51[foo3]"

      assert_select "input[name=?]", "bar51[foo4]"

      assert_select "textarea[name=?]", "bar51[foo5]"
    end
  end
end
