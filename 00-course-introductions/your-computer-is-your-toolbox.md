# Your Computer Is Your Toolbox

Your computer is your toolbox. As such, you should choose your computer and the software that you use with the care with which a craftsman treats their tools.

As part of this philosophy, I (your instrutor) truly do not care which tools you use as long as you are proficient with them and get your job done.

As a general guideline:

## Hardware

If your computer is old enough that running processor/RAM intensive programs (e.g. automated tests) is noticeably slow, you should upgrade as soon as possible.

The only thing that should be slowing you down at this point is your brain, not your fingers or your computer.

Speeding up your hardware could be as simple as decreasing the number of programs that run on startup, or upgrading the RAM.

## Typing

You should be able to touch type at a fairly good pace.  Start practicing good posture and ergonomics now to avoid getting repetitive stress injuries in your wrists, fingers and elbows.

## Text Editor

I don't care what text editor you use, as long as you're using it to hone your skills.  This means learning how to use keyboard shortcuts and learning to navigate within documents, and projects without your hands leaving the keyboard.

I (Eliza), personally use vim as my text editor.  V  You can use vim tutor and vim adventures if you want to try it out.

## Unix Shell

Bash and Zsh are two populate shells.  I don't care which you use, just so long as you're able to navigate within it.  I (Eliza) recommend that you stick with Bash if you haven't already become familiar with Zsh.

### Aliases

For commands that you use often, it can be convenient to create aliases (shortcuts to commands).  For example, from Eliza's aliases from her `~/.bashrc` :

    alias gb='git branch'
    alias gc='git commit -v'
    alias gca='git commit -a -v'
    alias gco="git checkout"
    alias gd='git diff'
    alias gdc='git diff --cached'
    alias gdh='git diff HEAD'
    alias gp='git push'
    alias gl='git pull'
    alias gpr='git pull --rebase'
    alias gst='git status'

### Dotmatrix

Eliza's default setup is based on: [Hashrocket's Dotmatrix](https://github.com/hashrocket/dotmatrix).
