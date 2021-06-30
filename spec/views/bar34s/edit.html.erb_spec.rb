require 'rails_helper'

RSpec.describe "bar34s/edit", type: :view do
  before(:each) do
    @bar34 = assign(:bar34, Bar34.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar34 form" do
    render

    assert_select "form[action=?][method=?]", bar34_path(@bar34), "post" do

      assert_select "input[name=?]", "bar34[foo1]"

      assert_select "input[name=?]", "bar34[foo2]"

      assert_select "input[name=?]", "bar34[foo3]"

      assert_select "input[name=?]", "bar34[foo4]"

      assert_select "textarea[name=?]", "bar34[foo5]"
    end
  end
end
