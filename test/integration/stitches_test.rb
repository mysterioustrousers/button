require 'test_helper'

class StitchesTest < Flunk

  setup do
  end

  test "Stitch", "Create" do
    before {
      @count = Stitch.count
    }
    desc      "Creates a new stitch."
    path      "stitches"
    method    :post
    status    :created
    body      ({ stitch: { thread_color: "red", length: "1" }})
    after {
      assert_equal @count + 1, Stitch.count
    }
  end

  test "Stitch", "Update" do
    before {
      @stitch = Stitch.new thread_color: "red", length: "1"
      @stitch.save
    }
    desc      "Updates a new stitch."
    path      "stitches/#{@stitch.id}"
    method    :put
    status    :no_content
    body      ({ stitch: { thread_color: "blue", length: "1" }})
    after {
      @stitch.reload
      assert_equal "blue", @stitch.thread_color
    }
  end

  test "Stitch", "Delete" do
    before {
      @stitch = Stitch.new thread_color: "red", length: "1"
      @stitch.save
    }
    desc      "Deletes a new stitch."
    path      "stitches/#{@stitch.id}"
    method    :delete
    status    :no_content
    after {
      assert_raises ActiveRecord::RecordNotFound do
        @stitch.reload
      end
    }
  end



#  flunk "Stitch", "Update", "Doesn't Exist" do
#    desc      "Trying to update a record that does not exist"
#    path      "/stitches/11111"
#    method    :put
#    body      ({ stitch: { thread_color: "blue", length: "1" }}).to_json
#    status    :not_found
#  end

end
