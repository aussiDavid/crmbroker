class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /account
  # GET /account.json
  def show
  end

  # GET /account/edit
  def edit
  end

  # PATCH/PUT /account
  # PATCH/PUT /account.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to account_path, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account
  # DELETE /account.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = current_account
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account)
        .permit(
          :email 
        )
    end
end
