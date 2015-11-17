class Tenant < ActiveRecord::Base
  after_create :add_tenant_to_apartment

  def self.current
    tenant = Tenant.find_by domain:Apartment::Tenant.current
    raise ::Apartment::TenantNotFound, "Unable to find tenant" unless tenant
    tenant
  end

  def switch!
    Apartment::Tenant.switch! domain
  end

  private
    def add_tenant_to_apartment
      Apartment::Tenant.create(domain)
    end

    def drop_tenant_from_apartment
      Apartment::Tenant.drop(domain)
    end
end
