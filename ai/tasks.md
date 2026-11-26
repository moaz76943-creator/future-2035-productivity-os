# Agent task queue

The improve agent (tool/ai/improve_agent.py) works on the first open task every other run.
Each task names the files it may change in backticks. Claude ticks a task ([x]) after
reviewing and merging the draft; agents never edit this file.

- [ ] Goal editor sheet: make it simpler to scan (group the optional fields under one
      expansion labelled with an existing text, keep every feature and key) `lib/features/goals/presentation/widgets/goal_editor_sheet.dart`
- [ ] Habit editor sheet: show the colour choices in one horizontally scrolling row and group
      optional fields, keep every feature and key `lib/features/habits/presentation/widgets/habit_editor_sheet.dart`
- [ ] Own music: show the chosen track's name in the player bar when it plays, reusing
      existing texts only `lib/features/sounds/presentation/widgets/player_bar.dart`
- [ ] Own music card: make the whole card accessible (one semantic label, 48dp targets,
      large text without overflow) `lib/features/sounds/presentation/widgets/music_card.dart`
- [ ] Sounds screen: when only own music plays, the mixer sheet should not show the
      "add a sound" hint as if nothing plays `lib/features/sounds/presentation/widgets/player_bar.dart`
