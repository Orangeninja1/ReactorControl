print("Orange Reactor and Turbine Control V1.0")
local reactor = peripheral.wrap("BiggerReactors_Reactor_0")
local turbine = peripheral.wrap("BiggerReactors_Turbine_0")
print("Reactor Status: ",reactor.active())
print("Turbine Coil Status: ",turbine.coilEngaged())

while true do
    if redstone.getInput("back") == true then
        reactor.setActive(true)
        turbine.setCoilEngaged(true)
    end
    if redstone.getInput("back") == false then
        reactor.setActive(false)
        turbine.setCoilEngaged(false)
    end
    term.clear()
    term.setCursorPos(1,1)
    print("Orange Reactor and Turbine Control V1.0")
    print("Reactor Status: ",reactor.active())
    print("Turbine Coil Status: ",turbine.coilEngaged())
    sleep(5)
end
