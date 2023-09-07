require "test_helper"

class BovinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bovino = bovinos(:one)
  end

  test "should get index" do
    get bovinos_url, as: :json
    assert_response :success
  end

  test "should create bovino" do
    assert_difference("Bovino.count") do
      post bovinos_url, params: { bovino: { brinco: @bovino.brinco, brinco_mae: @bovino.brinco_mae, brinco_pai: @bovino.brinco_pai, data_nascimento: @bovino.data_nascimento, data_prenhes: @bovino.data_prenhes, data_ultimo_parto: @bovino.data_ultimo_parto, nome: @bovino.nome, raca: @bovino.raca, sexo: @bovino.sexo, situacao: @bovino.situacao } }, as: :json
    end

    assert_response :created
  end

  test "should show bovino" do
    get bovino_url(@bovino), as: :json
    assert_response :success
  end

  test "should update bovino" do
    patch bovino_url(@bovino), params: { bovino: { brinco: @bovino.brinco, brinco_mae: @bovino.brinco_mae, brinco_pai: @bovino.brinco_pai, data_nascimento: @bovino.data_nascimento, data_prenhes: @bovino.data_prenhes, data_ultimo_parto: @bovino.data_ultimo_parto, nome: @bovino.nome, raca: @bovino.raca, sexo: @bovino.sexo, situacao: @bovino.situacao } }, as: :json
    assert_response :success
  end

  test "should destroy bovino" do
    assert_difference("Bovino.count", -1) do
      delete bovino_url(@bovino), as: :json
    end

    assert_response :no_content
  end
end
