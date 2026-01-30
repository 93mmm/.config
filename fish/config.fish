if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx GOPATH $HOME/go

function amam
    set -xg GONOPROXY 'git.mos.ru/*'
    set -xg GONOSUMDB 'git.mos.ru/*'
    set -xg GOPRIVATE 'git.mos.ru/*'
    set -xg GOPROXY 'https://repo-mirror.mos.ru/repository/go-public'

    echo "go envs are ok"
end

function callers
    set -xg GONOPROXY "github.com/ITKS777/*"
    set -xg GONOSUMDB "github.com/ITKS777/*"
    set -xg GOPROXY "https://proxy.golang.org,direct"
    set -gx GOPRIVATE "github.com/ITKS777/*"

    set -gx GIT_TERMINAL_PROMPT 1

    echo "go envs are ok"
end


if not contains $GOPATH/bin $PATH
    set -gx PATH $GOPATH/bin $PATH
end
