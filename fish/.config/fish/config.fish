if status is-interactive
    starship init fish | source

    # Set abbreviations 
    abbr -a -g sed gsed # Specific to mac
    abbr -a -g ... 'cd ../../'
    abbr -a -g .... 'cd ../../../'
    abbr -a -g vim hx
    abbr -a -g nvim hx

    # Set Global ENV vars
    set fish_greeting
    set -U EDITOR hx
    set -U editor hx
    set -U VISUAL hx
    set -x NPM_TOKEN "Oops i leaked my secrets"
    set -x NODE_AUTH_TOKEN "Oops again"

    set -x GOPRIVATE "github.com/dyte-in"
    set -x BUN_INSTALL "$HOME/.bun"
    set -x XDG_CONFIG_HOME "$HOME/.config"
    # set -x HELIX_RUNTIME ~/p/helix/runtime
    # nvm use latest

    # ADDING STUFF TO PATH
    # fish_add_path /opt/homebrew/bin
    # fish_add_path /opt/homebrew/opt/rabbitmq/sbin
    fish_add_path $BUN_INSTALL/bin
    fish_add_path $HOME/.local/bin
    fish_add_path $(go env GOPATH)/bin
    fish_add_path ~/.cargo/bin
    # fish_add_path /Library/Frameworks/GStreamer.framework/Versions/1.0/bin
    # fish_add_path /opt/homebrew/opt/libpq/bin
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kps/Downloads/google-cloud-sdk/path.fish.inc' ]
    . '/Users/kps/Downloads/google-cloud-sdk/path.fish.inc'
end
