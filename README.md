# Alfred Client for the [Pass-CLI](https://www.passwordstore.org/)
![Download count](https://img.shields.io/github/downloads/chrisgrieser/alfred-pass/total?label=Total%20Downloads&style=plastic)
![last release](https://img.shields.io/github/v/release/chrisgrieser/alfred-pass?label=Latest%20Release&style=plastic)

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
- Copy password or any other property of an entry.
- Create a new entry.
- [Inherits settings from your `.zshenv`.](#configuration)
- Option to trigger `pass git push` automatically after any change.
- As opposed to regular usage of `pass`, the copied password is treated as
  transient, meaning it does not appear in Alfred's clipboard history.

## Requirements & Installation
1. [➡️ Download the latest release](https://github.com/chrisgrieser/alfred-pass/releases/latest)
2. Install the requirements

   ```bash
   brew install pass pinentry-mac
   ```

3. Setup `pass` with a GPG key. See the [Pass
   Website](https://www.passwordstore.org/) for further information.
4. Setup `pinentry-mac` as your `pinentry-program`:

   ```bash
   [[ -d "$HOME/.gnupg" ]] || mkdir "$HOME/.gnupg"
   echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > $HOME/.gnupg/gpg-agent.conf
   gpgconf --kill gpg-agent # restart the agent
   ```

## Configuration
This workflow is reads all your `PASSWORD_STORE_*` environment variables that
have been added to your `~/.zshenv`. This means that most configuration is done
by exporting respective variables in `~/.zshenv`, this workflow therefore has
only few configuration options that concern Alfred in particular.

For information about the available environment variables, see the [pass man page](https://git.zx2c4.com/password-store/about/).

> [!NOTE]
> If you are using a custom password-store directory, you **must** export your
> `PASSWORD_STORE_DIR` in your `~/.zshenv` for this workflow to work.

## Usage
- Search your passwords via the keyword `pw`.
- <kbd>⏎</kbd>: Copy password to the clipboard. 
- <kbd>⌘</kbd><kbd>⏎</kbd>: Edit entry in your Terminal, using [the Terminal
  configured in your Alfred
  settings](https://www.alfredapp.com/help/features/terminal/) and your
  `$EDITOR`.
- <kbd>⌥</kbd><kbd>⏎</kbd>: Reveal `.gpg` file of the entry in Finder.
- <kbd>⌃</kbd><kbd>⏎</kbd>: Delete the entry.
- <kbd>⇧</kbd><kbd>⏎</kbd>: Show details of the entry. Select any one of them to
  copy the value to your clipboard.
- Use `pw new` to create a new entry. You are then prompted for a folder to
  place the new entry in. The password of the new entry is auto-generated based
  on your `pass` settings, or can be inserted from your clipboard.

## Notes on security
<!-- vale Google.Will = NO -->
- All contents copied by this clipboard are marked as "transient," meaning most
  clipboard history apps will ignore them, including Alfred's clipboard history.
- This workflow is just a convenient UI for `pass`. As such, no passwords are
  saved by the workflow in any way. The workflow is open source, so feel free to
  check yourself.
<!-- vale Google.Will = YES -->

## Credits
<!-- vale Google.FirstPerson = NO -->
**About Me**  
In my day job, I am a sociologist studying the social mechanisms underlying the
digital economy. For my PhD project, I investigate the governance of the app
economy and how software ecosystems manage the tension between innovation and
compatibility. If you are interested in this subject, feel free to get in touch.

**Profiles**
- [reddit](https://www.reddit.com/user/pseudometapseudo)
- [Discord](https://discordapp.com/users/462774483044794368/)
- [Academic Website](https://chris-grieser.de/)
- [Twitter](https://twitter.com/pseudo_meta)
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
