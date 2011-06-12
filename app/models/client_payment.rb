class ClientPayment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    client       :integer
    sale         :integer
    payment_mode :integer
    amount       :integer
    account_type :integer
    total_amount :integer
    balance      :integer
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
