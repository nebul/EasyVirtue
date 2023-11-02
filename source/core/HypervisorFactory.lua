local QEMUHypervisor = require("hypervisors.QEMUHypervisor")
local VirtualBoxHypervisor = require("hypervisors.VirtualBoxHypervisor")

local HypervisorFactory = {}

function HypervisorFactory.create(hypervisorType)
  if hypervisorType == 'QEMU' then
    return QEMUHypervisor.new()
  elseif hypervisorType == 'VirtualBox' then
    return VirtualBoxHypervisor.new()
  else
    error("Unsupported hypervisorType: " .. tostring(hypervisorType))
  end
end

return HypervisorFactory