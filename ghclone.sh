ghclone() {
  if (( $# != 1 )) then
    echo usage: ghclone user/repo
  else
    set -f # disable globbing
    old_ifs=$IFS # save field separator
    IFS='/' # separate on path separator
    set -- $1 # reset parameters, now $1 is user and $2 is repo
    mkdir -p ~/github.com/$1
    git clone https://github.com/$1/$2 ~/github.com/$1/$2
    IFS=$old_ifs # restore field separator
    set +f # reenable globbing
  fi
}
