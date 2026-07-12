                    ███╗   ██╗██╗   ██╗██╗███╗   ███╗
                    ████╗  ██║██║   ██║██║████╗ ████║
                    ██╔██╗ ██║██║   ██║██║██╔████╔██║
                    ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
                    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
                    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
> Tema: Gruvbox  
> Linguagens suportadas: Lua, PHP, Python

Está é minha configuração do neovim, com alguns plugins e LSPs.

Para começar, instale o [neovim](https://neovim.io/) seguindo a documentação oficial, para o seu sistema operacional.

## Windows.
Abra o powershell e use os seguintes comandos:

```
1. cd $env:localappdata/
2. mkdir nvim
3. git clone https://github.com/oBlindz/nvim-config.git nvim
```

## Linux
Abra o terminal e use os seguintes comandos:

```
1. cd ~/.config
2. mkdir nvim
3. git clone https://github.com/oBlindz/nvim-config.git nvim/
```

Após fazer a clonagem do repositório no seu respectivo sistema operacional, faça o download dos LSPs. Vou deixar abaixo os guias que usei para baixar cada LSP.

### LSPs
- [Lua](https://luals.github.io/#neovim-install)
- [PHP](https://github.com/neovim/nvim-lspconfig/blob/master/lsp/phptools.lua)
- [Python](https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pyright.lua)

### Pluggins
Para instalar os pluggins use o comando ```:PlugInstall``` dentro do neovim.

### Shortcuts (atalhos)
- ctrl + j: abrir árvore de arquivos
- ctrl + o: minimizar árvore de arquivos
