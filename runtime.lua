-- Aliases
IPAddress = Controls.IPAddress
Port = Controls.Port
n1 = Controls.in1
n2 = Controls.in2
n3 = Controls.in3
n4 = Controls.in4
n5 = Controls.in5
n6 = Controls.in6
n7 = Controls.in7
n8 = Controls.in8

-- Constants
EOL = "\r\n"                       -- End of line character as defined in device's API
EOLCharacter = TcpSocket.EOL.Lf  -- EOL Character lookup for TCPSocket ReadLine

-- Sockets
TCP = TcpSocket.New()     -- Create new TcpSocket object
sock = TcpSocket.New()

-- Sends data to the remote device over the TCP socket
  function send(cmd)
       sock:Write(cmd)
       print(cmd)
 end  

sock.EventHandler = function( sock, evt, err )
  if evt == TcpSocket.Events.Connected then
     print("Connected")
  elseif evt == TcpSocket.Events.Reconnect then
    print("Trying to Reconnect")
  elseif evt == TcpSocket.Events.Data then
     message = sock:ReadLine(TcpSocket.EOL.Any)
     print (message) 
 elseif evt == TcpSocket.Events.Closed then
    print("Closed")
 elseif evt == TcpSocket.Events.Error then
    print("Error",err)
 elseif evt == TcpSocket.Events.Timeout then
    print("Timed Out")
  end
end

for insel = 1, 8 do
  Controls["in"..insel].EventHandler = function()
 iInput = tostring(insel)
 sStr = string.format('%s!',iInput)
 send(sStr)
 print("sent")
 --end
end




---------------------  Initialization  -------------------------
--.init()

sock:Connect(IPAddress.String,Port.Value)
end
