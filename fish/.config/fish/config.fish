fish_add_path --move ~/.local/bin
fish_add_path --move ~/.cargo/bin
fish_add_path --move ~/.pixi/bin

if status is-interactive
    # no greeting required
    set -U fish_greeting
    set -g fish_key_bindings fish_vi_key_bindings

    # key storage
    set -x GPG_TTY (tty)
    if command --query keychain
        eval (SHELL=fish keychain --eval --quiet)
    end
end
