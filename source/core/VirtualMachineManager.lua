local VirtualMachineManager = {}
VirtualMachineManager.__index = VirtualMachineManager

function VirtualMachineManager.new(hypervisorFactory)
  local self = setmetatable({}, VirtualMachineManager)
  self.hypervisorFactory = hypervisorFactory
  return self
end

function VirtualMachineManager:getHypervisor(hypervisorType)
  return self.hypervisorFactory.create(hypervisorType)
end

return VirtualMachineManager