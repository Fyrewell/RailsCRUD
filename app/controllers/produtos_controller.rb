class ProdutosController < ApplicationController
  def index
    @produtos = Produtos.all
  end
  def show
    @produto = Produtos.find(params[:id])
  end
  def new
  @produto = Produtos.new
  end
  def edit
    @produto = Produtos.find(params[:id])
  end
  def create
    @produto = Produtos.new(produto_params)
    if (@produto.save)
      flash[:success] = "Inserido com sucesso!"
      redirect_to @produto
    else
      flash[:error] = "Ocorreu um problema ao inserir!"
      render 'new'
    end
  end
  def update
    @produto = Produtos.find(params[:id])
    if (@produto.update_attributes(produto_params))
      flash[:success] = "Editado com sucesso!"
      redirect_to @produto
    else
      flash[:error] = "Ocorreu um problema ao editar!"
      render 'edit'
    end
  end
  def destroy
    @produto = Produtos.find(params[:id])
    if (@produto.destroy)
      flash[:success] = "Excluido com sucesso!"
    else
      flash[:error] = "Erro ao excluir!"
    end
    redirect_to :action => 'index'
  end
  
  private

    def produto_params
      params.permit(:nome, :descricao, :valor, :quantidade)
    end
  
end
