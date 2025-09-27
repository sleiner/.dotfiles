function write-3rd-party-completions --description 'Write various 3rd party fish completions to the user completions directory.'
    __write_completion dagger completion fish
    __write_completion multi-gitter completion fish
    __write_completion pdm --quiet completion fish
    __write_completion pixi completion --shell fish
    __write_completion uv generate-shell-completion fish

    name=pipx __write_completion register-python-argcomplete --shell fish pipx
end

function __write_completion
    set completions_dir ~/.config/fish/completions
    mkdir -p $completions_dir

    set executable $argv[1]
    set completion_generator $argv

    if not set --query name
        set --function name $executable
    end

    if not type -q $executable
        echo "❌ $name ("$executable" was not found)" >&2
        return 1
    else if not eval "$completion_generator > $completions_dir/$name.fish"
        echo "❌ $name (completion generation failed)" >&2
        return 1
    else
        echo "✅ $name"
    end
end
