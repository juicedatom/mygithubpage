# scripts/

Development scripts for joshmanela.me. Run them from anywhere in the repo — each
one `cd`s to the repo root itself.

## Quick start

```sh
scripts/bootstrap    # once, per machine
scripts/server       # http://localhost:4000, live reload, opens a browser
```

## The scripts

| Script | What it does |
| --- | --- |
| `bootstrap` | Installs Ruby for this platform, then the gems into `vendor/bundle`. Safe to re-run. |
| `server` | Live-reloading preview server. `PORT=4001`, `--no-open`, `--prod`, `--verbose`. |
| `build` | Builds into `_site/`. `--prod` matches what GitHub Pages publishes. |
| `doctor` | **Start here when something is wrong.** Checks the toolchain, config, build output, and live Pages status, then reports everything it found. |
| `check-links` | Builds and runs html-proofer over `_site/`. `--external` also follows outbound URLs. |
| `clean` | Deletes `_site/` and the caches. `--all` also drops `vendor/bundle` and `Gemfile.lock`. |
| `cibuild` | Production build plus the sanity checks CI should gate on. |

## Layout

```
scripts/
├── lib/common.sh     shared helpers (logging, repo root, ruby detection)
├── mac/              env.sh + bootstrap for macOS  (Homebrew)
├── linux/            env.sh + bootstrap for Linux  (apt/dnf/pacman/zypper)
└── <the scripts>     platform-agnostic; they source lib/common.sh, which
                      sources the right <platform>/env.sh automatically
```

Only toolchain installation genuinely differs per platform, so that is all the
`mac/` and `linux/` directories hold. Everything else is shared, so a fix to
`build` or `doctor` lands on both platforms at once.

`<platform>/env.sh` is responsible for two things: putting a usable Ruby on
`PATH`, and setting `OPEN_CMD` (`open` vs `xdg-open`).

## Notes

- macOS system Ruby is 2.6 and cannot build Jekyll 4.4's native gems. On a Mac,
  `bootstrap` installs Homebrew's Ruby; the scripts put it on `PATH` themselves,
  so you don't have to change your shell profile.
- Gems go to `vendor/bundle` (gitignored), so nothing is written system-wide.
- Not seeing a change in the preview? `scripts/clean && scripts/server`.
