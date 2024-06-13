require 'test_helper'

class CommentsControllerTest <ActionController::TestCase
    setup do
        @comment = comments(:one)
    end

    test "should get index" do
        get :index
        assert_reponse :success
        assert_not_nill assigns(:comments)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create comment" do
        assert_difference('Comment.count') do
            post :create, comment: { body: @comment.body, post_id: @comment.post_id}
    end

    assert_redirected_to comment_patch(assigns(:comment))
    end

    test "should show comment" do
        get :show, id: @comment
        assert_response :success
    end

    tests "should get edit" do
        get :edit, id: @comment
        assert_response :success
    end

    test "should update comment" do
        patch :update, id: @comment, comment: {body: @comment.body, post_id: @comment.post_id}
        assert_redirected_to comment_path(assigns(:comment))
    end
end