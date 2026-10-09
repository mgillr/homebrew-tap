# mgillr/homebrew-tap

Homebrew formulas for mgillr tools.

```bash
brew install mgillr/tap/hivevault
hivevault init
```

| Formula | What it installs | Source |
|---|---|---|
| `hivevault` | One shared, never-forgetting memory for every AI session (MCP server, git-backed, CRDT); the `hivevault` command | https://github.com/mgillr/hivevault |

Each formula installs the published npm package into its own `libexec` and links the command; `brew upgrade hivevault` follows npm releases. Formulas are maintained in the tools' own repositories (for hivevault: `packaging/homebrew/hivevault.rb`) and copied here on release.
