require "test_helper"

class PsicologosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psicologo = psicologos(:one)
  end

  test "should get index" do
    get psicologos_url
    assert_response :success
  end

  test "should get new" do
    get new_psicologo_url
    assert_response :success
  end

  test "should create psicologo" do
    assert_difference('Psicologo.count') do
      post psicologos_url, params: { psicologo: { crp: @psicologo.crp, nome: @psicologo.nome } }
    end

    assert_redirected_to psicologo_url(Psicologo.last)
  end

  test "should show psicologo" do
    get psicologo_url(@psicologo)
    assert_response :success
  end

  test "should get edit" do
    get edit_psicologo_url(@psicologo)
    assert_response :success
  end

  test "should update psicologo" do
    patch psicologo_url(@psicologo), params: { psicologo: { crp: @psicologo.crp, nome: @psicologo.nome } }
    assert_redirected_to psicologo_url(@psicologo)
  end

  test "should destroy psicologo" do
    assert_difference('Psicologo.count', -1) do
      delete psicologo_url(@psicologo)
    end

    assert_redirected_to psicologos_url
  end
end
