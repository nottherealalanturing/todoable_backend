class AddAdmin < ActiveRecord::Migration[7.0]
  def change
  end

  AdminUser.create!(
    full_name: 'Assad Isah',
    phone: '08137414139',
    password: 'password')
    
    p "Admin is successfully created!"
end



