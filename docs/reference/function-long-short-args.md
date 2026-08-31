# Checking for both long and short argument names in scripts

> how to use both `-h` and `--help` in a script nonredundantly

---

## Example Script

1. a variable acts as a flag initialized to 0 or false
2. check for both long and short using a switch statement
3. an if statement quits after running help


```bash
#!/bin/bash

# Initialize variables 
HELP=0
VERBOSE=0
NAME=""

# Loop through arguments
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -h|--help)
            HELP=1
            shift
            ;;
        -v|--verbose)
            VERBOSE=1
            shift
            ;;
        -n|--name)
            NAME="$2"
            shift 2 # Skip the flag and its value
            ;;
        *)
            echo "Unknown parameter: $1"
            exit 1
            ;;
    esac
done

# Show help page if requested
if [[ "$HELP" -eq 1 ]]; then
    echo "Usage: $0 [options]"
    echo "  -h, --help     Display this help message"
    echo "  -v, --verbose  Enable verbose output"
    echo "  -n, --name     Set your name"
    exit 0
fi
```