require 'test_helper'

class ListaDepartamentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lista_departamentos_index_url
    assert_response :success
  end

end
