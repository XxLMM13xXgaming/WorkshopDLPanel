function WorkshopDownloadCheck()
	local Frame = vgui.Create( "DFrame" )
	--Frame:SetPos( ScrW()/2, ScrH()/2 )
	Frame:Center()
	Frame:SetSize( 300, 75 )
	Frame:SetTitle( "Steam Workshop" )
	Frame:SetVisible( true )
	Frame:SetDraggable( false )
	Frame:ShowCloseButton( true )
	Frame:MakePopup()

	local DLabel = vgui.Create( "DLabel", Frame )
	DLabel:SetPos( 5, 25 )
	DLabel:SetText( "You may need extra content from the Steam Workshop." )
	DLabel:SizeToContents()

	local WSButton = vgui.Create( "DButton", Frame )
	WSButton:SetText( "Take me to it!" )
	WSButton:SetTextColor( Color( 0, 0, 0 ) )
	WSButton:SetPos( 5, 40 )
	WSButton:SetSize( 100, 30 )
	WSButton.DoClick = function()
		gui.OpenURL("http://yourlink.com/content/") --set your workshop content url here, or your FastDL link.
		Frame:Close()
	end

	local CloseButton = vgui.Create( "DButton", Frame )
	CloseButton:SetText( "I'd rather not." )
	CloseButton:SetTextColor( Color( 0, 0, 0 ) )
	CloseButton:SetPos( 195, 40 )
	CloseButton:SetSize( 100, 30 )
	CloseButton.DoClick = function()
		Frame:Close()
	end
end
concommand.Add("OpenWSDL", WorkshopDownloadCheck)
usermessage.Hook ("WSDLCheck", WorkshopDownloadCheck)
