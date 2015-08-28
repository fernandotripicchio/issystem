class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :last_name,
                  :movile, :address

 belongs_to :role

 def role_name
 	role.blank? ? "NR" : role.name
 end         

 def is_admin?
 	role_name == "admin"
 end

 def is_consulta?
 	role_name == "consulta"
 end

 def is_corriente?
 	role_name == "corriente"
 end
end
