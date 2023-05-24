print("Orange Power Monitor V1.0")
print("Starting Power Monitoring")
local Cell = peripheral.wrap("left")
print("Current energy is: ",Cell.getEnergy())
print("Current max energy is: ",Cell.getMaxEnergy())

while true do
    power = (Cell.getEnergy() / Cell.getMaxEnergy()) * 100
    print("Current energy percentage: ",power,"%")
    if power < 85 then
        redstone.setOutput("back",true)
    end
    if power > 90 then
        redstone.setOutput("back",false)
    end    
    sleep(5)
end
