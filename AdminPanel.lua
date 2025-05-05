-- Админ-панель для Krnl (Roblox)
-- Автор: Nazar

local Admins = {
    ["Nazar"] = true,  -- Добавь других админов сюда
    ["admin"] = true
}

local isAdmin = false

-- Функция проверки админа
function CheckAdmin(playerName)
    if Admins[playerName] then
        isAdmin = true
        print("Добро пожаловать в админ-панель, " .. playerName .. "!")
        ShowAdminMenu()
    else
        print("Доступ запрещён. Вы не админ.")
    end
end

-- Пример панели
function ShowAdminMenu()
    print("=== Админ-панель ===")
    print("1. Кикнуть игрока")
    print("2. Забанить игрока")
    print("3. Перезапустить сервер")
    print("4. Выйти")
end

-- Пример команд
function HandleAdminCommand(command, target)
    if not isAdmin then
        print("У вас нет прав для выполнения этой команды.")
        return
    end

    if command == "kick" then
        local player = game.Players:FindFirstChild(target)
        if player then
            player:Kick("Вы были кикнуты администратором.")
            print("Игрок " .. target .. " был кикнут.")
        else
            print("Игрок не найден.")
        end
    elseif command == "ban" then
        local player = game.Players:FindFirstChild(target)
        if player then
            player:Kick("Вы были забанены администратором.")
            -- Дополнительно можно добавить код 
-- 
