complete rsf --no-files
complete rsf --long help --short h --description "Print help" --condition "not __fish_seen_argument --help -h"
complete rsf --long dry-run --short n --description "Show what would have been transferred" --condition "not __fish_seen_argument --dry-run"
