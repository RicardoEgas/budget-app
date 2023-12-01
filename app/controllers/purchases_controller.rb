class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  def index
    @purchases = @group.purchases.order(created_at: :desc)
    @total_amount = @purchases.sum(:amount)
  end

  def new
    @purchase = @group.purchases.build
  end

  def create
    @purchase = @group.purchases.new(purchase_params)
    @purchase.user = current_user

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to group_purchases_path(@group), notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace('new_purchase', partial: 'purchases/form',
                                                                    locals: { purchase: @purchase })
        end
      end
    end
  end

  private

  def set_group
    @group = current_user.groups.includes(:purchases).find(params[:group_id])
  end

  def purchase_params
    params.require(:purchase).permit(:name, :amount)
  end
end
