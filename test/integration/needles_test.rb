require 'test_helper'

class NeedlesTest < Flunk

  setup do
  end

  test "Needle", "Create" do
    before {
      @count = Needle.count
    }
    desc      "creates a new needle"
    path      "needles"
    path      :post
    path      "needles"
    method    :post
    status    :created
    body      ({ needle: { sharpness: 3, length: 1 }})
    after {
      assert_equal @count + 1, Needle.count
    }
  end

  test "Needle", "Update" do
    before {
      @needle = Needle.new sharpness: 2, length: 1
      @needle.save
    }
    desc      "Updates a new needle."
    path      "needles/#{@needle.id}"
    method    :put
    status    :no_content
    body      ({ needle: { sharpness: 3, length: 1 }})
    after {
      @needle.reload
      assert_equal 3, @needle.sharpness
    }
  end

  test "Needle", "Delete" do
    before {
      @needle = Needle.new sharpness: 3, length: 1
      @needle.save
    }
    desc      "Deletes a new needle."
    path      "needles/#{@needle.id}"
    method    :delete
    status    :no_content
    after {
      assert_raises ActiveRecord::RecordNotFound do
        @needle.reload
      end
    }
  end


end
