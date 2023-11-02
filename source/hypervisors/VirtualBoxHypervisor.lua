local Hypervisor = require("hypervisors.Hypervisor")

local VirtualBoxHypervisor = setmetatable({}, {__index = Hypervisor})
VirtualBoxHypervisor.__index = VirtualBoxHypervisor

function VirtualBoxHypervisor.new()
  local self = setmetatable(Hypervisor.new(), VirtualBoxHypervisor)

  return self
end

function VirtualBoxHypervisor:startVirtualMachine(virtualMachineConfiguration)
    -- local command = string.format("")
    -- os.execute(command) 
end

function VirtualBoxHypervisor:stopVirtualMachine(virtualMachineConfiguration)
    -- local command = string.format("")
    -- os.execute(command) 
end

return VirtualBoxHypervisor