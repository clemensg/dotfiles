# emacsclient.zsh
# Clemens Gruber, 2014
#
# Use an Emacs daemon with emacsclient
#

function emacsdaemonclient() {
    if [[ "$1" == "-" ]]; then
        TMP="$(mktemp /tmp/emacsstdin-XXXXXX)"
        cat >$TMP
        emacsclient -a "" $TMP
	rm $TMP
    elif [[ -z "$1" ]]; then
        emacsclient -a "" -t $@
    else
        emacsclient -a "" $@
    fi
}

export EMACS=emacsdaemonclient
