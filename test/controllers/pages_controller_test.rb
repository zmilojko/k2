require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = create(:page)
  end

  test "should get index" do
    event = create(:event)
    get :index, event_id: event.id
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    event = create(:event)
    get :new, event_id: event.id
    assert_response :success
  end

  test "should create page" do
    event = create(:event)
    assert_difference('event.pages.count') do
      post :create, page: { content: @page.content, name: @page.name }, event_id: event.id
      event.reload
    end

    assert_redirected_to event_page_path(event, assigns(:page))
  end

  test "should show page" do
    get :show, id: @page, event_id: @page.event.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page, event_id: @page.event.id
    assert_response :success
  end

  test "should update page" do
    patch :update, id: @page, page: { content: @page.content, name: @page.name }, event_id: @page.event.id
    assert_redirected_to event_page_path(@page.event, assigns(:page))
  end

  test "should destroy page" do
    event = @page.event
    assert_difference('event.pages.count', -1) do
      delete :destroy, id: @page, event_id: event.id
      event.reload
    end

    assert_redirected_to event_pages_path(event)
  end
end
