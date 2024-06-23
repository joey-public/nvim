return 
{
	"zenbones-theme/zenbones.nvim",
	lazy = false, 
	priority = 999, 
    dependencies = "rktjmp/lush.nvim",
	config = function()
		vim.cmd('colorscheme zenbones')
	end
}
