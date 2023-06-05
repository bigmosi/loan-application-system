class Admin::LoansController < ApplicationController
  def index
    @loans = Loan.all
  end

  def show
    @loan = Loan.find(params[:id])
  end

  # Other actions as needed...
end