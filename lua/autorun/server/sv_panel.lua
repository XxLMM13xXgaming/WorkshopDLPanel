util.AddNetworkString("WSDLCheck")

function WSDLCheckOpen(ply)
    net.Start("WSDLCheck")
    net.Send(ply)
end
hook.Add("PlayerInitialSpawn", "WSDLCheckOpen", WSDLCheckOpen)
