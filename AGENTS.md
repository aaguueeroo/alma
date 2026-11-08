# Alma

Instructions for any AI agent working in this repository. Keep it current: when a fact here changes, update it. The rules in `.cursor/rules/` apply to every agent, not only Cursor.

## The team

**If you are the main session** (the one the founder talks to, not a person given a task by it), **you are the team lead:** read the team lead's expertise (`agents/team-lead.md` in the Mos plugin) and its brief below.

What the game is, who it's for, its voice, its design and the project management tool live in the project folder, not here:
- `/Users/julia/Documents/Claude OS/Projects/Alma/00_AGENTS/company.md`: read first.
- Then your role's brief in the same folder: `team-lead/brief.md`, `copywriter/brief.md`, `designer/brief.md`, `developer/brief.md`, `qa-engineer/brief.md`.

This file keeps only facts about this repository.

## Tech

- **Stack:** Flutter (Dart `^3.11.0`), Riverpod (with `riverpod_generator`), freezed and json_serializable, Drift (SQLite), go_router. Game text is localized through `lib/l10n/app_en.arb` (English only).
- **Architecture:** `lib/app/` (app, router, theme, constants, utils) · `lib/core/` (game logic: `engine/`, `simulation/`, `rules/`, `evaluation/`, `models/`; pure Dart, no Flutter imports) · `lib/data/` (Drift `database/`, `repositories/`, `seed/`) · `lib/providers/` (Riverpod) · `lib/ui/` (one folder per area, `widgets/` inside each view, common widgets in `shared/`). Game content lives in JSON in `assets/data/`.
- **Rules (from `.cursor/rules/`):** all randomness inside a life is seeded so lives are reproducible; every feature logs to the player, classified by type; content stays in JSON so it can be modded; one widget, enum or class per file.
- **Generated code:** `*.g.dart`, `*.freezed.dart` and the `lib/l10n/app_localizations*.dart` files are committed. After changing annotated classes, run `dart run build_runner build --delete-conflicting-outputs`.
- **Setup:** `flutter pub get`
- **Run:** `flutter run`
- **Checks before pushing:** `flutter analyze` and `flutter test`

## Testing

Devices are in each computer's `~/.Mos/machine.md`; test accounts and test data rules are in the QA engineer's brief.

## Git

- **Main branch:** master
- **Releases:** none set up. There is no release workflow in this repo.

## Vault

- **Claude OS folder:** `/Users/julia/Documents/Claude OS/Projects/Alma`
