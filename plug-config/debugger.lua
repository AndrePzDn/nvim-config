local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/andrepzdn/.local/share/nvim/mason/bin/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

dap.adapters.java = {
  type = 'server';
  host = '127.0.0.1';
  port = 5005;
}

dap.configurations.java = {
  {
    type = 'java';
    request = 'attach';
    name = "Debug (Attach) - Remote";
    hostName = "127.0.0.1";
    port = 5005;
  },
  {
    type = 'java';
    request = 'launch';
    name = "Debug (Launch) - Current File";
    mainClass = function()
      return vim.fn.input('Main class: ', '', 'file')
    end;
    projectName = function()
      return vim.fn.input('Project name: ', '', 'file')
    end;
    cwd = vim.fn.getcwd();
  },
}

require('dapui').setup()
