local configModule = require("zola.config")

local function setup(userConfig)

    if userConfig then
        configModule.applyConfiguration(userConfig)

        vim.g.zola_mkd_plugins_support = configModule.config.mkd_plugins_support

    else
        if vim.g.zola_mkd_plugins_support == nil then
            vim.g.zola_mkd_plugins_support = configModule.config.mkd_plugins_support
        end
    end

end

return {setup = setup}
