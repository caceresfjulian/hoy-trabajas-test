class SuppliersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supplier_params, only: %i[edit update destroy]
  before_action :load_banks, only: %i[index new create edit update]

  def index
    @suppliers = Supplier.order(:updated_at).page params[:page]
  end

  def new
    @supplier = Supplier.new
  end

  def create
    new_supplier_params = prepare_supplier_params
    @supplier = Supplier.new(new_supplier_params)

    if @supplier.save
      flash[:errors] = 'Supplier Created Successfully'
      redirect_to suppliers_path
    else
      flash.now[:messages] = @supplier.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    new_supplier_params = prepare_supplier_params

    if @supplier.update(new_supplier_params)
      flash[:errors] = 'Supplier Updated Successfully'
      redirect_to suppliers_path
    else
      flash.now[:messages] = @supplier.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @supplier.delete
      flash[:errors] = 'Supplier Deleted Successfully'
      redirect_to suppliers_path
    else
      flash[:errors] = @supplier.errors.full_messages
      redirect_to suppliers_path
    end
  end

  private

  def set_supplier_params
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :nit, :contact_name, :contact_phone, :bank, :account_number)
  end

  def load_banks
    @banks = Bank.all
  end

  def prepare_supplier_params
    new_supplier_params = supplier_params.except(:bank)
    bank = Bank.find_by(name: params[:supplier][:bank])
    new_supplier_params[:bank_id] = bank.id if bank
    new_supplier_params
  end
end
