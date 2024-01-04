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
      flash[:errors] = 'Bank Created Successfully'
      redirect_to banks_path
    else
      flash[:errors] = @bank.errors.full_messages
      render :new
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
      flash[:errors] = @bank.errors.full_messages
      redirect_to edit_employee_path
    end
  end

  def destroy
    if @bank.delete
      flash[:errors] = 'Bank Deleted Successfully'
      redirect_to banks_path
    else
      flash[:errors] = @bank.errors.full_messages
      redirect_to banks_path
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
