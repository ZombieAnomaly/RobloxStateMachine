local ReplicatedStorage = game:GetService("ReplicatedStorage")

local RobloxStateMachine = require(ReplicatedStorage.RobloxStateMachine)

local exampleStateMachine: RobloxStateMachine.RobloxStateMachine = RobloxStateMachine.new(
    "Default",
    RobloxStateMachine:LoadDirectory(script.Example.States, {"Blue", "Default"}), {}
)

exampleStateMachine.StateChanged:Connect(function(newState: string, previousState: string)
    print("Our previous state was: " .. previousState .. " now our state is: " .. newState)
end)

task.wait(2)

exampleStateMachine:ChangeState("Blue")

task.wait(2)

exampleStateMachine:Destroy()