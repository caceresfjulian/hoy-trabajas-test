class SuppliersController < ApplicationController
  before_action :authenticate_user!

  def index
    @suppliers = Supplier.all
    @banks = Bank.all
  end

  def new
    @banks = Bank.all
    @supplier = Supplier.new
  end

  def create
    @banks = Bank.all
    new_supplier_params = supplier_params.except(:bank)
    bank = Bank.find_by(name: params[:supplier][:bank])
    new_supplier_params[:bank_id] = bank.id
    @supplier = Supplier.new(new_supplier_params)

    if @supplier.valid?
      @supplier.save
      flash[:errors] = 'Supplier Created Successfully'
      redirect_to suppliers_path
    else
      flash.now[:messages] = @supplier.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_supplier_params
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :nit, :contact_name, :contact_phone, :bank, :account_number)
  end
end
