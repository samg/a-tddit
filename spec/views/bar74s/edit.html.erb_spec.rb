require 'rails_helper'

RSpec.describe "bar74s/edit", type: :view do
  before(:each) do
    @bar74 = assign(:bar74, Bar74.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar74 form" do
    render

    assert_select "form[action=?][method=?]", bar74_path(@bar74), "post" do

      assert_select "input[name=?]", "bar74[foo1]"

      assert_select "input[name=?]", "bar74[foo2]"

      assert_select "input[name=?]", "bar74[foo3]"

      assert_select "input[name=?]", "bar74[foo4]"

      assert_select "textarea[name=?]", "bar74[foo5]"
    end
  end
end
