fpath=($ZSH_CUSTOM/functions $fpath)

if [[ -d "$ZSH_CUSTOM/functions" ]]; then
    autoload -U $ZSH_CUSTOM/functions/*(:t)
fi