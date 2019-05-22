class PortifoliosController < ApplicationController
  def index
    @portfolio_items = Portifolio.all
  end

  def angular
    @portfolio_items_angular = Portifolio.angular
  end

  def new
    @portfolio_items = Portifolio.new
  end
end

def create
  @portfolio_items = Portifolio.new(params.require(:@portfolio).permit(:title, :subtitle, :body))

  respond_to do |format|
    if @portfolio_items.save
      format.html { redirect_to portifolios_path, notice: 'Your Portfolio item is now live.' }
    else
      format.html { render :new }
    end
  end
end

def edit
  @portfolio_items = Portifolio.find(params[:id])
end

def update
  @portfolio_items = Portifolio.find(params[:id])

  respond_to do |format|
    if @portfolio_items.update(params.require(:@portfolio).permit(:title, :subtitle, :body))
      format.html { redirect_to portifolios_path, notice: 'Portfolio was successfully updated.' }
    else
      format.html { render :edit }
    end
  end
end

def show
  @portfolio_items = Portifolio.find(params[:id])
end

def destroy
  @portfolio_items = Portifolio.find(params[:id])

  @portfolio_items.destroy
  respond_to do |format|
    format.html { redirect_to portifolios_url, notice: 'Portfolio was successfully destroyed.' }
  end
end