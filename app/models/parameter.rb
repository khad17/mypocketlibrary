class Parameter < ActiveRecord::Base
  
  def self.getByTypeParam(typeParam)
    param = Parameter.where("type_param=?", typeParam)
    if param != nil && param.first != nil
      param.first.description
    end
  end
end
