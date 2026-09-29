class Api::TransactionsController < ApplicationController
    def  index
        transactions = Transaction.includes(:recharge)
        render json: transactions.as_json(include: :recharge), status: :ok
    end
end
