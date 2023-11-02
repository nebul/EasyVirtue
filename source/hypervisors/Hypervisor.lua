local Hypervisor = {}
Hypervisor.__index = Hypervisor

function Hypervisor.new()
  local self = setmetatable({}, Hypervisor)
  return self
end

function Hypervisor:startVirtualMachine(virtualMachineConfiguration)
  error("startVirtualMachine not implemented")
end

function Hypervisor:stopVirtualMachine(virtualMachineConfiguration)
  error("stopVirtualMachine not implemented")
end

return Hypervisor