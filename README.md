# Zimilar

This small gem extends your shell (see ```Supported Shells```) to autocorrect inputs that would led in a 'command not found'. It basically parses your history file and tries to match to most suitable command found.

```zimilar``` is just a small late-night hack I did and might be improved in the future. Its code is currently also not that optimized but for now, it works.

I also think that it might be better to write this as a native shell function in order to not require ruby to be installed. As times pass by, this might change.


## Supported Shells

The following shells are supported by now:

 - [zsh](http://www.zsh.org/)
 - [bash](https://www.gnu.org/software/bash/bash.html)

## Installation

Install it yourself as:

    $ gem install zimilar

Install from source:

    $ git clone https://github.com/lotherk/zimilar.git
    $ cd zimilar
    $ rake build
    $ gem install pkg/zimilar-VERSION.gem

Or simply copy the ```bin/zimilar``` to anywhere you want. Please ensure to install its dependencies.

## Usage

Please be aware of that this is a nightly hack and might, under worst circumstances, destroy all you know and love. Please do not use it without having this read.

```zimilar``` doesn't correct to commands with a length less or equal than 2. This is because of most 'dangerous' commands are 2 charackters long, e.g. ```cp```, ```mv```, ```rm``` and many others.

But still, use it at your own risk.

### zsh
Add the following into your .zshrc or any other file that is being ```source```ed during your login:

```bash
function command_not_found_handler() {
  zimilar $@
}
```

### bash
Add the following into your .bashrc or any other file that is being ```source```ed during your login:

```bash
function command_not_found_handle {
  zimilar $@
}
```


## Example
```
kl@kbook:~/ $ vm
Auto-guessed 'vim', 60.0%
kl@kbook:~/ $

```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/zimilar/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
