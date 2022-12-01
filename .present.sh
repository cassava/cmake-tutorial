function git-go-begin() {
    git checkout $(git rev-list --max-parents=0 --abbrev-commit HEAD)
}

function git-go-end() {
    git checkout main
}

function git-go-diff() {
    git diff HEAD^1
}

function git-go-next() {
    git log --reverse --pretty=%H main | grep -A 1 $(git rev-parse HEAD) | tail -n1 | xargs git checkout
    while [ $# -ne 0 ]; do
        case $1 in
            -d|--diff)
                git-go-diff
                ;;
            -c|--clean)
                git clean -xf
                ;;
            *)
                echo "error: unrecognized argument: $1"
                ;;
        esac
        shift 1
    done
}

function git-go-prev() {
    git checkout HEAD^1
}
