class LoansController < ApplicationController
  def new
         @loan = Loan.new
       end

       def create
         @loan = Loan.new(loan_params)

         if @loan.save
           redirect_to @loan, notice: "Loan application submitted successfully!"
         else
           render :new
         end
       end

       def show
         @loan = Loan.find(params[:id])
       end

       private

       def loan_params
         params.require(:loan).permit(:name, :interest_rate, :email, :amount, :duration, :status)
       end
end
