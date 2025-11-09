resource_groups = {
  rg1 = {
    resource_group_name = "rg-kaira"
    location            = "centralindia"
    managed_by          = "anuj"
    tags = {
      env = "proad"
    }
  }
}

vnet = {
  vnet1 = {
    vnet_name           = "frontend-vnet"
    location            = "centralindia"
    resource_group_name = "rg-kaira"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      sunet1 = {
        subnet_name      = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        subnet_name      = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]

      }

    }
  }
}

public_ips = {
  pip1 = {
    pip_name            = "frontend-pip1"
    resource_group_name = "rg-kaira"
    location            = "centralindia"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }

  }
  pip2 = {
    pip_name            = "backend_pip2"
    resource_group_name = "rg-kaira"
    location            = "centralindia"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }

}

nic = {
  nic1 = {
    nic_name            = "nic-frontend-01"
    location            = "centralindia"
    resource_group_name = "rg-kaira"
    subnet_name         = "frontend-subnet"
    pip_name            = "frontend-pip1"
    vnet_name           = "frontend-vnet"
    ip_configuration = {
      config1 = {
        ip_config_name = "frontend-ipconfig"
        pip_alloc      = "Dynamic"
      }
    }
  }
}


# nic = {
#   nic_name            = "nic-backend-01"
#   location            = "centralindia"
#   resource_group_name = "rg-kaira"
#   subnet_name         = "backend-subnet"
#   pip_name            = "backend-pip1"
#   vnet_name           = "frontend-vnet"
#   ip_configuration = {

#     config1 = {
#       ip_config_name = "internal"
#       pip_alloc      = "Dynamic"





vms = {
  vm1 = {
    nic_name                        = "nic-frontend-01"
    location                        = "centralindia"
    resource_group_name             = "rg-kaira"
    vnet_name                       = "frontend-vnet"
    subnet_name                     = "frontend-subnet"
    pip_name                        = "frontend-pip1"
    virtual_machine_name            = "frontend-vm"
    size                            = "Standard_F2"
    admin_username                  = "adminuser"
    admin_password                  = "user@123"
    disable_password_authentication = false

  }
}
