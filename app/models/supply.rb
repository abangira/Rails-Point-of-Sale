class Supply < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    supplier    :integer
    order       :integer
    item        :integer
    description :string
    quantity    :integer
    unit_price  :integer
    total_price :integer
    lot_number  :string
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
