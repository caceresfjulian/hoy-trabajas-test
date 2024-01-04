class BanksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bank_params, only: %i[show edit update destroy]
  
  def index
    @banks = Bank.all
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.create(bank_params)
    if @bank.save
      flash[:success] = 'Bank Created Successfully'
      redirect_to banks_path
    else
      flash.now[:error] = @bank.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def set_bank_params
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:name)
  end
end
