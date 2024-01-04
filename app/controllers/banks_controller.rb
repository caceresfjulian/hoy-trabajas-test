class BanksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bank_params, only: %i[show edit update destroy]
  
  def index
    @banks = Bank.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_bank_params
    @bank = Bank.find(params[:id])
  end
end
