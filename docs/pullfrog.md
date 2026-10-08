# Pullfrog owner commands

Pullfrog runs only after **jatmn** creates a new top-level issue or PR comment
whose first line begins with `@pullfrog` and a visible instruction:

```text
@pullfrog review this PR and report actionable defects
```

Other commenters, passive or quoted mentions, bare mentions, edited comments,
inline review comments and workflow reruns cannot run the agent. Post a new
command to retry. The workflow checks GitHub's actor identity and jatmn's account
ID, `12479882`, then checks out the trusted default branch. The Python helper
verifies the repository, event and original comment before the agent receives
credentials. The verified owner role lets commands manage contributor-created
issues and PRs too.

This ports the parent mod's
[owner-command setup](https://github.com/jatmn/Yuoki-Factorio-2.x/blob/083764802d322d45b6b27a1f730a576767acdac7/docs/pullfrog.md).
Opening a PR does not launch Pullfrog. Its agent workflow has no PR, push,
schedule or `workflow_dispatch` trigger. The separate **CI** dispatcher runs
authorization tests in its Python job and workflow validation in its actionlint
job; these validation jobs never launch the agent.

## Runtime policy

Keep managed mentions, automatic reviews/re-reviews, issue processing,
review responses, CI autofix, labels, automatic approvals and auto-merge off.
Keep non-collaborator triggers off. Keep pushes and shell access restricted.

The workflow selects `openai/gpt-sol`, as in the reference repository. It allows
feature-branch pushes, blocks default-branch/tag pushes and branch deletion,
and uses restricted shell access. Subscription credentials remain in Pullfrog's
encrypted store. Native status/verdict checks apply only to explicitly requested
PR commands; they do not turn on automatic reviews or approving reviews.

## Maintenance and checks

The action bootstrap is pinned to Pullfrog v0.1.97; its npm runtime accepts
compatible 0.1.x updates. Keep `PULLFROG_VERSION` in the helper aligned with the
bootstrap and verify the upstream payload contract when updating it. Large
commands use the original GitHub event snapshot on the same runner, preserving
the authorized comment even if it is subsequently edited on GitHub.

```sh
python3 tools/test_pullfrog_command.py
actionlint
git diff --check
```
