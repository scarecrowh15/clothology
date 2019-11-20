require 'test_helper'

class BrandDropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_drop = brand_drops(:one)
  end

  test "should get index" do
    get brand_drops_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_drop_url
    assert_response :success
  end

  test "should create brand_drop" do
    assert_difference('BrandDrop.count') do
      post brand_drops_url, params: { brand_drop: { article_image1: @brand_drop.article_image1, article_image2: @brand_drop.article_image2, article_image3: @brand_drop.article_image3, article_title: @brand_drop.article_title, brand_id: @brand_drop.brand_id, content: @brand_drop.content } }
    end

    assert_redirected_to brand_drop_url(BrandDrop.last)
  end

  test "should show brand_drop" do
    get brand_drop_url(@brand_drop)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_drop_url(@brand_drop)
    assert_response :success
  end

  test "should update brand_drop" do
    patch brand_drop_url(@brand_drop), params: { brand_drop: { article_image1: @brand_drop.article_image1, article_image2: @brand_drop.article_image2, article_image3: @brand_drop.article_image3, article_title: @brand_drop.article_title, brand_id: @brand_drop.brand_id, content: @brand_drop.content } }
    assert_redirected_to brand_drop_url(@brand_drop)
  end

  test "should destroy brand_drop" do
    assert_difference('BrandDrop.count', -1) do
      delete brand_drop_url(@brand_drop)
    end

    assert_redirected_to brand_drops_url
  end
end
