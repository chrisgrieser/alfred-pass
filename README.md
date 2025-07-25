# Alfred Client for the Pass-CLI
![GitHub downloads](https://img.shields.io/github/downloads/chrisgrieser/alfred-pass/total?label=GitHub%20Downloads&style=plastic&logo=github)
![Alfred Gallery downloads](https://img.shields.io/badge/dynamic/yaml?url=https%3A%2F%2Fraw.githubusercontent.com%2Fchrisgrieser%2F.config%2Frefs%2Fheads%2Fmain%2FAlfred.alfredpreferences%2Falfred-gallery-downloads.yaml&query=pass&style=plastic&logo=alfred&label=Gallery%20Downloads&color=%235C1F87)
![Latest release](https://img.shields.io/github/v/release/chrisgrieser/alfred-pass?label=Latest%20Release&style=plastic)

Alfred-based UI for [pass](https://www.passwordstore.org/).

<img width="70%" alt="showcase" src="https://github.com/user-attachments/assets/46d22c4d-cbdf-4d09-997b-d2194acedccc">

<!-- toc -->

- [Features](#features)
- [Requirements & Installation](#requirements--installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Notes on security](#notes-on-security)
- [Credits](#credits)

<!-- tocstop -->

## Features
- Copy password to the clipboard.
- Create a new entry.
- Delete an entry.
- Update the password of an entry.
- Inspect and copy non-password properties of an entry.
- [Inherits settings from your `.zshenv`.](#configuration)
- Optionally trigger `pass git push` automatically after any change.
- As opposed to regular usage of `pass`, the copied password is treated as
  transient, meaning it does not appear in Alfred's clipboard history.

## Requirements & Installation
1. [➡️ Download the latest release](https://github.com/chrisgrieser/alfred-pass/releases/latest)
2. Install the requirements

	```bash
	brew install pass pinentry-mac
	```

3. Setup `pass` with a GPG key. See the [pass
	website](https://www.passwordstore.org/) for further information.
4. Setup `pinentry-mac` as your `pinentry-program`:

	```bash
	[[ -d "$HOME/.gnupg" ]] || mkdir "$HOME/.gnupg"
	echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > $HOME/.gnupg/gpg-agent.conf
	gpgconf --kill gpg-agent # restart the agent
	```

## Configuration
This workflow reads all `PASSWORD_STORE_*` environment variables that have been
added to your `~/.zshenv`, so most configuration is done by exporting respective
variables in `~/.zshenv`. Example: `export PASSWORD_STORE_GENERATED_LENGTH=32`.

For information about the available environment variables, see the [pass man
page](https://git.zx2c4.com/password-store/about/).

> [!NOTE]
> If you are using a custom password-store directory, you **must** export your
> `PASSWORD_STORE_DIR` in your `~/.zshenv` for this workflow to work.

## Usage
- Search your passwords via the keyword `pw`.
	+ <kbd>⏎</kbd>: Copy password to the clipboard.
	+ <kbd>⌘</kbd><kbd>⏎</kbd>: Edit entry in your Terminal, using [the Terminal
	configured in your Alfred
	settings](https://www.alfredapp.com/help/features/terminal/) and your
	`$EDITOR`.
	+ <kbd>⌥</kbd><kbd>⏎</kbd>: Reveal `.gpg` file of the entry in Finder.
	+ <kbd>⌃</kbd><kbd>⏎</kbd>: Delete the entry. (⚠️ This is irreversible if you
	  are not using git.)
	+ <kbd>⇧</kbd><kbd>⏎</kbd>: Show details of the entry. Select one of them
	  to copy the value to your clipboard.
	+ <kbd>Fn</kbd><kbd>⏎</kbd>: Generate a new password and overwrite this
	  entry's password with it. Afterward, copy the new password. (⚠️ This removes
	  the old password and is not reversible if you are not using git.)
- Use the keyword `pw new` to create a new entry. You are then prompted for a
  folder to place the new entry in. The password of the new entry is
  auto-generated based on your `pass` settings, or can be inserted from your
  clipboard.
- Use `pw gen` to generate a new password without creating a new entry.

## Notes on security
- All contents copied by this clipboard are marked as "transient," meaning most
  clipboard history apps will ignore them, including Alfred's clipboard history.
- This workflow is just a convenient UI for `pass`. As such, no password is ever
  stored by this workflow in any way. The workflow is completely open source.

## Credits
In my day job, I am a sociologist studying the social mechanisms underlying the
digital economy. For my PhD project, I investigate the governance of the app
economy and how software ecosystems manage the tension between innovation and
compatibility. If you are interested in this subject, feel free to get in touch.

- [Academic Website](https://chris-grieser.de/)
- [Mastodon](https://pkm.social/@pseudometa)
- [ResearchGate](https://www.researchgate.net/profile/Christopher-Grieser)
- [LinkedIn](https://www.linkedin.com/in/christopher-grieser-ba693b17a/)

<a href='https://ko-fi.com/Y8Y86SQ91' target='_blank'>
<img
	height='36'
	style='border:0px;height:36px;'
	src='https://cdn.ko-fi.com/cdn/kofi1.png?v=3'
	border='0'
	alt='Buy Me a Coffee at ko-fi.com'
/></a>
