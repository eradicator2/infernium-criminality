local v8 = game.Players.LocalPlayer;
local v9 = game.Workspace.CurrentCamera;
local v10 = game:GetService('UserInputService');
local v11 = v9.WorldToViewportPoint;
local v12 = v10.GetMouseLocation;
game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = 'Made By Mick Voltrivax',
    Text = 'Enjoy !'
});
local v13 = {
    GUi = {
        OpenNCloseButton = true,
        KeybindEnable = false,
        Keybind = "z"
    },
    Aimbot = {
        Keybind = 'MouseButton2',
        Enabled = false,
        TeamCheck = false,
        WallCheck = false,
        ShowFov = false,
        Fov = 0,
        Smoothing = 0,
        AimPart = 'Head',
        Thickness = 1,
        FovFillColor = Color3.fromRGB(100, 0, 100),
        FovColor = Color3.fromRGB(100, 0, 100),
        FovFillTransparency = 1,
        FovTransparenct = 0,
        IsAimKeyDown = false
    },
    ESP = {
        Box = {
            Box = false,
            Name = false,
            Distance = false,
            Health = false,
            TeamCheck = false,
            HealthType = 'Bar',
            BoxColor = Color3.fromRGB(75, 0, 10)
        },
        OutLines = {
            Enabled = false,
            TeamCheck = false,
            TeamColor = false,
            AllwaysShow = true,
            FillCollor = Color3.fromRGB(75, 0, 10),
            FillTrancparenct = 0,
            OutlineColor = Color3.fromRGB(0, 0, 0),
            OutlineTrancparency = 0
        },
        Tracers = {
            Enabled = false,
            TeamCheck = false,
            TeamColor = false,
            Color = Color3.fromRGB(75, 0, 10)
        }
    }
};
local v14 = Instance.new('ScreenGui');
v14.Name = 'Fov';
v14.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui');
v14.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v14.ResetOnSpawn = false;
local v20 = Instance.new('ScreenGui');
v20.Name = 'Tracers';
v20.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui');
v20.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v20.ResetOnSpawn = false;
local v25 = Instance.new('Frame');
v25.Parent = v14;
v25.Name = 'FOVFFrame';
v25.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v25.BorderColor3 = Color3.fromRGB(0, 0, 0);
v25.BorderSizePixel = 0;
v25.BackgroundTransparency = 1;
v25.AnchorPoint = Vector2.new(0.5, 0.5);
v25.Position = UDim2.new(0.5, 0, 0.5, 0);
v25.Size = UDim2.new(0, v13.Aimbot.Fov, 0, v13.Aimbot.Fov);
v25.BackgroundTransparency = 1;
local v35 = Instance.new('UICorner');
v35.CornerRadius = UDim.new(1, 0);
v35.Parent = v25;
local v38 = Instance.new('UIStroke');
v38.Color = Color3.fromRGB(100, 0, 100);
v38.Parent = v25;
v38.Thickness = 1;
v38.ApplyStrokeMode = 'Border';
game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = 'https://discord.gg/25ms',
    Text = 'The Discord For More!'
});
local v43 = Instance.new('ScreenGui', game.Workspace);
v43.Name = 'Box';
local v45 = Instance.new('ScreenGui', game.Workspace);
local v46 = {};
local function v47(v986)
    local v987 = Instance.new('Highlight');
    v987.Parent = v45;
    v987.Name = v986.Name;
    v987.Enabled = v13.ESP.OutLines.Enabled;
    local v993 = v986.Character;
    if v993 then
        v987.Adornee = v993;
    end
    v46[v986] = v986.CharacterAdded:Connect(function(v1089)
        v987.Adornee = v1089;
    end);
    local v995 = coroutine.create(function()
        while wait(0.1) do
            if ((v986 ~= v8) and v986 and v986.Character and v986.Character.FindFirstChild(v986.Character, 'Humanoid') and (v986.Character.Humanoid.Health > (0))) then
                local v1251 = 0;
                while true do
                    if (v1251 == (2)) then
                        v987.OutlineColor = v13.ESP.OutLines.OutlineColor;
                        v987.FillTransparency = v13.ESP.OutLines.FillTrancparenct;
                        v1251 = 3;
                    end
                    if (v1251 == (3)) then
                        if not (game:GetService('Players'):FindFirstChild(v986.Name)) then
                            v45:FindFirstChild(v986.Name):Destroy();
                            coroutine.yield();
                        end
                        break
                    end
                    if ((1) == v1251) then
                        if (v13.ESP.OutLines.AllwaysShow == true) then
                            v987.DepthMode = 'AlwaysOnTop';
                        else
                            v987.DepthMode = 'Occluded';
                        end
                        v987.OutlineTransparency = v13.ESP.OutLines.OutlineTrancparency;
                        v1251 = 2;
                    end
                    if (v1251 == (0)) then
                        if (v13.ESP.OutLines.Enabled == true) then
                            if ((v13.ESP.OutLines.TeamCheck == true) and (v986.TeamColor == v8.TeamColor)) then
                                v987.Enabled = false;
                            else
                                v987.Enabled = true;
                            end
                        else
                            v987.Enabled = false;
                        end
                        if (v13.ESP.OutLines.TeamColor == true) then
                            v987.FillColor = v986.TeamColor.Color;
                        else
                            v987.FillColor = v13.ESP.OutLines.FillCollor;
                        end
                        v1251 = 1;
                    end
                end
            else
                v987.Enabled = false;
            end
        end
    end);
    coroutine.resume(v995);
end
local function v48(v996)
    local v997 = 0;
    local v998;
    local v999;
    local v1000;
    local v1001;
    local v1002;
    local v1003;
    local v1004;
    local v1005;
    local v1006;
    local v1007;
    local v1008;
    local v1009;
    local v1010;
    local v1011;
    local v1012;
    while true do
        if (v997 == (2)) then
            v1001.Position = UDim2.new(1, 0, 0, 0);
            v1002 = v1000:Clone();
            v1002.Parent = v999;
            v1002.Size = UDim2.new(1, 0, 0, 1);
            v1003 = v1000:Clone();
            v1003.Parent = v999;
            v1003.Size = UDim2.new(1, 0, 0, - 1);
            v1003.Position = UDim2.new(0, 0, 1, 0);
            v997 = 3;
        end
        if ((6) == v997) then
            v1007.BackgroundTransparency = 1;
            v1007.TextStrokeTransparency = 0;
            v1007.TextXAlignment = Enum.TextXAlignment.Left;
            v1007.Size = UDim2.new(0, 100, 0, 18);
            v1007.Position = UDim2.new(0, 0, 0, 36);
            v1008 = Instance.new('UIListLayout', v1004);
            v1009 = Instance.new('BillboardGui', v998);
            v1009.Name = 'forhealth';
            v997 = 7;
        end
        if ((9) == v997) then
            v1011.Size = UDim2.new(1, 0, 1, 0);
            v1012 = coroutine.create(function()
                while wait(0.1) do
                    if ((v996 ~= v8) and v996 and v996.Character and v996.Character.FindFirstChild(v996.Character, 'Humanoid') and (v996.Character.Humanoid.Health > (0))) then
                        v998.Adornee = v996.Character.HumanoidRootPart;
                        v1004.Adornee = v996.Character.HumanoidRootPart;
                        v1009.Adornee = v996.Character.HumanoidRootPart;
                        if (v13.ESP.Box.Box == true) then
                            v999.Visible = true;
                        else
                            v999.Visible = false;
                        end
                        v999.BackgroundTransparency = 1;
                        if (v13.ESP.Box.Health == true) then
                            local v1373 = 0;
                            while true do
                                if (v1373 == (0)) then
                                    if (v996.Character:FindFirstChild('Humanoid') ~= nil) then
                                        local v1427 = 0;
                                        local v1428;
                                        while true do
                                            if (v1427 == (0)) then
                                                v1428 = 0;
                                                while true do
                                                    if (v1428 == (0)) then
                                                        v1007.Text = 'Health: ' .. math.floor(v996.Character:FindFirstChild('Humanoid').Health) ;
                                                        v1010.bar.Size = UDim2.new(1, 0, v996.Character:FindFirstChild('Humanoid').Health / v996.Character:FindFirstChild('Humanoid').MaxHealth, 0);
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                    if (v13.ESP.Box.HealthType == 'Text') then
                                        v1010.Visible = false;
                                        v1007.Visible = true;
                                    end
                                    v1373 = 1;
                                end
                                if (v1373 == (1)) then
                                    if (v13.ESP.Box.HealthType == 'Bar') then
                                        local v1431 = 0;
                                        while true do
                                            if (v1431 == (0)) then
                                                v1007.Visible = false;
                                                v1010.Visible = true;
                                                break
                                            end
                                        end
                                    end
                                    if (v13.ESP.Box.HealthType == 'Both') then
                                        local v1432 = 0;
                                        while true do
                                            if (v1432 == (0)) then
                                                v1007.Visible = true;
                                                v1010.Visible = true;
                                                break
                                            end
                                        end
                                    end
                                    break
                                end
                            end
                        else
                            local v1374 = 0;
                            while true do
                                if (v1374 == (0)) then
                                    v1007.Visible = false;
                                    v1010.Visible = false;
                                    break
                                end
                            end
                        end
                        if v13.ESP.Box.Name then
                            v1005.Visible = true;
                        else
                            v1005.Visible = false;
                        end
                        if (v13.ESP.Box.Distance == true) then
                            v1006.Visible = true;
                            if (v8.Character and (v8.Character:FindFirstChild('HumanoidRootPart') ~= nil)) then
                                v1006.Text = 'Distance: ' .. math.floor((0.5) + (v8.Character:FindFirstChild('HumanoidRootPart').Position - v996.Character:FindFirstChild('HumanoidRootPart').Position).magnitude) ;
                            end
                        else
                            v1006.Visible = false;
                        end
                        if ((v13.ESP.Box.TeamCheck == true) and (v996.TeamColor == v8.TeamColor)) then
                            local v1379 = 0;
                            local v1380;
                            while true do
                                if (v1379 == 0) then
                                    v1380 = 0;
                                    while true do
                                        if (v1380 == (0)) then
                                            v998.Enabled = false;
                                            v1004.Enabled = false;
                                            v1380 = 1;
                                        end
                                        if (v1380 == (1)) then
                                            v1009.Enabled = false;
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        else
                            local v1381 = 0;
                            while true do
                                if (v1381 == (1)) then
                                    v1009.Enabled = true;
                                    break
                                end
                                if (v1381 == (0)) then
                                    v998.Enabled = true;
                                    v1004.Enabled = true;
                                    v1381 = 1;
                                end
                            end
                        end
                        if (v13.ESP.Box.TeamColor == true) then
                            v1000.BackgroundColor3 = v996.TeamColor.Color;
                            v1001.BackgroundColor3 = v996.TeamColor.Color;
                            v1002.BackgroundColor3 = v996.TeamColor.Color;
                            v1003.BackgroundColor3 = v996.TeamColor.Color;
                            v999.BackgroundColor3 = v13.ESP.Box.BoxColor;
                        else
                            local v1389 = 0;
                            local v1390;
                            while true do
                                if (v1389 == (0)) then
                                    v1390 = 0;
                                    while true do
                                        if ((1) == v1390) then
                                            v1001.BackgroundColor3 = v13.ESP.Box.BoxColor;
                                            v1002.BackgroundColor3 = v13.ESP.Box.BoxColor;
                                            v1390 = 2;
                                        end
                                        if (v1390 == 0) then
                                            v999.BackgroundColor3 = v13.ESP.Box.BoxColor;
                                            v1000.BackgroundColor3 = v13.ESP.Box.BoxColor;
                                            v1390 = 1;
                                        end
                                        if (v1390 == (2)) then
                                            v1003.BackgroundColor3 = v13.ESP.Box.BoxColor;
                                            v1007.TextColor3 = v13.ESP.Box.BoxColor;
                                            v1390 = 3;
                                        end
                                        if (v1390 == (3)) then
                                            v1006.TextColor3 = v13.ESP.Box.BoxColor;
                                            v1005.TextColor3 = v13.ESP.Box.BoxColor;
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        if not (game:GetService('Players'):FindFirstChild(v996.Name)) then
                            v43:FindFirstChild(v996.Name):Destroy();
                            coroutine.yield();
                        end
                    else
                        local v1317 = 0;
                        while true do
                            if (0 == v1317) then
                                v998.Enabled = false;
                                v998.Adornee = nil;
                                v1317 = 1;
                            end
                            if (v1317 == (1)) then
                                v1004.Adornee = nil;
                                v1004.Enabled = false;
                                v1317 = 2;
                            end
                            if ((2) == v1317) then
                                v1009.Adornee = nil;
                                v1009.Enabled = false;
                                break
                            end
                        end
                    end
                end
            end);
            coroutine.resume(v1012);
            break
        end
        if (v997 == (5)) then
            v1006.Name = 'distancelabel';
            v1006.BackgroundTransparency = 1;
            v1006.TextStrokeTransparency = 0;
            v1006.TextXAlignment = Enum.TextXAlignment.Left;
            v1006.Size = UDim2.new(0, 100, 0, 18);
            v1006.Position = UDim2.new(0, 0, 0, 18);
            v1007 = Instance.new('TextLabel', v1004);
            v1007.Name = 'healthlabel';
            v997 = 6;
        end
        if ((4) == v997) then
            v1005.Name = 'namelabel';
            v1005.BackgroundTransparency = 1;
            v1005.TextStrokeTransparency = 0;
            v1005.TextXAlignment = Enum.TextXAlignment.Left;
            v1005.Size = UDim2.new(0, 100, 0, 18);
            v1005.Position = UDim2.new(0, 0, 0, 0);
            v1005.Text = v996.Name;
            v1006 = Instance.new('TextLabel', v1004);
            v997 = 5;
        end
        if (v997 == (1)) then
            v999.BorderSizePixel = 1;
            v999.BackgroundTransparency = 1;
            v1000 = Instance.new('Frame', v999);
            v1000.BorderSizePixel = 1;
            v1000.Size = UDim2.new(0, 1, 1, 0);
            v1001 = v1000:Clone();
            v1001.Parent = v999;
            v1001.Size = UDim2.new(0, - 1, 1, 0);
            v997 = 2;
        end
        if (v997 == (7)) then
            v1009.Size = UDim2.new(4.5, 0, 6, 0);
            v1009.AlwaysOnTop = true;
            v1009.ClipsDescendants = false;
            v1009.Enabled = false;
            v1010 = Instance.new('Frame', v1009);
            v1010.Name = 'healthbar';
            v1010.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
            v1010.BorderColor3 = Color3.fromRGB(0, 0, 0);
            v997 = 8;
        end
        if (v997 == (3)) then
            v1004 = Instance.new('BillboardGui', v998);
            v1004.Name = 'info';
            v1004.Size = UDim2.new(3, 0, 0, 54);
            v1004.StudsOffset = Vector3.new(3.6000000000000227, - 3, 0);
            v1004.AlwaysOnTop = true;
            v1004.ClipsDescendants = false;
            v1004.Enabled = false;
            v1005 = Instance.new('TextLabel', v1004);
            v997 = 4;
        end
        if (v997 == (0)) then
            v998 = Instance.new('BillboardGui', v43);
            v998.Name = v996.Name;
            v998.AlwaysOnTop = true;
            v998.Size = UDim2.new(4, 0, 5.400000000000091, 0);
            v998.ClipsDescendants = false;
            v998.Enabled = false;
            v999 = Instance.new('Frame', v998);
            v999.Size = UDim2.new(1, 0, 1, 0);
            v997 = 1;
        end
        if (v997 == (8)) then
            v1010.Size = UDim2.new(3.999999999996362E-2, 0, 0.9, 0);
            v1010.Position = UDim2.new(0, 0, 5E-2, 0);
            v1011 = Instance.new('Frame', v1010);
            v1011.Name = 'bar';
            v1011.BorderSizePixel = 0;
            v1011.BackgroundColor3 = Color3.fromRGB(94, 255, 69);
            v1011.AnchorPoint = Vector2.new(0, 1);
            v1011.Position = UDim2.new(0, 0, 1, 0);
            v997 = 9;
        end
    end
end
local function v49(v1013)
    local v1014 = 0;
    local v1015;
    local v1016;
    while true do
        if (v1014 == (3)) then
            v1016 = coroutine.create(function()
                game:GetService('RunService').RenderStepped:Connect(function()
                    if ((v1013 ~= v8) and v1013 and v1013.Character and v1013.Character.FindFirstChild(v1013.Character, 'Humanoid') and (v1013.Character.Humanoid.Health > 0)) then
                        local v1318 = v1013.Character:FindFirstChild('HumanoidRootPart');
                        local v1319, v1320 = v9:WorldToScreenPoint(v1318.Position);
                        local v1321;
                        v1321 = math.floor(0.5 + (game.Workspace.CurrentCamera.CFrame.Position - v1013.Character:WaitForChild('HumanoidRootPart').Position).magnitude);
                        local v1322 = Vector2.new(v1319.X, v1319.Y + ((25E2) / v1321));
                        local v1323 = v10:GetMouseLocation();
                        local v1324 = Vector2.new(v1323.X, v1323.Y - (36));
                        local v1325 = Vector2.new(v9.ViewportSize.X / (2), v9.ViewportSize.Y - (1));
                        local v1326 = (v1325 + v1322) / (2) ;
                        local v1327 = (v1325 - v1322).Magnitude;
                        v1015.Rotation = math.deg(math.atan2(v1322.Y - v1325.Y, v1322.X - v1325.X));
                        v1326 = (v1325 + v1322) / (2) ;
                        v1327 = (v1325 - v1322).Magnitude;
                        v1015.Rotation = math.deg(math.atan2(v1322.Y - v1325.Y, v1322.X - v1325.X));
                        if v1320 then
                            local v1391 = 0;
                            while true do
                                if (v1391 == (0)) then
                                    if ((v13.ESP.Tracers.Enabled == true) and v1320) then
                                        if (v13.ESP.Tracers.TeamCheck == true) then
                                            if (v1013.TeamColor == v8.TeamColor) then
                                                v1015.Visible = false;
                                            else
                                                v1015.Visible = true;
                                            end
                                        else
                                            v1015.Visible = true;
                                        end
                                    else
                                        v1015.Visible = false;
                                    end
                                    if (v13.ESP.Tracers.TeamColor == true) then
                                        v1015.BackgroundColor3 = v1013.TeamColor.Color;
                                    else
                                        v1015.BackgroundColor3 = v13.ESP.Tracers.Color;
                                    end
                                    v1391 = 1;
                                end
                                if (v1391 == (2)) then
                                    v1015.Size = UDim2.new(0, v1327, 0, 2);
                                    break
                                end
                                if ((1) == v1391) then
                                    v1015.BorderColor3 = Color3.fromRGB(27, 42, 53);
                                    v1015.Position = UDim2.new(0, v1326.X, 0, v1326.Y);
                                    v1391 = 2;
                                end
                            end
                        else
                            v1015.Visible = false;
                        end
                        if not (game:GetService('Players'):FindFirstChild(v1013.Name)) then
                            local v1393 = 0;
                            while true do
                                if (v1393 == (0)) then
                                    v14:FindFirstChild(v1013.Name):Destroy();
                                    coroutine.yield();
                                    break
                                end
                            end
                        end
                    else
                        v1015.Visible = false;
                    end
                end);
            end);
            coroutine.resume(v1016);
            break
        end
        if (v1014 == (1)) then
            v1015.Name = v1013.Name;
            v1015.Active = false;
            v1014 = 2;
        end
        if (v1014 == (2)) then
            v1015.AnchorPoint = Vector2.new(0.5, 0.5);
            v1015.Visible = false;
            v1014 = 3;
        end
        if (v1014 == (0)) then
            v1015 = Instance.new('Frame');
            v1015.Parent = v20;
            v1014 = 1;
        end
    end
end
function isVisible(v1017, ...)
    local v1018 = 0;
    while true do
        if (v1018 == (0)) then
            if not (v13.Aimbot.WallCheck == true) then
                return true
            end
            return # v9:GetPartsObscuringTarget({
                v1017
            }, {
                v9,
                v8.Character,
                ...
            }) == (0)
        end
    end
end
function CameraGetClosestToMouse(v1019)
    local v1020 = 0;
    local v1021;
    local v1022;
    while true do
        if (v1020 == 0) then
            local v1220 = 0;
            while true do
                if (v1220 == (1)) then
                    v1020 = 1;
                    break
                end
                if (0 == v1220) then
                    v1021 = v1019;
                    v1022 = nil;
                    v1220 = 1;
                end
            end
        end
        if (v1020 == (1)) then
            for v1253, v1254 in pairs(game:GetService('Players'):GetPlayers()) do
                if (v1254 ~= v8) then
                    if (v13.Aimbot.TeamCheck == true) then
                        if (v1254.Character and v1254.Character:FindFirstChild(v13.Aimbot.AimPart) and v1254.Character.Humanoid and (v1254.Character.Humanoid.Health > (0)) and not (v1254.Team == v8.Team)) then
                            local v1402 = 0;
                            local v1403;
                            local v1404;
                            local v1405;
                            local v1406;
                            while true do
                                if (v1402 == (1)) then
                                    v1406 = (v1405 - v12(v10)).Magnitude;
                                    if (v1404 and (v1406 < v1021) and isVisible(v1254.Character[v13.Aimbot.AimPart].Position, v1254.Character.Head.Parent)) then
                                        local v1453 = 0;
                                        while true do
                                            if (v1453 == (0)) then
                                                v1021 = v1406;
                                                v1022 = v1254;
                                                break
                                            end
                                        end
                                    end
                                    break
                                end
                                if (0 == v1402) then
                                    v1403, v1404 = v11(v9, v1254.Character[v13.Aimbot.AimPart].Position);
                                    v1405 = Vector2.new(v1403.X, v1403.Y);
                                    v1402 = 1;
                                end
                            end
                        end
                    elseif (v1254.Character and v1254.Character:FindFirstChild(v13.Aimbot.AimPart) and v1254.Character.Humanoid and (v1254.Character.Humanoid.Health > (0))) then
                        local v1407 = 0;
                        local v1408;
                        local v1409;
                        local v1410;
                        local v1411;
                        local v1412;
                        while true do
                            if (v1407 == (2)) then
                                v1412 = nil;
                                while true do
                                    if ((1) == v1408) then
                                        v1412 = (v1411 - v12(v10)).Magnitude;
                                        if (v1410 and (v1412 < v1021) and isVisible(v1254.Character[v13.Aimbot.AimPart].Position, v1254.Character.Head.Parent)) then
                                            local v1462 = 0;
                                            local v1463;
                                            while true do
                                                if (v1462 == (0)) then
                                                    v1463 = 0;
                                                    while true do
                                                        if (v1463 == (0)) then
                                                            v1021 = v1412;
                                                            v1022 = v1254;
                                                            break
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                    if ((0) == v1408) then
                                        v1409, v1410 = v11(v9, v1254.Character[v13.Aimbot.AimPart].Position);
                                        v1411 = Vector2.new(v1409.X, v1409.Y);
                                        v1408 = 1;
                                    end
                                end
                                break
                            end
                            if (v1407 == (0)) then
                                v1408 = 0;
                                v1409 = nil;
                                v1407 = 1;
                            end
                            if (v1407 == (1)) then
                                v1410 = nil;
                                v1411 = nil;
                                v1407 = 2;
                            end
                        end
                    end
                end
            end
            return v1022
        end
    end
end
local function v50(v1023, v1024)
    local v1025 = 0;
    local v1026;
    while true do
        if (v1025 == (0)) then
            v1026 = v1023.Character:FindFirstChild(v13.Aimbot.AimPart);
            if v1026 then
                local v1275;
                local v1276 = math.floor((0.5) + (v8.Character:FindFirstChild('HumanoidRootPart').Position - v1023.Character:FindFirstChild('HumanoidRootPart').Position).magnitude);
                if (v1276 > (100)) then
                    local v1331 = 0;
                    local v1332;
                    while true do
                        if (v1331 == (0)) then
                            v1332 = v1276 / (10) ;
                            v1275 = v9.CFrame:PointToWorldSpace(Vector3.new(0, 0, - v1024 * v1332)):Lerp(v1026.Position, 1E-2);
                            break
                        end
                    end
                else
                    local v1333 = 0;
                    local v1334;
                    while true do
                        if (0 == v1333) then
                            v1334 = v1276 / (10) ;
                            v1275 = v9.CFrame:PointToWorldSpace(Vector3.new(0, 0, - v1024 * v1334)):Lerp(v1026.Position, 1E-2);
                            break
                        end
                    end
                end
                v9.CFrame = CFrame.lookAt(v9.CFrame.Position, v1275);
            end
            break
        end
    end
end
local v51 = Instance.new('ScreenGui');
local v52 = Instance.new('Frame');
local v53 = Instance.new('TextBox');
local v54 = Instance.new('TextLabel');
local v55 = Instance.new('Frame');
local v56 = Instance.new('Frame');
local v57 = Instance.new('Frame');
local v58 = Instance.new('UIListLayout');
local v59 = Instance.new('TextButton');
local v60 = Instance.new('TextButton');
local v61 = Instance.new('TextButton');
local v62 = Instance.new('TextButton');
local v63 = Instance.new('Frame');
local v64 = Instance.new('Frame');
local v35 = Instance.new('UICorner');
local v65 = Instance.new('Frame');
local v66 = Instance.new('UICorner');
local v67 = Instance.new('UIGradient');
local v68 = Instance.new('TextButton');
local v69 = Instance.new('TextLabel');
local v70 = Instance.new('TextLabel');
local v71 = Instance.new('Frame');
local v72 = Instance.new('Frame');
local v73 = Instance.new('UICorner');
local v74 = Instance.new('Frame');
local v75 = Instance.new('UICorner');
local v76 = Instance.new('UIGradient');
local v77 = Instance.new('TextButton');
local v78 = Instance.new('TextLabel');
local v79 = Instance.new('TextLabel');
local v80 = Instance.new('TextLabel');
local v81 = Instance.new('TextButton');
local v82 = Instance.new('TextLabel');
local v83 = Instance.new('Frame');
local v84 = Instance.new('UIListLayout');
local v85 = Instance.new('TextButton');
local v86 = Instance.new('TextButton');
local v87 = Instance.new('TextButton');
local v88 = Instance.new('TextButton');
local v89 = Instance.new('TextButton');
local v90 = Instance.new('TextLabel');
local v91 = Instance.new('TextButton');
local v92 = Instance.new('TextLabel');
local v93 = Instance.new('TextLabel');
local v94 = Instance.new('Frame');
local v95 = Instance.new('UIListLayout');
local v96 = Instance.new('TextBox');
local v97 = Instance.new('TextBox');
local v98 = Instance.new('TextBox');
local v99 = Instance.new('TextLabel');
local v100 = Instance.new('Frame');
local v101 = Instance.new('UIListLayout');
local v102 = Instance.new('TextButton');
local v103 = Instance.new('TextButton');
local v104 = Instance.new('Frame');
local v105 = Instance.new('Frame');
local v106 = Instance.new('UICorner');
local v107 = Instance.new('Frame');
local v108 = Instance.new('UICorner');
local v109 = Instance.new('UIGradient');
local v110 = Instance.new('TextButton');
local v111 = Instance.new('TextLabel');
local v112 = Instance.new('TextLabel');
local v113 = Instance.new('Frame');
local v114 = Instance.new('Frame');
local v115 = Instance.new('UICorner');
local v116 = Instance.new('Frame');
local v117 = Instance.new('UICorner');
local v118 = Instance.new('UIGradient');
local v119 = Instance.new('TextButton');
local v120 = Instance.new('TextLabel');
local v121 = Instance.new('TextLabel');
local v122 = Instance.new('TextLabel');
local v123 = Instance.new('Frame');
local v124 = Instance.new('UIListLayout');
local v125 = Instance.new('TextBox');
local v126 = Instance.new('TextBox');
local v127 = Instance.new('TextBox');
local v128 = Instance.new('TextLabel');
local v129 = Instance.new('Frame');
local v130 = Instance.new('UIListLayout');
local v131 = Instance.new('TextBox');
local v132 = Instance.new('TextBox');
local v133 = Instance.new('TextBox');
local v134 = Instance.new('Frame');
local v135 = Instance.new('UIListLayout');
local v136 = Instance.new('TextButton');
local v137 = Instance.new('TextButton');
local v138 = Instance.new('TextButton');
local v139 = Instance.new('Frame');
local v140 = Instance.new('UIListLayout');
local v141 = Instance.new('TextBox');
local v142 = Instance.new('TextBox');
local v143 = Instance.new('TextBox');
local v144 = Instance.new('Frame');
local v145 = Instance.new('UIListLayout');
local v146 = Instance.new('TextLabel');
local v147 = Instance.new('TextLabel');
local v148 = Instance.new('Frame');
local v149 = Instance.new('TextButton');
v51.Name = 'CheatEngineDeleteMob';
v51.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui');
v51.Enabled = true;
v51.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v51.DisplayOrder = 10;
v51.ResetOnSpawn = false;
v52.Name = 'DeleteMobF';
v52.Parent = v51;
v52.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v52.BorderColor3 = Color3.fromRGB(255, 255, 255);
v52.Position = UDim2.new(0.14499887800002398, 0, 0.328040659, 0);
v52.Size = UDim2.new(0, 1213, 0, 398);
v52.ZIndex = 10;
v52.Draggable = true;
v52.Active = true;
v53.Parent = v52;
v53.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v53.BackgroundTransparency = 1;
v53.BorderColor3 = Color3.fromRGB(0, 0, 0);
v53.BorderSizePixel = 0;
v53.Position = UDim2.new(0.791149139, 0, 1.27403988E-2, 0);
v53.Size = UDim2.new(0, 200, 0, 23);
v53.ClearTextOnFocus = false;
v53.Font = Enum.Font.Roboto;
v53.PlaceholderText = 'https://discord.gg/FsApQ7YNTq';
v53.Text = 'https://discord.gg/FsApQ7YNTq - Double Click Me';
v53.TextColor3 = Color3.fromRGB(255, 255, 255);
v53.TextSize = 14;
v54.Name = 'Name';
v54.Parent = v52;
v54.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v54.BackgroundTransparency = 1;
v54.BorderColor3 = Color3.fromRGB(0, 0, 0);
v54.BorderSizePixel = 0;
v54.Position = UDim2.new(1.7859777399962695E-2, 0, 0.00456260797, 0);
v54.Size = UDim2.new(0, 200, 0, 31);
v54.Font = Enum.Font.Gotham;
v54.Text = 'Infernium | Undedected';
v54.TextColor3 = Color3.fromRGB(17, 223, 255);
v54.TextSize = 19;
v55.Name = 'Line';
v55.Parent = v52;
v55.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v55.BorderColor3 = Color3.fromRGB(0, 0, 0);
v55.BorderSizePixel = 0;
v55.Position = UDim2.new(0, 0, 8.04020092E-2, 0);
v55.Size = UDim2.new(0, 1213, 0, 1);
v56.Name = 'Line';
v56.Parent = v52;
v56.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v56.BorderColor3 = Color3.fromRGB(0, 0, 0);
v56.BorderSizePixel = 0;
v56.Position = UDim2.new(0.205276027, 0, 8.28348249E-2, 0);
v56.Size = UDim2.new(0, 1, 0, 365);
v57.Name = 'AimBotSection';
v57.Parent = v52;
v57.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v57.BackgroundTransparency = 1;
v57.BorderColor3 = Color3.fromRGB(0, 0, 0);
v57.BorderSizePixel = 0;
v57.Position = UDim2.new(6.0464806899972245E-2, 0, 0.160724282, 0);
v57.Size = UDim2.new(0, 100, 0, 334);
v58.Parent = v57;
v58.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v58.SortOrder = Enum.SortOrder.LayoutOrder;
v58.Padding = UDim.new(0, 5);
v59.Name = 'ABE';
v59.Parent = v57;
v59.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v59.BorderColor3 = Color3.fromRGB(255, 255, 255);
v59.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v59.Size = UDim2.new(0, 164, 0, 29);
v59.Font = Enum.Font.Gotham;
v59.Text = 'Enable';
v59.TextColor3 = Color3.fromRGB(255, 255, 255);
v59.TextSize = 16;
v60.Name = 'ABWC';
v60.Parent = v57;
v60.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v60.BorderColor3 = Color3.fromRGB(255, 255, 255);
v60.Position = UDim2.new(0.23443983499998922, 0, 0.13947990499991647, 0);
v60.Size = UDim2.new(0, 164, 0, 29);
v60.Font = Enum.Font.Gotham;
v60.Text = 'Wall Check';
v60.TextColor3 = Color3.fromRGB(255, 255, 255);
v60.TextSize = 16;
v61.Name = 'ABTC';
v61.Parent = v57;
v61.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v61.BorderColor3 = Color3.fromRGB(255, 255, 255);
v61.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v61.Size = UDim2.new(0, 164, 0, 29);
v61.Font = Enum.Font.Gotham;
v61.Text = 'Team Check';
v61.TextColor3 = Color3.fromRGB(255, 255, 255);
v61.TextSize = 16;
v62.Name = 'ABSF';
v62.Parent = v57;
v62.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v62.BorderColor3 = Color3.fromRGB(255, 255, 255);
v62.Position = UDim2.new(0.234439835, 0, 0.13947990499991647, 0);
v62.Size = UDim2.new(0, 164, 0, 29);
v62.Font = Enum.Font.Gotham;
v62.Text = 'Show Fov';
v62.TextColor3 = Color3.fromRGB(255, 255, 255);
v62.TextSize = 16;
v63.Parent = v57;
v63.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v63.BackgroundTransparency = 0.7000000000000455;
v63.BorderColor3 = Color3.fromRGB(0, 0, 0);
v63.BorderSizePixel = 0;
v63.Position = UDim2.new(- 0.5500000119999982, 0, 0.739130437, 0);
v63.Size = UDim2.new(0, 230, 0, 50);
v64.Name = 'Slider3';
v64.Parent = v63;
v64.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v64.BorderColor3 = Color3.fromRGB(0, 0, 0);
v64.BorderSizePixel = 0;
v64.Position = UDim2.new(6.293998659998579E-2, 0, 0.45120728, 0);
v64.Size = UDim2.new(0, 200, 0, 15);
v35.Parent = v64;
v65.Name = 'Fill1';
v65.Parent = v64;
v65.BackgroundColor3 = Color3.fromRGB(80, 80, 80);
v65.BackgroundTransparency = 0.2;
v65.BorderColor3 = Color3.fromRGB(0, 0, 0);
v65.BorderSizePixel = 0;
v65.Size = UDim2.new(0, 100, 0, 15);
v66.Parent = v65;
v67.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(52, 52, 52))
});
v67.Parent = v65;
v68.Name = 'TriggerFov';
v68.Parent = v64;
v68.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v68.BackgroundTransparency = 1;
v68.BorderColor3 = Color3.fromRGB(0, 0, 0);
v68.BorderSizePixel = 0;
v68.Size = UDim2.new(1, 0, 1, 0);
v68.Font = Enum.Font.SourceSans;
v68.Text = "";
v68.TextColor3 = Color3.fromRGB(0, 0, 0);
v68.TextSize = 14;
v69.Name = 'Numbers';
v69.Parent = v63;
v69.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v69.BackgroundTransparency = 1;
v69.BorderColor3 = Color3.fromRGB(255, 255, 255);
v69.BorderSizePixel = 0;
v69.Position = UDim2.new(0.79130435, 0, 0, 0);
v69.Size = UDim2.new(0, 50, 0, 23);
v69.Font = Enum.Font.Gotham;
v69.Text = '350';
v69.TextColor3 = Color3.fromRGB(255, 255, 255);
v69.TextSize = 14;
v70.Parent = v63;
v70.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v70.BackgroundTransparency = 1;
v70.BorderColor3 = Color3.fromRGB(255, 255, 255);
v70.BorderSizePixel = 0;
v70.Position = UDim2.new(6.08695634000469E-2, 0, 0, 0);
v70.Size = UDim2.new(0, 50, 0, 23);
v70.Font = Enum.Font.Gotham;
v70.Text = 'Fov';
v70.TextColor3 = Color3.fromRGB(255, 255, 255);
v70.TextSize = 14;
v71.Parent = v57;
v71.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v71.BackgroundTransparency = 0.7;
v71.BorderColor3 = Color3.fromRGB(0, 0, 0);
v71.BorderSizePixel = 0;
v71.Position = UDim2.new(- 0.550000012000055, 0, 0.739130437, 0);
v71.Size = UDim2.new(0, 230, 0, 50);
v72.Name = 'Slider4';
v72.Parent = v71;
v72.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v72.BorderColor3 = Color3.fromRGB(0, 0, 0);
v72.BorderSizePixel = 0;
v72.Position = UDim2.new(0.0629399866, 0, 0.4512072800000624, 0);
v72.Size = UDim2.new(0, 200, 0, 15);
v73.Parent = v72;
v74.Name = 'Fill2';
v74.Parent = v72;
v74.BackgroundColor3 = Color3.fromRGB(80, 80, 80);
v74.BackgroundTransparency = 0.20000000000004547;
v74.BorderColor3 = Color3.fromRGB(0, 0, 0);
v74.BorderSizePixel = 0;
v74.Size = UDim2.new(0, 0, 0, 15);
v75.Parent = v74;
v76.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(52, 52, 52))
});
v76.Parent = v74;
v77.Name = 'TriggerSmoothing';
v77.Parent = v72;
v77.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v77.BackgroundTransparency = 1;
v77.BorderColor3 = Color3.fromRGB(0, 0, 0);
v77.BorderSizePixel = 0;
v77.Size = UDim2.new(1, 0, 1, 0);
v77.Font = Enum.Font.SourceSans;
v77.Text = "";
v77.TextColor3 = Color3.fromRGB(0, 0, 0);
v77.TextSize = 14;
v78.Name = 'Numbers';
v78.Parent = v71;
v78.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v78.BackgroundTransparency = 1;
v78.BorderColor3 = Color3.fromRGB(255, 255, 255);
v78.BorderSizePixel = 0;
v78.Position = UDim2.new(0.7913043500000185, 0, 0, 0);
v78.Size = UDim2.new(0, 50, 0, 23);
v78.Font = Enum.Font.Gotham;
v78.Text = "0";
v78.TextColor3 = Color3.fromRGB(255, 255, 255);
v78.TextSize = 14;
v79.Parent = v71;
v79.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v79.BackgroundTransparency = 1;
v79.BorderColor3 = Color3.fromRGB(255, 255, 255);
v79.BorderSizePixel = 0;
v79.Position = UDim2.new(0.0608695634, 0, 0, 0);
v79.Size = UDim2.new(0, 50, 0, 23);
v79.Font = Enum.Font.Gotham;
v79.Text = 'Smoothing';
v79.TextColor3 = Color3.fromRGB(255, 255, 255);
v79.TextSize = 14;
v80.Parent = v57;
v80.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v80.BackgroundTransparency = 1;
v80.BorderColor3 = Color3.fromRGB(0, 0, 0);
v80.BorderSizePixel = 0;
v80.Position = UDim2.new(7.00000003E-2, 0, 0.20869565, 0);
v80.Size = UDim2.new(0, 100, 0, 17);
v80.Font = Enum.Font.Gotham;
v80.Text = 'Aim Part';
v80.TextColor3 = Color3.fromRGB(17, 223, 255);
v80.TextSize = 21;
v81.Name = 'Allways_Show';
v81.Parent = v57;
v81.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v81.BorderColor3 = Color3.fromRGB(255, 255, 255);
v81.Position = UDim2.new(0.234439835, 0, 0.13947990499991647, 0);
v81.Size = UDim2.new(0, 164, 0, 29);
v81.Font = Enum.Font.Gotham;
v81.Text = 'HEAD, torso';
v81.TextColor3 = Color3.fromRGB(255, 255, 255);
v81.TextSize = 16;
v82.Parent = v52;
v82.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v82.BackgroundTransparency = 1;
v82.BorderColor3 = Color3.fromRGB(0, 0, 0);
v82.BorderSizePixel = 0;
v82.Position = UDim2.new(5.69662312E-3, 0, 0.100655407, 0);
v82.Size = UDim2.new(0, 100, 0, 17);
v82.Font = Enum.Font.Gotham;
v82.Text = 'Aim Bot';
v82.TextColor3 = Color3.fromRGB(17, 223, 255);
v82.TextSize = 18;
v82.TextXAlignment = Enum.TextXAlignment.Left;
v83.Name = 'ESPSection';
v83.Parent = v52;
v83.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v83.BackgroundTransparency = 1;
v83.BorderColor3 = Color3.fromRGB(0, 0, 0);
v83.BorderSizePixel = 0;
v83.Position = UDim2.new(0.2698629799999708, 0, 0.160724282, 0);
v83.Size = UDim2.new(0, 100, 0, 334);
v84.Parent = v83;
v84.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v84.SortOrder = Enum.SortOrder.LayoutOrder;
v84.Padding = UDim.new(0, 5);
v85.Name = 'BBE';
v85.Parent = v83;
v85.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v85.BorderColor3 = Color3.fromRGB(255, 255, 255);
v85.Position = UDim2.new(0.2344398350001029, 0, 0.139479905, 0);
v85.Size = UDim2.new(0, 164, 0, 29);
v85.Font = Enum.Font.Gotham;
v85.Text = 'Box';
v85.TextColor3 = Color3.fromRGB(255, 255, 255);
v85.TextSize = 16;
v87.Name = 'BBN';
v87.Parent = v83;
v87.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v87.BorderColor3 = Color3.fromRGB(255, 255, 255);
v87.Position = UDim2.new(0.234439835, 0, 0.13947990499991647, 0);
v87.Size = UDim2.new(0, 164, 0, 29);
v87.Font = Enum.Font.Gotham;
v87.Text = 'Name';
v87.TextColor3 = Color3.fromRGB(255, 255, 255);
v87.TextSize = 16;
v88.Name = 'BBD';
v88.Parent = v83;
v88.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v88.BorderColor3 = Color3.fromRGB(255, 255, 255);
v88.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v88.Size = UDim2.new(0, 164, 0, 29);
v88.Font = Enum.Font.Gotham;
v88.Text = 'Distance';
v88.TextColor3 = Color3.fromRGB(255, 255, 255);
v88.TextSize = 16;
v89.Name = 'BBH';
v89.Parent = v83;
v89.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v89.BorderColor3 = Color3.fromRGB(255, 255, 255);
v89.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v89.Size = UDim2.new(0, 164, 0, 29);
v89.Font = Enum.Font.Gotham;
v89.Text = 'Health';
v89.TextColor3 = Color3.fromRGB(255, 255, 255);
v89.TextSize = 16;
v86.Name = 'BBE';
v86.Parent = v83;
v86.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v86.BorderColor3 = Color3.fromRGB(255, 255, 255);
v86.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v86.Size = UDim2.new(0, 164, 0, 29);
v86.Font = Enum.Font.Gotham;
v86.Text = 'Team Check';
v86.TextColor3 = Color3.fromRGB(255, 255, 255);
v86.TextSize = 16;
v90.Parent = v83;
v90.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v90.BackgroundTransparency = 1;
v90.BorderColor3 = Color3.fromRGB(0, 0, 0);
v90.BorderSizePixel = 0;
v90.Position = UDim2.new(7.00000003E-2, 0, 0.20869565, 0);
v90.Size = UDim2.new(0, 100, 0, 17);
v90.Font = Enum.Font.Gotham;
v90.Text = 'Health Type';
v90.TextColor3 = Color3.fromRGB(17, 223, 255);
v90.TextSize = 21;
v91.Name = 'BBHT';
v91.Parent = v83;
v91.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v91.BorderColor3 = Color3.fromRGB(255, 255, 255);
v91.Position = UDim2.new(0.234439835, 0, 0.13947990500003016, 0);
v91.Size = UDim2.new(0, 164, 0, 29);
v91.Font = Enum.Font.Gotham;
v91.Text = 'BAR, text, both';
v91.TextColor3 = Color3.fromRGB(255, 255, 255);
v91.TextSize = 16;
v92.Parent = v83;
v92.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v92.BackgroundTransparency = 1;
v92.BorderColor3 = Color3.fromRGB(0, 0, 0);
v92.BorderSizePixel = 0;
v92.Position = UDim2.new(7.00000003E-2, 0, 0.20869565, 0);
v92.Size = UDim2.new(0, 100, 0, 17);
v92.Font = Enum.Font.Gotham;
v92.Text = 'Box Color';
v92.TextColor3 = Color3.fromRGB(17, 223, 255);
v92.TextSize = 21;
v93.Parent = v83;
v93.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v93.BackgroundTransparency = 1;
v93.BorderColor3 = Color3.fromRGB(0, 0, 0);
v93.BorderSizePixel = 0;
v93.Position = UDim2.new(7.00000003E-2, 0, 0.20869565, 0);
v93.Size = UDim2.new(0, 100, 0, 17);
v93.Font = Enum.Font.Gotham;
v93.Text = 'R,G,B';
v93.TextColor3 = Color3.fromRGB(17, 223, 255);
v93.TextSize = 21;
v94.Parent = v83;
v94.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v94.BorderColor3 = Color3.fromRGB(0, 0, 0);
v94.BorderSizePixel = 0;
v94.Position = UDim2.new(9.09090936E-2, 0, 0.600000739, 0);
v94.Size = UDim2.new(0, 100, 0, 30);
v95.Parent = v94;
v95.FillDirection = Enum.FillDirection.Horizontal;
v95.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v95.SortOrder = Enum.SortOrder.LayoutOrder;
v95.VerticalAlignment = Enum.VerticalAlignment.Center;
v95.Padding = UDim.new(0, 5);
v96.Name = 'Box_R';
v96.Parent = v94;
v96.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v96.BorderColor3 = Color3.fromRGB(255, 255, 255);
v96.Size = UDim2.new(0, 75, 0, 24);
v96.ClearTextOnFocus = false;
v96.Font = Enum.Font.Gotham;
v96.PlaceholderText = '255 - 0';
v96.Text = '75';
v96.TextColor3 = Color3.fromRGB(255, 255, 255);
v96.TextSize = 14;
v97.Name = 'Box_G';
v97.Parent = v94;
v97.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v97.BorderColor3 = Color3.fromRGB(255, 255, 255);
v97.Size = UDim2.new(0, 75, 0, 24);
v97.ClearTextOnFocus = false;
v97.Font = Enum.Font.Gotham;
v97.PlaceholderText = '255 - 0';
v97.Text = "0";
v97.TextColor3 = Color3.fromRGB(255, 255, 255);
v97.TextSize = 14;
v98.Name = 'Box_B';
v98.Parent = v94;
v98.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v98.BorderColor3 = Color3.fromRGB(255, 255, 255);
v98.Size = UDim2.new(0, 75, 0, 24);
v98.ClearTextOnFocus = false;
v98.Font = Enum.Font.Gotham;
v98.PlaceholderText = '255 - 0';
v98.Text = '10';
v98.TextColor3 = Color3.fromRGB(255, 255, 255);
v98.TextSize = 14;
v99.Parent = v52;
v99.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v99.BackgroundTransparency = 1;
v99.BorderColor3 = Color3.fromRGB(0, 0, 0);
v99.BorderSizePixel = 0;
v99.Position = UDim2.new(0.215919182, 0, 0.100655407, 0);
v99.Size = UDim2.new(0, 100, 0, 17);
v99.Font = Enum.Font.Gotham;
v99.Text = 'ESP';
v99.TextColor3 = Color3.fromRGB(17, 223, 255);
v99.TextSize = 18;
v99.TextXAlignment = Enum.TextXAlignment.Left;
v100.Name = 'ESPSection';
v100.Parent = v52;
v100.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v100.BackgroundTransparency = 1;
v100.BorderColor3 = Color3.fromRGB(0, 0, 0);
v100.BorderSizePixel = 0;
v100.Position = UDim2.new(0.475963563, 0, 0.16072428200004651, 0);
v100.Size = UDim2.new(0, 100, 0, 334);
v101.Parent = v100;
v101.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v101.SortOrder = Enum.SortOrder.LayoutOrder;
v101.Padding = UDim.new(0, 5);
v102.Name = 'OE';
v102.Parent = v100;
v102.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v102.BorderColor3 = Color3.fromRGB(255, 255, 255);
v102.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v102.Size = UDim2.new(0, 164, 0, 29);
v102.Font = Enum.Font.Gotham;
v102.Text = 'Outlines';
v102.TextColor3 = Color3.fromRGB(255, 255, 255);
v102.TextSize = 16;
v103.Name = 'OTC';
v103.Parent = v100;
v103.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v103.BorderColor3 = Color3.fromRGB(255, 255, 255);
v103.Position = UDim2.new(0.2344398350001029, 0, 0.139479905, 0);
v103.Size = UDim2.new(0, 164, 0, 29);
v103.Font = Enum.Font.Gotham;
v103.Text = 'Team Check';
v103.TextColor3 = Color3.fromRGB(255, 255, 255);
v103.TextSize = 16;
v104.Parent = v100;
v104.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v104.BackgroundTransparency = 0.7;
v104.BorderColor3 = Color3.fromRGB(0, 0, 0);
v104.BorderSizePixel = 0;
v104.Position = UDim2.new(- 0.550000012, 0, 0.739130437, 0);
v104.Size = UDim2.new(0, 230, 0, 50);
v105.Name = 'Slider1';
v105.Parent = v104;
v105.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v105.BorderColor3 = Color3.fromRGB(0, 0, 0);
v105.BorderSizePixel = 0;
v105.Position = UDim2.new(6.29399866E-2, 0, 0.4512072800000624, 0);
v105.Size = UDim2.new(0, 200, 0, 15);
v106.Parent = v105;
v107.Name = 'Fill3';
v107.Parent = v105;
v107.BackgroundColor3 = Color3.fromRGB(80, 80, 80);
v107.BackgroundTransparency = 0.20000000000004547;
v107.BorderColor3 = Color3.fromRGB(0, 0, 0);
v107.BorderSizePixel = 0;
v107.Size = UDim2.new(0, 100, 0, 15);
v108.Parent = v107;
v109.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.42999999999995, Color3.fromRGB(18, 218, 249)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(52, 52, 52))
});
v109.Parent = v107;
v110.Name = 'TriggerOutTans';
v110.Parent = v105;
v110.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v110.BackgroundTransparency = 1;
v110.BorderColor3 = Color3.fromRGB(0, 0, 0);
v110.BorderSizePixel = 0;
v110.Size = UDim2.new(1, 0, 1, 0);
v110.Font = Enum.Font.SourceSans;
v110.Text = "";
v110.TextColor3 = Color3.fromRGB(0, 0, 0);
v110.TextSize = 14;
v111.Name = 'Numbers';
v111.Parent = v104;
v111.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v111.BackgroundTransparency = 1;
v111.BorderColor3 = Color3.fromRGB(255, 255, 255);
v111.BorderSizePixel = 0;
v111.Position = UDim2.new(0.79130435, 0, 0, 0);
v111.Size = UDim2.new(0, 50, 0, 23);
v111.Font = Enum.Font.Gotham;
v111.Text = '50';
v111.TextColor3 = Color3.fromRGB(255, 255, 255);
v111.TextSize = 14;
v112.Parent = v104;
v112.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v112.BackgroundTransparency = 1;
v112.BorderColor3 = Color3.fromRGB(255, 255, 255);
v112.BorderSizePixel = 0;
v112.Position = UDim2.new(0.0608695634, 0, 0, 0);
v112.Size = UDim2.new(0, 125, 0, 23);
v112.Font = Enum.Font.Gotham;
v112.Text = 'Outlines Transparency';
v112.TextColor3 = Color3.fromRGB(255, 255, 255);
v112.TextSize = 14;
v113.Parent = v100;
v113.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v113.BackgroundTransparency = 0.7;
v113.BorderColor3 = Color3.fromRGB(0, 0, 0);
v113.BorderSizePixel = 0;
v113.Position = UDim2.new(- 0.550000012, 0, 0.739130437, 0);
v113.Size = UDim2.new(0, 230, 0, 50);
v114.Name = 'Slider2';
v114.Parent = v113;
v114.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v114.BorderColor3 = Color3.fromRGB(0, 0, 0);
v114.BorderSizePixel = 0;
v114.Position = UDim2.new(6.293998659998579E-2, 0, 0.45120728000000554, 0);
v114.Size = UDim2.new(0, 200, 0, 15);
v115.Parent = v114;
v116.Name = 'Fill4';
v116.Parent = v114;
v116.BackgroundColor3 = Color3.fromRGB(80, 80, 80);
v116.BackgroundTransparency = 0.2;
v116.BorderColor3 = Color3.fromRGB(0, 0, 0);
v116.BorderSizePixel = 0;
v116.Size = UDim2.new(0, 100, 0, 15);
v117.Parent = v116;
v118.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)),
    ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(52, 52, 52))
});
v118.Parent = v116;
v119.Name = 'TriggerFill';
v119.Parent = v114;
v119.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v119.BackgroundTransparency = 1;
v119.BorderColor3 = Color3.fromRGB(0, 0, 0);
v119.BorderSizePixel = 0;
v119.Size = UDim2.new(1, 0, 1, 0);
v119.Font = Enum.Font.SourceSans;
v119.Text = "";
v119.TextColor3 = Color3.fromRGB(0, 0, 0);
v119.TextSize = 14;
v120.Name = 'Numbers';
v120.Parent = v113;
v120.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v120.BackgroundTransparency = 1;
v120.BorderColor3 = Color3.fromRGB(255, 255, 255);
v120.BorderSizePixel = 0;
v120.Position = UDim2.new(0.79130435, 0, 0, 0);
v120.Size = UDim2.new(0, 50, 0, 23);
v120.Font = Enum.Font.Gotham;
v120.Text = '50';
v120.TextColor3 = Color3.fromRGB(255, 255, 255);
v120.TextSize = 14;
v121.Parent = v113;
v121.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v121.BackgroundTransparency = 1;
v121.BorderColor3 = Color3.fromRGB(255, 255, 255);
v121.BorderSizePixel = 0;
v121.Position = UDim2.new(0.104347825, 0, 0, 0);
v121.Size = UDim2.new(0, 133, 0, 23);
v121.Font = Enum.Font.Gotham;
v121.Text = 'Fill Outlines Transparency';
v121.TextColor3 = Color3.fromRGB(255, 255, 255);
v121.TextSize = 14;
v122.Parent = v100;
v122.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v122.BackgroundTransparency = 1;
v122.BorderColor3 = Color3.fromRGB(0, 0, 0);
v122.BorderSizePixel = 0;
v122.Position = UDim2.new(7.00000003E-2, 0, 0.20869565000000279, 0);
v122.Size = UDim2.new(0, 100, 0, 17);
v122.Font = Enum.Font.Gotham;
v122.Text = 'Outlines Recommend';
v122.TextColor3 = Color3.fromRGB(17, 223, 255);
v122.TextSize = 21;
v123.Parent = v100;
v123.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v123.BorderColor3 = Color3.fromRGB(0, 0, 0);
v123.BorderSizePixel = 0;
v123.Position = UDim2.new(9.090909359997568E-2, 0, 0.600000739, 0);
v123.Size = UDim2.new(0, 100, 0, 30);
v124.Parent = v123;
v124.FillDirection = Enum.FillDirection.Horizontal;
v124.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v124.SortOrder = Enum.SortOrder.LayoutOrder;
v124.VerticalAlignment = Enum.VerticalAlignment.Center;
v124.Padding = UDim.new(0, 5);
v125.Name = 'Outlines_R';
v125.Parent = v123;
v125.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v125.BorderColor3 = Color3.fromRGB(255, 255, 255);
v125.Size = UDim2.new(0, 75, 0, 24);
v125.ClearTextOnFocus = false;
v125.Font = Enum.Font.Gotham;
v125.PlaceholderText = '255 - 0';
v125.Text = '255';
v125.TextColor3 = Color3.fromRGB(255, 255, 255);
v125.TextSize = 14;
v126.Name = 'Outlines_G';
v126.Parent = v123;
v126.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v126.BorderColor3 = Color3.fromRGB(255, 255, 255);
v126.Size = UDim2.new(0, 75, 0, 24);
v126.ClearTextOnFocus = false;
v126.Font = Enum.Font.Gotham;
v126.PlaceholderText = '255 - 0';
v126.Text = '255';
v126.TextColor3 = Color3.fromRGB(255, 255, 255);
v126.TextSize = 14;
v127.Name = 'Outlines_B';
v127.Parent = v123;
v127.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v127.BorderColor3 = Color3.fromRGB(255, 255, 255);
v127.Size = UDim2.new(0, 75, 0, 24);
v127.ClearTextOnFocus = false;
v127.Font = Enum.Font.Gotham;
v127.PlaceholderText = '255 - 0';
v127.Text = '255';
v127.TextColor3 = Color3.fromRGB(255, 255, 255);
v127.TextSize = 14;
v128.Parent = v100;
v128.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v128.BackgroundTransparency = 1;
v128.BorderColor3 = Color3.fromRGB(0, 0, 0);
v128.BorderSizePixel = 0;
v128.Position = UDim2.new(7.00000003E-2, 0, 0.20869564999998147, 0);
v128.Size = UDim2.new(0, 100, 0, 17);
v128.Font = Enum.Font.Gotham;
v128.Text = 'Fill Outlines';
v128.TextColor3 = Color3.fromRGB(17, 223, 255);
v128.TextSize = 21;
v129.Parent = v100;
v129.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v129.BorderColor3 = Color3.fromRGB(0, 0, 0);
v129.BorderSizePixel = 0;
v129.Position = UDim2.new(9.090909359997568E-2, 0, 0.600000739, 0);
v129.Size = UDim2.new(0, 100, 0, 30);
v130.Parent = v129;
v130.FillDirection = Enum.FillDirection.Horizontal;
v130.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v130.SortOrder = Enum.SortOrder.LayoutOrder;
v130.VerticalAlignment = Enum.VerticalAlignment.Center;
v130.Padding = UDim.new(0, 5);
v131.Name = 'FillOutlines_R';
v131.Parent = v129;
v131.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v131.BorderColor3 = Color3.fromRGB(255, 255, 255);
v131.Size = UDim2.new(0, 75, 0, 24);
v131.ClearTextOnFocus = false;
v131.Font = Enum.Font.Gotham;
v131.PlaceholderText = '255 - 0';
v131.Text = '255';
v131.TextColor3 = Color3.fromRGB(255, 255, 255);
v131.TextSize = 14;
v132.Name = 'FillOutlines_G';
v132.Parent = v129;
v132.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v132.BorderColor3 = Color3.fromRGB(255, 255, 255);
v132.Size = UDim2.new(0, 75, 0, 24);
v132.ClearTextOnFocus = false;
v132.Font = Enum.Font.Gotham;
v132.PlaceholderText = '255 - 0';
v132.Text = '255';
v132.TextColor3 = Color3.fromRGB(255, 255, 255);
v132.TextSize = 14;
v133.Name = 'FillOutlines_B';
v133.Parent = v129;
v133.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v133.BorderColor3 = Color3.fromRGB(255, 255, 255);
v133.Size = UDim2.new(0, 75, 0, 24);
v133.ClearTextOnFocus = false;
v133.Font = Enum.Font.Gotham;
v133.PlaceholderText = '255 - 0';
v133.Text = '255';
v133.TextColor3 = Color3.fromRGB(255, 255, 255);
v133.TextSize = 14;
v134.Name = 'Tracers section';
v134.Parent = v52;
v134.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v134.BackgroundTransparency = 1;
v134.BorderColor3 = Color3.fromRGB(0, 0, 0);
v134.BorderSizePixel = 0;
v134.Position = UDim2.new(0.682779849, 0, 0.158000082, 0);
v134.Size = UDim2.new(0, 100, 0, 334);
v135.Parent = v134;
v135.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v135.SortOrder = Enum.SortOrder.LayoutOrder;
v135.Padding = UDim.new(0, 5);
v136.Name = 'TE';
v136.Parent = v134;
v136.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v136.BorderColor3 = Color3.fromRGB(255, 255, 255);
v136.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v136.Size = UDim2.new(0, 164, 0, 29);
v136.Font = Enum.Font.Gotham;
v136.Text = 'Tracers';
v136.TextColor3 = Color3.fromRGB(255, 255, 255);
v136.TextSize = 16;
v137.Name = 'TTC';
v137.Parent = v134;
v137.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v137.BorderColor3 = Color3.fromRGB(255, 255, 255);
v137.Position = UDim2.new(0.234439835, 0, 0.13947990500003016, 0);
v137.Size = UDim2.new(0, 164, 0, 29);
v137.Font = Enum.Font.Gotham;
v137.Text = 'Team Check';
v137.TextColor3 = Color3.fromRGB(255, 255, 255);
v137.TextSize = 16;
v138.Name = 'TTCOlor';
v138.Parent = v134;
v138.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v138.BorderColor3 = Color3.fromRGB(255, 255, 255);
v138.Position = UDim2.new(0.234439835, 0, 0.139479905, 0);
v138.Size = UDim2.new(0, 164, 0, 29);
v138.Font = Enum.Font.Gotham;
v138.Text = 'Team Color';
v138.TextColor3 = Color3.fromRGB(255, 255, 255);
v138.TextSize = 16;
v139.Parent = v134;
v139.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v139.BorderColor3 = Color3.fromRGB(0, 0, 0);
v139.BorderSizePixel = 0;
v139.Position = UDim2.new(9.090909359997568E-2, 0, 0.600000739, 0);
v139.Size = UDim2.new(0, 100, 0, 40);
v140.Parent = v139;
v140.FillDirection = Enum.FillDirection.Horizontal;
v140.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v140.SortOrder = Enum.SortOrder.LayoutOrder;
v140.VerticalAlignment = Enum.VerticalAlignment.Center;
v140.Padding = UDim.new(0, 5);
v141.Name = 'Tracers_R';
v141.Parent = v139;
v141.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v141.BorderColor3 = Color3.fromRGB(255, 255, 255);
v141.Size = UDim2.new(0, 75, 0, 24);
v141.ClearTextOnFocus = false;
v141.Font = Enum.Font.Gotham;
v141.PlaceholderText = '255 - 0';
v141.Text = '75';
v141.TextColor3 = Color3.fromRGB(255, 255, 255);
v141.TextSize = 14;
v142.Name = 'Tracers_G';
v142.Parent = v139;
v142.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v142.BorderColor3 = Color3.fromRGB(255, 255, 255);
v142.Size = UDim2.new(0, 75, 0, 24);
v142.ClearTextOnFocus = false;
v142.Font = Enum.Font.Gotham;
v142.PlaceholderText = '255 - 0';
v142.Text = "0";
v142.TextColor3 = Color3.fromRGB(255, 255, 255);
v142.TextSize = 14;
v143.Name = 'Tracers_B';
v143.Parent = v139;
v143.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
v143.BorderColor3 = Color3.fromRGB(255, 255, 255);
v143.Size = UDim2.new(0, 75, 0, 24);
v143.ClearTextOnFocus = false;
v143.Font = Enum.Font.Gotham;
v143.PlaceholderText = '255 - 0';
v143.Text = '10';
v143.TextColor3 = Color3.fromRGB(255, 255, 255);
v143.TextSize = 14;
v144.Name = 'Unknown';
v144.Parent = v52;
v144.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v144.BackgroundTransparency = 1;
v144.BorderColor3 = Color3.fromRGB(0, 0, 0);
v144.BorderSizePixel = 0;
v144.Position = UDim2.new(0.882285178, 0, 0.158000082, 0);
v144.Size = UDim2.new(0, 100, 0, 334);
v145.Parent = v144;
v145.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v145.SortOrder = Enum.SortOrder.LayoutOrder;
v145.Padding = UDim.new(0, 5);
v146.Parent = v144;
v146.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v146.BackgroundTransparency = 1;
v146.BorderColor3 = Color3.fromRGB(0, 0, 0);
v146.BorderSizePixel = 0;
v146.Position = UDim2.new(7.000000030006959E-2, 0, 0.20869565, 0);
v146.Size = UDim2.new(0, 100, 0, 17);
v146.Font = Enum.Font.Gotham;
v146.Text = 'More Options';
v146.TextColor3 = Color3.fromRGB(17, 223, 255);
v146.TextSize = 21;
v147.Parent = v144;
v147.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v147.BackgroundTransparency = 1;
v147.BorderColor3 = Color3.fromRGB(0, 0, 0);
v147.BorderSizePixel = 0;
v147.Position = UDim2.new(0.215919182, 0, 0.100655407, 0);
v147.Size = UDim2.new(0, 100, 0, 17);
v147.Font = Enum.Font.Gotham;
v147.Text = 'Later';
v147.TextColor3 = Color3.fromRGB(17, 223, 255);
v147.TextSize = 18;
v148.Name = 'Open';
v148.Parent = v51;
v148.BackgroundColor3 = Color3.fromRGB(51, 51, 51);
v148.BorderColor3 = Color3.fromRGB(255, 255, 255);
v148.Position = UDim2.new(0.5, 0, 1.9999999600031515E-2, 0);
v148.Size = UDim2.new(0, 150, 0, 50);
v148.ZIndex = 10;
v148.Visible = v13.GUi.OpenNCloseButton;
v148.Draggable = true;
v148.Active = true;
v149.Parent = v148;
v149.BackgroundColor3 = Color3.fromRGB(49, 49, 49);
v149.BorderColor3 = Color3.fromRGB(255, 255, 255);
v149.Position = UDim2.new(0, 0, 0.319999933, 0);
v149.Size = UDim2.new(0, 150, 0, 34);
v149.Font = Enum.Font.Gotham;
v149.Text = 'open / Close';
v149.TextColor3 = Color3.fromRGB(255, 255, 255);
v149.TextSize = 14;
v8:GetMouse().KeyDown:Connect(function(v1027)
    local v1028 = 0;
    while true do
        if ((0) == v1028) then
            if ((v1027 == v13.GUi.Keybind) and v13.GUi.KeybindEnable) then
                if (v52.Visible == true) then
                    v52.Visible = false;
                else
                    v52.Visible = true;
                end
            end
            if ((v1027 == v13.Aimbot.Keybind) and v13.Aimbot.Enabled) then
                v13.Aimbot.IsAimKeyDown = true;
            end
            break
        end
    end
end);
v8:GetMouse().KeyUp:Connect(function(v1029)
    if ((v1029 == v13.Aimbot.Keybind) and v13.Aimbot.Enabled) then
        v13.Aimbot.IsAimKeyDown = false;
    end
end);
v8:GetMouse().Button1Down:Connect(function()
    if ((v13.Aimbot.Keybind == 'MouseButton1') and v13.Aimbot.Enabled) then
        v13.Aimbot.IsAimKeyDown = true;
    end
end);
v8:GetMouse().Button1Up:Connect(function()
    if ((v13.Aimbot.Keybind == 'MouseButton1') and v13.Aimbot.Enabled) then
        v13.Aimbot.IsAimKeyDown = false;
    end
end);
v8:GetMouse().Button2Down:Connect(function()
    if ((v13.Aimbot.Keybind == 'MouseButton2') and v13.Aimbot.Enabled) then
        v13.Aimbot.IsAimKeyDown = true;
    end
end);
v8:GetMouse().Button2Up:Connect(function()
    if ((v13.Aimbot.Keybind == 'MouseButton2') and v13.Aimbot.Enabled) then
        v13.Aimbot.IsAimKeyDown = false;
    end
end);
v59.MouseButton1Click:Connect(function()
    if (v59.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1097 = 0;
        local v1098;
        while true do
            if (v1097 == (0)) then
                v1098 = 0;
                while true do
                    if (v1098 == (0)) then
                        v59.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                        v13.Aimbot.Enabled = true;
                        break
                    end
                end
                break
            end
        end
    else
        local v1099 = 0;
        local v1100;
        while true do
            if (v1099 == (0)) then
                v1100 = 0;
                while true do
                    if (v1100 == (0)) then
                        v59.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                        v13.Aimbot.Enabled = false;
                        break
                    end
                end
                break
            end
        end
    end
end);
v62.MouseButton1Click:Connect(function()
    if (v62.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v62.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.Aimbot.ShowFov = true;
    else
        local v1103 = 0;
        while true do
            if (v1103 == (0)) then
                v62.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.Aimbot.ShowFov = false;
                break
            end
        end
    end
end);
v61.MouseButton1Click:Connect(function()
    if (v61.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1104 = 0;
        local v1105;
        while true do
            if (v1104 == (0)) then
                v1105 = 0;
                while true do
                    if (v1105 == (0)) then
                        v61.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                        v13.Aimbot.TeamCheck = true;
                        break
                    end
                end
                break
            end
        end
    else
        v61.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
        v13.Aimbot.TeamCheck = false;
    end
end);
v60.MouseButton1Click:Connect(function()
    if (v60.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1108 = 0;
        while true do
            if (v1108 == (0)) then
                v60.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                v13.Aimbot.WallCheck = true;
                break
            end
        end
    else
        v60.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
        v13.Aimbot.WallCheck = false;
    end
end);
v81.MouseButton1Click:Connect(function()
    if (v13.Aimbot.AimPart == 'Head') then
        v81.Text = 'head, TORSO';
        v13.Aimbot.AimPart = 'HumanoidRootPart';
    else
        local v1113 = 0;
        local v1114;
        while true do
            if (v1113 == (0)) then
                v1114 = 0;
                while true do
                    if (v1114 == (0)) then
                        v81.Text = 'HEAD, torso';
                        v13.Aimbot.AimPart = 'Head';
                        break
                    end
                end
                break
            end
        end
    end
end);
v88.MouseButton1Click:Connect(function()
    if (v88.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v88.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.Box.Distance = true;
    else
        v88.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
        v13.ESP.Box.Distance = false;
    end
end);
v85.MouseButton1Click:Connect(function()
    if (v85.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v85.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.Box.Box = true;
    else
        local v1121 = 0;
        local v1122;
        while true do
            if (v1121 == (0)) then
                v1122 = 0;
                while true do
                    if (v1122 == (0)) then
                        v85.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                        v13.ESP.Box.Box = false;
                        break
                    end
                end
                break
            end
        end
    end
end);
v89.MouseButton1Click:Connect(function()
    if (v89.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v89.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.Box.Health = true;
    else
        local v1125 = 0;
        while true do
            if ((0) == v1125) then
                v89.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.ESP.Box.Health = false;
                break
            end
        end
    end
end);
v91.MouseButton1Click:Connect(function()
    if (v13.ESP.Box.HealthType == 'Bar') then
        local v1126 = 0;
        while true do
            if (v1126 == (0)) then
                v91.Text = 'bar, TEXT, both';
                v13.ESP.Box.HealthType = 'Text';
                break
            end
        end
    elseif (v13.ESP.Box.HealthType == 'Text') then
        local v1255 = 0;
        local v1256;
        while true do
            if ((0) == v1255) then
                v1256 = 0;
                while true do
                    if (v1256 == (0)) then
                        v91.Text = 'bar, text, BOTH';
                        v13.ESP.Box.HealthType = 'Both';
                        break
                    end
                end
                break
            end
        end
    elseif (v13.ESP.Box.HealthType == 'Both') then
        local v1304 = 0;
        while true do
            if (v1304 == (0)) then
                v91.Text = 'BAR, text, both';
                v13.ESP.Box.HealthType = 'Bar';
                break
            end
        end
    end
end);
v87.MouseButton1Click:Connect(function()
    if (v87.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v87.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.Box.Name = true;
    else
        local v1129 = 0;
        while true do
            if (v1129 == 0) then
                v87.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.ESP.Box.Name = false;
                break
            end
        end
    end
end);
v86.MouseButton1Click:Connect(function()
    if (v86.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1130 = 0;
        while true do
            if (v1130 == (0)) then
                v86.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                v13.ESP.Box.TeamCheck = true;
                break
            end
        end
    else
        v86.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
        v13.ESP.Box.TeamCheck = false;
    end
end);
v102.MouseButton1Click:Connect(function()
    if (v102.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v102.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.OutLines.Enabled = true;
    else
        local v1135 = 0;
        while true do
            if (v1135 == 0) then
                v102.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.ESP.OutLines.Enabled = false;
                break
            end
        end
    end
end);
v103.MouseButton1Click:Connect(function()
    if (v103.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v103.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.OutLines.TeamCheck = true;
    else
        local v1138 = 0;
        while true do
            if (v1138 == (0)) then
                v103.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.ESP.OutLines.TeamCheck = false;
                break
            end
        end
    end
end);
v136.MouseButton1Click:Connect(function()
    if (v136.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1139 = 0;
        while true do
            if (0 == v1139) then
                v136.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                v13.ESP.Tracers.Enabled = true;
                break
            end
        end
    else
        local v1140 = 0;
        while true do
            if (v1140 == (0)) then
                v136.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                v13.ESP.Tracers.Enabled = false;
                break
            end
        end
    end
end);
v137.MouseButton1Click:Connect(function()
    if (v137.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        v137.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
        v13.ESP.Tracers.TeamCheck = true;
    else
        local v1143 = 0;
        local v1144;
        while true do
            if (v1143 == (0)) then
                v1144 = 0;
                while true do
                    if (v1144 == (0)) then
                        v137.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                        v13.ESP.Tracers.TeamCheck = false;
                        break
                    end
                end
                break
            end
        end
    end
end);
v138.MouseButton1Click:Connect(function()
    if (v138.BackgroundColor3 == Color3.fromRGB(52, 52, 52)) then
        local v1145 = 0;
        while true do
            if (v1145 == (0)) then
                v138.BackgroundColor3 = Color3.fromRGB(2, 54, 8);
                v13.ESP.Tracers.TeamColor = true;
                break
            end
        end
    else
        local v1146 = 0;
        local v1147;
        while true do
            if (v1146 == 0) then
                v1147 = 0;
                while true do
                    if (v1147 == (0)) then
                        v138.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
                        v13.ESP.Tracers.TeamColor = false;
                        break
                    end
                end
                break
            end
        end
    end
end);
v149.MouseButton1Click:Connect(function()
    if (v52.Visible == true) then
        v52.Visible = false;
    else
        v52.Visible = true;
    end
end);
local function v979()
    local v1030 = 0;
    local v1031;
    local v1032;
    local v1033;
    local v1034;
    local v1035;
    local v1036;
    local v1037;
    local v1038;
    local v1039;
    local v1040;
    local v1041;
    local v1042;
    while true do
        if (v1030 == (1)) then
            v1035 = v69;
            v1036 = 7;
            v1037 = 0;
            v1033.Size = UDim2.fromScale(v13.Aimbot.Fov, 1);
            v1030 = 2;
        end
        if (v1030 == (3)) then
            function v1040()
                local v1257 = 0;
                local v1258;
                while true do
                    if (v1257 == (0)) then
                        v1258 = math.clamp(((Vector2.new(v1031.X, v1031.Y) - v1032.AbsolutePosition) / v1032.AbsoluteSize).X, 0, 1);
                        if (v13.Aimbot.Fov ~= v1258) then
                            v1038:Create(v1033, v1039, {
                                Size = UDim2.fromScale(v1258, 1)
                            }):Play();
                        end
                        v1257 = 1;
                    end
                    if ((1) == v1257) then
                        v13.Aimbot.Fov = (v1037 + (v1258 * (v1036 - v1037))) * (100) ;
                        v1035.Text = tostring(math.round(v13.Aimbot.Fov * (100)));
                        break
                    end
                end
            end
            v1033:GetPropertyChangedSignal('Size'):Connect(function()
                v1035.Text = tostring(math.round(v13.Aimbot.Fov * (100)));
            end);
            v1041 = false;
            v1042 = nil;
            v1030 = 4;
        end
        if (v1030 == (4)) then
            function v1042()
                local v1260 = 0;
                while true do
                    if (v1260 == 0) then
                        v1041 = true;
                        while v1041 do
                            local v1360 = 0;
                            local v1361;
                            while true do
                                if (v1360 == 0) then
                                    v1361 = 0;
                                    while true do
                                        if (v1361 == (0)) then
                                            v1040();
                                            task.wait();
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
            v1034.MouseButton1Down:Connect(v1042);
            game:GetService('UserInputService').InputEnded:Connect(function(v1261)
                if ((v1261.UserInputType == Enum.UserInputType.MouseButton1) or (v1261.UserInputType == Enum.UserInputType.Touch)) then
                    v1041 = false;
                end
            end);
            break
        end
        if (v1030 == (2)) then
            v1035.Text = tostring(math.round(v13.Aimbot.Fov * (100)));
            v1038 = game:GetService('TweenService');
            v1039 = TweenInfo.new(0.25, Enum.EasingStyle.Exponential);
            v1040 = nil;
            v1030 = 3;
        end
        if (v1030 == (0)) then
            v1031 = game.Players.LocalPlayer:GetMouse();
            v1032 = v64;
            v1033 = v65;
            v1034 = v68;
            v1030 = 1;
        end
    end
end
coroutine.wrap(v979)();
local function v980()
    local v1043 = 0;
    local v1044;
    local v1045;
    local v1046;
    local v1047;
    local v1048;
    local v1049;
    local v1050;
    local v1051;
    local v1052;
    local v1053;
    local v1054;
    local v1055;
    while true do
        if (v1043 == (3)) then
            local v1223 = 0;
            while true do
                if (v1223 == (0)) then
                    v1051 = game:GetService('TweenService');
                    v1052 = TweenInfo.new(0.25, Enum.EasingStyle.Exponential);
                    v1223 = 1;
                end
                if (v1223 == (1)) then
                    v1053 = nil;
                    v1043 = 4;
                    break
                end
            end
        end
        if (v1043 == (2)) then
            v1050 = 0;
            v1046.Size = UDim2.fromScale(v13.Aimbot.Smoothing, 1);
            v1048.Text = tostring(math.round(v13.Aimbot.Smoothing * 100));
            v1043 = 3;
        end
        if (v1043 == 1) then
            local v1226 = 0;
            while true do
                if (v1226 == (0)) then
                    v1047 = v77;
                    v1048 = v78;
                    v1226 = 1;
                end
                if (v1226 == (1)) then
                    v1049 = 3;
                    v1043 = 2;
                    break
                end
            end
        end
        if (v1043 == (0)) then
            v1044 = game.Players.LocalPlayer:GetMouse();
            v1045 = v72;
            v1046 = v74;
            v1043 = 1;
        end
        if ((5) == v1043) then
            local v1227 = 0;
            while true do
                if (v1227 == (1)) then
                    v1047.MouseButton1Down:Connect(v1055);
                    v1043 = 6;
                    break
                end
                if (v1227 == (0)) then
                    v1055 = nil;
                    function v1055()
                        v1054 = true;
                        while v1054 do
                            local v1362 = 0;
                            while true do
                                if (v1362 == 0) then
                                    v1053();
                                    task.wait();
                                    break
                                end
                            end
                        end
                    end
                    v1227 = 1;
                end
            end
        end
        if (v1043 == (4)) then
            function v1053()
                local v1262 = 0;
                local v1263;
                while true do
                    if (v1262 == (0)) then
                        local v1339 = 0;
                        while true do
                            if (v1339 == (0)) then
                                v1263 = math.clamp(((Vector2.new(v1044.X, v1044.Y) - v1045.AbsolutePosition) / v1045.AbsoluteSize).X, 0, 1);
                                if (v13.Aimbot.Smoothing ~= v1263) then
                                    v1051:Create(v1046, v1052, {
                                        Size = UDim2.fromScale(v1263, 1)
                                    }):Play();
                                end
                                v1339 = 1;
                            end
                            if (v1339 == (1)) then
                                v1262 = 1;
                                break
                            end
                        end
                    end
                    if (v1262 == (1)) then
                        v13.Aimbot.Smoothing = v1050 + (v1263 * (v1049 - v1050)) ;
                        v1048.Text = tostring(math.round(v13.Aimbot.Smoothing * (100)));
                        break
                    end
                end
            end
            v1046:GetPropertyChangedSignal('Size'):Connect(function()
                v1048.Text = tostring(math.round(v13.Aimbot.Smoothing * (100)));
            end);
            v1054 = false;
            v1043 = 5;
        end
        if (v1043 == (6)) then
            game:GetService('UserInputService').InputEnded:Connect(function(v1265)
                if ((v1265.UserInputType == Enum.UserInputType.MouseButton1) or (v1265.UserInputType == Enum.UserInputType.Touch)) then
                    v1054 = false;
                end
            end);
            break
        end
    end
end
coroutine.wrap(v980)();
local function v981()
    local v1056 = 0;
    local v1057;
    local v1058;
    local v1059;
    local v1060;
    local v1061;
    local v1062;
    local v1063;
    local v1064;
    local v1065;
    local v1066;
    local v1067;
    local v1068;
    while true do
        if (v1056 == (0)) then
            local v1228 = 0;
            while true do
                if (v1228 == (0)) then
                    v1057 = game.Players.LocalPlayer:GetMouse();
                    v1058 = v105;
                    v1228 = 1;
                end
                if (v1228 == (2)) then
                    v1056 = 1;
                    break
                end
                if (v1228 == (1)) then
                    v1059 = v107;
                    v1060 = v110;
                    v1228 = 2;
                end
            end
        end
        if ((3) == v1056) then
            function v1066()
                local v1266 = 0;
                local v1267;
                while true do
                    if (0 == v1266) then
                        v1267 = math.clamp(((Vector2.new(v1057.X, v1057.Y) - v1058.AbsolutePosition) / v1058.AbsoluteSize).X, 0, 1);
                        if (v13.ESP.OutLines.OutlineTrancparency ~= v1267) then
                            v1064:Create(v1059, v1065, {
                                Size = UDim2.fromScale(v1267, 1)
                            }):Play();
                        end
                        v1266 = 1;
                    end
                    if (v1266 == (1)) then
                        v13.ESP.OutLines.OutlineTrancparency = v1063 + (v1267 * (v1062 - v1063)) ;
                        v1061.Text = tostring(math.round(v13.ESP.OutLines.OutlineTrancparency * (100)));
                        break
                    end
                end
            end
            v1059:GetPropertyChangedSignal('Size'):Connect(function()
                v1061.Text = tostring(math.round(v13.ESP.OutLines.OutlineTrancparency * (100)));
            end);
            v1067 = false;
            v1068 = nil;
            v1056 = 4;
        end
        if (v1056 == (2)) then
            v1061.Text = tostring(math.round(v13.ESP.OutLines.OutlineTrancparency * (100)));
            v1064 = game:GetService('TweenService');
            v1065 = TweenInfo.new(0.25, Enum.EasingStyle.Exponential);
            v1066 = nil;
            v1056 = 3;
        end
        if ((4) == v1056) then
            function v1068()
                local v1269 = 0;
                while true do
                    if (v1269 == (0)) then
                        v1067 = true;
                        while v1067 do
                            local v1363 = 0;
                            while true do
                                if (v1363 == (0)) then
                                    v1066();
                                    task.wait();
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
            v1060.MouseButton1Down:Connect(v1068);
            game:GetService('UserInputService').InputEnded:Connect(function(v1270)
                if ((v1270.UserInputType == Enum.UserInputType.MouseButton1) or (v1270.UserInputType == Enum.UserInputType.Touch)) then
                    v1067 = false;
                end
            end);
            break
        end
        if (v1056 == (1)) then
            local v1230 = 0;
            while true do
                if (v1230 == (2)) then
                    v1056 = 2;
                    break
                end
                if (v1230 == (0)) then
                    v1061 = v111;
                    v1062 = 1;
                    v1230 = 1;
                end
                if (v1230 == (1)) then
                    v1063 = 0;
                    v1059.Size = UDim2.fromScale(v13.ESP.OutLines.OutlineTrancparency, 1);
                    v1230 = 2;
                end
            end
        end
    end
end
coroutine.wrap(v981)();
local function v982()
    local v1069 = 0;
    local v1070;
    local v1071;
    local v1072;
    local v1073;
    local v1074;
    local v1075;
    local v1076;
    local v1077;
    local v1078;
    local v1079;
    local v1080;
    local v1081;
    while true do
        if (v1069 == (0)) then
            v1070 = game.Players.LocalPlayer:GetMouse();
            v1071 = v114;
            v1072 = v116;
            v1073 = v119;
            v1069 = 1;
        end
        if (v1069 == (4)) then
            function v1081()
                v1080 = true;
                while v1080 do
                    local v1301 = 0;
                    while true do
                        if (v1301 == 0) then
                            v1079();
                            task.wait();
                            break
                        end
                    end
                end
            end
            v1073.MouseButton1Down:Connect(v1081);
            game:GetService('UserInputService').InputEnded:Connect(function(v1271)
                if ((v1271.UserInputType == Enum.UserInputType.MouseButton1) or (v1271.UserInputType == Enum.UserInputType.Touch)) then
                    v1080 = false;
                end
            end);
            break
        end
        if (v1069 == (3)) then
            function v1079()
                local v1272 = 0;
                local v1273;
                while true do
                    if (v1272 == (1)) then
                        v13.ESP.OutLines.FillTrancparenct = v1076 + (v1273 * (v1075 - v1076)) ;
                        v1074.Text = tostring(math.round(v13.ESP.OutLines.FillTrancparenct * (100)));
                        break
                    end
                    if (v1272 == (0)) then
                        v1273 = math.clamp(((Vector2.new(v1070.X, v1070.Y) - v1071.AbsolutePosition) / v1071.AbsoluteSize).X, 0, 1);
                        if (v13.ESP.OutLines.FillTrancparenct ~= v1273) then
                            v1077:Create(v1072, v1078, {
                                Size = UDim2.fromScale(v1273, 1)
                            }):Play();
                        end
                        v1272 = 1;
                    end
                end
            end
            v1072:GetPropertyChangedSignal('Size'):Connect(function()
                v1074.Text = tostring(math.round(v13.ESP.OutLines.FillTrancparenct * (100)));
            end);
            v1080 = false;
            v1081 = nil;
            v1069 = 4;
        end
        if (v1069 == (2)) then
            v1074.Text = tostring(math.round(v13.ESP.OutLines.FillTrancparenct * (100)));
            v1077 = game:GetService('TweenService');
            v1078 = TweenInfo.new(0.25, Enum.EasingStyle.Exponential);
            v1079 = nil;
            v1069 = 3;
        end
        if (v1069 == (1)) then
            v1074 = v120;
            v1075 = 1;
            v1076 = 0;
            v1072.Size = UDim2.fromScale(v13.ESP.OutLines.FillTrancparenct, 1);
            v1069 = 2;
        end
    end
end
coroutine.wrap(v982)();
game:GetService('RunService').RenderStepped:connect(function()
    local v1082 = 0;
    local v1083;
    local v1084;
    while true do
        if (v1082 == (3)) then
            v13.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(v131.Text), tonumber(v132.Text), tonumber(v133.Text));
            v13.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(v125.Text), tonumber(v126.Text), tonumber(v127.Text));
            v13.ESP.Tracers.Color = Color3.fromRGB(tonumber(v141.Text), tonumber(v142.Text), tonumber(v143.Text));
            break
        end
        if (v1082 == (1)) then
            v25.Size = UDim2.new(0, v13.Aimbot.Fov + v1083, 0, v13.Aimbot.Fov + v1083);
            v25.Visible = v13.Aimbot.ShowFov;
            v25.BackgroundColor3 = v13.Aimbot.FovFillColor;
            v25.Transparency = v13.Aimbot.FovFillTransparency;
            v1082 = 2;
        end
        if ((2) == v1082) then
            v38.Color = v13.Aimbot.FovFillColor;
            v38.Transparency = v13.Aimbot.FovTransparenct;
            v38.Thickness = v13.Aimbot.Thickness;
            v13.ESP.Box.BoxColor = Color3.fromRGB(tonumber(v96.Text), tonumber(v97.Text), tonumber(v98.Text));
            v1082 = 3;
        end
        if (v1082 == (0)) then
            if v13.Aimbot.IsAimKeyDown then
                local v1302 = 0;
                local v1303;
                while true do
                    if ((0) == v1302) then
                        v1303 = CameraGetClosestToMouse(v13.Aimbot.Fov);
                        if v1303 then
                            v50(v1303, v13.Aimbot.Smoothing);
                        end
                        break
                    end
                end
            end
            v1083 = v13.Aimbot.Smoothing / (2) ;
            v1084 = v10:GetMouseLocation();
            v25.Position = UDim2.new(0, v1084.X, 0, v1084.Y - (36));
            v1082 = 1;
        end
    end
end);
task.wait();
for v1085, v1086 in pairs(game.Players:GetChildren()) do
    v47(v1086);
    v48(v1086);
    v49(v1086);
end
game.Players.PlayerAdded:Connect(function(v1087)
    v47(v1087);
    v48(v1087);
    v49(v1087);
end);
game.StarterGui:SetCore('SendNotification', {
    Title = 'Infernium',
    Text = 'Script loaded, Thank you for choosing Infernium | https://discord.gg/FsApQ7YNTq' .. game.Players.LocalPlayer.DisplayName .. ".",
    Duration = 4
});
