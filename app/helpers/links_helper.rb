module LinksHelper
  def endpoints_collection
    Endpoint
      .select(:id, :email)
      .map{|endpoint| [endpoint.email, endpoint.id]}
  end

  def crms_collection
    Crm
      .select(:id, :name)
      .map{|crm| [crm.name, crm.id]}
  end
end
