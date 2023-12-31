# astronvim

## backup

## clone astronvim

### user configuration

[https://www.youtube.com/watch?v=GEHPiZ10gOk]

```bash
git clone git@github.com:upgradeksh/astronvim_config.git ~/.config/nvim/lua/user
```

### mason-lspconfig

#### gopls

enable code 1) completion, 2) dignostics

### null-ls

designed for tools that don't have a language server, such as some formatter, linters

### user plugin

#### todo comments

[https://github.com/folke/todo-comments.nvim]

### community plugins

[https://github.com/AstroNvim/astrocommunity]

find plugin in `lua/astrocommunity`

import the plugin to `.config/nvim/lua/user/plugins/community.lua`

```lua
return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
}
```

##### disable mission control shortcut

시스템설정 -> 키보드 -> 키보드단축키

다음의 기본 키 맵핑을 해제 합니다.

- [ ] mission control ^
- [ ] 응용프로그램 윈도우 ^󰁅
- mission control
  - [ ] 왼쪽으로 space 이동
  - [ ] 오른쪽으로 space 이동

##### disable better_escape

vim 고인물중 jj, jk 를 입력모드에서 일반모드로 변경하기 위한 escape 키맵으로 설정한다. \
그리고 [better_escape][github:be] 라는 플러그인이 이 기능을 성능개선과 함께 제공한다. \
AstroNvim에서 better_scaper가 기본으로 활성화 되어 있어 이를 제거 한다.

user.lua

```lua
return {
  { "better-escape", enabled = false },
}
```

[github:be]: https://github.com/max397574/better-escape.nvim

##### float terminal escape

```
<C-\><C-n>
```
