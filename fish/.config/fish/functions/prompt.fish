function prompt -a prompt
    if test -z $prompt
        echo 'Pass prompt name'
        return
    end
    cp $XDG_CONFIG_HOME/starship_prompts/$prompt.toml $XDG_CONFIG_HOME/starship.toml
end
