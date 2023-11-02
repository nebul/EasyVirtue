local Hypervisor = require("hypervisors.Hypervisor")

local QEMUHypervisor = setmetatable({}, {__index = Hypervisor})
QEMUHypervisor.__index = QEMUHypervisor

function QEMUHypervisor.new()
  local self = setmetatable(Hypervisor.new(), QEMUHypervisor)

  return self
end

function QEMUHypervisor:startVirtualMachine(virtualMachineConfiguration)
    -- local command = string.format("")
    -- os.execute(command) 
end

function QEMUHypervisor:stopVirtualMachine(virtualMachineConfiguration)
    -- local command = string.format("")
    -- os.execute(command)
end

return QEMUHypervisor