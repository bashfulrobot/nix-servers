# Docs
# ---- https://github.com/casey/just
# ---- https://stackabuse.com/how-to-change-the-output-color-of-echo-in-linux/
# load a .env file if in the directory
set dotenv-load
# Ignore recipe lines beginning with #.
set ignore-comments
# Search justfile in parent directory if the first recipe on the command line is not found.
set fallback

# Color
BLACK := `tput setaf 0`
BLACK_BOLD := `tput setaf 0; tput bold`
BLACK_ITALIC := `tput setaf 0; tput sitm`
BLACK_BOLD_ITALIC := `tput setaf 0; tput bold; tput sitm`

RED := `tput setaf 1`
RED_BOLD := `tput setaf 1; tput bold`
RED_ITALIC := `tput setaf 1; tput sitm`
RED_BOLD_ITALIC := `tput setaf 1; tput bold; tput sitm`

GREEN := `tput setaf 2`
GREEN_BOLD := `tput setaf 2; tput bold`
GREEN_ITALIC := `tput setaf 2; tput sitm`
GREEN_BOLD_ITALIC := `tput setaf 2; tput bold; tput sitm`

YELLOW := `tput setaf 3`
YELLOW_BOLD := `tput setaf 3; tput bold`
YELLOW_ITALIC := `tput setaf 3; tput sitm`
YELLOW_BOLD_ITALIC := `tput setaf 3; tput bold; tput sitm`

BLUE := `tput setaf 4`
BLUE_BOLD := `tput setaf 4; tput bold`
BLUE_ITALIC := `tput setaf 4; tput sitm`
BLUE_BOLD_ITALIC := `tput setaf 4; tput bold; tput sitm`

MAGENTA := `tput setaf 5`
MAGENTA_BOLD := `tput setaf 5; tput bold`
MAGENTA_ITALIC := `tput setaf 5; tput sitm`
MAGENTA_BOLD_ITALIC := `tput setaf 5; tput bold; tput sitm`

CYAN := `tput setaf 6`
CYAN_BOLD := `tput setaf 6; tput bold`
CYAN_ITALIC := `tput setaf 6; tput sitm`
CYAN_BOLD_ITALIC := `tput setaf 6; tput bold; tput sitm`

WHITE := `tput setaf 7`
WHITE_BOLD := `tput setaf 7; tput bold`
WHITE_ITALIC := `tput setaf 7; tput sitm`
WHITE_BOLD_ITALIC := `tput setaf 7; tput bold; tput sitm`

RESET := `tput sgr0`
# hostname := `hostname`

# "_" hides the recipie from listings
_default:
    @just --list --list-prefix ····

# Print `just` help
help:
    @just --help
# Rebuild nixos cfg on your current host.
rebuild:
    @sudo nixos-rebuild switch --flake .#\{{`hostname`}}
# Update Flake & Rebuild nixos cfg on your current host.
update:
    @sudo nixos-rebuild switch --upgrade --flake .#\{{`hostname`}}
# Garbage collect the current host
garbage:
    @sudo nix-collect-garbage -d