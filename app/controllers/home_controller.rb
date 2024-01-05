class HomeController < ApplicationController
  def index
    @banks = Bank.all
    @suppliers = Supplier.all
    render
  end
end