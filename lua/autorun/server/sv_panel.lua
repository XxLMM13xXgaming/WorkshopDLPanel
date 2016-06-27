function WSDLCheckOpen(ply)
    umsg.Start ("WSDLCheck", ply)
    umsg.End()
end
hook.Add("PlayerInitialSpawn", "WSDLCheckOpen", WSDLCheckOpen)