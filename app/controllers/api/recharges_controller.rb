class Api::RechargesController < ApplicationController
    skip_before_action :verify_authenticity_token
   def create
    recharge = Recharge.new(recharge_params)
        if recharge.save
            recharge.update!(status: "success")
            transaction = Transaction.create!(recharge: recharge, transaction_id: SecureRandom.uuid, amount: recharge.amount, status: "success")
            render json: {recharge: recharge, transaction: transaction}, status: :created
        else
         render json: { errors: recharge.errors.full_messages }, status: :unprocessable_entity
        end
    end
  private

  def recharge_params
    params.require(:recharge).permit(:mobile_no,:operator_name,:state,:amount)
  end

end

