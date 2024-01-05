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
    if @bank.valid?
      @bank.save
      flash[:errors] = 'Bank Created Successfully'
      redirect_to banks_path
    else
      flash.now[:messages] = @bank.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @bank.update(bank_params)
      flash[:errors] = 'Bank Updated Successfully'
      redirect_to banks_path
    else
      flash.now[:messages] = @bank.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @bank.suppliers.length == 0
      if @bank.delete
        flash[:errors] = 'Bank Deleted Successfully'
        redirect_to banks_path
      else
        flash[:errors] = @bank.errors.full_messages
        redirect_to banks_path
      end
    else
      flash[:errors] = 'Bank cannot be deleted because some suppliers are associated to it'
      redirect_to banks_path, status: :conflict
    end
  end

  private 

  def set_bank_params
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:name)
  end
end
