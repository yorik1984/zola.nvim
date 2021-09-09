local config

vim = vim or {g = {}, o = {}}

local function opt(key, default)
    key = "zola_" .. key
    if vim.g[key] == nil then
        return default
    else
        if vim.g[key] == 0 then
            return false
        else
            return vim.g[key]
        end
    end
end

config = {
    mkd_plugins_support = opt("mkd_plugins_support", true)
}

local function applyConfiguration(userConfig)
    for key, value in pairs(userConfig) do
        if value ~= nil then
            if config[key] ~= nil then
                config[key] = value
            else
                error("yorik1984/zola.nvim: Option " .. key .. " does not exist") -- luacheck: ignore
            end
        end
    end
end


return {config = config, applyConfiguration = applyConfiguration}
