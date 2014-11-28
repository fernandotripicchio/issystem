##
# Copyright ©2014 QwikCompliance, Inc.
# All rights reserved.
#
class IndependentExpenditure < Account
  include Tire::Model::Search
  include Tire::Model::Callbacks

  field :entity_type, type: String, default: 'ORG'
  field :filer_code, type: String      #03.1 #51
  field :filer_code_desc, type: String #03.1 #52
  field :bank_segregated, type: String #03.1 #53
  field :filer_qnp, type: String       #03.1 #54


  # Elastic Search indexing
  index_name("#{Rails.env}_#{self.collection.name}")
  mapping do
    indexes :id,     index: :not_analyzed, as: 'id.to_s'
    indexes :fec_id, index: :not_analyzed
    indexes :name,   as: 'get_name', analyzer: 'snowball'
  end


  def get_name
    if name.blank?
      return address.name
    else
      return name
    end
  end
end
