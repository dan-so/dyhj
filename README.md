# dyhj

`dyhj` is a tool to interact with many tasks and subtasks in a Jira sprint.

The name is a four-letter word, keeping consistency with all other tool names in existence. It is particularly easy to type on a dvorak keyboard.

## dependencies

`go-jira` must be installed and configured.

## configuration

`dyhj` is configured using environment variables.

Output from `go-jira` will be written to `LOGFILE`, which defaults to
`/tmp/dyhj.log`.

The location of the go-jira executable can be specified as `GOJIRA`. Without
`GOJIRA` set, `dyhj` will search in your `PATH` for `jira`.

## usage

Running `dyhj` with `go-jira` correctly configured will first the tasks of the
current sprint that have been assigned to you, then fetch each of those
subtasks. It will then ask you what you want to do with each subtask:

```
t               mark subtask to-do
i or w          mark subtask in-progress
d               mark subtask done
n               unassign yourself from the subtask
s               skip this subtask; do nothing
S               skip all subtasks for the parent task (does not work)
q or f          exit `dyhj`
```

Once the selection is made, `dyhj` forks and performs the action in the
background, so there is no delay between selections.
