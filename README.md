# .dotfiles

:computer: My personal dotfiles and tweaks for **macOS**.

## Installation

I'm using [Homebrew](https://brew.sh/) to install Mac applications, command-line tools and fonts.

**1.** Check for software updates.

```sh
$ sudo softwareupdate -i -r
```

**2.** Get this project somehow and go to its directory.

```sh
git clone git@github.com:moiseshilario/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

**3.** Install Mac applications (see [caskfile](brew/caskfile)) and fonts (see [fontfile](brew/fontfile)).

```sh
$ sh ./install-apps
```

**4.** Install dotfiles (see [brewfile](brew/brewfile)).

```sh
$ sh ./install-dotfiles
```

**5.** Tell [npm](https://www.npmjs.com/) who you are.

```sh
$ npm set init.author.name "{Your name}"
$ npm set init.author.email "{Your email}"
$ npm set init.author.url "{Your URL}"
$ npm adduser
```

## Thanks

We can learn a lot about productivity just exploring the way people work every day. Personally, I got highly inspired by [Holman](https://github.com/holman/dotfiles), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), [Deny Dias](https://github.com/denydias/dotfiles) and by this [setup and readme](https://github.com/diessica/dotfiles).

I can't agree more with [Holman](https://github.com/holman)'s thoughts on dotfiles: [dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked).

## License

[MIT License](http://iagodahlem.mit-license.org/) © Iago Dahlem

Changes made by Sherif Elkelesh
