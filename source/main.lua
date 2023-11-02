local VirtualMachineManager = require("core.VMMManager")
local HypervisorFactory = require("core.HypervisorFactory")

local configuration = {
    hypervisorsconfiguration = {
        { type = "QEMU", virtualMachineConfiguration = { name = "test_1", memory = 2048, cpu = 1, diskSize  = 20480, network = "default" }},
        { type = "QEMU", virtualMachineConfiguration = { name = "test_1", memory = 2048, cpu = 1, diskSize  = 20480, network = "default" }},
        { type = "QEMU", virtualMachineConfiguration = { name = "test_1", memory = 2048, cpu = 1, diskSize  = 20480, network = "default" }}
    }
}

local virtualMachinemanager = VirtualMachineManager.new(HypervisorFactory)

for _, hypervisorsconfiguration in ipairs(configuration.hypervisorsconfiguration) do
  local hypervisor = virtualMachinemanager:getHypervisor(hypervisorsconfiguration.type)
  hypervisor:startVirtualMachine(hypervisorsconfiguration.virtualMachineConfiguration)
