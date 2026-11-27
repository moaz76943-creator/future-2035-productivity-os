// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Acasă';

  @override
  String get navTasks => 'Sarcini';

  @override
  String get navFocus => 'Concentrare';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get navSpaces => 'Spații';

  @override
  String get moduleProjects => 'Proiecte';

  @override
  String get moduleNotes => 'Notițe';

  @override
  String get moduleFlashcards => 'Cartonașe';

  @override
  String get moduleGoals => 'Obiective';

  @override
  String get moduleHabits => 'Obiceiuri';

  @override
  String get moduleAnalytics => 'Statistici';

  @override
  String get moduleSearch => 'Căutare';

  @override
  String get moduleAssistant => 'Asistent';

  @override
  String get moduleSettings => 'Setări';

  @override
  String get moduleTrash => 'Coș de gunoi';

  @override
  String get actionSave => 'Salvează';

  @override
  String get actionCancel => 'Anulează';

  @override
  String get actionDelete => 'Șterge';

  @override
  String get actionEdit => 'Editează';

  @override
  String get actionDone => 'Gata';

  @override
  String get actionAdd => 'Adaugă';

  @override
  String get actionCreate => 'Creează';

  @override
  String get actionClose => 'Închide';

  @override
  String get actionBack => 'Înapoi';

  @override
  String get actionUndo => 'Anulează acțiunea';

  @override
  String get actionRestore => 'Restabilește';

  @override
  String get actionRetry => 'Încearcă din nou';

  @override
  String get actionContinue => 'Continuă';

  @override
  String get actionSkip => 'Omite';

  @override
  String get actionArchive => 'Arhivează';

  @override
  String get actionUnarchive => 'Scoate din arhivă';

  @override
  String get actionPin => 'Fixează';

  @override
  String get actionUnpin => 'Anulează fixarea';

  @override
  String get actionMore => 'Mai multe opțiuni';

  @override
  String get actionClear => 'Golește';

  @override
  String get actionSearch => 'Caută';

  @override
  String get actionSort => 'Sortează';

  @override
  String get actionShare => 'Distribuie';

  @override
  String get actionImport => 'Importă';

  @override
  String get actionExport => 'Exportă';

  @override
  String get actionPause => 'Pauză';

  @override
  String get actionResume => 'Reia';

  @override
  String get actionStart => 'Pornește';

  @override
  String get actionStop => 'Oprește';

  @override
  String get actionComplete => 'Finalizează';

  @override
  String get actionDeleteForever => 'Șterge definitiv';

  @override
  String get actionEmptyTrash => 'Golește coșul';

  @override
  String get actionUnlink => 'Elimină legătura';

  @override
  String get actionCustomize => 'Personalizează';

  @override
  String get actionPreview => 'Previzualizare';

  @override
  String get actionLog => 'Notează progresul';

  @override
  String get stateLoading => 'Se încarcă…';

  @override
  String get stateSaving => 'Se salvează…';

  @override
  String get stateSaved => 'Salvat';

  @override
  String get stateUnsaved => 'Modificări nesalvate';

  @override
  String get errorGenericTitle => 'Ceva nu a mers bine';

  @override
  String get errorGenericMessage => 'Datele tale sunt în siguranță. Încearcă din nou.';

  @override
  String get errorLoadFailed => 'Acest conținut nu a putut fi încărcat.';

  @override
  String get errorSaveFailed => 'Nu s-a putut salva. Modificările tale sunt încă aici.';

  @override
  String get validationRequired => 'Acest câmp este obligatoriu';

  @override
  String get validationTitleRequired => 'Introdu un titlu';

  @override
  String get validationNameRequired => 'Introdu un nume';

  @override
  String get validationTooLong => 'Este prea lung';

  @override
  String get validationEndBeforeStart => 'Sfârșitul trebuie să fie după început';

  @override
  String get validationStartAfterDue => 'Data de început trebuie să fie înainte de termen';

  @override
  String get validationPositiveNumber => 'Introdu un număr mai mare decât zero';

  @override
  String get validationDependencyCycle => 'Așa s-ar crea o dependență circulară';

  @override
  String get validationInvalidRepeat => 'Această regulă de repetare nu este validă';

  @override
  String get deletedItem => 'Mutat în coșul de gunoi';

  @override
  String get untitled => 'Fără titlu';

  @override
  String get noProject => 'Fără proiect';

  @override
  String get greetingMorning => 'Bună dimineața';

  @override
  String get greetingAfternoon => 'Bună ziua';

  @override
  String get greetingEvening => 'Bună seara';

  @override
  String get dashFocusToday => 'Concentrarea de azi';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done din $target';
  }

  @override
  String get dashStartFocus => 'Începe concentrarea';

  @override
  String get dashFocusRunning => 'Sesiune în desfășurare';

  @override
  String get dashTodayTasks => 'De făcut azi';

  @override
  String get dashAgenda => 'Agendă';

  @override
  String get dashHabits => 'Obiceiurile de azi';

  @override
  String get dashGoals => 'Obiective';

  @override
  String get dashReview => 'Recapitulare';

  @override
  String get dashRecentNotes => 'Notițe recente';

  @override
  String get dashInsight => 'Sugestie';

  @override
  String get dashSeeAll => 'Vezi tot';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe de recapitulat',
      few: '$count cartonașe de recapitulat',
      one: '1 cartonaș de recapitulat',
      zero: 'Niciun cartonaș de recapitulat',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Recapitulează acum';

  @override
  String get dashCustomizeTitle => 'Secțiunile paginii principale';

  @override
  String get dashCustomizeHint => 'Alege ce apare pe ecranul principal.';

  @override
  String get dashSectionFocus => 'Concentrare';

  @override
  String get dashSectionToday => 'Sarcinile de azi';

  @override
  String get dashSectionAgenda => 'Agendă';

  @override
  String get dashSectionHabits => 'Obiceiuri';

  @override
  String get dashSectionGoals => 'Obiective';

  @override
  String get dashSectionReview => 'Recapitularea cartonașelor';

  @override
  String get dashSectionNotes => 'Notițe recente';

  @override
  String get dashSectionInsight => 'Sugestii';

  @override
  String get quickAddTask => 'Sarcină nouă';

  @override
  String get quickAddNote => 'Notiță nouă';

  @override
  String get quickAddEvent => 'Eveniment nou';

  @override
  String get quickStartFocus => 'Concentrare';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ai $count de sarcini restante. Începe cu cea mai importantă.',
      few: 'Ai $count sarcini restante. Începe cu cea mai importantă.',
      one: 'Ai 1 sarcină restantă. Reprogramează-o sau termin-o mai întâi.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Mai ai $minutes min până la obiectivul zilnic de concentrare.';
  }

  @override
  String get insightCardsDue => 'Recapitulează cartonașele acum, cât sunt proaspete în minte.';

  @override
  String get insightAllClear =>
      'Totul merge conform planului. Planifică ziua de mâine sau ia o pauză liniștită.';

  @override
  String insightHabitStreak(String habit) {
    return 'Păstrează seria: $habit este încă deschis azi.';
  }

  @override
  String get focusTitle => 'Concentrare';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Cronometru invers';

  @override
  String get focusModeCountUp => 'Cronometru';

  @override
  String get focusModeOpen => 'Liber';

  @override
  String get focusPhaseWork => 'Concentrare';

  @override
  String get focusPhaseShortBreak => 'Pauză scurtă';

  @override
  String get focusPhaseLongBreak => 'Pauză lungă';

  @override
  String get focusReady => 'Gata când ești și tu';

  @override
  String get focusPaused => 'În pauză';

  @override
  String get focusRunning => 'Concentrat';

  @override
  String get focusDuration => 'Durată';

  @override
  String get focusLinkTask => 'Leagă o sarcină';

  @override
  String get focusLinkedTask => 'Lucrez la';

  @override
  String get focusNoTask => 'Nicio sarcină legată';

  @override
  String focusCycle(int current, int total) {
    return 'Runda $current din $total';
  }

  @override
  String get focusSkipBreak => 'Omite pauza';

  @override
  String get focusStartBreak => 'Începe pauza';

  @override
  String get focusStartNext => 'Începe următoarea concentrare';

  @override
  String get focusSessionComplete => 'Sesiune finalizată';

  @override
  String get focusSessionStopped => 'Sesiune salvată';

  @override
  String focusSessionSummary(String duration) {
    return 'Te-ai concentrat $duration.';
  }

  @override
  String get focusAddNote => 'Adaugă o notiță despre această sesiune';

  @override
  String get focusHistory => 'Istoric';

  @override
  String get focusNoHistory => 'Sesiunile finalizate apar aici';

  @override
  String get focusOutcomeCompleted => 'Finalizată';

  @override
  String get focusOutcomeInterrupted => 'Oprită mai devreme';

  @override
  String get focusRecovered => 'Sesiunea a continuat cât timp aplicația a fost închisă.';

  @override
  String get focusCompletedWhileAway =>
      'O sesiune s-a încheiat cât timp aplicația a fost închisă și a fost salvată.';

  @override
  String get focusNotificationsOff =>
      'Notificările sunt oprite. Nu vei fi anunțat când se termină o sesiune.';

  @override
  String get focusBatteryHint =>
      'Unele dispozitive opresc aplicațiile în fundal. Cronometrul rămâne precis, dar alertele pot întârzia. Permite utilizarea nerestricționată a bateriei pentru alerte sigure.';

  @override
  String get focusOpenSettings => 'Deschide setările';

  @override
  String get focusStopConfirmTitle => 'Oprești această sesiune?';

  @override
  String get focusStopConfirmMessage => 'Timpul de concentrare de până acum va fi salvat.';

  @override
  String get focusDiscard => 'Renunță';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes de minute',
      few: '$minutes minute',
      one: '1 minut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, mai sunt $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, au trecut $time';
  }

  @override
  String get focusDeleteSession => 'Șterge sesiunea';

  @override
  String get tasksTitle => 'Sarcini';

  @override
  String get tasksViewToday => 'Azi';

  @override
  String get tasksViewUpcoming => 'Următoare';

  @override
  String get tasksViewAll => 'Toate';

  @override
  String get tasksViewOverdue => 'Restante';

  @override
  String get tasksViewCompleted => 'Finalizate';

  @override
  String get tasksQuickAddHint => 'Adaugă o sarcină…';

  @override
  String get tasksEmptyTitle => 'Totul e gata';

  @override
  String get tasksEmptyMessage => 'Adaugă o sarcină ca să-ți conturezi ziua.';

  @override
  String get tasksEmptyCompleted => 'Sarcinile finalizate apar aici.';

  @override
  String get taskNew => 'Sarcină nouă';

  @override
  String get taskEdit => 'Editează sarcina';

  @override
  String get taskTitleLabel => 'Titlu';

  @override
  String get taskTitleHint => 'Ce trebuie făcut?';

  @override
  String get taskDescriptionLabel => 'Descriere';

  @override
  String get taskNotesLabel => 'Notițe';

  @override
  String get taskPriority => 'Prioritate';

  @override
  String get priorityNone => 'Niciuna';

  @override
  String get priorityLow => 'Scăzută';

  @override
  String get priorityMedium => 'Medie';

  @override
  String get priorityHigh => 'Ridicată';

  @override
  String get priorityUrgent => 'Urgentă';

  @override
  String get taskDueDate => 'Termen';

  @override
  String get taskStartDate => 'Data de început';

  @override
  String get taskReminder => 'Memento';

  @override
  String get taskRepeat => 'Repetare';

  @override
  String get taskProject => 'Proiect';

  @override
  String get taskCategory => 'Categorie';

  @override
  String get taskCategoryHint => 'de ex. Muncă, Acasă, Studiu';

  @override
  String get taskEstimateMinutes => 'Estimare (minute)';

  @override
  String get taskTracked => 'Concentrare măsurată';

  @override
  String get taskLabels => 'Etichete';

  @override
  String get taskAddLabel => 'Etichetă nouă';

  @override
  String get taskChecklist => 'Listă de verificare';

  @override
  String get taskAddChecklistItem => 'Adaugă un element';

  @override
  String get taskSubtasks => 'Subsarcini';

  @override
  String get taskAddSubtask => 'Adaugă o subsarcină';

  @override
  String get taskDependencies => 'Blocată de';

  @override
  String get taskAddDependency => 'Adaugă o sarcină care blochează';

  @override
  String get taskLinkedNotes => 'Notițe legate';

  @override
  String get taskSetTime => 'Setează ora';

  @override
  String get taskNoDate => 'Fără dată';

  @override
  String get taskCompleted => 'Sarcină finalizată';

  @override
  String get taskNextOccurrence => 'Următoarea repetare a fost creată';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Întârziată cu $days de zile',
      few: 'Întârziată cu $days zile',
      one: 'Întârziată cu 1 zi',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marchează „$title” ca terminată';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marchează „$title” ca neterminată';
  }

  @override
  String get sortSmart => 'Inteligent';

  @override
  String get sortDueDate => 'Termen';

  @override
  String get sortPriority => 'Prioritate';

  @override
  String get sortCreated => 'Cele mai noi';

  @override
  String get sortTitle => 'Titlu';

  @override
  String get filterAllProjects => 'Toate proiectele';

  @override
  String get filterAnyPriority => 'Orice prioritate';

  @override
  String get filterTitle => 'Filtrare și sortare';

  @override
  String get dateToday => 'Azi';

  @override
  String get dateTomorrow => 'Mâine';

  @override
  String get dateYesterday => 'Ieri';

  @override
  String get repeatNever => 'Nu se repetă';

  @override
  String get repeatDaily => 'În fiecare zi';

  @override
  String get repeatWeekdays => 'În fiecare zi lucrătoare';

  @override
  String get repeatWeekly => 'În fiecare săptămână';

  @override
  String get repeatMonthly => 'În fiecare lună';

  @override
  String get repeatYearly => 'În fiecare an';

  @override
  String get repeatCustom => 'Personalizat';

  @override
  String get repeatEvery => 'Repetă la fiecare';

  @override
  String get repeatOnDays => 'În zilele';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'de zile',
      few: 'zile',
      one: 'zi',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'de săptămâni',
      few: 'săptămâni',
      one: 'săptămână',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'de luni',
      few: 'luni',
      one: 'lună',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'de ani',
      few: 'ani',
      one: 'an',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de ori',
      few: '$count ori',
      one: 'o dată',
    );
    return 'Se încheie după $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nu se încheie niciodată';

  @override
  String get reminderAtTime => 'La ora evenimentului';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Cu $minutes de minute înainte',
      few: 'Cu $minutes minute înainte',
      one: 'Cu 1 minut înainte',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Cu $hours de ore înainte',
      few: 'Cu $hours ore înainte',
      one: 'Cu 1 oră înainte',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'Cu 1 zi înainte';

  @override
  String get projectsTitle => 'Proiecte';

  @override
  String get projectsEmptyTitle => 'Niciun proiect încă';

  @override
  String get projectsEmptyMessage =>
      'Grupează sarcinile, notițele și timpul de concentrare care țin împreună.';

  @override
  String get projectNew => 'Proiect nou';

  @override
  String get projectEdit => 'Editează proiectul';

  @override
  String get projectName => 'Nume';

  @override
  String get projectDescription => 'Descriere';

  @override
  String get projectGoal => 'Scop';

  @override
  String get projectDeadline => 'Termen limită';

  @override
  String get projectColor => 'Culoare';

  @override
  String get projectIcon => 'Pictogramă';

  @override
  String get projectProgress => 'Progres';

  @override
  String projectTasksDone(int done, int total) {
    return '$done din $total sarcini terminate';
  }

  @override
  String get projectFocusTime => 'Timp de concentrare';

  @override
  String get projectArchived => 'Proiecte arhivate';

  @override
  String get projectShowArchived => 'Arată arhivate';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Mai sunt $days de zile',
      few: 'Mai sunt $days zile',
      one: 'Mai e 1 zi',
      zero: 'Termen azi',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Termen depășit';

  @override
  String get calendarTitle => 'Calendar';

  @override
  String get calendarMonth => 'Lună';

  @override
  String get calendarWeek => 'Săptămână';

  @override
  String get calendarDay => 'Zi';

  @override
  String get calendarToday => 'Azi';

  @override
  String get calendarPrevious => 'Anterior';

  @override
  String get calendarNext => 'Următor';

  @override
  String get calendarNoEvents => 'Nimic programat';

  @override
  String get calendarAllDay => 'Toată ziua';

  @override
  String get eventNew => 'Eveniment nou';

  @override
  String get eventEdit => 'Editează evenimentul';

  @override
  String get eventTitleHint => 'Titlul evenimentului';

  @override
  String get eventStarts => 'Începe';

  @override
  String get eventEnds => 'Se termină';

  @override
  String get eventKind => 'Tip';

  @override
  String get eventKindEvent => 'Eveniment';

  @override
  String get eventKindTimeBlock => 'Bloc de timp';

  @override
  String get eventKindFocus => 'Sesiune de concentrare';

  @override
  String get eventKindGoal => 'Obiectiv personal';

  @override
  String get eventDescription => 'Detalii';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se suprapune cu $count de evenimente',
      few: 'Se suprapune cu $count evenimente',
      one: 'Se suprapune cu 1 eveniment',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Suprapuneri în program în această zi';

  @override
  String get calendarTaskDue => 'Termen pentru sarcină';

  @override
  String get calendarDragHint => 'Ține apăsat și trage un eveniment pentru a-l reprograma';

  @override
  String get calendarRescheduled => 'Eveniment mutat';

  @override
  String get calendarScheduleTask => 'Programează ca bloc de timp';

  @override
  String get notesTitle => 'Notițe';

  @override
  String get notesViewAll => 'Toate';

  @override
  String get notesViewPinned => 'Fixate';

  @override
  String get notesViewFavorites => 'Favorite';

  @override
  String get notesViewArchived => 'Arhivate';

  @override
  String get notesTags => 'Etichete';

  @override
  String get notesNewNotebook => 'Carnet nou';

  @override
  String get notesNoNotebook => 'Fără carnet';

  @override
  String get notesEmptyTitle => 'O pagină albă';

  @override
  String get notesEmptyMessage => 'Notează idei, note de la ședințe și cunoștințe.';

  @override
  String get noteTitleHint => 'Titlu';

  @override
  String get noteBodyHint =>
      'Începe să scrii…';

  @override
  String get noteFavorite => 'Favorită';

  @override
  String get noteUnfavorite => 'Elimină de la favorite';

  @override
  String get noteMoveTo => 'Mută în carnet';

  @override
  String get noteBacklinks => 'Legături din alte notițe';

  @override
  String get noteLinkedTasks => 'Sarcini legate';

  @override
  String get noteLinkTask => 'Leagă o sarcină';

  @override
  String get noteLinkProject => 'Proiect';

  @override
  String get noteFormatHeading => 'Titlu';

  @override
  String get noteFormatBold => 'Aldin';

  @override
  String get noteFormatItalic => 'Cursiv';

  @override
  String get noteFormatList => 'Listă cu puncte';

  @override
  String get noteFormatChecklist => 'Listă de verificare';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Editată $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cuvinte',
      few: '$count cuvinte',
      one: '1 cuvânt',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Cartonașe';

  @override
  String get flashEmptyTitle => 'Creează primul pachet';

  @override
  String get flashEmptyMessage =>
      'Repetarea la intervale îți arată fiecare cartonaș chiar înainte să-l uiți.';

  @override
  String get deckNew => 'Pachet nou';

  @override
  String get deckEdit => 'Editează pachetul';

  @override
  String get deckName => 'Numele pachetului';

  @override
  String get deckDescription => 'Descriere';

  @override
  String get deckDailyNew => 'Cartonașe noi pe zi';

  @override
  String get deckDailyReview => 'Obiectiv zilnic de recapitulare';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe',
      few: '$count cartonașe',
      one: '1 cartonaș',
      zero: 'Niciun cartonaș',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'De recapitulat';

  @override
  String get deckNewCards => 'Noi';

  @override
  String get deckMature => 'Învățate';

  @override
  String get deckStudy => 'Studiază';

  @override
  String get deckNothingDue => 'Nimic de recapitulat acum. Revino mai târziu.';

  @override
  String get deckEmptyCards => 'Adaugă cartonașe ca să începi să înveți.';

  @override
  String get cardNew => 'Cartonaș nou';

  @override
  String get cardEdit => 'Editează cartonașul';

  @override
  String get cardFront => 'Față';

  @override
  String get cardBack => 'Verso';

  @override
  String get cardFrontHint => 'Întrebare sau termen';

  @override
  String get cardBackHint => 'Răspuns sau definiție';

  @override
  String get cardTags => 'Etichete';

  @override
  String get cardAddAnother => 'Salvează și adaugă altul';

  @override
  String get reviewShowAnswer => 'Arată răspunsul';

  @override
  String get reviewAgain => 'Din nou';

  @override
  String get reviewHard => 'Greu';

  @override
  String get reviewGood => 'Bine';

  @override
  String get reviewEasy => 'Ușor';

  @override
  String reviewProgress(int done, int total) {
    return '$done din $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesiune finalizată';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ai recapitulat $count de cartonașe.',
      few: 'Ai recapitulat $count cartonașe.',
      one: 'Ai recapitulat 1 cartonaș.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Atinge pentru a vedea răspunsul';

  @override
  String get importCardsTitle => 'Importă cartonașe';

  @override
  String get importCardsHint =>
      'Lipește câte un cartonaș pe rând (fața și versoul separate printr-un tab sau punct și virgulă) sau alege un fișier: Excel (.xlsx), CSV, un pachet Anki (.apkg) sau un pachet exportat.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe importate',
      few: '$count cartonașe importate',
      one: '1 cartonaș importat',
      zero: 'Niciun cartonaș importat',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Acest conținut nu a putut fi importat.';

  @override
  String get exportCopied => 'Pachet exportat';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min',
      one: '1 min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de zile',
      few: '$count zile',
      one: '1 zi',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Obiective';

  @override
  String get goalsEmptyTitle => 'Țintește ceva';

  @override
  String get goalsEmptyMessage =>
      'Stabilește obiective zilnice, săptămânale, lunare sau pe termen lung și urmărește progresul real.';

  @override
  String get goalNew => 'Obiectiv nou';

  @override
  String get goalEdit => 'Editează obiectivul';

  @override
  String get goalTitleHint => 'Ce vrei să obții?';

  @override
  String get goalPeriod => 'Perioadă';

  @override
  String get goalPeriodDaily => 'Zilnic';

  @override
  String get goalPeriodWeekly => 'Săptămânal';

  @override
  String get goalPeriodMonthly => 'Lunar';

  @override
  String get goalPeriodLongTerm => 'Pe termen lung';

  @override
  String get goalTarget => 'Țintă';

  @override
  String get goalUnit => 'Unitate';

  @override
  String get goalUnitHint => 'de ex. pagini, km, ore';

  @override
  String get goalStatusActive => 'Activ';

  @override
  String get goalStatusPaused => 'În pauză';

  @override
  String get goalStatusAchieved => 'Atins';

  @override
  String get goalPause => 'Pune obiectivul pe pauză';

  @override
  String get goalResume => 'Reia obiectivul';

  @override
  String get goalMarkAchieved => 'Marchează ca atins';

  @override
  String goalProgressOf(String current, String target) {
    return '$current din $target';
  }

  @override
  String get goalLogAmount => 'Cantitate';

  @override
  String get goalLogNote => 'Notiță (opțional)';

  @override
  String get goalHistory => 'Istoric';

  @override
  String get goalNoHistory => 'Progresul notat apare aici';

  @override
  String get goalLinkedTasks => 'Sarcini legate';

  @override
  String get goalLinkedTasksHint =>
      'Fiecare sarcină legată finalizată contează ca 1 pentru acest obiectiv.';

  @override
  String get goalThisPeriod => 'Perioada aceasta';

  @override
  String get habitsTitle => 'Obiceiuri';

  @override
  String get habitsEmptyTitle => 'Pași mici, în fiecare zi';

  @override
  String get habitsEmptyMessage => 'Creează un obicei și bifează-l când îl faci.';

  @override
  String get habitNew => 'Obicei nou';

  @override
  String get habitEdit => 'Editează obiceiul';

  @override
  String get habitNameHint => 'de ex. Citește 20 de pagini';

  @override
  String get habitDays => 'Program';

  @override
  String get habitEveryDay => 'În fiecare zi';

  @override
  String get habitTargetPerDay => 'De câte ori pe zi';

  @override
  String get habitReminder => 'Memento zilnic';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Serie de $count de zile',
      few: 'Serie de $count zile',
      one: 'Serie de 1 zi',
      zero: 'Nicio serie',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Cea mai lungă serie';

  @override
  String get habitCurrentStreak => 'Seria actuală';

  @override
  String get habitConsistency => 'Constanță';

  @override
  String get habitLast90 => 'Ultimele 90 de zile';

  @override
  String get habitPaused => 'În pauză';

  @override
  String get habitPause => 'Pune obiceiul pe pauză';

  @override
  String get habitResume => 'Reia obiceiul';

  @override
  String get habitDoneToday => 'Făcut azi';

  @override
  String habitCountToday(int count, int target) {
    return '$count din $target azi';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Bifează „$name”';
  }

  @override
  String get habitNotScheduledToday => 'Nu e programat azi';

  @override
  String get analyticsTitle => 'Statistici';

  @override
  String get rangeWeek => '7 zile';

  @override
  String get rangeMonth => '30 de zile';

  @override
  String get rangeQuarter => '90 de zile';

  @override
  String get statFocusTime => 'Timp de concentrare';

  @override
  String get statSessions => 'Sesiuni';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed finalizate · $interrupted oprite mai devreme';
  }

  @override
  String get statTasksDone => 'Sarcini finalizate';

  @override
  String get statCompletionRate => 'Finalizate la timp';

  @override
  String get statHabitConsistency => 'Constanța obiceiurilor';

  @override
  String get statRetention => 'Cartonașe reținute';

  @override
  String get statReviews => 'Recapitulări';

  @override
  String get statActiveGoals => 'Obiective active';

  @override
  String get statEstimated => 'Muncă estimată finalizată';

  @override
  String get statEstimatedNote => 'Pe baza estimărilor tale, nu a timpului măsurat';

  @override
  String get statMeasuredNote => 'Măsurat din sesiunile de concentrare';

  @override
  String get chartFocusByDay => 'Minute de concentrare pe zi';

  @override
  String get chartTasksByDay => 'Sarcini finalizate pe zi';

  @override
  String get chartTimeByProject => 'Timp pe proiect';

  @override
  String get chartProjectProgress => 'Progresul proiectelor';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, cea mai bună zi $best';
  }

  @override
  String get analyticsNoData => 'Încă nu sunt destule date';

  @override
  String get analyticsUnassigned => 'Neatribuit';

  @override
  String get searchHint => 'Caută peste tot…';

  @override
  String get searchRecent => 'Căutări recente';

  @override
  String get searchClearRecent => 'Șterge căutările recente';

  @override
  String searchNoResults(String query) {
    return 'Niciun rezultat pentru „$query”';
  }

  @override
  String get searchStartTyping =>
      'Caută în sarcini, notițe, cartonașe, obiective, evenimente și altele. Căutarea rămâne pe acest dispozitiv.';

  @override
  String get searchCatTask => 'Sarcini';

  @override
  String get searchCatProject => 'Proiecte';

  @override
  String get searchCatNote => 'Notițe';

  @override
  String get searchCatFlashcard => 'Cartonașe';

  @override
  String get searchCatDeck => 'Pachete';

  @override
  String get searchCatGoal => 'Obiective';

  @override
  String get searchCatHabit => 'Obiceiuri';

  @override
  String get searchCatEvent => 'Evenimente';

  @override
  String get searchCatSession => 'Sesiuni';

  @override
  String get searchAll => 'Toate';

  @override
  String get assistantTitle => 'Asistent';

  @override
  String get assistantIntro =>
      'Ajutor la planificare care funcționează pe dispozitivul tău. Opțional, poți conecta un serviciu AI ales de tine pentru rezumate și generare.';

  @override
  String get assistantOnDevice => 'Pe dispozitiv';

  @override
  String get assistantCloud => 'Serviciu AI';

  @override
  String get assistantPlanDay => 'Planifică-mi ziua';

  @override
  String get assistantPlanDayDesc =>
      'Ordonează sarcinile deschise după urgență, prioritate și estimare și le potrivește în jurul evenimentelor tale.';

  @override
  String get assistantExtractTasks => 'Extrage sarcini dintr-o notiță';

  @override
  String get assistantExtractTasksDesc =>
      'Găsește elementele de listă și rândurile cu acțiuni dintr-o notiță și le transformă în sarcini.';

  @override
  String get assistantMakeCards => 'Creează cartonașe dintr-o notiță';

  @override
  String get assistantMakeCardsDesc =>
      'Transformă rândurile „termen: definiție” și rândurile întrebare/răspuns în cartonașe.';

  @override
  String get assistantSummarize => 'Rezumă o notiță';

  @override
  String get assistantSummarizeDesc =>
      'Necesită un serviciu AI. Notița se trimite doar după ce confirmi.';

  @override
  String get assistantWorkload => 'Privire de ansamblu asupra volumului de muncă';

  @override
  String get assistantWorkloadDesc =>
      'Compară munca estimată cu timpul tău liber din această săptămână.';

  @override
  String get assistantPlanEmpty => 'Nicio sarcină deschisă de planificat. Bucură-te de spațiu.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Timp liber de concentrare azi: $time';
  }

  @override
  String get assistantPlanOverflow => 'Acestea s-ar putea să nu încapă azi:';

  @override
  String get assistantChooseNote => 'Alege o notiță';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S-au găsit $count de sarcini',
      few: 'S-au găsit $count sarcini',
      one: 'S-a găsit 1 sarcină',
      zero: 'Nicio sarcină găsită în notiță',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S-au găsit $count de cartonașe',
      few: 'S-au găsit $count cartonașe',
      one: 'S-a găsit 1 cartonaș',
      zero: 'Niciun cartonaș găsit în notiță',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Alege un pachet';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Muncă estimată: $estimated. Timp liber: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Ai planificat mai mult decât timpul disponibil. Ia în calcul mutarea sarcinilor cu prioritate mai mică.';

  @override
  String get assistantWorkloadOk => 'Planul tău încape în timpul disponibil.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini deschise nu au estimare.',
      few: '$count sarcini deschise nu au estimare.',
      one: '1 sarcină deschisă nu are estimare.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Serviciu AI';

  @override
  String get assistantProviderOff =>
      'Niciun serviciu conectat. Instrumentele de pe dispozitiv funcționează în continuare.';

  @override
  String assistantProviderOn(String host) {
    return 'Conectat la $host';
  }

  @override
  String get assistantEndpoint => 'Endpoint API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Cheie API';

  @override
  String get assistantApiKeyStored => 'Stocată în siguranță pe acest dispozitiv';

  @override
  String get assistantHttpsOnly => 'Sunt permise doar endpointuri HTTPS';

  @override
  String get assistantConsentTitle => 'Trimiți acest conținut serviciului tău AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Textul notiței selectate va părăsi acest dispozitiv și va fi procesat de $host. Nu se trimite nimic altceva.';
  }

  @override
  String get assistantConsentAlways => 'Nu mai întreba pentru acest serviciu';

  @override
  String get assistantSend => 'Trimite';

  @override
  String get assistantUnavailable => 'Serviciul AI nu a putut fi contactat. Încearcă mai târziu.';

  @override
  String get assistantDisabledTitle => 'Asistentul este oprit';

  @override
  String get assistantDisabledMessage =>
      'Pornește-l ca să folosești instrumentele de planificare. Nicio dată nu părăsește dispozitivul dacă nu conectezi un serviciu și nu confirmi fiecare cerere.';

  @override
  String get assistantSummaryTitle => 'Rezumat';

  @override
  String get assistantRemoveProvider => 'Elimină serviciul';

  @override
  String get settingsTitle => 'Setări';

  @override
  String get settingsGeneral => 'Generale';

  @override
  String get settingsLanguage => 'Limbă';

  @override
  String get settingsLanguageSystem => 'Limba dispozitivului';

  @override
  String get settingsAppearance => 'Aspect';

  @override
  String get settingsTheme => 'Temă';

  @override
  String get themeLight => 'Luminoasă';

  @override
  String get themeDark => 'Întunecată';

  @override
  String get themeSystem => 'Ca sistemul';

  @override
  String get settingsReduceMotion => 'Reduce mișcarea';

  @override
  String get settingsReduceMotionDesc => 'Mai puține animații și fundaluri în mișcare';

  @override
  String get settingsFocus => 'Cronometru de concentrare';

  @override
  String get settingsWorkLength => 'Durata concentrării';

  @override
  String get settingsShortBreak => 'Pauză scurtă';

  @override
  String get settingsLongBreak => 'Pauză lungă';

  @override
  String get settingsLongBreakEvery => 'Pauză lungă după';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sesiuni',
      few: '$count sesiuni',
      one: '1 sesiune',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Pornește pauzele automat';

  @override
  String get settingsSound => 'Sunet la final';

  @override
  String get settingsDailyFocusTarget => 'Obiectiv zilnic de concentrare';

  @override
  String get settingsWeeklyFocusTarget => 'Obiectiv săptămânal de concentrare';

  @override
  String get settingsNotifications => 'Notificări';

  @override
  String get settingsNotificationsEnable => 'Permite mementourile';

  @override
  String get settingsQuietHours => 'Ore de liniște';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Mementourile pentru obiceiuri, obiective și recapitulare sunt silențioase între $start și $end';
  }

  @override
  String get settingsReviewReminder => 'Memento pentru recapitularea cartonașelor';

  @override
  String get settingsPermissionDenied => 'Notificările sunt blocate în setările sistemului.';

  @override
  String get settingsPrivacy => 'Confidențialitate și date';

  @override
  String get settingsPrivacyStatement =>
      'Datele tale sunt stocate doar pe acest dispozitiv și sunt criptate. Fără cont, fără statistici de utilizare și fără urmărire.';

  @override
  String get settingsBackup => 'Creează o copie de rezervă criptată';

  @override
  String get settingsBackupDesc => 'Protejată cu o parolă aleasă de tine';

  @override
  String get settingsRestore => 'Restabilește din copia de rezervă';

  @override
  String get settingsRestoreDesc => 'Înlocuiește toate datele de pe acest dispozitiv';

  @override
  String get settingsErase => 'Șterge toate datele';

  @override
  String get settingsEraseDesc => 'Șterge definitiv tot de pe acest dispozitiv';

  @override
  String get settingsEraseConfirmTitle => 'Ștergi toate datele?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Toate sarcinile, notițele, cartonașele, obiectivele, obiceiurile, evenimentele și sesiunile vor fi șterse definitiv. Scrie $word pentru a confirma.';
  }

  @override
  String get settingsEraseWord => 'ȘTERGE';

  @override
  String get settingsErased => 'Toate datele au fost șterse';

  @override
  String get backupPassword => 'Parola copiei de rezervă';

  @override
  String get backupPasswordConfirm => 'Confirmă parola';

  @override
  String backupPasswordHint(int count) {
    return 'Cel puțin $count caractere. Nu poate fi recuperată dacă o pierzi.';
  }

  @override
  String get backupPasswordMismatch => 'Parolele nu se potrivesc';

  @override
  String get backupPasswordShort => 'Parola este prea scurtă';

  @override
  String get backupCreating => 'Se criptează copia de rezervă…';

  @override
  String get backupCreated => 'Copia de rezervă e gata de salvat';

  @override
  String get backupRestoring => 'Se verifică și se restabilește…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de elemente restabilite',
      few: '$count elemente restabilite',
      one: '1 element restabilit',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Parolă greșită sau fișierul a fost modificat.';

  @override
  String get backupNotABackup => 'Acest fișier nu este o copie de rezervă Deep Focus.';

  @override
  String get backupCorrupted => 'Fișierul copiei de rezervă este deteriorat.';

  @override
  String get backupNewer =>
      'Această copie de rezervă a fost făcută cu o versiune mai nouă a aplicației. Actualizează mai întâi aplicația.';

  @override
  String get backupRestoreConfirmTitle => 'Înlocuiești toate datele?';

  @override
  String get backupRestoreConfirmBody =>
      'Tot ce există acum pe acest dispozitiv va fi înlocuit cu copia de rezervă. Dacă restabilirea eșuează, nu se schimbă nimic.';

  @override
  String get settingsAbout => 'Despre';

  @override
  String settingsVersion(String version) {
    return 'Versiunea $version';
  }

  @override
  String get settingsLicenses => 'Licențe open source';

  @override
  String get settingsAssistant => 'Asistent';

  @override
  String get settingsAssistantEnable => 'Activează asistentul';

  @override
  String get settingsDashboard => 'Secțiunile paginii Acasă';

  @override
  String get settingsTrash => 'Coș de gunoi';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Coșul de gunoi este gol';

  @override
  String get trashHint => 'Elementele șterse rămân aici până le elimini.';

  @override
  String get trashTasks => 'Sarcini';

  @override
  String get trashNotes => 'Notițe';

  @override
  String get onboardWelcomeTitle => 'Bun venit în noul tău spațiu de lucru';

  @override
  String get onboardWelcomeBody =>
      'Sarcini, concentrare, calendar, notițe, cartonașe, obiective și obiceiuri — împreună, frumos de simplu.';

  @override
  String get onboardPrivateTitle => 'Confidențial din start';

  @override
  String get onboardPrivateBody =>
      'Totul rămâne criptat pe acest dispozitiv. Fără cont. Fără urmărire. Tu deții controlul.';

  @override
  String get onboardLanguageTitle => 'Alege-ți limba';

  @override
  String get onboardNotifTitle => 'Mementouri blânde';

  @override
  String get onboardNotifBody =>
      'Permite notificările pentru mementourile sarcinilor și alertele de concentrare. Poți schimba asta oricând.';

  @override
  String get onboardGetStarted => 'Să începem';

  @override
  String onboardStep(int current, int total) {
    return 'Pasul $current din $total';
  }

  @override
  String get notifChannelReminders => 'Mementouri';

  @override
  String get notifChannelRemindersDesc =>
      'Mementouri pentru sarcini, evenimente, obiceiuri și obiective';

  @override
  String get notifChannelFocus => 'Cronometru de concentrare';

  @override
  String get notifChannelFocusDesc => 'Alerte la sfârșitul unei sesiuni sau pauze';

  @override
  String get notifTaskTitle => 'Memento pentru sarcină';

  @override
  String get notifEventTitle => 'Eveniment apropiat';

  @override
  String notifEventBody(String title, String time) {
    return '$title la $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesiune de concentrare finalizată';

  @override
  String get notifFocusDoneBody => 'Bravo. E timpul pentru o pauză.';

  @override
  String get notifBreakDoneTitle => 'Pauza s-a terminat';

  @override
  String get notifBreakDoneBody => 'Gata pentru următoarea sesiune?';

  @override
  String get notifHabitTitle => 'Memento pentru obicei';

  @override
  String get notifReviewTitle => 'Cartonașele te așteaptă';

  @override
  String get notifReviewBody => 'O recapitulare scurtă îți menține memoria în formă.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationHours(int hours) {
    return '$hours h';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'L,M,M,J,V,S,D';

  @override
  String a11yProgress(int value) {
    return 'Progres $value la sută';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritate: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Culoarea $index';
  }

  @override
  String get analyticsRangeLabel => 'Interval de timp';

  @override
  String get analyticsRefresh => 'Reîmprospătează';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done din $total sarcini cu termen finalizate la timp';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done din $total sarcini terminate';
  }

  @override
  String get analyticsNoProjects => 'Niciun proiect activ';

  @override
  String get analyticsNoFocus => 'Nicio sesiune de concentrare în acest interval';

  @override
  String get analyticsHabitsNone => 'Niciun obicei activ';

  @override
  String get analyticsRetentionNote => 'Procentul cartonașelor învățate pe care ți le-ai amintit';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Timpul liber se calculează $start–$end în zilele lucrătoare ($days), minus evenimentele cu oră. Munca estimată este suma estimărilor sarcinilor deschise cu termen în următoarele 7 zile.';
  }

  @override
  String get assistantWorkdaysMonFri => 'luni–vineri';

  @override
  String get assistantWorkdaysSunThu => 'duminică–joi';

  @override
  String get assistantWorkloadDayOff => 'Zi liberă';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planificat · $free liber';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planificat de acum până la $end, în jurul evenimentelor de azi. Întâi sarcinile restante, apoi prioritatea, termenul și estimarea.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Programează ca blocuri de timp';

  @override
  String get assistantScheduleConfirmTitle => 'Adaugi blocuri de timp în calendar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de blocuri de timp vor fi adăugate în calendarul de azi.',
      few: '$count blocuri de timp vor fi adăugate în calendarul de azi.',
      one: '1 bloc de timp va fi adăugat în calendarul de azi.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de blocuri de timp adăugate',
      few: '$count blocuri de timp adăugate',
      one: '1 bloc de timp adăugat',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Deja în calendar';

  @override
  String get assistantPlanTimeline => 'Încape azi';

  @override
  String get assistantNoEstimate => 'Adaugă o estimare ca să le poți planifica';

  @override
  String get assistantNoNotes => 'Încă nu ai notițe. Scrie mai întâi o notiță.';

  @override
  String get assistantNoteEmpty => 'Această notiță este goală.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini create',
      few: '$count sarcini create',
      one: '1 sarcină creată',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe create',
      few: '$count cartonașe create',
      one: '1 cartonaș creat',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Creează $count',
      one: 'Creează 1',
      zero: 'Nimic selectat',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Recunoscute: casetele nebifate „- [ ]” și rândurile care încep cu TODO: sau To do:';

  @override
  String get assistantCardsHint =>
      'Recunoscute: „termen: definiție”, „termen — definiție” și perechile de rânduri Q:/A:';

  @override
  String get assistantProviderHint =>
      'Folosește orice serviciu compatibil cu OpenAI. Cheia rămâne în spațiul securizat al dispozitivului și nu este inclusă niciodată în copiile de rezervă.';

  @override
  String get assistantEndpointHelp => 'De exemplu https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Lasă gol ca să păstrezi cheia salvată';

  @override
  String get assistantApiKeyRequired => 'Introdu o cheie API';

  @override
  String get assistantProviderSaved => 'Serviciu salvat';

  @override
  String get assistantProviderRemoved => 'Serviciu eliminat și cheie ștearsă';

  @override
  String get assistantRemoveProviderConfirm =>
      'Elimini serviciul și ștergi cheia API salvată de pe acest dispozitiv?';

  @override
  String get assistantAskEveryTime => 'Întreabă înaintea fiecărei cereri';

  @override
  String get assistantSummarizing => 'Se rezumă…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generat de $host. Verifică înainte să te bazezi pe el.';
  }

  @override
  String get assistantCopy => 'Copiază';

  @override
  String get assistantCopied => 'Copiat';

  @override
  String get assistantConfigure => 'Configurează serviciul';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Toate evenimentele din această serie au fost mutate';

  @override
  String get calendarEventReminder => 'Memento';

  @override
  String get calendarEventRepeat => 'Repetare';

  @override
  String get calendarEventColor => 'Culoare';

  @override
  String get calendarDefaultColor => 'Folosește culoarea tipului';

  @override
  String get calendarEventLinkedTask => 'Sarcină legată';

  @override
  String get calendarEventNoTask => 'Nicio sarcină legată';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de evenimente',
      few: '$count evenimente',
      one: '1 eveniment',
      zero: 'Niciun eveniment',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini cu termen',
      few: '$count sarcini cu termen',
      one: '1 sarcină cu termen',
      zero: 'nicio sarcină cu termen',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Adaugă un eveniment sau un bloc de timp ca să planifici această zi.';

  @override
  String get calendarNow => 'Ora curentă';

  @override
  String get calendarRecurring => 'Se repetă';

  @override
  String get calendarEventNotFound => 'Acest eveniment nu mai există';

  @override
  String get calendarEventLocalTime => 'Orele sunt afișate în fusul orar al dispozitivului';

  @override
  String get calendarEventDeleted => 'Eveniment mutat în coșul de gunoi';

  @override
  String get calendarConflictMarker => 'Se suprapune cu alt eveniment';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote =>
      'Modificările se aplică tuturor evenimentelor din această serie';

  @override
  String get calendarDragHintSeries => 'Dacă tragi un eveniment repetat, muți toată seria';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, sarcină cu termen';
  }

  @override
  String get startupErrorTitle => 'Datele tale nu au putut fi deschise';

  @override
  String get startupErrorLocked =>
      'Cheia de criptare pentru datele acestui dispozitiv nu este disponibilă. Nu s-a șters nimic. Adesea ajută repornirea dispozitivului. Dacă ai restabilit recent dispozitivul, restabilește-ți datele dintr-o copie de rezervă criptată.';

  @override
  String get startupErrorCipher =>
      'Acest dispozitiv nu acceptă stocarea criptată de care are nevoie aplicația. Nu s-a salvat nimic necriptat.';

  @override
  String get startupErrorRetry => 'Încearcă din nou';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe așteaptă recapitularea',
      few: '$count cartonașe așteaptă recapitularea',
      one: '1 cartonaș așteaptă recapitularea',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count de recapitulat';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count noi';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Cartonașe învățate: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Introdu 0 sau mai mult';

  @override
  String get flashcardsSearchCards => 'Caută cartonașe';

  @override
  String get flashcardsSearchEmpty => 'Niciun cartonaș nu se potrivește căutării';

  @override
  String get flashcardsCardAdded => 'Cartonaș adăugat';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Recapitulare $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copiază în clipboard';

  @override
  String get flashcardsExportTitle => 'Exportă pachetul';

  @override
  String get flashcardsDeleteDeck => 'Șterge pachetul';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, următoarea recapitulare peste $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Întrebare: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Răspuns: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Arată întrebarea';

  @override
  String get flashcardsImportField => 'Cartonașe de importat';

  @override
  String get flashcardsNothingToStudy => 'Nimic de studiat';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe gata de studiat',
      few: '$count cartonașe gata de studiat',
      one: '1 cartonaș gata de studiat',
      zero: 'Niciun cartonaș pregătit',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'După evaluare';

  @override
  String get flashcardsDeckNotFound => 'Acest pachet nu mai este disponibil.';

  @override
  String get focusSessionDeleted => 'Sesiune ștearsă';

  @override
  String get focusDeleteConfirm =>
      'Ștergi această sesiune din istoric? Timpul ei nu va mai conta pentru obiectivele tale.';

  @override
  String get focusUnlinkTask => 'Elimină sarcina legată';

  @override
  String get focusNoteHint => 'La ce ai lucrat?';

  @override
  String get focusModeLabel => 'Modul cronometrului';

  @override
  String focusUpNext(String phase) {
    return 'Urmează: $phase';
  }

  @override
  String get focusStopwatchHint => 'Numără în sus până te oprești.';

  @override
  String get focusOpenHint => 'Fără limită de timp. Oprește-te când ai terminat.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Mementourile sunt oprite în setări. Nu vei fi anunțat când se termină o sesiune.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Toate';

  @override
  String get goalsFilterPeriod => 'Filtru de perioadă';

  @override
  String get goalsFilterStatus => 'Filtru de stare';

  @override
  String get goalsEmptyFiltered => 'Niciun obiectiv nu se potrivește acestui filtru';

  @override
  String goalsDueOn(String date) {
    return 'Termen $date';
  }

  @override
  String get goalsDeadline => 'Termen limită (opțional)';

  @override
  String get goalsNoDeadline => 'Fără termen limită';

  @override
  String get goalsSetDeadline => 'Setează termenul';

  @override
  String get goalsRemoveDeadline => 'Elimină termenul';

  @override
  String get goalsDescription => 'Descriere (opțional)';

  @override
  String get goalsTitleLabel => 'Titlu';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Țintă atinsă';

  @override
  String get goalsLogged => 'Progres notat';

  @override
  String get goalsEntryDeleted => 'Înregistrare eliminată';

  @override
  String get goalsDeleteEntry => 'Elimină înregistrarea';

  @override
  String get goalsDeleted => 'Obiectiv șters';

  @override
  String get goalsMarkActive => 'Marchează ca activ';

  @override
  String get goalsNotFound => 'Acest obiectiv nu mai este disponibil';

  @override
  String get goalsLinkTask => 'Leagă o sarcină';

  @override
  String get goalsNoLinkedTasks => 'Încă nicio sarcină legată';

  @override
  String get goalsUnlinkTask => 'Dezleagă sarcina';

  @override
  String get goalsTaskOpen => 'Încă nefinalizată';

  @override
  String get goalsTaskLinked => 'Sarcină legată';

  @override
  String get goalsTaskUnlinked => 'Sarcină dezlegată';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini legate finalizate',
      few: '$count sarcini legate finalizate',
      one: '1 sarcină legată finalizată',
    );
    return 'Include $_temp0 în această perioadă';
  }

  @override
  String get goalsHistoryAllTime =>
      'Înregistrările din perioadele anterioare rămân aici, dar contează doar pentru perioada lor.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done din $total făcute azi';
  }

  @override
  String get habitsNothingToday => 'Niciun obicei nu e programat azi';

  @override
  String get habitsDecrease => 'Elimină o bifă';

  @override
  String get habitsResetToday => 'Resetează ziua de azi';

  @override
  String get habitsCheckInHint => 'Ține apăsat pentru a ajusta';

  @override
  String get habitsName => 'Nume';

  @override
  String get habitsColor => 'Culoare';

  @override
  String get habitsValidationDays => 'Alege cel puțin o zi';

  @override
  String habitsReminderAt(String time) {
    return 'În fiecare zi la $time';
  }

  @override
  String get habitsSetReminder => 'Setează ora mementoului';

  @override
  String get habitsRemoveReminder => 'Elimină mementoul';

  @override
  String get habitsReminderNote =>
      'Mementourile apar în zilele programate, dacă notificările sunt permise.';

  @override
  String get habitsArchived => 'Obicei arhivat';

  @override
  String get habitsNotFound => 'Acest obicei nu mai este disponibil';

  @override
  String get habitsLast30 => 'Ultimele 30 de zile';

  @override
  String get habitsConsistencyNone => 'Încă nu sunt destule date';

  @override
  String get habitsCalendar => 'Istoricul bifelor';

  @override
  String get habitsCalendarHint => 'Atinge o zi pentru a o corecta.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count din $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Bife în ultimele 90 de zile. Constanță $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Bife în ultimele 90 de zile. Încă nu sunt destule date.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de zile',
      few: '$count zile',
      one: '1 zi',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Zilele de pauză nu îți afectează seria.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arhivează obiceiul';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'De $count de ori pe zi',
      few: 'De $count ori pe zi',
      one: 'O dată pe zi',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Alte notițe';

  @override
  String get notesAllNotebooks => 'Toate carnetele';

  @override
  String get notesNotebookName => 'Numele carnetului';

  @override
  String get notesNotebookColor => 'Culoare';

  @override
  String get notesDeleteNotebook => 'Șterge carnetul';

  @override
  String get notesDeleteNotebookMessage =>
      'Carnetul este eliminat. Notițele lui se păstrează și apar la Toate carnetele.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fixează notițele importante ca să rămână sus.';

  @override
  String get notesEmptyFavorites => 'Notițele marcate ca favorite apar aici.';

  @override
  String get notesEmptyArchived => 'Notițele arhivate apar aici.';

  @override
  String get notesEmptyFiltered => 'Nicio notiță nu se potrivește acestor filtre.';

  @override
  String get notesArchivedSnack => 'Notiță arhivată';

  @override
  String get notesUnarchivedSnack => 'Notița a revenit printre notițele tale';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done din $total gata';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatare';

  @override
  String get notesWrite => 'Scrie';

  @override
  String get notesPreviewEmpty => 'Încă nimic de previzualizat.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Încă nicio altă notiță nu trimite aici. Trimite către această notiță cu [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dă un titlu notiței ca alte notițe să poată trimite la ea.';

  @override
  String get notesLinkedTasksEmpty => 'Nicio sarcină legată de această notiță.';

  @override
  String notesLinkMissing(String title) {
    return 'Încă nu există o notiță cu titlul „$title”.';
  }

  @override
  String get notesNotFound => 'Această notiță nu mai există.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Element din listă: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Deschide notița $title';
  }

  @override
  String get notesTaskDone => 'Finalizată';

  @override
  String get notifTimerDoneBody => 'Timpul setat a trecut.';

  @override
  String get onboardingPrivatePointDevice => 'Stocat doar pe acest dispozitiv, criptat';

  @override
  String get onboardingPrivatePointAccount => 'Nu ai nevoie de cont';

  @override
  String get onboardingPrivatePointTracking => 'Fără statistici de utilizare, fără urmărire';

  @override
  String get onboardingLanguageBody => 'Poți schimba asta oricând din Setări.';

  @override
  String get onboardingNext => 'Înainte';

  @override
  String get projectsActive => 'Active';

  @override
  String get projectNameHint => 'de ex. Lansarea produsului';

  @override
  String get projectGoalHint => 'Cum arată „gata”?';

  @override
  String get projectNoDeadline => 'Fără termen limită';

  @override
  String get projectTasksOpen => 'Sarcini deschise';

  @override
  String get projectTasksCompleted => 'Sarcini finalizate';

  @override
  String get projectAddTask => 'Adaugă o sarcină în proiect';

  @override
  String get projectAddNote => 'Notiță nouă de proiect';

  @override
  String get projectLinkedNotes => 'Notițe';

  @override
  String get projectNoTasks => 'Încă nu există sarcini în acest proiect';

  @override
  String get projectArchivedBadge => 'Arhivat';

  @override
  String get projectDeleted => 'Proiect mutat în coșul de gunoi';

  @override
  String get projectDeleteMessage => 'Sarcinile rămân în lista ta, fără proiect.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, finalizat în proporție de $percent la sută';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de rezultate',
      few: '$count rezultate',
      one: '1 rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrează după tip';

  @override
  String searchRecentTap(String query) {
    return 'Caută din nou $query';
  }

  @override
  String get settingsLanguageHint =>
      'Alege limba întregii aplicații. Numele sunt afișate în limba lor.';

  @override
  String get settingsThemeHint => 'Luminoasă, întunecată sau ca sistemul';

  @override
  String settingsDecrease(String setting) {
    return 'Scade $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Crește $setting';
  }

  @override
  String get settingsQuietStart => 'Începe';

  @override
  String get settingsQuietEnd => 'Se termină';

  @override
  String get settingsNotificationsHint =>
      'Astfel îți salvezi preferința în aplicație. Și sistemul ar putea cere permisiunea.';

  @override
  String get settingsDashboardHint =>
      'Trage pentru a reordona. Dezactivează secțiunile de care nu ai nevoie.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Mută $section';
  }

  @override
  String get settingsDashboardReset => 'Revino la ordinea implicită';

  @override
  String get settingsAssistantDesc =>
      'Ajutor opțional la planificare. Nimic nu părăsește dispozitivul dacă nu conectezi un serviciu.';

  @override
  String get settingsAssistantSetup => 'Asistent și configurarea serviciului';

  @override
  String get settingsTrashDesc => 'Restabilește sau șterge definitiv elementele eliminate';

  @override
  String get settingsEraseFirstBody =>
      'Acțiunea nu poate fi anulată. Ia în calcul să faci mai întâi o copie de rezervă criptată.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Scrie $word';
  }

  @override
  String get settingsEraseFailed => 'Datele nu au putut fi șterse. Nu s-a schimbat nimic.';

  @override
  String get settingsAboutTagline => 'Un spațiu de productivitate privat, care funcționează local.';

  @override
  String get backupShowPassword => 'Arată parola';

  @override
  String get backupHidePassword => 'Ascunde parola';

  @override
  String get backupSaved => 'Copia de rezervă a fost salvată';

  @override
  String get backupFailed => 'Copia de rezervă nu a putut fi creată. Datele tale sunt neschimbate.';

  @override
  String get backupReadFailed => 'Fișierul selectat nu a putut fi citit.';

  @override
  String get backupRestoreFailed => 'Restabilirea a eșuat. Nu s-a schimbat nimic.';

  @override
  String get backupShareSubject => 'Copie de rezervă criptată Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La fiecare $count de zile',
      few: 'La fiecare $count zile',
      one: 'În fiecare zi',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La fiecare $count de săptămâni',
      few: 'La fiecare $count săptămâni',
      one: 'În fiecare săptămână',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La fiecare $count de luni',
      few: 'La fiecare $count luni',
      one: 'În fiecare lună',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La fiecare $count de ani',
      few: 'La fiecare $count ani',
      one: 'În fiecare an',
    );
    String _temp4 = intl.Intl.selectLogic(unit, {
      'day': '$_temp0',
      'week': '$_temp1',
      'month': '$_temp2',
      'other': '$_temp3',
    });
    return '$_temp4';
  }

  @override
  String repeatOnWeekdays(String days) {
    return 'în zilele $days';
  }

  @override
  String get repeatEndsLabel => 'Se termină';

  @override
  String get repeatEndsAfter => 'După un număr de repetări';

  @override
  String get repeatCountLabel => 'Repetări';

  @override
  String get reminderNone => 'Fără memento';

  @override
  String get reminderCustomTime => 'La o anumită oră';

  @override
  String get a11yDecrease => 'Scade';

  @override
  String get a11yIncrease => 'Crește';

  @override
  String get pickTaskTitle => 'Alege o sarcină';

  @override
  String get pickTaskEmpty => 'Nicio sarcină deschisă';

  @override
  String get tasksSearchTooltip => 'Caută sarcini';

  @override
  String get tasksSectionOverdue => 'Restante';

  @override
  String get tasksSectionToday => 'Azi';

  @override
  String get tasksRecurringSemantics => 'Se repetă';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioritate minimă';

  @override
  String get tasksFilterCategory => 'Categorie';

  @override
  String get tasksFilterAnyCategory => 'Orice categorie';

  @override
  String get tasksFilterLabel => 'Etichetă';

  @override
  String get tasksFilterAnyLabel => 'Orice etichetă';

  @override
  String get tasksFilterReset => 'Resetează filtrele';

  @override
  String get tasksViewByProject => 'După proiect';

  @override
  String get tasksViewByPriority => 'După prioritate';

  @override
  String get tasksViewByCategory => 'După categorie';

  @override
  String get tasksGroupNoCategory => 'Fără categorie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini',
      few: '$count sarcini',
      one: '1 sarcină',
    );
    return 'Blocată de $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Această sarcină este blocată de sarcini neterminate. O finalizezi totuși?';

  @override
  String get taskStartFocus => 'Concentrează-te pe această sarcină';

  @override
  String get taskRemoveDate => 'Elimină data';

  @override
  String get taskAllDay => 'Fără oră anume';

  @override
  String get taskSaved => 'Sarcină salvată';

  @override
  String get taskCreated => 'Sarcină creată';

  @override
  String get taskReminderNeedsDue => 'Setează un termen pentru a folosi mementouri relative';

  @override
  String get taskLabelName => 'Numele etichetei';

  @override
  String get taskPlanning => 'Planificare';

  @override
  String get taskOrganize => 'Organizare';

  @override
  String get taskBreakdown => 'Defalcare';

  @override
  String get trashDeleteTaskTitle => 'Ștergi definitiv această sarcină?';

  @override
  String get trashDeleteNoteTitle => 'Ștergi definitiv această notiță?';

  @override
  String get trashDeleteBody => 'Acțiunea nu poate fi anulată.';

  @override
  String get trashEmptyTitle => 'Golești coșul de gunoi?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de elemente vor fi șterse definitiv.',
      few: '$count elemente vor fi șterse definitiv.',
      one: '1 element va fi șters definitiv.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restabilit';

  @override
  String get trashPurged => 'Șters definitiv';

  @override
  String trashDeletedOn(String date) {
    return 'Șters $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de elemente',
      few: '$count elemente',
      one: '1 element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Citește cu voce tare';

  @override
  String get flashcardsTtsUnavailable => 'Sinteza vocală nu este disponibilă pe acest dispozitiv.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Nu este instalată nicio voce pentru această limbă. Adaugă una din setările Android pentru sinteza vocală.';

  @override
  String get calendarAgenda => 'Agendă';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Scânteie',
      'rocket': 'Rachetă',
      'book': 'Carte',
      'work': 'Muncă',
      'home': 'Acasă',
      'heart': 'Inimă',
      'code': 'Cod',
      'palette': 'Paletă',
      'fitness': 'Fitness',
      'school': 'Școală',
      'travel': 'Călătorii',
      'money': 'Economii',
      'other': 'Pictogramă',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Mai multe câmpuri';

  @override
  String get cardFieldExample => 'Exemplu';

  @override
  String get cardFieldExplanation => 'Explicație';

  @override
  String get cardFieldPronunciation => 'Pronunție';

  @override
  String get cardFieldNotes => 'Notițe suplimentare';

  @override
  String get projectMilestones => 'Repere';

  @override
  String get milestoneAdd => 'Adaugă un reper';

  @override
  String get milestoneEdit => 'Editează reperul';

  @override
  String get milestoneTitleLabel => 'Reper';

  @override
  String get milestoneNoDate => 'Fără dată';

  @override
  String get milestonesEmpty =>
      'Încă nu ai repere. Adaugă puncte de control cu date ca să urmărești proiectul în calendar.';

  @override
  String get milestoneDeleted => 'Reper șters';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marchează reperul „$title” ca atins';
  }

  @override
  String calendarMilestone(String project) {
    return 'Reper · $project';
  }

  @override
  String get tasksViewInbox => 'Inbox';

  @override
  String get tasksViewArchived => 'Arhivate';

  @override
  String get tasksEmptyInbox =>
      'Sarcinile fără proiect sau dată ajung aici. Sortează-le când ai un minut.';

  @override
  String get tasksEmptyArchived =>
      'Sarcinile arhivate sunt păstrate aici, în afara listelor și a mementourilor.';

  @override
  String get taskArchivedBadge => 'Arhivată';

  @override
  String get taskStatusInProgress => 'În lucru';

  @override
  String get taskArchived => 'Sarcină arhivată';

  @override
  String get taskUnarchived => 'Sarcină scoasă din arhivă';

  @override
  String get focusPlanTitle => 'Planul sesiunilor';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sesiuni de concentrare';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pauză lungă după';

  @override
  String get focusPlanSkipLastBreak => 'Omite ultima pauză';

  @override
  String get focusPlanAutoBreaks => 'Pornește pauzele automat';

  @override
  String get focusPlanAutoFocus => 'Pornește concentrarea automat după pauză';

  @override
  String get focusPlanSave => 'Salvează planul';

  @override
  String get focusPlanNameHint => 'de ex. Pregătire pentru examen';

  @override
  String get focusPlanSaved => 'Plan salvat';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min concentrare, $rest min pauză';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Scade $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Crește $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesiunea $current din $total';
  }

  @override
  String get focusSeriesComplete => 'Serie încheiată. Bravo!';

  @override
  String get filterAll => 'Toate';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importate · $duplicates duplicate omise · $invalid rânduri incomplete';
  }

  @override
  String get flashcardsSuspend => 'Suspendă cartonașul';

  @override
  String get flashcardsResume => 'Reia cartonașul';

  @override
  String get flashcardsSuspended => 'Cartonaș suspendat: nu va fi programat';

  @override
  String get flashcardsResumed => 'Cartonaș reluat';

  @override
  String get flashcardsSuspendedFilter => 'Suspendate';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown din $total cartonașe';
  }

  @override
  String get flashcardsImportFile => 'Din fișier';

  @override
  String get speechTitle => 'Vorbire';

  @override
  String get speechAppLanguage => 'Limba aplicației';

  @override
  String get speechFrontLanguage => 'Limba feței';

  @override
  String get speechBackLanguage => 'Limba versoului';

  @override
  String get speechRepeat => 'Repetă fiecare citire';

  @override
  String get speechRate => 'Viteză';

  @override
  String get speechAutoRead => 'Citește automat întrebarea';

  @override
  String get speechHint =>
      'Folosește vocile instalate pe acest dispozitiv, offline. Dacă o limbă nu are voce, ți se spune și nu se folosește nimic altceva în locul ei.';

  @override
  String get studyHowTitle => 'Cum vrei să studiezi?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Recapitulează $count de cartonașe',
      few: 'Recapitulează $count cartonașe',
      one: 'Recapitulează 1 cartonaș',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Exersează toate cartonașele (programul nu se schimbă)';

  @override
  String get studyPracticeMistakes => 'Exersează greșelile recente';

  @override
  String get studyPracticeHint =>
      'Rundele de exersare nu schimbă niciodată când sunt programate cartonașele. Recapitularea actualizează programul.';

  @override
  String get studyModeClassic => 'Clasic';

  @override
  String get studyModeReverse => 'Invers';

  @override
  String get studyModeMixed => 'În ambele sensuri';

  @override
  String get studyModeTyped => 'Scrie răspunsul';

  @override
  String get studyModeChoice => 'Alegere multiplă';

  @override
  String get studyModeListening => 'Ascultare';

  @override
  String get studyPractice => 'exersare';

  @override
  String get studyNoMistakes => 'Nicio greșeală recentă în acest pachet. Bravo!';

  @override
  String get studyTypeAnswer => 'Scrie răspunsul';

  @override
  String get studyCheck => 'Verifică';

  @override
  String get studyKnewIt => 'Am știut';

  @override
  String get studyDidntKnow => 'Nu am știut';

  @override
  String studyMistakes(int count) {
    return 'Ratate ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repetă cartonașele ratate';

  @override
  String get studyCorrect => 'Corect';

  @override
  String get studyAlmost => 'Aproape — verifică ortografia';

  @override
  String get studyWrong => 'Nu chiar';

  @override
  String get studyShowText => 'Arată textul';

  @override
  String get flashcardsImportFileFailed =>
      'Fișierul nu a putut fi deschis. Poți lipi conținutul lui în schimb.';

  @override
  String get studyNoMatchingCards => 'Încă niciun cartonaș nu se potrivește acestei alegeri.';

  @override
  String get studyPracticeNew => 'Doar noi';

  @override
  String get studyPracticeHard => 'Cartonașe grele';

  @override
  String get studyPracticeFavorites => 'Favorite';

  @override
  String get studySessionSize => 'Cartonașe pe sesiune';

  @override
  String get studySessionAll => 'Toate';

  @override
  String get studyOrder => 'Ordine';

  @override
  String get studyOrderDue => 'Cele mai întârziate întâi';

  @override
  String get studyOrderRandom => 'Aleatoriu';

  @override
  String get studyOrderHardest => 'Cele mai grele întâi';

  @override
  String get flashcardsHard => 'Grele';

  @override
  String get flashcardsFavorites => 'Favorite';

  @override
  String get flashcardsFavorite => 'Adaugă la favorite';

  @override
  String get flashcardsUnfavorite => 'Elimină de la favorite';

  @override
  String get flashcardsDuplicate => 'Duplică';

  @override
  String get flashcardsMoveTo => 'Mută în pachet';

  @override
  String get flashcardsNoOtherDeck => 'Creează mai întâi alt pachet.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe mutate',
      few: '$count cartonașe mutate',
      one: 'Cartonaș mutat',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Adaugă etichetă';

  @override
  String get flashcardsTagHint => 'de ex. verbe';

  @override
  String flashcardsSelected(int count) {
    return '$count selectate';
  }

  @override
  String get flashcardsSelectAll => 'Selectează tot ce e afișat';

  @override
  String flashcardsSelectCard(String front) {
    return 'Selectează $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Reamintire $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Posibil duplicat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Acest pachet are deja „$front” → „$back”. Salvezi totuși?';
  }

  @override
  String get flashcardsSaveAnyway => 'Salvează totuși';

  @override
  String get flashcardsStats => 'Statistici';

  @override
  String get flashcardsStatTotal => 'Cartonașe';

  @override
  String get flashcardsStatLearning => 'În învățare';

  @override
  String get flashcardsStatMatureCaption => 'Reținute 21+ de zile';

  @override
  String get flashcardsStatReviewsToday => 'Recapitulări azi';

  @override
  String get flashcardsStatCorrect => 'Răspunsuri corecte';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Ultimele zile ($days)';
  }

  @override
  String get flashcardsStatForget => 'Rata de uitare';

  @override
  String get flashcardsStatForgetCaption => '„Din nou” la cartonașele învățate';

  @override
  String get flashcardsStatRecall => 'Reamintire acum';

  @override
  String get flashcardsStatRecallCaption => 'Estimare FSRS, cartonașe recapitulate';

  @override
  String flashcardsStatActivity(int count) {
    return 'Recapitulări pe zi · $count în total';
  }

  @override
  String get flashcardsStatHistory => 'Ultimele răspunsuri';

  @override
  String get flashcardsStatNoHistory =>
      'Încă nicio recapitulare. Studiază pachetul ca să vezi aici progresul.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Citește $field cu voce tare';
  }

  @override
  String get speechVoice => 'Voce';

  @override
  String get speechVoiceDefault => 'Automat';

  @override
  String get speechVoiceOnline => 'necesită internet';

  @override
  String get speechTest => 'Testează vocea';

  @override
  String get importNext => 'Previzualizare';

  @override
  String get importPreviewTitle => 'Potrivește coloanele cu câmpurile';

  @override
  String get importIgnoreColumn => 'Ignoră';

  @override
  String importColumn(int n) {
    return 'Coloana $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready cartonașe gata · $invalid rânduri incomplete vor fi omise';
  }

  @override
  String get importNeedFrontBack => 'Alege ce coloane sunt fața și versoul.';

  @override
  String get actionMoveUp => 'Mută în sus';

  @override
  String get actionMoveDown => 'Mută în jos';

  @override
  String get flashcardsLayoutTitle => 'Aspectul cartonașului';

  @override
  String get flashcardsLayoutHint =>
      'Redenumește, ascunde sau reordonează câmpurile suplimentare ale acestui pachet. Conținutul cartonașelor nu se schimbă niciodată.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Arată $field la studiu';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Arată răspunsul pas cu pas';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Versoul apare primul; fiecare câmp suplimentar se deschide cu o atingere.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Arată $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Acest fișier depășește $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imagine';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Adaugă imagine';

  @override
  String get flashcardsAddAudio => 'Adaugă audio';

  @override
  String get flashcardsPlayAudio => 'Redă înregistrarea';

  @override
  String get flashcardsAudioUnavailable =>
      'Această înregistrare nu poate fi redată pe acest dispozitiv.';

  @override
  String get flashcardsCustomFields => 'Câmpurile tale';

  @override
  String get flashcardsTemplates => 'Șabloane';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Câmpul $n';
  }

  @override
  String get flashcardsAddField => 'Adaugă câmp';

  @override
  String get flashcardsFieldName => 'Numele câmpului';

  @override
  String get flashcardsFieldLangDefault => 'Limba feței';

  @override
  String get flashcardsTemplateConfirm =>
      'Șablonul stabilește cum se afișează câmpurile și își adaugă câmpurile. Cartonașele și câmpurile existente rămân așa cum sunt.';

  @override
  String get flashcardsApplyTemplate => 'Aplică';

  @override
  String get templateVocabulary => 'Vocabular';

  @override
  String get templateTwoTranslations => 'Cuvânt cu două traduceri';

  @override
  String get templateQuestionAnswer => 'Întrebare și răspuns';

  @override
  String get templateDefinition => 'Termen și definiție';

  @override
  String get templateGrammar => 'Regulă gramaticală';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'A doua traducere';

  @override
  String get templateFieldSynonyms => 'Sinonime';

  @override
  String get templateFieldRule => 'Regulă';

  @override
  String get deckCategory => 'Nivel sau subiect';

  @override
  String get deckCategoryHint => 'de ex. A1, Medicină';

  @override
  String get flashcardsSearchAll => 'Caută în toate cartonașele';

  @override
  String get flashcardsSearchAllHint => 'Cuvânt, traducere, exemplu, notiță, etichetă…';

  @override
  String get flashcardsAllDecks => 'Toate pachetele';

  @override
  String get flashcardsAllLanguages => 'Toate limbile';

  @override
  String get flashcardsLangUnset => 'Limbă nesetată';

  @override
  String get flashcardsLevelUnset => 'Fără nivel sau subiect';

  @override
  String get flashcardsByLanguage => 'Progres pe limbi';

  @override
  String get flashcardsByLevel => 'Progres pe nivel sau subiect';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks pachete · $cards cartonașe · $mature învățate · $due de recapitulat · $correct corecte (30 de zile)';
  }

  @override
  String get flashcardsRecord => 'Înregistrează';

  @override
  String get flashcardsRecording => 'Se înregistrează…';

  @override
  String get flashcardsRecordStop => 'Oprește și păstrează';

  @override
  String get flashcardsMicDenied =>
      'Accesul la microfon este oprit. Permite-l în setările sistemului ca să înregistrezi.';

  @override
  String get flashcardsRecordFailed => 'Înregistrarea nu este disponibilă pe acest dispozitiv.';

  @override
  String get soundsTitle => 'Sunete';

  @override
  String get soundsNature => 'Natură';

  @override
  String get soundsNoise => 'Zgomot pentru concentrare';

  @override
  String get soundRain => 'Ploaie';

  @override
  String get soundStorm => 'Furtună';

  @override
  String get soundRiver => 'Râu';

  @override
  String get soundOcean => 'Valuri';

  @override
  String get soundFire => 'Foc de tabără';

  @override
  String get soundForest => 'Păsări în pădure';

  @override
  String get soundNight => 'Noapte de vară';

  @override
  String get soundWhite => 'Zgomot alb';

  @override
  String get soundPink => 'Zgomot roz';

  @override
  String get soundBrown => 'Zgomot maro';

  @override
  String get soundsPlay => 'Redă';

  @override
  String get soundsSleep => 'Temporizator de somn';

  @override
  String get soundsSleepOff => 'Oprit';

  @override
  String soundsSleepAt(String time) {
    return 'Se oprește la $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Pot fi redate cel mult $count sunete deodată.';
  }

  @override
  String get soundsHint =>
      'Atinge un sunet ca să începi. Combină mai multe și setează volumul fiecăruia.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Volum $name';
  }

  @override
  String get soundsChannel => 'Sunete din natură';

  @override
  String get settingsEndTone => 'Sunetul de final al cronometrului';

  @override
  String get toneGentle => 'Bipuri blânde';

  @override
  String get toneBeeps => 'Bipuri';

  @override
  String get toneWood => 'Bătaie în lemn';

  @override
  String get toneBird => 'Cântec de pasăre';

  @override
  String get toneStream => 'Pârâu';

  @override
  String get toneSystem => 'Sunetul telefonului';

  @override
  String get speechOnPhone => 'Pe acest telefon';

  @override
  String get speechAllLanguages => 'Toate limbile';

  @override
  String get speechSearchLanguage => 'Caută limbi';

  @override
  String get speechGetVoices => 'Descarcă mai multe voci';

  @override
  String get speechGetVoicesHint =>
      'Limbile fără voce pot fi descărcate din setările de vorbire ale telefonului.';

  @override
  String get speechSettingsFailed => 'Setările de vorbire ale telefonului nu au putut fi deschise.';

  @override
  String get speechVoiceMissing => 'Nicio voce instalată';

  @override
  String get speechPause => 'Pauză între repetări';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Citește exemplul împreună cu răspunsul';

  @override
  String get flashListen => 'Ascultă';

  @override
  String get flashListenNext => 'Cartonașul următor';

  @override
  String get flashListenEmpty => 'Niciun cartonaș de ascultat.';

  @override
  String get flashViewTable => 'Tabel';

  @override
  String get flashViewCards => 'Cartonașe';

  @override
  String get flashSwapSides => 'Inversează coloanele';

  @override
  String get flashSort => 'Sortează';

  @override
  String get flashSortNewest => 'Cele mai noi întâi';

  @override
  String get flashSortAlpha => 'De la A la Z';

  @override
  String get flashSortDue => 'De recapitulat întâi';

  @override
  String get flashSortHard => 'Cele mai grele întâi';

  @override
  String get flashPasteCards => 'Lipește cartonașe';

  @override
  String get flashClipboardEmpty => 'Clipboardul nu conține text.';

  @override
  String get flashMenuAdd => 'Adaugă cartonașe';

  @override
  String get flashMenuDeck => 'Pachet';

  @override
  String get flashToday => 'Azi';

  @override
  String get flashStudyNow => 'Studiază';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe răspunse',
      few: '$count cartonașe răspunse',
      one: '1 cartonaș răspuns',
      zero: 'Niciun cartonaș răspuns',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Ploaie în pădure';

  @override
  String get autoBackupTitle => 'Copii de rezervă automate';

  @override
  String get autoBackupDesc => 'În fiecare zi pe acest telefon; se păstrează ultimele 7';

  @override
  String get autoBackupHint =>
      'Aceste copii rămân pe telefon și sunt șterse dacă dezinstalezi aplicația. Ca să treci pe un telefon nou, folosește „Fă o copie de rezervă” pentru a salva un fișier.';

  @override
  String get autoBackupNone => 'Încă nicio copie de rezervă automată. Prima se face azi.';

  @override
  String get autoBackupRestore => 'Restabilește';

  @override
  String autoBackupConfirm(String date) {
    return 'Înlocuiești toate datele actuale cu copia de rezervă din $date?';
  }

  @override
  String get autoBackupRestored => 'Restabilit.';

  @override
  String get errorLogTitle => 'Jurnal de erori';

  @override
  String get errorLogHint =>
      'Dacă ceva nu merge bine, se notează aici: doar tipul erorii și locul din cod, niciodată conținutul tău. Trimite-l ca să ajuți la rezolvarea problemei.';

  @override
  String get errorLogEmpty => 'Nicio eroare înregistrată.';

  @override
  String get errorLogClear => 'Golește';

  @override
  String get soundsWithFocus => 'Redă în timpul sesiunilor de concentrare';

  @override
  String get soundsWithFocusHint =>
      'Mixul pornește odată cu o sesiune de concentrare și se oprește în pauze.';

  @override
  String get soundsSavedMixes => 'Mixuri salvate';

  @override
  String get soundsSaveMix => 'Salvează acest mix';

  @override
  String get soundsMixNameHint => 'Nume, de ex. Bibliotecă ploioasă';

  @override
  String soundsDeleteMix(String name) {
    return 'Ștergi mixul „$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'O dată pe zi, doar când sunt cartonașe de recapitulat';

  @override
  String get settingsReviewTime => 'Ora mementoului';

  @override
  String get shortcutFocus => 'Concentrare';

  @override
  String get shortcutNewTask => 'Sarcină nouă';

  @override
  String get shortcutReview => 'Recapitulează';

  @override
  String get shortcutSounds => 'Sunete din natură';

  @override
  String get myDayTitle => 'Începe-mi ziua';

  @override
  String get myDayHint => 'Ziua ta dintr-o privire, apoi concentrare dintr-o atingere';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de sarcini azi',
      few: '$count sarcini azi',
      one: '1 sarcină azi',
      zero: 'Nicio sarcină azi',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Niciun alt eveniment azi';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Urmează: $title la $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Au mai rămas $count de obiceiuri',
      few: 'Au mai rămas $count obiceiuri',
      one: 'A mai rămas 1 obicei',
      zero: 'Toate obiceiurile sunt făcute',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Începe cu o sesiune de concentrare';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Ula';

  @override
  String get hijriMonth6 => 'Jumada al-Akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qada';

  @override
  String get hijriMonth12 => 'Dhu al-Hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Date hegiriene';

  @override
  String get settingsHijriHint => 'Afișate în calendar și pe ecranul principal (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de zile',
      few: '$count zile',
      one: '1 zi',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done din $goal cartonașe azi';
  }

  @override
  String get studyGoalReached => 'Obiectivul zilnic e atins. Bravo!';

  @override
  String get studyWeekTitle => 'Săptămâna ta';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe răspunse în 7 zile',
      few: '$count cartonașe răspunse în 7 zile',
      one: '1 cartonaș răspuns în 7 zile',
      zero: 'Niciun cartonaș răspuns în 7 zile',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration de concentrare în 7 zile';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Serie: $current · Record: $best';
  }

  @override
  String get studyGoalTitle => 'Obiectiv zilnic (cartonașe)';

  @override
  String get studyGoalOff => 'Oprit';

  @override
  String get focusDndTitle => 'Nu deranja în timpul concentrării';

  @override
  String get focusDndHint => 'Pornește la fiecare sesiune de concentrare și se oprește în pauză';

  @override
  String get focusDndNeedsAccess => 'Permite accesul din setările telefonului ca să folosești asta';

  @override
  String get voiceInput => 'Dictează';

  @override
  String get voiceInputPrompt => 'Vorbește acum';

  @override
  String get voiceInputUnavailable =>
      'Dictarea nu este disponibilă pe acest telefon. Instalează sau activează un serviciu de recunoaștere vocală (de exemplu Recunoaștere și sinteză vocală de la Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Răsărit';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Liga Mondială Musulmană';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mecca';

  @override
  String get prayerMethodEgypt => 'Autoritatea Generală Egipteană';

  @override
  String get prayerMethodJordan => 'Iordania, Ministerul Awqaf';

  @override
  String get prayerMethodKarachi => 'Universitatea de Științe Islamice, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regiunea Golfului';

  @override
  String get prayerMethodKuwait => 'Kuweit';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turcia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonezia';

  @override
  String get prayerMethodFrance => 'Franța (12°)';

  @override
  String get prayerMethodRussia => 'Rusia, Administrația Spirituală';

  @override
  String prayerNotifTitle(String name) {
    return 'E timpul pentru $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Ora rugăciunii · $time';
  }

  @override
  String get prayerTitle => 'Orele de rugăciune';

  @override
  String get prayerOffHint =>
      'Alege-ți orașul ca să vezi orele de rugăciune. Se calculează pe telefon; nu e nevoie de acces la locație.';

  @override
  String get prayerChooseCity => 'Alege orașul';

  @override
  String get prayerCity => 'Oraș';

  @override
  String get prayerCitySearch => 'Caută un oraș';

  @override
  String get prayerMethod => 'Metodă de calcul';

  @override
  String get prayerHanafiAsr => 'Asr hanafit (mai târziu)';

  @override
  String get prayerReminders => 'Anunță la fiecare oră de rugăciune';

  @override
  String get prayerPauseFocus => 'Pune concentrarea pe pauză la ora rugăciunii';

  @override
  String get prayerPauseFocusHint =>
      'O sesiune în desfășurare intră în pauză; continui după rugăciune';

  @override
  String get prayerTurnOff => 'Oprește orele de rugăciune';

  @override
  String get prayerAccuracyNote =>
      'Orele calculate pot diferi cu câteva minute de cele ale moscheii locale.';

  @override
  String prayerNext(String name, String time) {
    return '$name la $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Acest fișier Anki folosește cel mai nou format. Exportă-l din nou în Anki cu „Compatibilitate cu versiunile mai vechi” activată, apoi importă acel fișier.';

  @override
  String get importTemplate => 'Șablon de foaie de calcul';

  @override
  String get importTemplateFront => 'măr';

  @override
  String get importTemplateBack => 'un fruct rotund';

  @override
  String get importTemplateExample => 'Mănânc un măr în fiecare zi.';

  @override
  String get importTemplateTag => 'mâncare';

  @override
  String get starterTitle => 'Pachete de început';

  @override
  String get starterHint =>
      'Adaugă unul ca să începi să studiezi imediat. Îl poți edita sau șterge mai târziu.';

  @override
  String get starterAdd => 'Adaugă';

  @override
  String get starterWords => 'Cuvinte englezești uzuale (arabă)';

  @override
  String get starterCapitals => 'Capitalele lumii';

  @override
  String get starterElements => 'Elemente chimice';

  @override
  String get settingsAccent => 'Culoare de accent';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentBlue => 'Albastru';

  @override
  String get accentTeal => 'Turcoaz';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentRose => 'Roz';

  @override
  String get accentAmber => 'Chihlimbar';

  @override
  String get settingsFlashTextSize => 'Mărimea textului pe cartonașe';

  @override
  String get settingsFlashTextSample => 'Exemplu';

  @override
  String get widgetStartFocus => 'Atinge pentru concentrare';

  @override
  String widgetFocusUntil(String time) {
    return 'Concentrare până la $time';
  }

  @override
  String get widgetNoCardsDue => 'Cartonașe: totul e gata';

  @override
  String get faqMyDayQ => 'Ce face „Începe-mi ziua”?';

  @override
  String get faqMyDayA =>
      'O dată pe zi, ecranul principal ți-l oferă: vezi sarcinile de azi, următorul eveniment, obiceiurile rămase și cartonașele de recapitulat, apoi pornești o sesiune de concentrare dintr-o atingere. Ține apăsat pe pictograma aplicației pentru acțiuni rapide sau adaugă widgetul pe ecranul principal ca să vezi timpul de concentrare și cartonașele de recapitulat.';

  @override
  String get faqTasksQ => 'Cum adaug o sarcină cu memento?';

  @override
  String get faqTasksA =>
      'Atinge Sarcină nouă pe Acasă sau + în Sarcini. Scrie titlul sau spune-l la microfon, apoi setează termenul, ora și mementoul. Sarcinile restante sunt afișate primele.';

  @override
  String get faqFocusQ => 'Cum funcționează cronometrul de concentrare?';

  @override
  String get faqFocusA =>
      'Alege Pomodoro, cronometru invers sau timp liber și apasă Pornește; pauzele pot urma automat. În Setări poți alege sunetul de final, poți activa Nu deranja în timpul concentrării și poți reda sunetele din natură la fiecare sesiune.';

  @override
  String get faqSoundsQ => 'Pot combina sunete din natură?';

  @override
  String get faqSoundsA =>
      'Pornește până la șase înregistrări reale, setează volumul fiecăreia și salvează mixul cu un nume. Ele continuă în fundal, iar un temporizator de somn le poate opri. Nu se folosește muzică.';

  @override
  String get faqCalendarQ => 'Poate calendarul să arate date hegiriene?';

  @override
  String get faqCalendarA =>
      'Da. Datele hegiriene (Umm al-Qura) apar automat în arabă și pot fi activate din Setări pentru orice limbă. Evenimentele, sarcinile cu termen și reperele proiectelor apar împreună.';

  @override
  String get faqFlashcardsQ => 'Cum decide recapitularea ce cartonașe văd?';

  @override
  String get faqFlashcardsA =>
      'Cartonașele pe care le știi bine revin după perioade mai lungi, iar cele greșite revin curând (repetare la intervale). Evaluează fiecare răspuns cu Din nou, Greu, Bine sau Ușor. Setează un obiectiv zilnic și păstrează-ți seria pe cardul Azi. Setează o dată de examen într-un pachet ca să vezi câte zile au rămas și câte cartonașe noi ai de învățat zilnic. Sortează după „Ordinea mea” ca să tragi cartonașele la locul lor, atinge difuzorul de pe oricare față ca s-o auzi și setează viteza și repetările din meniul Vorbire.';

  @override
  String get faqImportQ => 'Pot aduce cartonașe din Anki sau Excel?';

  @override
  String get faqImportA =>
      'Da. Într-un pachet alege Importă, apoi un fișier: Anki (.apkg), Excel (.xlsx) sau CSV, și potrivește coloanele. Folosește „Șablon de foaie de calcul” ca să scrii cartonașe pe calculator. Imaginile și sunetele din fișierele Anki nu sunt importate.';

  @override
  String get faqNotesQ => 'Ce pot face notițele?';

  @override
  String get faqNotesA =>
      'Scrie liber cu liste de verificare și formatare, fixează sau marchează ca favorite notițele importante, adaugă etichete și leagă notițele de sarcini. Butonul de microfon îți permite să dictezi. O notiță nouă poate porni de la un șablon (curs, rezumat de carte, jurnal, plan săptămânal), iar butonul de imagine adaugă fotografii.';

  @override
  String get faqHabitsQ => 'Cum se numără seriile obiceiurilor?';

  @override
  String get faqHabitsA =>
      'O zi contează când atingi ținta obiceiului într-o zi programată. Dacă pui un obicei pe pauză, seria rămâne în siguranță. Fiecare obicei poate avea propria oră de memento.';

  @override
  String get faqGoalsQ => 'Cum urmăresc obiectivele progresul?';

  @override
  String get faqGoalsA =>
      'Dă-i obiectivului o țintă și o unitate, apoi notează progresul. Cardul lui arată cât ai avansat și cât a mai rămas până la termen.';

  @override
  String get faqProjectsQ => 'La ce folosesc proiectele?';

  @override
  String get faqProjectsA =>
      'Grupează sarcinile într-un proiect, adaugă repere cu date și urmărește progresul general. Reperele apar și în calendar.';

  @override
  String get faqInsightsQ => 'Ce arată Statisticile?';

  @override
  String get faqInsightsA =>
      'Timpul de concentrare, sarcinile finalizate și studiul pe zile și săptămâni, cu sugestii blânde. Totul se calculează pe telefonul tău.';

  @override
  String get faqSpacesQ => 'Unde sunt toate secțiunile?';

  @override
  String get faqSpacesA =>
      'Spații listează toate părțile aplicației (notițe, pachete, obiceiuri, obiective, proiecte, sunete și altele), ca bara principală să rămână simplă.';

  @override
  String get faqBackupQ => 'Cum se fac copiile de rezervă ale datelor?';

  @override
  String get faqBackupA =>
      'În fiecare zi, aplicația păstrează discret o copie criptată pe acest telefon și le păstrează pe ultimele 7. Din Setări poți exporta și un fișier de rezervă protejat cu parolă, pe care îl poți restabili pe alt telefon.';

  @override
  String get faqPrayerQ => 'Cum funcționează orele de rugăciune?';

  @override
  String get faqPrayerA =>
      'Alege-ți orașul din Setări → Orele de rugăciune. Orele se calculează pe telefon cu metoda folosită acolo, iar metoda și școala pentru Asr se pot schimba. Poți fi anunțat la fiecare rugăciune, iar o sesiune de concentrare în desfășurare intră în pauză.';

  @override
  String get faqPrivacyQ => 'Unde sunt stocate datele mele?';

  @override
  String get faqPrivacyA =>
      'Doar pe telefonul tău, într-o bază de date criptată. Fără cont și fără urmărire. Internetul este folosit doar de funcțiile pe care le activezi tu, cum ar fi asistentul opțional.';

  @override
  String get faqAssistantQ => 'Ce este asistentul?';

  @override
  String get faqAssistantA =>
      'Un ajutor opțional pe care îl conectezi din Setări la propriul tău serviciu AI. Este oprit implicit și întreabă înainte să trimită orice text dintr-o notiță.';

  @override
  String get tourPlanTitle => 'Planifică-ți ziua';

  @override
  String get tourPlanBody =>
      'Sarcini, calendar și obiceiuri într-un singur loc liniștit. Începe fiecare dimineață cu „Începe-mi ziua”.';

  @override
  String get tourFocusTitle => 'Concentrează-te profund';

  @override
  String get tourFocusBody =>
      'Sesiuni cronometrate cu sunete reale din natură, Nu deranja și tonuri blânde de final.';

  @override
  String get tourLearnTitle => 'Învață pentru totdeauna';

  @override
  String get tourLearnBody =>
      'Cartonașe cu repetare la intervale, citire cu voce tare în multe limbi și import din Anki sau Excel.';

  @override
  String get helpTitle => 'Ajutor și întrebări';

  @override
  String get helpOpen => 'Deschide';

  @override
  String get helpTour => 'Fă turul';

  @override
  String get tourNext => 'Înainte';

  @override
  String get tourDone => 'Să începem';

  @override
  String get transferColTitle => 'Titlu';

  @override
  String get transferColNotes => 'Notițe';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Termen';

  @override
  String get transferColPriority => 'Prioritate (0-3)';

  @override
  String get transferColDone => 'Gata';

  @override
  String get transferColProject => 'Proiect';

  @override
  String get transferColCategory => 'Categorie';

  @override
  String get transferTitle => 'Import și export';

  @override
  String get transferSaveAs => 'Salvează ca';

  @override
  String get transferImport => 'Importă dintr-un fișier';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV sau un tabel din Word. Coloane: titlu, termen (2026-12-31), prioritate 0-3, gata, proiect, notițe. Sarcinile care există deja în aplicație sunt omise.';

  @override
  String get transferImportNotesHint =>
      'Fișierele Word, Markdown sau text devin o notiță. Excel sau CSV: o notiță pe rând (titlu, text).';

  @override
  String get transferSaved => 'Fișier salvat';

  @override
  String get transferFailed => 'Fișierul nu a putut fi creat. Nu s-a schimbat nimic.';

  @override
  String get transferUnsupported =>
      'Acest fișier nu poate fi citit aici. Folosește Excel, CSV, Word, Markdown sau text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added de adăugate',
      few: '$added adăugate',
      one: '1 adăugat',
      zero: 'Nimic nou de adăugat',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Toate notițele';

  @override
  String get transferThisNote => 'Această notiță';

  @override
  String get transferDeckFormats => 'Salvează ca Excel, Word sau PDF';

  @override
  String get faqFilesQ => 'Pot folosi fișiere Excel, Word sau PDF?';

  @override
  String get faqFilesA =>
      'Da. Sarcini și Notițe au sus un buton de import și export (două săgeți), iar fiecare pachet îl are în meniu. Salvează ca Excel, CSV, Word sau PDF sau adu fișiere Excel, CSV, Word, Markdown sau text. Numele coloanelor pot fi în oricare dintre limbile aplicației, iar fișierele salvate pot fi oricând importate din nou.';

  @override
  String get tplLecture => 'Curs';

  @override
  String get tplBook => 'Rezumat de carte';

  @override
  String get tplJournal => 'Jurnal';

  @override
  String get tplWeek => 'Plan săptămânal';

  @override
  String get tplLectureBody => '## Idei principale\n- \n\n## Întrebări\n- [ ] \n\n## Rezumat\n';

  @override
  String get tplBookBody =>
      '## Ideea principală\n\n## Ce am învățat\n- \n\n## Citate\n> \n\n## De aplicat\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Recunoscător pentru\n- \n\n## Concentrarea de azi\n- [ ] \n\n## Notițe\n';

  @override
  String get tplWeekBody =>
      '## Obiectivele săptămânii\n- [ ] \n\n### Sâmbătă\n- [ ] \n\n### Duminică\n- [ ] \n\n### Luni\n- [ ] \n\n### Marți\n- [ ] \n\n### Miercuri\n- [ ] \n\n### Joi\n- [ ] \n\n### Vineri\n- [ ] \n';

  @override
  String get tplHint => 'Pornește de la un șablon';

  @override
  String get noteImage => 'Imagine';

  @override
  String get noteAddImage => 'Adaugă o imagine';

  @override
  String get noteImageUnreadable =>
      'Acest fișier nu este o imagine pe care aplicația o poate citi.';

  @override
  String get noteImageTooLarge => 'Această imagine este prea mare.';

  @override
  String get examSet => 'Setează data examenului';

  @override
  String get examDate => 'Data examenului';

  @override
  String get examToday => 'Examenul e azi. Succes!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Examen peste $count de zile',
      few: 'Examen peste $count zile',
      one: 'Examen mâine',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'învață $count de cartonașe noi pe zi',
      few: 'învață $count cartonașe noi pe zi',
      one: 'învață 1 cartonaș nou pe zi',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'toate cartonașele sunt învățate, continuă recapitularea';

  @override
  String examRaiseLimit(int count) {
    return 'Arată $count cartonașe noi pe zi';
  }

  @override
  String get backupDriveHint =>
      'Ca să păstrezi o copie online, alege Google Drive (sau altă aplicație cloud) pe ecranul de salvare care se deschide.';

  @override
  String get flashShareDeck => 'Trimite pachetul unui prieten';

  @override
  String get flashSortManual => 'Ordinea mea (tragere)';

  @override
  String get flashReorderHint => 'Ține apăsat mânerul și trage un cartonaș ca să-l muți.';

  @override
  String get flashReorderNeedsAll => 'Golește căutarea și filtrele ca să poți trage cartonașele.';

  @override
  String get flashDragHandle => 'Trage pentru a muta';

  @override
  String get reportTitle => 'Raport lunar';

  @override
  String get reportFocus => 'Timp de concentrare';

  @override
  String reportSessions(int count) {
    return '$count sesiuni';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Cea mai bună zi: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count zile active';
  }

  @override
  String get reportCards => 'Cartonașe recapitulate';

  @override
  String reportCardsKnown(String percent) {
    return '$percent reținute';
  }

  @override
  String get reportTasks => 'Sarcini finalizate';

  @override
  String get reportHabits => 'Bife la obiceiuri';

  @override
  String get reportEmpty => 'Încă nimic înregistrat luna aceasta.';

  @override
  String get reportSave => 'Salvează ca PDF sau Word';

  @override
  String get reportPrevMonth => 'Luna anterioară';

  @override
  String get reportNextMonth => 'Luna următoare';

  @override
  String get careTitle => 'Grija pentru telefon și date';

  @override
  String get storageTitle => 'Spațiu de stocare';

  @override
  String get storageSubtitle => 'Ce ocupă spațiu și curățarea imaginilor nefolosite';

  @override
  String get storagePictures => 'Imagini din notițe';

  @override
  String get storageCardMedia => 'Imagini și audio din cartonașe';

  @override
  String get storageText => 'Textul notițelor';

  @override
  String get storageFree => 'Liber pe telefon';

  @override
  String get storageLow =>
      'Telefonul este aproape plin. Eliberează puțin spațiu ca să funcționeze în continuare copiile de rezervă și mementourile.';

  @override
  String storageUnused(int count, String size) {
    return '$count imagini nefolosite ($size)';
  }

  @override
  String get storageNoUnused => 'Nicio imagine nefolosită. Totul e în ordine.';

  @override
  String get storageClean => 'Elimină imaginile nefolosite';

  @override
  String storageCleaned(int count) {
    return 'Imagini eliminate: $count';
  }

  @override
  String get storageHint =>
      'O imagine contează ca nefolosită doar când nicio notiță nu o afișează, inclusiv cele din coșul de gunoi.';

  @override
  String get batteryTitle => 'Păstrează mementourile funcționale';

  @override
  String get batterySubtitle =>
      'Unele telefoane opresc aplicațiile în fundal. Verifică-l pe al tău.';

  @override
  String get batteryStatusOk =>
      'Economisirea bateriei nu limitează această aplicație. Mementourile și sunetele ar trebui să sosească la timp.';

  @override
  String get batteryStatusLimited =>
      'Economisirea bateriei poate opri aplicația în fundal, așa că mementourile și sunetele pot întârzia sau lipsi.';

  @override
  String get batteryOpen => 'Deschide setările bateriei';

  @override
  String get batteryOpenApp => 'Deschide setările aplicației';

  @override
  String get batteryGeneric =>
      'În setările bateriei alege această aplicație și seteaz-o pe Nerestricționat (sau Nu optimiza).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: deschide și Securitate › Permisiuni › Pornire automată și activează această aplicație, apoi setează Economisirea bateriei pe Fără restricții.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: deschide Baterie › această aplicație și permite activitatea în fundal și pornirea automată; blochează aplicația în lista aplicațiilor recente.';

  @override
  String get batterySamsung =>
      'Samsung: Baterie › Limite de utilizare în fundal: scoate această aplicație din Aplicații în repaus și Aplicații în repaus profund.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Lansare aplicații › această aplicație › gestionează manual și permite pornirea automată, lansarea secundară și rularea în fundal.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Baterie › Consum de energie în fundal › permite această aplicație și activează pornirea automată din permisiuni.';

  @override
  String get whatsNewTitle => 'Noutăți';

  @override
  String get whatsNewSubtitle => 'Cele mai recente schimbări în câteva rânduri';

  @override
  String get whatsNewDone => 'Am înțeles';

  @override
  String get whatsNewOrderTitle => 'Trage cartonașele în ordinea ta';

  @override
  String get whatsNewOrderBody =>
      'Într-un pachet alege Sortează › Ordinea mea, apoi ține mânerul și trage.';

  @override
  String get whatsNewSpeechTitle => 'Un difuzor pe fiecare față a cartonașului';

  @override
  String get whatsNewSpeechBody =>
      'Atinge-l ca să auzi cuvântul sau traducerea. Viteza, repetările și vocea sunt în meniul de recapitulare. Limba e detectată din text.';

  @override
  String get whatsNewReportTitle => 'Raport lunar';

  @override
  String get whatsNewReportBody =>
      'În Statistici atinge pictograma raportului ca să vezi luna și s-o salvezi ca PDF sau Word.';

  @override
  String get whatsNewCareTitle => 'Grija pentru telefon și date';

  @override
  String get whatsNewCareBody =>
      'Setările au acum o pagină de stocare cu curățarea imaginilor și un ghid pentru baterie potrivit mărcii telefonului tău.';

  @override
  String get whatsNewSoundTitle => 'Sunete mai liniștite';

  @override
  String get whatsNewSoundBody =>
      'Sunetele din natură sunt mai blânde și mai încete, iar cardurile cu imagini sunt mai frumoase.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Verificat $date: cea mai recentă copie de rezervă se deschide corect.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Verificat $date: s-a găsit o copie de rezervă deteriorată și a fost înlocuită cu una nouă.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Verificat $date: cea mai recentă copie de rezervă nu a putut fi deschisă. Salvează tu un fișier de rezervă din Setări.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'De obicei studiezi în jurul orei $time';
  }

  @override
  String get smartReviewTimeUse => 'Folosește';

  @override
  String get widgetNewNote => 'Notiță nouă';

  @override
  String get noteConnections => 'Etichete, legături și sarcini';

  @override
  String get navCards => 'Cartonașe';

  @override
  String get studyAnswerWay => 'Cum răspunzi';

  @override
  String get studyMorePractice => 'Exersare suplimentară';

  @override
  String get studySessionSettings => 'Setările sesiunii';

  @override
  String get focusAdjustTitle => 'Sesiunea ta';

  @override
  String get focusPresetsTitle => 'Gata făcute';

  @override
  String get focusPresetStudy => 'Studiu';

  @override
  String get focusPresetDeep => 'Muncă profundă';

  @override
  String get focusPresetQuick => 'Sprint scurt';

  @override
  String get focusPresetReading => 'Lectură';

  @override
  String get focusPresetWorkout => 'Runde de antrenament';

  @override
  String get focusAdjustMinutes => 'Durata concentrării';

  @override
  String get focusAdjustBreak => 'Durata pauzei';

  @override
  String get focusAdjustRounds => 'Runde';

  @override
  String get focusRoundsOpen => 'Fără limită';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Atinge pentru a schimba timpul';

  @override
  String get flashArrangeDecks => 'Aranjează pachetele';

  @override
  String get flashDeckActions => 'Opțiunile pachetului';

  @override
  String get starterBrowse => 'Pachete gata făcute';

  @override
  String get starterBrowseHint => 'Adaugă unul dintr-o atingere și începe să înveți';

  @override
  String get dashOpenDecks => 'Deschide cartonașele';

  @override
  String speechVoiceNumber(String n) {
    return 'Vocea $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Ai fost în ritm. Te odihnești $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Începe pauza';

  @override
  String tasksFinishAt(String time) {
    return 'Dacă începi acum, termini tot până la $time';
  }

  @override
  String get focusCalmPacing => 'Ritm liniștit';

  @override
  String get focusCalmPacingHint => 'Doar minute întregi și cercul, fără secunde care ticăie';

  @override
  String get focusFlipHint => 'Întoarce telefonul cu ecranul în jos ca să începi';

  @override
  String get focusImmersive => 'Mod imersiv';

  @override
  String get focusImmersiveBlack => 'Negru pur (economisește bateria)';

  @override
  String get focusFlipToFocus => 'Întoarce pentru concentrare';

  @override
  String get focusFlipToFocusHint =>
      'În modul imersiv: cu ecranul în jos pornește, ridicarea telefonului pune pe pauză';

  @override
  String get guardTitle => 'Paznic anti-distragere';

  @override
  String get guardSubtitle => 'Pune pe pauză aplicațiile care te distrag cât te concentrezi';

  @override
  String get guardSwitch => 'Pune pe pauză aplicațiile care distrag';

  @override
  String get guardSwitchHint =>
      'În timpul sesiunilor de concentrare și al orelor tale de Paznic orar';

  @override
  String get guardNeedsAccess => 'Necesită comutatorul de accesibilitate: atinge ca să-l activezi';

  @override
  String get guardDisclosureTitle => 'Cum funcționează paznicul';

  @override
  String get guardDisclosureBody =>
      'Ca să pună pe pauză aplicațiile alese, Deep Focus folosește serviciul de accesibilitate Android pentru a vedea ce aplicație este deschisă. Cu „Închide Shorts și Reels” activat, verifică și dacă pe ecran este un player de videoclipuri scurte.\n\nNu citește niciun text, nu păstrează nimic din ce vede și nu trimite nimic nicăieri: totul rămâne pe telefonul tău. Îl poți opri oricând din setările de accesibilitate.';

  @override
  String get guardAgree => 'Sunt de acord și deschide setările';

  @override
  String get guardModeGentle => 'Blând';

  @override
  String get guardModeStrict => 'Strict';

  @override
  String get guardGentleHint => 'O pauză de respirație de 5 secunde, apoi alegi tu';

  @override
  String get guardStrictHint => 'Aplicațiile alese rămân închise până la finalul concentrării';

  @override
  String get guardApps => 'Aplicații de pus pe pauză';

  @override
  String get guardAppsAllowed => 'Aplicații permise';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de aplicații',
      few: '$count aplicații',
      one: '1 aplicație',
      zero: 'Încă nimic ales',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Permite doar aplicațiile alese';

  @override
  String get guardAllowlistHint =>
      'Toate celelalte aplicații sunt puse pe pauză; apelurile, setările și tastatura funcționează mereu';

  @override
  String get guardShorts => 'Închide Shorts și Reels';

  @override
  String get guardShortsHint =>
      'Oricând paznicul e activ. Pe cât posibil: aceste aplicații se schimbă des';

  @override
  String get guardSchedule => 'Paznic orar';

  @override
  String get guardScheduleHint =>
      'Păzește și în anumite zile și ore, cum ar fi la școală sau la muncă';

  @override
  String get guardFrom => 'De la';

  @override
  String get guardTo => 'Până la';

  @override
  String get guardSearchApps => 'Caută aplicații';

  @override
  String get guardNoApps => 'Nicio aplicație găsită';

  @override
  String get guardPrivacy =>
      'Funcționează doar pe telefonul tău: paznicul vede ce aplicație e deschisă, niciodată ce conține, și nu trimite nimic.';

  @override
  String get guardBreathe => 'Inspiră… și expiră';

  @override
  String get guardQuestion => 'Ai nevoie de această aplicație acum?';

  @override
  String get guardBackToFocus => 'Înapoi la concentrare';

  @override
  String get guardOpenFive => 'Deschide pentru 5 minute';

  @override
  String get guardStrictBody => 'Această aplicație e pe pauză până la finalul concentrării.';

  @override
  String get guardShortsClosed => 'Videoclipurile scurte sunt închise cât paznicul e activ';

  @override
  String get faqGuardQ => 'Cum opresc aplicațiile care mă distrag când mă concentrez?';

  @override
  String get faqGuardA =>
      'Deschide Concentrare → setările cronometrului → Paznic anti-distragere. Alege aplicațiile, apoi Blând (5 secunde de respirație și întrebarea „Ai nevoie de această aplicație acum?”) sau Strict (rămân închise). Funcționează în timpul sesiunilor de concentrare și, cu Paznicul orar, în zilele și orele pe care le setezi. „Permite doar aplicațiile alese” pune pe pauză tot restul; apelurile, setările și tastatura funcționează mereu. Android îți cere o singură dată să activezi paznicul din setările de accesibilitate. Vede doar ce aplicație e deschisă și nu trimite nimic.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Mutată în $name';
  }

  @override
  String get notesDragHint => 'Ține apăsat pe o notiță și trage-o pe un carnet';

  @override
  String get guardReviewCards => 'Recapitulează cartonașe în schimb';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de cartonașe te așteaptă',
      few: '$count cartonașe te așteaptă',
      one: '1 cartonaș te așteaptă',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Urgență: ține apăsat 10 secunde';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Ține apăsat în continuare… $n';
  }

  @override
  String get guardWeekTitle => 'Săptămâna aceasta';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de pauze',
      few: '$count pauze',
      one: '1 pauză',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'înapoi la concentrare de $count de ori',
      few: 'înapoi la concentrare de $count ori',
      one: 'înapoi la concentrare o dată',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Redenumește cuvinte';

  @override
  String get wordsSubtitle => 'Folosește propriul cuvânt pentru orice text din aplicație';

  @override
  String get wordsHint =>
      'Atinge un text ca să-l schimbi. Cuvintele tale se aplică doar acestei limbi și sunt păstrate în copiile de rezervă.';

  @override
  String get wordsSearch => 'Caută texte';

  @override
  String get wordsChangedOnly => 'Doar cele schimbate';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Folosește originalul';

  @override
  String get wordsResetAll => 'Resetează toate cuvintele';

  @override
  String get wordsResetAllConfirm => 'Toate textele din această limbă revin la original.';

  @override
  String get wordsNone => 'Niciun text găsit';

  @override
  String get settingsLanguageSearch => 'Caută limbi';

  @override
  String get settingsLanguageNoMatch => 'Nicio limbă nu se potrivește';

  @override
  String get soundsMyMusic => 'Audio-ul tău';

  @override
  String get soundsMusicHint =>
      'Redă un fișier audio de pe telefon. Nimic nu este copiat sau încărcat.';

  @override
  String get soundsChooseMusic => 'Alege audio';

  @override
  String get soundsRemoveMusic => 'Elimină audio';

  @override
  String get wordPacksTitle => 'Învață limbi';

  @override
  String get wordPacksHint =>
      'Liste de cuvinte pe teme. Descarcă doar limba dorită, apoi editează sau șterge liber cardurile.';

  @override
  String get wordPacksFailed => 'Descărcarea a eșuat. Verifică conexiunea.';

  @override
  String get wordPacksEmpty => 'Cuvintele pentru această limbă sunt încă în pregătire.';
}
