class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show update destroy ]

  # GET /items
  def index
    @group = Group.find(params[:group_id])
    @items = Item.where(group_id: @group.id)
    @total_amount = @items.sum(:amount)
  end

  # POST /items
  def create
    @items = current_user.item.new(item_params)

    if @items.save
      redirect_to group_items_path, notice: 'Payment was successfully added'
    else
      render :new, alert: 'Failed to add payment'
    end
  end

  # DELETE /items/1
  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      redirect_to groups_path, notice: 'Payment was successfully deleted'
    else
      render :index, alert: 'Failed to delete payment'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.permit(:name, :amount, :group_id)
    end
end