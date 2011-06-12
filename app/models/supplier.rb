class Supplier < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    first_name     :string
    last_name      :string
    telephone      :string
    email          :string
    postal_address :string
    address        :string
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
