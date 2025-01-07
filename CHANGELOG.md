# Changelog

## [1.1.0](https://github.com/arrrgi/dotfiles/compare/v1.0.1...v1.1.0) (2025-01-07)


### Features

* add docker shell completion for supported targets ([#49](https://github.com/arrrgi/dotfiles/issues/49)) ([86b07d3](https://github.com/arrrgi/dotfiles/commit/86b07d3e545119c394123859c7600cf0c6fdcf28))
* implement Zsh reload as post script ([#48](https://github.com/arrrgi/dotfiles/issues/48)) ([25ea4f3](https://github.com/arrrgi/dotfiles/commit/25ea4f329feb3c09a6ca5196c01472f0e9692634))

## [1.0.1](https://github.com/arrrgi/dotfiles/compare/v1.0.0...v1.0.1) (2025-01-06)


### Bug Fixes

* add conditional logic to detect and update socket on SSH remotes ([#40](https://github.com/arrrgi/dotfiles/issues/40)) ([4b89ed4](https://github.com/arrrgi/dotfiles/commit/4b89ed4d23ca3473491ee5f0de57a4efd2690cb6))
* correct scope and conditions of SSH config ([#41](https://github.com/arrrgi/dotfiles/issues/41)) ([5a1f7c2](https://github.com/arrrgi/dotfiles/commit/5a1f7c2176ba78bb30294815ad5566435457c7fd))
* include olets tap in package defs ([#42](https://github.com/arrrgi/dotfiles/issues/42)) ([b771e6b](https://github.com/arrrgi/dotfiles/commit/b771e6b3cd366ee5a2db2e9e688c45a854057e25))
* update chezmoi alias to remove conflict with commitizen ([#46](https://github.com/arrrgi/dotfiles/issues/46)) ([47afc5a](https://github.com/arrrgi/dotfiles/commit/47afc5a292b27adf077bdadca34143f647b995b3))
* update internal version manifests to correct version ([#43](https://github.com/arrrgi/dotfiles/issues/43)) ([130dd8d](https://github.com/arrrgi/dotfiles/commit/130dd8de7320cd0f7403d9c9e5c0c76b3fbf7b48))

## [1.0.0](https://github.com/arrrgi/dotfiles/compare/v0.3.2...v1.0.0) (2025-01-06)


### ⚠ BREAKING CHANGES

* migrate all secret references to use new templated function

### Features

* add HCP CLI secret retrieval function template ([b339abf](https://github.com/arrrgi/dotfiles/commit/b339abf0205ebaab0c95c1c6dbab0db4587de458))
* allow fzf search of directory history replacing zoxide ([ee0c756](https://github.com/arrrgi/dotfiles/commit/ee0c7560dbb22915802d8cf2bf907b89c58214af))
* ensure HCP CLI package is installed ([57682d8](https://github.com/arrrgi/dotfiles/commit/57682d80bccf911037ec4506878aac1856a9264f))
* migrate all secret references to use new templated function ([8fc720d](https://github.com/arrrgi/dotfiles/commit/8fc720d8d6df097922bdb2b498b551b4f5a4e56c))
* redefine commonly used Homebrew packages ([#35](https://github.com/arrrgi/dotfiles/issues/35)) ([47c9f4e](https://github.com/arrrgi/dotfiles/commit/47c9f4ee933a9957f820fe5828f4183706330cea))


### Bug Fixes

* add conditional logic to detect and update socket on SSH remotes ([#40](https://github.com/arrrgi/dotfiles/issues/40)) ([4b89ed4](https://github.com/arrrgi/dotfiles/commit/4b89ed4d23ca3473491ee5f0de57a4efd2690cb6))
* adjust Wezterm padding to allow for window buttons ([#32](https://github.com/arrrgi/dotfiles/issues/32)) ([20c81fa](https://github.com/arrrgi/dotfiles/commit/20c81fa3736addefe1e440e8c3e410cb6e9fcb61))
* correct scope and conditions of SSH config ([#41](https://github.com/arrrgi/dotfiles/issues/41)) ([5a1f7c2](https://github.com/arrrgi/dotfiles/commit/5a1f7c2176ba78bb30294815ad5566435457c7fd))
* include olets tap in package defs ([#42](https://github.com/arrrgi/dotfiles/issues/42)) ([b771e6b](https://github.com/arrrgi/dotfiles/commit/b771e6b3cd366ee5a2db2e9e688c45a854057e25))
* migrate from zsh4humans installation of zsh-abbr to Brew based ([af6bca2](https://github.com/arrrgi/dotfiles/commit/af6bca2bd5815eca0b2caffb90f014ee354df652))
* support loading SSH private key to agent on work devices ([29ae063](https://github.com/arrrgi/dotfiles/commit/29ae06384f76c2f76f50452785de6c9194f3a0da))
* update internal version manifests to correct version ([#43](https://github.com/arrrgi/dotfiles/issues/43)) ([130dd8d](https://github.com/arrrgi/dotfiles/commit/130dd8de7320cd0f7403d9c9e5c0c76b3fbf7b48))
* update target conditional and remove zoxide vars ([75667fe](https://github.com/arrrgi/dotfiles/commit/75667fe4245a5a4cbe92c9d42e8a40220af4bd60))
* use correct SSH public key templated items for work device target ([dad1d6d](https://github.com/arrrgi/dotfiles/commit/dad1d6d298bc7f33834b29b0a2d9746404fb5280))
* use valid URI to Bat theme ([3c3c505](https://github.com/arrrgi/dotfiles/commit/3c3c505cd5b41d970eac669e6dcd5fc9ddcdfd09))


### Documentation

* **license:** update copyright year(s) ([#37](https://github.com/arrrgi/dotfiles/issues/37)) ([2e53a6d](https://github.com/arrrgi/dotfiles/commit/2e53a6de8e3af9deaaf0ec34a75f446b18fc804e))

## [1.0.0](https://github.com/arrrgi/dotfiles/compare/v0.3.2...v1.0.0) (2025-01-06)


### ⚠ BREAKING CHANGES

* migrate all secret references to use new templated function

### Features

* add HCP CLI secret retrieval function template ([b339abf](https://github.com/arrrgi/dotfiles/commit/b339abf0205ebaab0c95c1c6dbab0db4587de458))
* allow fzf search of directory history replacing zoxide ([ee0c756](https://github.com/arrrgi/dotfiles/commit/ee0c7560dbb22915802d8cf2bf907b89c58214af))
* ensure HCP CLI package is installed ([57682d8](https://github.com/arrrgi/dotfiles/commit/57682d80bccf911037ec4506878aac1856a9264f))
* migrate all secret references to use new templated function ([8fc720d](https://github.com/arrrgi/dotfiles/commit/8fc720d8d6df097922bdb2b498b551b4f5a4e56c))
* redefine commonly used Homebrew packages ([#35](https://github.com/arrrgi/dotfiles/issues/35)) ([47c9f4e](https://github.com/arrrgi/dotfiles/commit/47c9f4ee933a9957f820fe5828f4183706330cea))


### Bug Fixes

* adjust Wezterm padding to allow for window buttons ([#32](https://github.com/arrrgi/dotfiles/issues/32)) ([20c81fa](https://github.com/arrrgi/dotfiles/commit/20c81fa3736addefe1e440e8c3e410cb6e9fcb61))
* migrate from zsh4humans installation of zsh-abbr to Brew based ([af6bca2](https://github.com/arrrgi/dotfiles/commit/af6bca2bd5815eca0b2caffb90f014ee354df652))
* support loading SSH private key to agent on work devices ([29ae063](https://github.com/arrrgi/dotfiles/commit/29ae06384f76c2f76f50452785de6c9194f3a0da))
* update target conditional and remove zoxide vars ([75667fe](https://github.com/arrrgi/dotfiles/commit/75667fe4245a5a4cbe92c9d42e8a40220af4bd60))
* use correct SSH public key templated items for work device target ([dad1d6d](https://github.com/arrrgi/dotfiles/commit/dad1d6d298bc7f33834b29b0a2d9746404fb5280))
* use valid URI to Bat theme ([3c3c505](https://github.com/arrrgi/dotfiles/commit/3c3c505cd5b41d970eac669e6dcd5fc9ddcdfd09))


### Documentation

* **license:** update copyright year(s) ([#37](https://github.com/arrrgi/dotfiles/issues/37)) ([2e53a6d](https://github.com/arrrgi/dotfiles/commit/2e53a6de8e3af9deaaf0ec34a75f446b18fc804e))

## [0.3.2](https://github.com/arrrgi/dotfiles/compare/v0.3.1...v0.3.2) (2024-01-15)


### Bug Fixes

* update tool configs ([#26](https://github.com/arrrgi/dotfiles/issues/26)) ([ca5d415](https://github.com/arrrgi/dotfiles/commit/ca5d415ef18a2922507917f21b13f10a64effcaa)), closes [#24](https://github.com/arrrgi/dotfiles/issues/24)

## [0.3.1](https://github.com/arrrgi/dotfiles/compare/v0.3.0...v0.3.1) (2024-01-13)


### Bug Fixes

* 🐛 update diff excludes in Chezmoi config to skip dirs ([#22](https://github.com/arrrgi/dotfiles/issues/22)) ([d087322](https://github.com/arrrgi/dotfiles/commit/d087322898b9aa5af17d097416f996b33a9da530)), closes [#21](https://github.com/arrrgi/dotfiles/issues/21)

## [0.3.0](https://github.com/arrrgi/dotfiles/compare/v0.2.0...v0.3.0) (2024-01-13)


### Features

* 🚧 add basic WezTerm config as placeholder for WIP ([44a467b](https://github.com/arrrgi/dotfiles/commit/44a467b932c7d4f12460273c52d8e5e39c30ef07))
* add basic Helix config ([a35d30b](https://github.com/arrrgi/dotfiles/commit/a35d30b2018ed045a162c0158a6ce4ad88591728))
* add broot config files ([7d0cada](https://github.com/arrrgi/dotfiles/commit/7d0cada9e5c2bf5de29db18e90ad7a8f35f7d070))
* add MacOS shortcut for VSCode ([6d7a5d0](https://github.com/arrrgi/dotfiles/commit/6d7a5d072e2b82b9b5ee2a39225225849fcfbb89))
* add missing MacOS tools ([de86860](https://github.com/arrrgi/dotfiles/commit/de86860c0bb6cc5606d8aa1c1e9f15a1aa12c7bf))
* add Orbstack support to personal SSH config inclusions ([3c8e39c](https://github.com/arrrgi/dotfiles/commit/3c8e39cce0cabcec8cb399243b17c94b49e0c034))
* add poetry and cheat utilities to packages ([8e15a7d](https://github.com/arrrgi/dotfiles/commit/8e15a7d85ad8b5539e1b563897281d13398c3c60))
* add support for external completions ([5bb22c9](https://github.com/arrrgi/dotfiles/commit/5bb22c90d0489a5138d1167d20e944d63a58c2cd))
* add Wakatime, Rclone and 1Password configs ([5d70da6](https://github.com/arrrgi/dotfiles/commit/5d70da6fb26078766723b9114ace5b240e7f16d3))
* add Zsh config and personalisations ([c06783d](https://github.com/arrrgi/dotfiles/commit/c06783da22fc41223c4b5d061ea4537f4f342fd3))
* create initial core tools configs ([50e409a](https://github.com/arrrgi/dotfiles/commit/50e409aa6580e6b348083646ce44f13c726f0a32))


### Bug Fixes

* trim newline from Vault Secrets template expansion ([0e667bb](https://github.com/arrrgi/dotfiles/commit/0e667bb053552b4897282b2d195670c3e7114c07))

## [0.2.0](https://github.com/arrrgi/dotfiles/compare/v0.1.0...v0.2.0) (2023-12-09)


### Features

* 🚧 add initial config template for testing ([59709bc](https://github.com/arrrgi/dotfiles/commit/59709bc1ed8d81de888bb5a2daa666ee001e8c19))
* add basic git config without conditionals ([deab97f](https://github.com/arrrgi/dotfiles/commit/deab97fd0653a80b30f42c779283aa5602fd19b6))
* add core externals definition ([d18cedb](https://github.com/arrrgi/dotfiles/commit/d18cedbcd29321550b705cb47cbb6aa0b1094ff6))
* add darwin bootstrap script for testing ([a63b663](https://github.com/arrrgi/dotfiles/commit/a63b66353a54b07ce91de485329cccdce714b177))
* add decryption key to support secrets in targets ([7b82c10](https://github.com/arrrgi/dotfiles/commit/7b82c10502b8b70eeb27efe790e9f1c24488439d))
* add diff options to Chezmoi config ([18c3903](https://github.com/arrrgi/dotfiles/commit/18c390314962aadcebc752f5ce4c23cef7c4f674))
* add first external utility package ([ed5af44](https://github.com/arrrgi/dotfiles/commit/ed5af44aeb1fc5b8480d7fac87099e49021541a1))
* add global and some basic context relevant ignore configurations ([8f602fc](https://github.com/arrrgi/dotfiles/commit/8f602fce8a0972121c5d70e21a27634bba7790e4))
* add handler for changing shell as post config task ([ae02b41](https://github.com/arrrgi/dotfiles/commit/ae02b41a6f09dc53c16d341c7855fc68bd0258ce))
* add Homebrew based package installs to MacOS ([c2557c9](https://github.com/arrrgi/dotfiles/commit/c2557c96dd1f893d72d62587ee6a5aae2121313b))
* add install script ([1801545](https://github.com/arrrgi/dotfiles/commit/1801545a7e4202710812b72f76d31197cbb0c5ef))
* add logic and prompts for storing Vault Secrets data and scriptEnv ([6f91d10](https://github.com/arrrgi/dotfiles/commit/6f91d1004bc412ce088dd5637540393f947be997))
* add Neofetch as a universal package ([6ceeb95](https://github.com/arrrgi/dotfiles/commit/6ceeb9502975deeeb9083fc0842cba92d7541ffe))
* add script to install Homebrew packages on Linux ([291f0d6](https://github.com/arrrgi/dotfiles/commit/291f0d65fe71432a8895fb50ae4f89a9922185d4))
* add SSH conditional configs ([0c5739e](https://github.com/arrrgi/dotfiles/commit/0c5739e259abca4ba19e6cf7146846b446121265))
* add support for Homebrew on Linux ([dc91843](https://github.com/arrrgi/dotfiles/commit/dc91843abc929624422c1bc10b9a6096dafc43ef))
* add Tmux and Neovim plugin externals ([1461940](https://github.com/arrrgi/dotfiles/commit/1461940efb325bccc069ed3c4c76a89de7cb488a))
* add Vault Secrets CLI to Darwin packages ([f17168f](https://github.com/arrrgi/dotfiles/commit/f17168fda9a8fe530ed331e0e4cf1a27b26496e6))
* create basic Devcontainer ([#12](https://github.com/arrrgi/dotfiles/issues/12)) ([19956f0](https://github.com/arrrgi/dotfiles/commit/19956f08960d2e6b0dd8de1b7c3e6d21f1f003fa))
* define source of dotfiles and restrict to a specific chezmoi version ([47d8312](https://github.com/arrrgi/dotfiles/commit/47d8312da18c3d6e55a0b219bb7721a90311afc7))
* support passphrase based sensitive file decryption with Age ([e2d8c7f](https://github.com/arrrgi/dotfiles/commit/e2d8c7f92048937452d7abb098786eb6f0a75763))


### Bug Fixes

* 🐛 resolve data to dict variables correctly ([aea734a](https://github.com/arrrgi/dotfiles/commit/aea734aaad4c9bce4265048c30e7d1a25bf2b232))
* 🐛 resolved whitespace stripping mistake in template functions ([940cd78](https://github.com/arrrgi/dotfiles/commit/940cd78b16bb42b75c75da54f9b460ce56c4de3e))
* add mandatory path spec to vlt external ([68dac40](https://github.com/arrrgi/dotfiles/commit/68dac400fcc636fea8ca052d8295cdd2271c6419))
* add missing newlines to printf statements ([d9aa177](https://github.com/arrrgi/dotfiles/commit/d9aa17761055359a28fa191423d793398307f60f))
* correctly eval brew environment vars ([09f7c96](https://github.com/arrrgi/dotfiles/commit/09f7c96d5f8078345a95cb5de6a46536fc2e7108))
* ensure externals url's are quoted ([b47bdc5](https://github.com/arrrgi/dotfiles/commit/b47bdc5f8ca9d4062b9c004213f1059a90baf7de))
* ignore unset variable flag as chezmoi creates subshells ([b2b0ebd](https://github.com/arrrgi/dotfiles/commit/b2b0ebd175e2c0c2d2e8ed8260213f2efd51ac3b))
* ignore unset variable flag on decrypt script ([4b3d6fd](https://github.com/arrrgi/dotfiles/commit/4b3d6fdc54f7e77ef1348f699099b33af7a4a012))
* move hooks to hidden directory to ignore from target state ([e1615e8](https://github.com/arrrgi/dotfiles/commit/e1615e8dc346f99204f35341c0fb09eb41416999))
* pass correct command to decrypt Age file ([1e04300](https://github.com/arrrgi/dotfiles/commit/1e043007b19e45c1c3656e2c8af34dacf5ab5605))
* remove brew bundle cleanup as Brewfile is piped via heredoc ([1d5e757](https://github.com/arrrgi/dotfiles/commit/1d5e75721faca66bb0576a976bc64407297e8b28))
* remove extension from pgrep process lookup ([32be9af](https://github.com/arrrgi/dotfiles/commit/32be9af37ac2bc0f5721649b2b8cb9eecf46b037))
* remove invalid whitespace chomping ([d8c8b31](https://github.com/arrrgi/dotfiles/commit/d8c8b31c4153e5bf07553fd53e0cd00060e9a683))
* replace Age key to test decryption failure ([a46a10c](https://github.com/arrrgi/dotfiles/commit/a46a10ccb6000af473b01592d7889f3188386d5c))
* resolve linux target conditional correctly ([2edf6d5](https://github.com/arrrgi/dotfiles/commit/2edf6d5dc00369bc84eb2a8a8cd62f1ed8c51ab4))
* revert brew check to POSIX compliant method ([bb33d08](https://github.com/arrrgi/dotfiles/commit/bb33d089ff1c27faa01ceede4ccc87e35365af41))
* revert to bash and output Brew version ([548c091](https://github.com/arrrgi/dotfiles/commit/548c091d8bce644df4e032db912ef59d0ec8b10b))
* switch Darwin bootstrap to bash to support eval step ([6797921](https://github.com/arrrgi/dotfiles/commit/6797921941497e3655a7172ee7ef353d6193b243))
* trim whitespace from script to resolve fork error ([7189885](https://github.com/arrrgi/dotfiles/commit/71898859f58f2043786738e7717f7d1c24401cd6))
* unset API keys for Devcontainers and revert install script switches ([93bd783](https://github.com/arrrgi/dotfiles/commit/93bd783f1455304c8a6649f565bf8f86cd75800f))
* update condition for chsh script execution ([f6d71fe](https://github.com/arrrgi/dotfiles/commit/f6d71fe30ff98cd8d5655c8bf275e1ed1c3b26c9))
* update logic to detect container environment ([#13](https://github.com/arrrgi/dotfiles/issues/13)) ([a10c6aa](https://github.com/arrrgi/dotfiles/commit/a10c6aa8aa4f2cbd93ec29c09a038c4d9d513d02))
* update XCode CLT process query ([7208efb](https://github.com/arrrgi/dotfiles/commit/7208efb7ad7756b3d419a0a0f809242533f74973))
* use armored key file and new identity ([bb3c47d](https://github.com/arrrgi/dotfiles/commit/bb3c47de3556cfcbce77a6a2d9fa6a380c3c0d3c))
* use hostname prefix logic for personal servers ([1aeec9e](https://github.com/arrrgi/dotfiles/commit/1aeec9e658d2fb2a0320c67533ff2fdf29014917))
* use updated MkDocs job config ([#3](https://github.com/arrrgi/dotfiles/issues/3)) ([62e9fd8](https://github.com/arrrgi/dotfiles/commit/62e9fd81de487cd9e9a3381a0958047462ec7d20))


### Documentation

* add MkDocs to repo to support additional documentation ([d42f811](https://github.com/arrrgi/dotfiles/commit/d42f81177bfd4a87b40dbc91d5ba0140c35c6a0d))
* amend basic documentation ([9106786](https://github.com/arrrgi/dotfiles/commit/91067864c8cc2f3f2d179548f87dd821daa56df3))
* basic documentation to be iterated on ([#7](https://github.com/arrrgi/dotfiles/issues/7)) ([b2d50c1](https://github.com/arrrgi/dotfiles/commit/b2d50c192d6bc61a7e2315dd1718d987ee2274b7))
* outline basic installation steps and flow logic ([cbb725e](https://github.com/arrrgi/dotfiles/commit/cbb725ee70b6b4f4eeed9a836f415920db16b161))
* update install command in usage ([#16](https://github.com/arrrgi/dotfiles/issues/16)) ([0a594be](https://github.com/arrrgi/dotfiles/commit/0a594beaf45ec0ca0be4b165bccee80b4010f4f5))
* update installation command accounting for vanilla MacOS ([#15](https://github.com/arrrgi/dotfiles/issues/15)) ([cc10582](https://github.com/arrrgi/dotfiles/commit/cc10582f57063730cd53efb1146badb068ba345a))
* update installation command and docs reference URL ([7d78534](https://github.com/arrrgi/dotfiles/commit/7d78534c431b38528e4e8d1c0f7970a8870d51f4))
