<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### !!
> Bash style history substitution for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](http://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

This plugin wraps [Aerys Bat's implementation](https://github.com/fish-shell/fish-shell/wiki/Bash-Style-History-Substitution-(!!-and-!$)) of bash style history substitution.

## Install

```fish
$ omf install bang-bang 
```

## Usage

`!!` on command line will be replaced by last command issued:

```fish
$ mv /etc/hostname /etc/hostname.old
mv: rename /etc/hostname to /etc/hostname.old: Operation not permitted
$ sudo !!
```

`!$` on command line will be replaced by last command arguments:

```fish
$ mkdir /tmp/test
$ cd !$
```

## Troubleshooting

If the keybindings fail to work after installing the plugin, the issue is 
likely because of an existing `~/.config/fish/functions/fish_user_key_bindings.fish` 
that is overiding the plugins.

The solution is to either removing the exising file or to concat the contents of the 
plugin `functions/fish_user_key_bindings.fish` file into it.

# License

[MIT][mit] © [Aerys Bat][aerys-bat], [Derek Stavis][derekstavis] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[derekstavis]:    http://github.com/derek
[aerys-bat]:      https://github.com/AerysBat
[contributors]:   https://github.com/derek/plugin-bang-bang/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
