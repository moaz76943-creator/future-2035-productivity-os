# Agent task queue

The improve agent (tool/ai/improve_agent.py) works on the first open task every other run.
Each task names the files it may change in backticks. Claude ticks a task ([x]) after
reviewing and merging the draft; agents never edit this file.

- [ ] Goal editor sheet: make it simpler to scan (group the optional fields under one
      expansion labelled with an existing text, keep every feature and key) `lib/features/goals/presentation/widgets/goal_editor_sheet.dart`
- [ ] Habit editor sheet: show the colour choices in one horizontally scrolling row and group
      optional fields, keep every feature and key `lib/features/habits/presentation/widgets/habit_editor_sheet.dart`
- [ ] Own audio file: show the chosen file's name in the player bar when it plays, reusing
      existing texts only (never the word "music") `lib/features/sounds/presentation/widgets/player_bar.dart`
- [ ] Own audio card: make the whole card accessible (one semantic label, 48dp targets,
      large text without overflow) `lib/features/sounds/presentation/widgets/music_card.dart`
- [ ] Sounds screen: when only the own audio file plays, the mixer sheet should not show the
      "add a sound" hint as if nothing plays `lib/features/sounds/presentation/widgets/player_bar.dart`
- [ ] Tasks screen (reference design): show "Today" and "Upcoming" as collapsible groups with a
      count in the header, and a rounded "add task" bar at the top; reuse existing texts, keep
      every filter, sort and key `lib/features/tasks/presentation/tasks_screen.dart`
- [ ] Calendar (reference design): under the month grid, a "today's events" list with a coloured
      dot and time per event, reusing existing texts and data `lib/features/calendar/presentation/day_agenda.dart`
- [ ] Focus (reference design): mode chips as one rounded segmented row above the ring and two
      small stat cards (sessions today, total focus minutes) under the controls, reusing existing
      texts and data `lib/features/focus/presentation/focus_screen/countdown_choices.dart`

## Future-premium design (calm, nature, high visual comfort). Reuse existing texts only.
- [ ] Home: soften the hero (gentle gradient sky behind the landscape, more air above the
      greeting), stat tiles with a thin tinted top edge per module colour `lib/features/dashboard/presentation/dashboard_screen/stats.dart`
- [ ] Home header: greeting bigger and lighter weight, date in a calm secondary colour, one
      clear focus button `lib/features/dashboard/presentation/dashboard_screen/header.dart`
- [ ] Shared cards: softer shadow, 1px light inner border, slightly larger radius; keep the API
      unchanged `lib/core/design_system/components/surfaces.dart`
- [ ] Background: a very subtle cool gradient (pearl to soft blue) behind every screen, light
      and dark, without extra cost per frame `lib/core/design_system/components/surfaces.dart`
- [ ] Focus: calmer controls row (one big primary button, two quiet round buttons) and more
      space around the ring `lib/features/focus/presentation/focus_screen.dart`
- [ ] Spaces: module tiles in a calm 2-column grid with equal heights and soft module tints `lib/features/spaces/presentation/spaces_screen.dart`
- [ ] Calendar: today as a filled teal circle, event dots under days, calmer weekday row `lib/features/calendar/presentation/month_view.dart`
- [ ] Flashcards decks: deck cards with a progress ring and the due count as a soft pill `lib/features/flashcards/presentation/decks_screen.dart`
- [ ] Flashcards review: card with soft shadow, rating buttons as calm coloured pills `lib/features/flashcards/presentation/review_screen.dart`
- [ ] Notes list: calmer cards, first line bold, date small and quiet `lib/features/notes/presentation/notes_screen.dart`
- [ ] Goals: progress shown as a soft ring per goal, calmer list `lib/features/goals/presentation/goals_screen.dart`
- [ ] Habits: week strip with soft filled circles for done days `lib/features/habits/presentation/habits_screen.dart`
- [ ] Sounds: sound tiles with soft tinted backgrounds and a clear on/off state `lib/features/sounds/presentation/widgets/sound_tile.dart`
- [ ] Analytics: charts with softer grid lines and rounded bars `lib/core/design_system/components/charts.dart`
- [ ] Settings: grouped sections in calm cards with icons in soft circles `lib/features/settings/presentation/settings_screen.dart`
- [ ] Search: calmer results with module colour dots `lib/features/search/presentation/search_screen.dart`
- [ ] Empty states: softer illustration orbit and calmer text `lib/core/design_system/components/states.dart`

## Quality and robustness (any screen)
- [ ] Projects list: calmer cards with task count and progress bar `lib/features/projects/presentation/projects_screen.dart`
- [ ] Habit detail: make the history readable at large text sizes without overflow `lib/features/habits/presentation/habit_detail_screen.dart`
- [ ] Goal detail: same large-text and RTL check, fix any overflow `lib/features/goals/presentation/goal_detail_screen.dart`
- [ ] Event editor: group optional fields like the task editor (two folded rows), keep every
      field and key `lib/features/calendar/presentation/event_editor_screen.dart`
- [ ] Note editor: calmer toolbar spacing, 48dp targets everywhere `lib/features/notes/presentation/note_editor_screen.dart`
- [ ] Onboarding: calmer pages with the landscape art and one clear button `lib/features/onboarding/presentation/onboarding_screen.dart`
- [ ] Immersive focus: check RTL and large text; fix any clipping `lib/features/focus/presentation/immersive_focus_screen.dart`
