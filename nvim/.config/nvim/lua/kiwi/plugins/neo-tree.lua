local M = {
    "nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
	cmd = "Neotree",
    dependencies = {
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    }
}

function M.init() 
  vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle reveal left<cr>", {})
end

function M.config()
	vim.g.neo_tree_remove_legacy_commands = 1,

	require("neo-tree").setup {
		close_if_last_window = true,
		filesystem = { 
			highjack_netrw_behaviour = "open_current",
		},
		
	}
end
return M
