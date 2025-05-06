-- Get the destination number from the session
extension = session:getVariable("destination_number")

if extension == nil then
    session:consoleLog("ERR", "Extension is nil!\n")
    return
end

-- Example: fallback if extension does not exist
-- Check if user directory exists
local api = freeswitch.API()
local result = api:executeString("user_exists " .. extension .. " " .. session:getVariable("domain_name"))

if result ~= "true" then
    session:streamFile("voicemail/vm-extension_not_found.wav")
else
    -- Let the default dialplan handle valid extensions
end
