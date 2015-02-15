require 'rails_helper'

RSpec.describe "quotations/new", type: :view do
  before(:each) do
    assign(:quotation, Quotation.new(
      :content => "MyText",
      :source_url => "MyText",
      :author => "MyText",
      :user => nil
    ))
  end

  it "renders new quotation form" do
    render

    assert_select "form[action=?][method=?]", quotations_path, "post" do

      assert_select "textarea#quotation_content[name=?]", "quotation[content]"

      assert_select "textarea#quotation_source_url[name=?]", "quotation[source_url]"

      assert_select "textarea#quotation_author[name=?]", "quotation[author]"

      assert_select "input#quotation_user_id[name=?]", "quotation[user_id]"
    end
  end
end
