if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx GOPATH $HOME/go

if not contains $GOPATH/bin $PATH
    set -gx PATH $GOPATH/bin $PATH
end
