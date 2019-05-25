class PortifoliosController < ApplicationController
  def index
    @portfolio_items = Portifolio.all
  end

  def new
    @portfolio_item = Portifolio.new
  end
end

def create
  @portfolio_item = Portifolio.new(params.require(:@portfolio).permit(:title, :subtitle, :body))

  respond_to do |format|
    if @portfolio_item.save
      format.html { redirect_to portifolios_path, notice: 'Your Portfolio item is now live.' }
    else
      format.html { render :new }
    end
  end
end

def edit
  @portfolio_item = Portifolio.find(params[:id])
end

def update
  @portfolio_item = Portifolio.find(params[:id])

  respond_to do |format|
    if @portfolio_item.update(params.require(:@portfolio).permit(:title, :subtitle, :body))
      format.html { redirect_to portifolios_path, notice: 'Portfolio was successfully updated.' }
    else
      format.html { render :edit }
    end
  end
end

def show
  @portfolio_item = Portifolio.find(params[:id])
end

def destroy
  @portfolio_item = Portifolio.find(params[:id])

  @portfolio_item.destroy
  respond_to do |format|
    format.html { redirect_to portifolios_url, notice: 'Portfolio was successfully destroyed.' }
  end
end