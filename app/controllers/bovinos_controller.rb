class BovinosController < ApplicationController

  # GET /bovinos
  def index
    print("busca todos bovinos", request.query_parameters)
    @bovinos = Bovino.all
    render json: @bovinos
  end

  # GET /bovinos/1
  def show
    print("Buscou 1 bovino")
    print(params)
    @bovino = Bovino.where('lower(nome) = ?', params[:id].downcase).or(Bovino.where('lower(brinco) = ?', params[:id].downcase))
    render json: @bovino
  end

  def create
    bovino_params = params[:bovino]

    @bovino = Bovino.new(
      brinco: bovino_params["brinco"],
      nome: bovino_params["nome"],
      situacao: bovino_params["situacao"],
      sexo: bovino_params["sexo"],
      brinco_mae: bovino_params["brinco_mae"],
      brinco_pai: bovino_params["brinco_pai"],
      raca: bovino_params["raca"],
      data_nascimento: bovino_params["data_nascimento"],
      data_prenhes: bovino_params["data_prenhes"],
      data_ultimo_parto: bovino_params["data_ultimo_parto"]
    )

    brinco_mae = bovino_params[:brinco_mae]
    brinco_pai = bovino_params[:brinco_pai]

    if brinco_mae.present? && !Bovino.where(brinco: brinco_mae, sexo: 'F').exists?
      render json: { error: 'Brinco mãe não existe' }, status: :unprocessable_entity
      return
    end

    if brinco_pai.present? && !Bovino.where(brinco: brinco_pai, sexo: 'M').exists?
      render json: { error: 'Brinco pai não existe' }, status: :unprocessable_entity
      return
    end

    if !@bovino.save
      puts @bovino.errors.full_messages

      render json: { error: @bovino.errors.full_messages.join }, status: :unprocessable_entity
      return
    end
    render json: { success: 'Bovino cadastrado!'}, status: :ok
  end

  private

end
