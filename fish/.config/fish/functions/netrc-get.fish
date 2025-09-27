function netrc-get --description "Get an entry (e.g., password) for a given host from ~/.netrc. Fails if not found. Does not support the 'default' directive."
    # Usage: netrc-get entry host
    # Example: netrc-get password foo.example.com
    # Note: The "default" directive in .netrc is not supported by this function.
    set result (awk -v entry="$argv[1]" -v host="$argv[2]" '
        # Reset found when a new machine block starts
        /machine / {found=0}
        # Set found when the desired machine block is found
        $0 ~ "machine " host {found=1}
        # If inside the correct block and the entry is found, print its value and exit
        found && $0 ~ entry {print $2; exit}
    ' ~/.netrc)
    if test -z "$result"
        echo "Error: Entry \"$argv[1]\" for host \"$argv[2]\" not found in ~/.netrc." >&2
        return 1
    else
        echo $result
    end
end
