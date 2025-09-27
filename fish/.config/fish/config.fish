fish_add_path --move ~/.local/bin
fish_add_path --move ~/.cargo/bin
fish_add_path --move ~/.pixi/bin

if status is-interactive
    # no greeting required
    set -U fish_greeting

    # key storage
    set -x GPG_TTY (tty)
    if command --query keychain
        eval (keychain --eval --quiet)
    end
end
