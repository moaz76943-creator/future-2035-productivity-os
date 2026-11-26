// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => '홈';

  @override
  String get navTasks => '할 일';

  @override
  String get navFocus => '집중';

  @override
  String get navCalendar => '캘린더';

  @override
  String get navSpaces => '공간';

  @override
  String get moduleProjects => '프로젝트';

  @override
  String get moduleNotes => '노트';

  @override
  String get moduleFlashcards => '플래시카드';

  @override
  String get moduleGoals => '목표';

  @override
  String get moduleHabits => '습관';

  @override
  String get moduleAnalytics => '통계';

  @override
  String get moduleSearch => '검색';

  @override
  String get moduleAssistant => '어시스턴트';

  @override
  String get moduleSettings => '설정';

  @override
  String get moduleTrash => '휴지통';

  @override
  String get actionSave => '저장';

  @override
  String get actionCancel => '취소';

  @override
  String get actionDelete => '삭제';

  @override
  String get actionEdit => '편집';

  @override
  String get actionDone => '완료';

  @override
  String get actionAdd => '추가';

  @override
  String get actionCreate => '만들기';

  @override
  String get actionClose => '닫기';

  @override
  String get actionBack => '뒤로';

  @override
  String get actionUndo => '실행 취소';

  @override
  String get actionRestore => '복원';

  @override
  String get actionRetry => '다시 시도';

  @override
  String get actionContinue => '계속';

  @override
  String get actionSkip => '건너뛰기';

  @override
  String get actionArchive => '보관';

  @override
  String get actionUnarchive => '보관 해제';

  @override
  String get actionPin => '고정';

  @override
  String get actionUnpin => '고정 해제';

  @override
  String get actionMore => '더보기';

  @override
  String get actionClear => '지우기';

  @override
  String get actionSearch => '검색';

  @override
  String get actionSort => '정렬';

  @override
  String get actionShare => '공유';

  @override
  String get actionImport => '가져오기';

  @override
  String get actionExport => '내보내기';

  @override
  String get actionPause => '일시정지';

  @override
  String get actionResume => '재개';

  @override
  String get actionStart => '시작';

  @override
  String get actionStop => '중지';

  @override
  String get actionComplete => '완료하기';

  @override
  String get actionDeleteForever => '영구 삭제';

  @override
  String get actionEmptyTrash => '휴지통 비우기';

  @override
  String get actionUnlink => '연결 해제';

  @override
  String get actionCustomize => '맞춤 설정';

  @override
  String get actionPreview => '미리보기';

  @override
  String get actionLog => '진행 기록';

  @override
  String get stateLoading => '불러오는 중…';

  @override
  String get stateSaving => '저장 중…';

  @override
  String get stateSaved => '저장됨';

  @override
  String get stateUnsaved => '저장되지 않은 변경 사항';

  @override
  String get errorGenericTitle => '문제가 발생했습니다';

  @override
  String get errorGenericMessage => '데이터는 안전합니다. 다시 시도해 주세요.';

  @override
  String get errorLoadFailed => '이 콘텐츠를 불러올 수 없습니다.';

  @override
  String get errorSaveFailed => '저장하지 못했습니다. 변경 내용은 그대로 남아 있습니다.';

  @override
  String get validationRequired => '필수 항목입니다';

  @override
  String get validationTitleRequired => '제목을 입력하세요';

  @override
  String get validationNameRequired => '이름을 입력하세요';

  @override
  String get validationTooLong => '너무 깁니다';

  @override
  String get validationEndBeforeStart => '종료 시간은 시작 시간 이후여야 합니다';

  @override
  String get validationStartAfterDue => '시작일은 마감일보다 앞서야 합니다';

  @override
  String get validationPositiveNumber => '0보다 큰 숫자를 입력하세요';

  @override
  String get validationDependencyCycle => '순환 의존이 생깁니다';

  @override
  String get validationInvalidRepeat => '올바르지 않은 반복 규칙입니다';

  @override
  String get deletedItem => '휴지통으로 이동했습니다';

  @override
  String get untitled => '제목 없음';

  @override
  String get noProject => '프로젝트 없음';

  @override
  String get greetingMorning => '좋은 아침이에요';

  @override
  String get greetingAfternoon => '좋은 오후예요';

  @override
  String get greetingEvening => '좋은 저녁이에요';

  @override
  String get dashFocusToday => '오늘의 집중';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => '집중 시작';

  @override
  String get dashFocusRunning => '세션 진행 중';

  @override
  String get dashTodayTasks => '오늘 마감';

  @override
  String get dashAgenda => '일정';

  @override
  String get dashHabits => '오늘의 습관';

  @override
  String get dashGoals => '목표';

  @override
  String get dashReview => '복습';

  @override
  String get dashRecentNotes => '최근 노트';

  @override
  String get dashInsight => '제안';

  @override
  String get dashSeeAll => '모두 보기';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '복습할 카드 $count장',
      zero: '복습할 카드 없음',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => '지금 복습';

  @override
  String get dashCustomizeTitle => '홈 섹션';

  @override
  String get dashCustomizeHint => '홈 화면에 표시할 항목을 선택하세요.';

  @override
  String get dashSectionFocus => '집중';

  @override
  String get dashSectionToday => '오늘 마감인 할 일';

  @override
  String get dashSectionAgenda => '일정';

  @override
  String get dashSectionHabits => '습관';

  @override
  String get dashSectionGoals => '목표';

  @override
  String get dashSectionReview => '플래시카드 복습';

  @override
  String get dashSectionNotes => '최근 노트';

  @override
  String get dashSectionInsight => '제안';

  @override
  String get quickAddTask => '새 할 일';

  @override
  String get quickAddNote => '새 노트';

  @override
  String get quickAddEvent => '새 일정';

  @override
  String get quickStartFocus => '집중';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '기한이 지난 할 일이 $count개 있습니다. 가장 중요한 것부터 시작하세요.',
      one: '기한이 지난 할 일이 1개 있습니다. 먼저 일정을 바꾸거나 끝내세요.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '오늘의 집중 목표까지 $minutes분 남았어요.';
  }

  @override
  String get insightCardsDue => '기억이 생생할 때 복습할 카드를 지금 공부하세요.';

  @override
  String get insightAllClear => '모두 순조로워요. 내일을 계획하거나 편안히 쉬어 가세요.';

  @override
  String insightHabitStreak(String habit) {
    return '연속 기록을 지키세요: 오늘 $habit이(가) 아직 남아 있어요.';
  }

  @override
  String get focusTitle => '집중';

  @override
  String get focusModePomodoro => '뽀모도로';

  @override
  String get focusModeCountdown => '타이머';

  @override
  String get focusModeCountUp => '스톱워치';

  @override
  String get focusModeOpen => '자유';

  @override
  String get focusPhaseWork => '집중';

  @override
  String get focusPhaseShortBreak => '짧은 휴식';

  @override
  String get focusPhaseLongBreak => '긴 휴식';

  @override
  String get focusReady => '준비되면 시작하세요';

  @override
  String get focusPaused => '일시정지됨';

  @override
  String get focusRunning => '집중 중';

  @override
  String get focusDuration => '시간';

  @override
  String get focusLinkTask => '할 일 연결';

  @override
  String get focusLinkedTask => '작업 중';

  @override
  String get focusNoTask => '연결된 할 일 없음';

  @override
  String focusCycle(int current, int total) {
    return '사이클 $current/$total';
  }

  @override
  String get focusSkipBreak => '휴식 건너뛰기';

  @override
  String get focusStartBreak => '휴식 시작';

  @override
  String get focusStartNext => '다음 집중 시작';

  @override
  String get focusSessionComplete => '세션 완료';

  @override
  String get focusSessionStopped => '세션 저장됨';

  @override
  String focusSessionSummary(String duration) {
    return '$duration 동안 집중했어요.';
  }

  @override
  String get focusAddNote => '이 세션에 대한 메모 추가';

  @override
  String get focusHistory => '기록';

  @override
  String get focusNoHistory => '완료한 세션이 여기에 표시됩니다';

  @override
  String get focusTargets => '목표';

  @override
  String get focusDailyTarget => '일일 목표';

  @override
  String get focusWeeklyTarget => '주간 목표';

  @override
  String get focusOutcomeCompleted => '완료';

  @override
  String get focusOutcomeInterrupted => '일찍 중지함';

  @override
  String get focusRecovered => '앱이 닫혀 있는 동안에도 세션이 계속되었습니다.';

  @override
  String get focusCompletedWhileAway => '앱이 닫혀 있는 동안 세션이 끝나 저장되었습니다.';

  @override
  String get focusNotificationsOff => '알림이 꺼져 있습니다. 세션이 끝나도 알려 드릴 수 없습니다.';

  @override
  String get focusBatteryHint =>
      '일부 기기는 백그라운드 앱을 멈춥니다. 타이머는 정확하지만 알림이 늦을 수 있습니다. 알림을 제때 받으려면 배터리 사용을 \'제한 없음\'으로 허용하세요.';

  @override
  String get focusOpenSettings => '설정 열기';

  @override
  String get focusStopConfirmTitle => '이 세션을 중지할까요?';

  @override
  String get focusStopConfirmMessage => '지금까지의 집중 시간은 저장됩니다.';

  @override
  String get focusDiscard => '삭제';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes분');
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time 남음';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time 경과';
  }

  @override
  String get focusDeleteSession => '세션 삭제';

  @override
  String get tasksTitle => '할 일';

  @override
  String get tasksViewToday => '오늘';

  @override
  String get tasksViewUpcoming => '예정';

  @override
  String get tasksViewAll => '전체';

  @override
  String get tasksViewOverdue => '기한 지남';

  @override
  String get tasksViewCompleted => '완료';

  @override
  String get tasksQuickAddHint => '할 일 추가…';

  @override
  String get tasksEmptyTitle => '모두 끝났어요';

  @override
  String get tasksEmptyMessage => '할 일을 추가해 하루를 계획하세요.';

  @override
  String get tasksEmptyCompleted => '완료한 할 일이 여기에 표시됩니다.';

  @override
  String get taskNew => '새 할 일';

  @override
  String get taskEdit => '할 일 편집';

  @override
  String get taskTitleLabel => '제목';

  @override
  String get taskTitleHint => '무엇을 해야 하나요?';

  @override
  String get taskDescriptionLabel => '설명';

  @override
  String get taskNotesLabel => '메모';

  @override
  String get taskPriority => '우선순위';

  @override
  String get priorityNone => '없음';

  @override
  String get priorityLow => '낮음';

  @override
  String get priorityMedium => '보통';

  @override
  String get priorityHigh => '높음';

  @override
  String get priorityUrgent => '긴급';

  @override
  String get taskDueDate => '마감일';

  @override
  String get taskStartDate => '시작일';

  @override
  String get taskReminder => '알림';

  @override
  String get taskRepeat => '반복';

  @override
  String get taskProject => '프로젝트';

  @override
  String get taskCategory => '카테고리';

  @override
  String get taskCategoryHint => '예: 업무, 집, 공부';

  @override
  String get taskEstimateMinutes => '예상 시간(분)';

  @override
  String get taskTracked => '기록된 집중 시간';

  @override
  String get taskLabels => '라벨';

  @override
  String get taskAddLabel => '새 라벨';

  @override
  String get taskChecklist => '체크리스트';

  @override
  String get taskAddChecklistItem => '항목 추가';

  @override
  String get taskSubtasks => '하위 작업';

  @override
  String get taskAddSubtask => '하위 작업 추가';

  @override
  String get taskDependencies => '선행 작업';

  @override
  String get taskAddDependency => '선행 작업 추가';

  @override
  String get taskLinkedNotes => '연결된 노트';

  @override
  String get taskSetTime => '시간 설정';

  @override
  String get taskNoDate => '날짜 없음';

  @override
  String get taskCompleted => '할 일을 완료했어요';

  @override
  String get taskNextOccurrence => '다음 반복을 만들었어요';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days일 지남');
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '\'$title\' 완료로 표시';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '\'$title\' 미완료로 표시';
  }

  @override
  String get sortSmart => '스마트';

  @override
  String get sortDueDate => '마감일';

  @override
  String get sortPriority => '우선순위';

  @override
  String get sortCreated => '최신순';

  @override
  String get sortTitle => '제목';

  @override
  String get filterAllProjects => '모든 프로젝트';

  @override
  String get filterAnyPriority => '모든 우선순위';

  @override
  String get filterTitle => '필터 및 정렬';

  @override
  String get dateToday => '오늘';

  @override
  String get dateTomorrow => '내일';

  @override
  String get dateYesterday => '어제';

  @override
  String get repeatNever => '반복 안 함';

  @override
  String get repeatDaily => '매일';

  @override
  String get repeatWeekdays => '평일마다';

  @override
  String get repeatWeekly => '매주';

  @override
  String get repeatMonthly => '매월';

  @override
  String get repeatYearly => '매년';

  @override
  String get repeatCustom => '사용자 지정';

  @override
  String get repeatEvery => '반복 간격';

  @override
  String get repeatOnDays => '요일';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '일');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '주');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '개월');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '년');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count회');
    return '$_temp0 후 종료';
  }

  @override
  String get repeatEndsNever => '종료 없음';

  @override
  String get reminderAtTime => '일정 시간에';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes분 전');
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(hours, locale: localeName, other: '$hours시간 전');
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1일 전';

  @override
  String get projectsTitle => '프로젝트';

  @override
  String get projectsEmptyTitle => '아직 프로젝트가 없어요';

  @override
  String get projectsEmptyMessage => '관련된 할 일, 노트, 집중 시간을 한곳에 모으세요.';

  @override
  String get projectNew => '새 프로젝트';

  @override
  String get projectEdit => '프로젝트 편집';

  @override
  String get projectName => '이름';

  @override
  String get projectDescription => '설명';

  @override
  String get projectGoal => '목적';

  @override
  String get projectDeadline => '마감 기한';

  @override
  String get projectColor => '색상';

  @override
  String get projectIcon => '아이콘';

  @override
  String get projectProgress => '진행률';

  @override
  String projectTasksDone(int done, int total) {
    return '$total개 중 $done개 완료';
  }

  @override
  String get projectFocusTime => '집중 시간';

  @override
  String get projectArchived => '보관된 프로젝트';

  @override
  String get projectShowArchived => '보관된 항목 표시';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일 남음',
      zero: '오늘 마감',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => '기한 지남';

  @override
  String get calendarTitle => '캘린더';

  @override
  String get calendarMonth => '월';

  @override
  String get calendarWeek => '주';

  @override
  String get calendarDay => '일';

  @override
  String get calendarToday => '오늘';

  @override
  String get calendarPrevious => '이전';

  @override
  String get calendarNext => '다음';

  @override
  String get calendarNoEvents => '일정 없음';

  @override
  String get calendarAllDay => '종일';

  @override
  String get eventNew => '새 일정';

  @override
  String get eventEdit => '일정 편집';

  @override
  String get eventTitleHint => '일정 제목';

  @override
  String get eventStarts => '시작';

  @override
  String get eventEnds => '종료';

  @override
  String get eventKind => '유형';

  @override
  String get eventKindEvent => '일정';

  @override
  String get eventKindTimeBlock => '시간 블록';

  @override
  String get eventKindFocus => '집중 세션';

  @override
  String get eventKindGoal => '개인 목표';

  @override
  String get eventDescription => '세부 정보';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '일정 $count개와 겹침');
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => '이 날에 겹치는 일정이 있어요';

  @override
  String get calendarTaskDue => '마감 할 일';

  @override
  String get calendarDragHint => '일정을 길게 눌러 끌면 옮길 수 있어요';

  @override
  String get calendarRescheduled => '일정을 옮겼어요';

  @override
  String get calendarScheduleTask => '시간 블록으로 예약';

  @override
  String get notesTitle => '노트';

  @override
  String get notesViewAll => '전체';

  @override
  String get notesViewPinned => '고정됨';

  @override
  String get notesViewFavorites => '즐겨찾기';

  @override
  String get notesViewArchived => '보관됨';

  @override
  String get notesTags => '태그';

  @override
  String get notesNewNotebook => '새 노트북';

  @override
  String get notesNoNotebook => '노트북 없음';

  @override
  String get notesEmptyTitle => '빈 캔버스';

  @override
  String get notesEmptyMessage => '아이디어, 회의 메모, 지식을 기록하세요.';

  @override
  String get noteTitleHint => '제목';

  @override
  String get noteBodyHint => '쓰기 시작하세요… 태그는 #, 노트 연결은 [[제목]]을 사용하세요.';

  @override
  String get noteFavorite => '즐겨찾기';

  @override
  String get noteUnfavorite => '즐겨찾기에서 삭제';

  @override
  String get noteMoveTo => '노트북으로 이동';

  @override
  String get noteBacklinks => '이 노트를 링크한 노트';

  @override
  String get noteLinkedTasks => '연결된 할 일';

  @override
  String get noteLinkTask => '할 일 연결';

  @override
  String get noteLinkProject => '프로젝트';

  @override
  String get noteFormatHeading => '제목';

  @override
  String get noteFormatBold => '굵게';

  @override
  String get noteFormatItalic => '기울임';

  @override
  String get noteFormatList => '글머리 기호 목록';

  @override
  String get noteFormatChecklist => '체크리스트';

  @override
  String get noteFormatLink => '링크';

  @override
  String noteEdited(String time) {
    return '$time 편집됨';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count단어');
    return '$_temp0';
  }

  @override
  String get flashTitle => '플래시카드';

  @override
  String get flashEmptyTitle => '첫 덱을 만들어 보세요';

  @override
  String get flashEmptyMessage => '간격 반복은 각 카드를 잊기 직전에 보여 줍니다.';

  @override
  String get deckNew => '새 덱';

  @override
  String get deckEdit => '덱 편집';

  @override
  String get deckName => '덱 이름';

  @override
  String get deckDescription => '설명';

  @override
  String get deckDailyNew => '하루 새 카드 수';

  @override
  String get deckDailyReview => '하루 복습 목표';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count장',
      zero: '카드 없음',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => '복습 예정';

  @override
  String get deckNewCards => '새 카드';

  @override
  String get deckMature => '숙달';

  @override
  String get deckStudy => '학습';

  @override
  String get deckNothingDue => '지금은 복습할 카드가 없어요. 나중에 다시 오세요.';

  @override
  String get deckEmptyCards => '카드를 추가해 학습을 시작하세요.';

  @override
  String get cardNew => '새 카드';

  @override
  String get cardEdit => '카드 편집';

  @override
  String get cardFront => '앞면';

  @override
  String get cardBack => '뒷면';

  @override
  String get cardFrontHint => '질문 또는 용어';

  @override
  String get cardBackHint => '답 또는 정의';

  @override
  String get cardTags => '태그';

  @override
  String get cardAddAnother => '저장 후 계속 추가';

  @override
  String get reviewShowAnswer => '정답 보기';

  @override
  String get reviewAgain => '다시';

  @override
  String get reviewHard => '어려움';

  @override
  String get reviewGood => '좋음';

  @override
  String get reviewEasy => '쉬움';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => '세션 완료';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '카드 $count장을 복습했어요.');
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => '탭하여 정답 보기';

  @override
  String get importCardsTitle => '카드 가져오기';

  @override
  String get importCardsHint =>
      '한 줄에 카드 하나씩 붙여 넣거나(앞면과 뒷면은 탭 또는 세미콜론으로 구분) 파일을 선택하세요: Excel(.xlsx), CSV, Anki 덱(.apkg), 내보낸 덱.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '카드 $count장을 가져왔어요',
      zero: '가져온 카드 없음',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => '이 콘텐츠를 가져올 수 없습니다.';

  @override
  String get exportCopied => '덱을 내보냈어요';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count분');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count일');
    return '$_temp0';
  }

  @override
  String get goalsTitle => '목표';

  @override
  String get goalsEmptyTitle => '무언가를 목표로 삼아 보세요';

  @override
  String get goalsEmptyMessage => '일간, 주간, 월간 또는 장기 목표를 세우고 실제 진행 상황을 기록하세요.';

  @override
  String get goalNew => '새 목표';

  @override
  String get goalEdit => '목표 편집';

  @override
  String get goalTitleHint => '무엇을 이루고 싶나요?';

  @override
  String get goalPeriod => '기간';

  @override
  String get goalPeriodDaily => '일간';

  @override
  String get goalPeriodWeekly => '주간';

  @override
  String get goalPeriodMonthly => '월간';

  @override
  String get goalPeriodLongTerm => '장기';

  @override
  String get goalTarget => '목표치';

  @override
  String get goalUnit => '단위';

  @override
  String get goalUnitHint => '예: 쪽, km, 시간';

  @override
  String get goalStatusActive => '진행 중';

  @override
  String get goalStatusPaused => '일시정지됨';

  @override
  String get goalStatusAchieved => '달성';

  @override
  String get goalPause => '목표 일시정지';

  @override
  String get goalResume => '목표 재개';

  @override
  String get goalMarkAchieved => '달성으로 표시';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => '양';

  @override
  String get goalLogNote => '메모(선택)';

  @override
  String get goalHistory => '기록';

  @override
  String get goalNoHistory => '기록한 진행 상황이 여기에 표시됩니다';

  @override
  String get goalLinkedTasks => '연결된 할 일';

  @override
  String get goalLinkedTasksHint => '연결된 할 일을 완료할 때마다 이 목표에 1씩 더해집니다.';

  @override
  String get goalThisPeriod => '이번 기간';

  @override
  String get habitsTitle => '습관';

  @override
  String get habitsEmptyTitle => '매일 작은 걸음';

  @override
  String get habitsEmptyMessage => '습관을 만들고 실천할 때마다 체크하세요.';

  @override
  String get habitNew => '새 습관';

  @override
  String get habitEdit => '습관 편집';

  @override
  String get habitNameHint => '예: 20쪽 읽기';

  @override
  String get habitDays => '일정';

  @override
  String get habitEveryDay => '매일';

  @override
  String get habitTargetPerDay => '하루 횟수';

  @override
  String get habitReminder => '매일 알림';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 연속',
      zero: '연속 기록 없음',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => '최고 연속 기록';

  @override
  String get habitCurrentStreak => '현재 연속 기록';

  @override
  String get habitConsistency => '꾸준함';

  @override
  String get habitLast90 => '최근 90일';

  @override
  String get habitPaused => '일시정지됨';

  @override
  String get habitPause => '습관 일시정지';

  @override
  String get habitResume => '습관 재개';

  @override
  String get habitDoneToday => '오늘 완료';

  @override
  String habitCountToday(int count, int target) {
    return '오늘 $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '\'$name\' 체크';
  }

  @override
  String get habitNotScheduledToday => '오늘은 예정 없음';

  @override
  String get analyticsTitle => '통계';

  @override
  String get rangeWeek => '7일';

  @override
  String get rangeMonth => '30일';

  @override
  String get rangeQuarter => '90일';

  @override
  String get statFocusTime => '집중 시간';

  @override
  String get statSessions => '세션';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '완료 $completed · 일찍 중지 $interrupted';
  }

  @override
  String get statTasksDone => '완료한 할 일';

  @override
  String get statCompletionRate => '기한 내 완료';

  @override
  String get statHabitConsistency => '습관 꾸준함';

  @override
  String get statRetention => '카드 기억률';

  @override
  String get statReviews => '복습';

  @override
  String get statActiveGoals => '진행 중인 목표';

  @override
  String get statEstimated => '완료한 예상 작업량';

  @override
  String get statEstimatedNote => '측정한 시간이 아니라 예상치를 기준으로 합니다';

  @override
  String get statMeasuredNote => '집중 세션에서 측정';

  @override
  String get chartFocusByDay => '하루 집중 시간(분)';

  @override
  String get chartTasksByDay => '하루 완료한 할 일';

  @override
  String get chartTimeByProject => '프로젝트별 시간';

  @override
  String get chartProjectProgress => '프로젝트 진행률';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: 합계 $total, 최고의 날 $best';
  }

  @override
  String get analyticsNoData => '아직 데이터가 부족해요';

  @override
  String get analyticsUnassigned => '미지정';

  @override
  String get searchHint => '모든 항목 검색…';

  @override
  String get searchRecent => '최근 검색';

  @override
  String get searchClearRecent => '최근 검색 지우기';

  @override
  String searchNoResults(String query) {
    return '\'$query\'에 대한 결과가 없습니다';
  }

  @override
  String get searchStartTyping => '할 일, 노트, 카드, 목표, 일정 등을 검색하세요. 검색은 이 기기 안에서만 이루어집니다.';

  @override
  String get searchCatTask => '할 일';

  @override
  String get searchCatProject => '프로젝트';

  @override
  String get searchCatNote => '노트';

  @override
  String get searchCatFlashcard => '카드';

  @override
  String get searchCatDeck => '덱';

  @override
  String get searchCatGoal => '목표';

  @override
  String get searchCatHabit => '습관';

  @override
  String get searchCatEvent => '일정';

  @override
  String get searchCatSession => '세션';

  @override
  String get searchAll => '전체';

  @override
  String get assistantTitle => '어시스턴트';

  @override
  String get assistantIntro => '기기에서 작동하는 계획 도우미입니다. 원하면 요약과 생성을 위해 원하는 AI 제공업체를 연결할 수 있습니다.';

  @override
  String get assistantOnDevice => '기기 내';

  @override
  String get assistantCloud => 'AI 제공업체';

  @override
  String get assistantPlanDay => '오늘 계획 세우기';

  @override
  String get assistantPlanDayDesc => '열린 할 일을 긴급도, 우선순위, 예상 시간 순으로 정리하고 일정 사이에 배치합니다.';

  @override
  String get assistantExtractTasks => '노트에서 할 일 추출';

  @override
  String get assistantExtractTasksDesc => '노트의 체크리스트 항목과 할 일 문장을 찾아 할 일로 만듭니다.';

  @override
  String get assistantMakeCards => '노트로 플래시카드 만들기';

  @override
  String get assistantMakeCardsDesc => '\'용어: 정의\'와 질문/답 줄을 카드로 만듭니다.';

  @override
  String get assistantSummarize => '노트 요약';

  @override
  String get assistantSummarizeDesc => 'AI 제공업체가 필요합니다. 노트는 확인한 뒤에만 전송됩니다.';

  @override
  String get assistantWorkload => '작업량 개요';

  @override
  String get assistantWorkloadDesc => '이번 주 예상 작업량과 여유 시간을 비교합니다.';

  @override
  String get assistantPlanEmpty => '계획할 할 일이 없어요. 여유를 즐기세요.';

  @override
  String assistantPlanCapacity(String time) {
    return '오늘 집중 가능한 여유 시간: $time';
  }

  @override
  String get assistantPlanOverflow => '오늘 안에 못 할 수도 있어요:';

  @override
  String get assistantChooseNote => '노트 선택';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '할 일 $count개를 찾았습니다',
      zero: '이 노트에서 할 일을 찾지 못했습니다',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '카드 $count장을 찾았습니다',
      zero: '이 노트에서 카드를 찾지 못했습니다',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => '덱 선택';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return '예상 작업: $estimated. 여유 시간: $free.';
  }

  @override
  String get assistantWorkloadOver => '가능한 시간보다 계획이 많아요. 우선순위가 낮은 할 일을 옮겨 보세요.';

  @override
  String get assistantWorkloadOk => '계획이 가능한 시간 안에 들어갑니다.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '열린 할 일 $count개에 예상 시간이 없습니다.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI 제공업체';

  @override
  String get assistantProviderOff => '연결된 제공업체가 없습니다. 기기 내 도구는 계속 작동합니다.';

  @override
  String assistantProviderOn(String host) {
    return '$host에 연결됨';
  }

  @override
  String get assistantEndpoint => 'API 엔드포인트(HTTPS)';

  @override
  String get assistantModel => '모델';

  @override
  String get assistantApiKey => 'API 키';

  @override
  String get assistantApiKeyStored => '이 기기에 안전하게 저장됩니다';

  @override
  String get assistantHttpsOnly => 'HTTPS 엔드포인트만 사용할 수 있습니다';

  @override
  String get assistantConsentTitle => '이 내용을 AI 제공업체에 보낼까요?';

  @override
  String assistantConsentBody(String host) {
    return '선택한 노트 내용이 이 기기를 떠나 $host에서 처리됩니다. 그 밖의 내용은 보내지 않습니다.';
  }

  @override
  String get assistantConsentAlways => '이 제공업체에는 다시 묻지 않기';

  @override
  String get assistantSend => '보내기';

  @override
  String get assistantUnavailable => 'AI 제공업체에 연결할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get assistantDisabledTitle => '어시스턴트가 꺼져 있어요';

  @override
  String get assistantDisabledMessage =>
      '계획 도구를 쓰려면 켜세요. 제공업체를 연결하고 요청마다 확인하지 않는 한 데이터는 기기를 떠나지 않습니다.';

  @override
  String get assistantSummaryTitle => '요약';

  @override
  String get assistantRemoveProvider => '제공업체 삭제';

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsGeneral => '일반';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsLanguageSystem => '기기 언어';

  @override
  String get settingsAppearance => '화면';

  @override
  String get settingsTheme => '테마';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get themeSystem => '시스템';

  @override
  String get settingsReduceMotion => '동작 줄이기';

  @override
  String get settingsReduceMotionDesc => '애니메이션과 움직이는 배경을 최소화합니다';

  @override
  String get settingsFocus => '집중 타이머';

  @override
  String get settingsWorkLength => '집중 시간';

  @override
  String get settingsShortBreak => '짧은 휴식';

  @override
  String get settingsLongBreak => '긴 휴식';

  @override
  String get settingsLongBreakEvery => '긴 휴식 간격';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count세션마다');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => '휴식 자동 시작';

  @override
  String get settingsSound => '종료 소리';

  @override
  String get settingsDailyFocusTarget => '일일 집중 목표';

  @override
  String get settingsWeeklyFocusTarget => '주간 집중 목표';

  @override
  String get settingsNotifications => '알림';

  @override
  String get settingsNotificationsEnable => '알림 허용';

  @override
  String get settingsQuietHours => '방해 금지 시간';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return '$start부터 $end까지 습관, 목표, 복습 알림이 울리지 않습니다';
  }

  @override
  String get settingsReviewReminder => '플래시카드 복습 알림';

  @override
  String get settingsPermissionDenied => '시스템 설정에서 알림이 차단되어 있습니다.';

  @override
  String get settingsPrivacy => '개인정보 및 데이터';

  @override
  String get settingsPrivacyStatement => '데이터는 이 기기에만 암호화되어 저장됩니다. 계정도, 분석도, 추적도 없습니다.';

  @override
  String get settingsBackup => '암호화된 백업 만들기';

  @override
  String get settingsBackupDesc => '직접 정한 비밀번호로 보호됩니다';

  @override
  String get settingsRestore => '백업에서 복원';

  @override
  String get settingsRestoreDesc => '이 기기의 모든 데이터를 대체합니다';

  @override
  String get settingsErase => '모든 데이터 지우기';

  @override
  String get settingsEraseDesc => '이 기기의 모든 내용을 영구 삭제합니다';

  @override
  String get settingsEraseConfirmTitle => '모든 데이터를 지울까요?';

  @override
  String settingsEraseConfirmBody(String word) {
    return '모든 할 일, 노트, 카드, 목표, 습관, 일정, 세션이 영구 삭제됩니다. 확인하려면 $word를 입력하세요.';
  }

  @override
  String get settingsEraseWord => '삭제';

  @override
  String get settingsErased => '모든 데이터를 지웠습니다';

  @override
  String get backupPassword => '백업 비밀번호';

  @override
  String get backupPasswordConfirm => '비밀번호 확인';

  @override
  String backupPasswordHint(int count) {
    return '최소 $count자. 잊어버리면 복구할 수 없습니다.';
  }

  @override
  String get backupPasswordMismatch => '비밀번호가 일치하지 않습니다';

  @override
  String get backupPasswordShort => '비밀번호가 너무 짧습니다';

  @override
  String get backupCreating => '백업 암호화 중…';

  @override
  String get backupCreated => '백업을 저장할 준비가 되었습니다';

  @override
  String get backupRestoring => '확인 후 복원 중…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count개 항목을 복원했습니다');
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => '비밀번호가 틀렸거나 파일이 변경되었습니다.';

  @override
  String get backupNotABackup => '이 파일은 Deep Focus 백업이 아닙니다.';

  @override
  String get backupCorrupted => '백업 파일이 손상되었습니다.';

  @override
  String get backupNewer => '이 백업은 더 최신 버전의 앱에서 만들어졌습니다. 먼저 앱을 업데이트하세요.';

  @override
  String get backupRestoreConfirmTitle => '모든 데이터를 대체할까요?';

  @override
  String get backupRestoreConfirmBody => '이 기기의 현재 내용이 모두 백업으로 대체됩니다. 복원에 실패하면 아무것도 바뀌지 않습니다.';

  @override
  String get settingsAbout => '정보';

  @override
  String settingsVersion(String version) {
    return '버전 $version';
  }

  @override
  String get settingsLicenses => '오픈소스 라이선스';

  @override
  String get settingsAssistant => '어시스턴트';

  @override
  String get settingsAssistantEnable => '어시스턴트 사용';

  @override
  String get settingsDashboard => '홈 섹션';

  @override
  String get settingsTrash => '휴지통';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes분';
  }

  @override
  String get trashEmpty => '휴지통이 비어 있습니다';

  @override
  String get trashHint => '삭제한 항목은 직접 지울 때까지 여기에 남습니다.';

  @override
  String get trashTasks => '할 일';

  @override
  String get trashNotes => '노트';

  @override
  String get onboardWelcomeTitle => '새로운 작업 공간에 오신 것을 환영해요';

  @override
  String get onboardWelcomeBody => '할 일, 집중, 캘린더, 노트, 플래시카드, 목표, 습관을 하나로. 아름답고 간단하게.';

  @override
  String get onboardPrivateTitle => '처음부터 개인정보 보호';

  @override
  String get onboardPrivateBody => '모든 것이 이 기기에 암호화되어 남습니다. 계정 없음. 추적 없음. 주도권은 당신에게.';

  @override
  String get onboardLanguageTitle => '언어를 선택하세요';

  @override
  String get onboardNotifTitle => '부드러운 알림';

  @override
  String get onboardNotifBody => '할 일 알림과 집중 알림을 받으려면 알림을 허용하세요. 언제든 바꿀 수 있습니다.';

  @override
  String get onboardGetStarted => '시작하기';

  @override
  String onboardStep(int current, int total) {
    return '$total단계 중 $current단계';
  }

  @override
  String get notifChannelReminders => '알림';

  @override
  String get notifChannelRemindersDesc => '할 일, 일정, 습관, 목표 알림';

  @override
  String get notifChannelFocus => '집중 타이머';

  @override
  String get notifChannelFocusDesc => '집중 세션이나 휴식이 끝나면 알림';

  @override
  String get notifTaskTitle => '할 일 알림';

  @override
  String get notifEventTitle => '곧 시작하는 일정';

  @override
  String notifEventBody(String title, String time) {
    return '$time $title';
  }

  @override
  String get notifFocusDoneTitle => '집중 세션 완료';

  @override
  String get notifFocusDoneBody => '수고했어요. 쉬어 갈 시간이에요.';

  @override
  String get notifBreakDoneTitle => '휴식이 끝났어요';

  @override
  String get notifBreakDoneBody => '다음 집중 세션을 시작할까요?';

  @override
  String get notifHabitTitle => '습관 알림';

  @override
  String get notifReviewTitle => '플래시카드가 준비됐어요';

  @override
  String get notifReviewBody => '짧은 복습이 기억을 튼튼하게 지켜 줍니다.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours시간 $minutes분';
  }

  @override
  String durationHours(int hours) {
    return '$hours시간';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes분';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => '월,화,수,목,금,토,일';

  @override
  String a11yProgress(int value) {
    return '진행률 $value퍼센트';
  }

  @override
  String a11yPriority(String level) {
    return '우선순위: $level';
  }

  @override
  String a11yColor(int index) {
    return '색상 $index';
  }

  @override
  String get analyticsRangeLabel => '기간';

  @override
  String get analyticsRefresh => '새로고침';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '마감 할 일 $total개 중 $done개를 기한 내 완료';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '할 일 $total개 중 $done개 완료';
  }

  @override
  String get analyticsNoProjects => '진행 중인 프로젝트 없음';

  @override
  String get analyticsNoFocus => '이 기간에 집중 세션이 없습니다';

  @override
  String get analyticsHabitsNone => '진행 중인 습관 없음';

  @override
  String get analyticsRetentionNote => '숙달된 카드 중 기억해 낸 비율';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return '여유 시간은 근무일($days)의 $start–$end에서 시간이 정해진 일정을 뺀 값입니다. 예상 작업량은 앞으로 7일 안에 마감인 열린 할 일의 예상 시간 합계입니다.';
  }

  @override
  String get assistantWorkdaysMonFri => '월요일–금요일';

  @override
  String get assistantWorkdaysSunThu => '일요일–목요일';

  @override
  String get assistantWorkloadDayOff => '쉬는 날';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '계획 $estimated · 여유 $free';
  }

  @override
  String assistantPlanRule(String end) {
    return '지금부터 $end까지 오늘 일정 사이에 계획했습니다. 기한이 지난 할 일을 먼저, 그다음 우선순위, 마감일, 예상 시간 순입니다.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get assistantScheduleBlocks => '시간 블록으로 예약';

  @override
  String get assistantScheduleConfirmTitle => '캘린더에 시간 블록을 추가할까요?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '오늘 캘린더에 시간 블록 $count개가 추가됩니다.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '시간 블록 $count개를 추가했어요');
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => '이미 캘린더에 있음';

  @override
  String get assistantPlanTimeline => '오늘 가능';

  @override
  String get assistantNoEstimate => '계획하려면 예상 시간을 추가하세요';

  @override
  String get assistantNoNotes => '아직 노트가 없어요. 먼저 노트를 쓰세요.';

  @override
  String get assistantNoteEmpty => '이 노트는 비어 있습니다.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '할 일 $count개를 만들었어요');
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '카드 $count장을 만들었어요');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 만들기',
      zero: '선택 없음',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint => '인식 대상: 체크하지 않은 체크박스 \"- [ ]\"와 TODO: 또는 To do:로 시작하는 줄';

  @override
  String get assistantCardsHint => '인식 대상: \'용어: 정의\', \'용어 — 정의\', 그리고 Q:와 A: 줄 쌍';

  @override
  String get assistantProviderHint =>
      'OpenAI 호환 서비스라면 무엇이든 쓸 수 있어요. 키는 이 기기의 안전한 저장소에 남으며 백업에 포함되지 않습니다.';

  @override
  String get assistantEndpointHelp => '예: https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => '저장된 키를 유지하려면 비워 두세요';

  @override
  String get assistantApiKeyRequired => 'API 키를 입력하세요';

  @override
  String get assistantProviderSaved => '제공업체를 저장했어요';

  @override
  String get assistantProviderRemoved => '제공업체와 키를 삭제했어요';

  @override
  String get assistantRemoveProviderConfirm => '제공업체를 삭제하고 저장된 API 키를 이 기기에서 지울까요?';

  @override
  String get assistantAskEveryTime => '요청할 때마다 묻기';

  @override
  String get assistantSummarizing => '요약 중…';

  @override
  String assistantSummaryNote(String host) {
    return '$host에서 생성했습니다. 믿기 전에 검토하세요.';
  }

  @override
  String get assistantCopy => '복사';

  @override
  String get assistantCopied => '복사됨';

  @override
  String get assistantConfigure => '제공업체 설정';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start–$end';
  }

  @override
  String get calendarSeriesMoved => '이 반복 일정이 모두 이동되었습니다';

  @override
  String get calendarEventReminder => '알림';

  @override
  String get calendarEventRepeat => '반복';

  @override
  String get calendarEventColor => '색상';

  @override
  String get calendarDefaultColor => '유형 색상 사용';

  @override
  String get calendarEventLinkedTask => '연결된 할 일';

  @override
  String get calendarEventNoTask => '연결된 할 일 없음';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '일정 $count개',
      zero: '일정 없음',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '마감 할 일 $count개',
      zero: '마감 할 일 없음',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => '일정이나 시간 블록을 추가해 이 날을 계획하세요.';

  @override
  String get calendarNow => '현재 시간';

  @override
  String get calendarRecurring => '반복됨';

  @override
  String get calendarEventNotFound => '이 일정은 더 이상 없습니다';

  @override
  String get calendarEventLocalTime => '시간은 기기의 시간대로 표시됩니다';

  @override
  String get calendarEventDeleted => '일정을 휴지통으로 이동했어요';

  @override
  String get calendarConflictMarker => '다른 일정과 겹칩니다';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => '변경 사항은 이 반복 일정 전체에 적용됩니다';

  @override
  String get calendarDragHintSeries => '반복 일정을 끌면 전체 반복이 이동합니다';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, 마감 할 일';
  }

  @override
  String get startupErrorTitle => '데이터를 열 수 없습니다';

  @override
  String get startupErrorLocked =>
      '이 기기 데이터의 암호화 키를 사용할 수 없습니다. 삭제된 것은 없습니다. 기기를 다시 시작하면 해결되는 경우가 많습니다. 최근에 기기를 복원했다면 암호화된 백업에서 데이터를 복원하세요.';

  @override
  String get startupErrorCipher => '이 기기는 앱에 필요한 암호화 저장소를 지원하지 않습니다. 암호화되지 않은 상태로 저장된 것은 없습니다.';

  @override
  String get startupErrorRetry => '다시 시도';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '복습할 카드가 $count장 있어요');
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '복습 $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return '새 카드 $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return '숙달된 카드: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0 이상을 입력하세요';

  @override
  String get flashcardsSearchCards => '카드 검색';

  @override
  String get flashcardsSearchEmpty => '검색과 일치하는 카드가 없습니다';

  @override
  String get flashcardsCardAdded => '카드를 추가했어요';

  @override
  String flashcardsCardDueOn(String date) {
    return '복습 $date';
  }

  @override
  String get flashcardsCopyToClipboard => '클립보드에 복사';

  @override
  String get flashcardsExportTitle => '덱 내보내기';

  @override
  String get flashcardsDeleteDeck => '덱 삭제';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, 다음 복습은 $interval 후';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return '질문: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return '정답: $text';
  }

  @override
  String get flashcardsShowQuestion => '질문 보기';

  @override
  String get flashcardsImportField => '가져올 카드';

  @override
  String get flashcardsNothingToStudy => '학습할 내용이 없어요';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '학습할 카드 $count장',
      zero: '준비된 카드 없음',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => '평가별';

  @override
  String get flashcardsDeckNotFound => '이 덱은 더 이상 사용할 수 없습니다.';

  @override
  String get focusSessionDeleted => '세션을 삭제했어요';

  @override
  String get focusDeleteConfirm => '이 세션을 기록에서 삭제할까요? 해당 시간은 더 이상 목표에 포함되지 않습니다.';

  @override
  String get focusUnlinkTask => '연결된 할 일 해제';

  @override
  String get focusNoteHint => '무엇을 했나요?';

  @override
  String get focusTargetCaption => '저장된 세션에서 측정';

  @override
  String get focusModeLabel => '타이머 모드';

  @override
  String focusUpNext(String phase) {
    return '다음: $phase';
  }

  @override
  String get focusStopwatchHint => '멈출 때까지 시간이 올라갑니다.';

  @override
  String get focusOpenHint => '시간 제한 없음. 끝나면 언제든 멈추세요.';

  @override
  String get focusNotificationsDisabledInApp => '설정에서 알림이 꺼져 있습니다. 세션이 끝나도 알려 드리지 않습니다.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => '전체';

  @override
  String get goalsFilterPeriod => '기간 필터';

  @override
  String get goalsFilterStatus => '상태 필터';

  @override
  String get goalsEmptyFiltered => '이 필터와 일치하는 목표가 없습니다';

  @override
  String goalsDueOn(String date) {
    return '마감 $date';
  }

  @override
  String get goalsDeadline => '마감 기한(선택)';

  @override
  String get goalsNoDeadline => '마감 기한 없음';

  @override
  String get goalsSetDeadline => '마감 기한 설정';

  @override
  String get goalsRemoveDeadline => '마감 기한 삭제';

  @override
  String get goalsDescription => '설명(선택)';

  @override
  String get goalsTitleLabel => '제목';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount$unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => '목표치 도달';

  @override
  String get goalsLogged => '진행 상황을 기록했어요';

  @override
  String get goalsEntryDeleted => '기록을 삭제했어요';

  @override
  String get goalsDeleteEntry => '기록 삭제';

  @override
  String get goalsDeleted => '목표를 삭제했어요';

  @override
  String get goalsMarkActive => '진행 중으로 표시';

  @override
  String get goalsNotFound => '이 목표는 더 이상 사용할 수 없습니다';

  @override
  String get goalsLinkTask => '할 일 연결';

  @override
  String get goalsNoLinkedTasks => '아직 연결된 할 일이 없어요';

  @override
  String get goalsUnlinkTask => '할 일 연결 해제';

  @override
  String get goalsTaskOpen => '아직 완료되지 않음';

  @override
  String get goalsTaskLinked => '할 일을 연결했어요';

  @override
  String get goalsTaskUnlinked => '할 일 연결을 해제했어요';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count개');
    return '이번 기간에 완료된 연결 할 일 $_temp0 포함';
  }

  @override
  String get goalsHistoryAllTime => '이전 기간의 기록은 여기에 남지만 해당 기간에만 계산됩니다.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '오늘 $total개 중 $done개 완료';
  }

  @override
  String get habitsNothingToday => '오늘 예정된 습관이 없습니다';

  @override
  String get habitsDecrease => '체크 한 번 취소';

  @override
  String get habitsResetToday => '오늘 초기화';

  @override
  String get habitsCheckInHint => '길게 눌러 조정';

  @override
  String get habitsName => '이름';

  @override
  String get habitsColor => '색상';

  @override
  String get habitsValidationDays => '하루 이상 선택하세요';

  @override
  String habitsReminderAt(String time) {
    return '매일 $time';
  }

  @override
  String get habitsSetReminder => '알림 시간 설정';

  @override
  String get habitsRemoveReminder => '알림 삭제';

  @override
  String get habitsReminderNote => '알림이 허용되어 있으면 예정된 날에 알림이 표시됩니다.';

  @override
  String get habitsArchived => '습관을 보관했어요';

  @override
  String get habitsNotFound => '이 습관은 더 이상 사용할 수 없습니다';

  @override
  String get habitsLast30 => '최근 30일';

  @override
  String get habitsConsistencyNone => '아직 데이터가 부족해요';

  @override
  String get habitsCalendar => '체크 기록';

  @override
  String get habitsCalendarHint => '날짜를 탭해 수정하세요.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return '최근 90일 체크. 꾸준함 $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => '최근 90일 체크. 아직 데이터가 부족해요.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count일');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => '일시정지한 날은 연속 기록에 영향을 주지 않아요.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => '습관 보관';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '하루 $count번',
      one: '하루 한 번',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => '다른 노트';

  @override
  String get notesAllNotebooks => '모든 노트북';

  @override
  String get notesNotebookName => '노트북 이름';

  @override
  String get notesNotebookColor => '색상';

  @override
  String get notesDeleteNotebook => '노트북 삭제';

  @override
  String get notesDeleteNotebookMessage => '노트북이 삭제됩니다. 안의 노트는 그대로 남아 모든 노트북에 표시됩니다.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => '중요한 노트를 고정하면 맨 위에 남아요.';

  @override
  String get notesEmptyFavorites => '즐겨찾기한 노트가 여기에 표시됩니다.';

  @override
  String get notesEmptyArchived => '보관한 노트가 여기에 표시됩니다.';

  @override
  String get notesEmptyFiltered => '이 필터와 일치하는 노트가 없습니다.';

  @override
  String get notesArchivedSnack => '노트를 보관했어요';

  @override
  String get notesUnarchivedSnack => '노트를 다시 노트 목록으로 옮겼어요';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total개 중 $done개 완료';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => '서식';

  @override
  String get notesWrite => '쓰기';

  @override
  String get notesPreviewEmpty => '아직 미리 볼 내용이 없어요.';

  @override
  String notesBacklinksEmpty(String title) {
    return '아직 이 노트를 링크한 노트가 없어요. [[$title]]로 이 노트를 링크하세요.';
  }

  @override
  String get notesBacklinksNeedTitle => '다른 노트에서 링크할 수 있도록 제목을 붙이세요.';

  @override
  String get notesLinkedTasksEmpty => '이 노트에 연결된 할 일이 없습니다.';

  @override
  String notesLinkMissing(String title) {
    return '\'$title\' 제목의 노트가 아직 없습니다.';
  }

  @override
  String get notesNotFound => '이 노트는 더 이상 없습니다.';

  @override
  String notesCheckboxSemantics(String label) {
    return '체크리스트 항목: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '\'$title\' 노트 열기';
  }

  @override
  String get notesTaskDone => '완료됨';

  @override
  String get notifTimerDoneBody => '설정한 시간이 지났어요.';

  @override
  String get onboardingPrivatePointDevice => '이 기기에만 암호화되어 저장';

  @override
  String get onboardingPrivatePointAccount => '계정 필요 없음';

  @override
  String get onboardingPrivatePointTracking => '분석 없음, 추적 없음';

  @override
  String get onboardingLanguageBody => '설정에서 언제든 바꿀 수 있어요.';

  @override
  String get onboardingNext => '다음';

  @override
  String get projectsActive => '진행 중';

  @override
  String get projectNameHint => '예: 신제품 출시';

  @override
  String get projectGoalHint => '무엇이 되면 완료인가요?';

  @override
  String get projectNoDeadline => '마감 기한 없음';

  @override
  String get projectTasksOpen => '진행 중인 할 일';

  @override
  String get projectTasksCompleted => '완료한 할 일';

  @override
  String get projectAddTask => '프로젝트에 할 일 추가';

  @override
  String get projectAddNote => '새 프로젝트 노트';

  @override
  String get projectLinkedNotes => '노트';

  @override
  String get projectNoTasks => '이 프로젝트에 아직 할 일이 없어요';

  @override
  String get projectArchivedBadge => '보관됨';

  @override
  String get projectDeleted => '프로젝트를 휴지통으로 이동했어요';

  @override
  String get projectDeleteMessage => '할 일은 프로젝트 없이 목록에 남습니다.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent퍼센트 완료';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '결과 $count개');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => '유형별 필터';

  @override
  String searchRecentTap(String query) {
    return '$query 다시 검색';
  }

  @override
  String get settingsLanguageHint => '앱 전체 언어를 선택하세요. 언어 이름은 해당 언어로 표시됩니다.';

  @override
  String get settingsThemeHint => '라이트, 다크 또는 시스템 설정';

  @override
  String settingsDecrease(String setting) {
    return '$setting 줄이기';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting 늘리기';
  }

  @override
  String get settingsQuietStart => '시작';

  @override
  String get settingsQuietEnd => '종료';

  @override
  String get settingsNotificationsHint => '앱에 설정이 저장됩니다. 시스템에서 권한을 따로 요청할 수도 있어요.';

  @override
  String get settingsDashboardHint => '끌어서 순서를 바꾸세요. 필요 없는 섹션은 끌 수 있어요.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section 순서 변경';
  }

  @override
  String get settingsDashboardReset => '기본 순서로 되돌리기';

  @override
  String get settingsAssistantDesc => '선택 사항인 계획 도우미입니다. 제공업체를 연결하지 않으면 아무것도 기기를 떠나지 않습니다.';

  @override
  String get settingsAssistantSetup => '어시스턴트 및 제공업체 설정';

  @override
  String get settingsTrashDesc => '삭제한 항목을 복원하거나 영구 삭제';

  @override
  String get settingsEraseFirstBody => '되돌릴 수 없습니다. 먼저 암호화된 백업을 만드는 것이 좋아요.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word 입력';
  }

  @override
  String get settingsEraseFailed => '데이터를 지울 수 없습니다. 아무것도 바뀌지 않았습니다.';

  @override
  String get settingsAboutTagline => '기기 중심으로 작동하는 개인 생산성 작업 공간.';

  @override
  String get backupShowPassword => '비밀번호 표시';

  @override
  String get backupHidePassword => '비밀번호 숨기기';

  @override
  String get backupSaved => '백업을 저장했어요';

  @override
  String get backupFailed => '백업을 만들 수 없습니다. 데이터는 그대로입니다.';

  @override
  String get backupReadFailed => '선택한 파일을 읽을 수 없습니다.';

  @override
  String get backupRestoreFailed => '복원에 실패했습니다. 아무것도 바뀌지 않았습니다.';

  @override
  String get backupShareSubject => 'Deep Focus 암호화 백업';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count일마다', one: '매일');
    String _temp1 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count주마다', one: '매주');
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월마다',
      one: '매월',
    );
    String _temp3 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count년마다', one: '매년');
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
    return '$days';
  }

  @override
  String get repeatEndsLabel => '종료';

  @override
  String get repeatEndsAfter => '정해진 횟수 후';

  @override
  String get repeatCountLabel => '횟수';

  @override
  String get reminderNone => '알림 없음';

  @override
  String get reminderCustomTime => '특정 시간에';

  @override
  String get a11yDecrease => '줄이기';

  @override
  String get a11yIncrease => '늘리기';

  @override
  String get pickTaskTitle => '할 일 선택';

  @override
  String get pickTaskEmpty => '진행 중인 할 일 없음';

  @override
  String get tasksSearchTooltip => '할 일 검색';

  @override
  String get tasksSectionOverdue => '기한 지남';

  @override
  String get tasksSectionToday => '오늘';

  @override
  String get tasksRecurringSemantics => '반복됨';

  @override
  String get tasksFilterPriorityAtLeast => '최소 우선순위';

  @override
  String get tasksFilterCategory => '카테고리';

  @override
  String get tasksFilterAnyCategory => '모든 카테고리';

  @override
  String get tasksFilterLabel => '라벨';

  @override
  String get tasksFilterAnyLabel => '모든 라벨';

  @override
  String get tasksFilterReset => '필터 초기화';

  @override
  String get tasksViewByProject => '프로젝트별';

  @override
  String get tasksViewByPriority => '우선순위별';

  @override
  String get tasksViewByCategory => '카테고리별';

  @override
  String get tasksGroupNoCategory => '카테고리 없음';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count개');
    return '선행 할 일 $_temp0 대기 중';
  }

  @override
  String get taskBlockedWarning => '아직 끝나지 않은 선행 할 일이 있습니다. 그래도 완료할까요?';

  @override
  String get taskStartFocus => '이 할 일에 집중';

  @override
  String get taskRemoveDate => '날짜 삭제';

  @override
  String get taskAllDay => '특정 시간 없음';

  @override
  String get taskSaved => '할 일을 저장했어요';

  @override
  String get taskCreated => '할 일을 만들었어요';

  @override
  String get taskReminderNeedsDue => '상대적 알림을 쓰려면 마감일을 설정하세요';

  @override
  String get taskSubtaskDetailsHint => '하위 작업, 체크리스트, 라벨, 선행 작업을 추가하려면 먼저 할 일을 저장하세요.';

  @override
  String get taskLabelName => '라벨 이름';

  @override
  String get taskMoreDetails => '세부 정보';

  @override
  String get taskPlanning => '계획';

  @override
  String get taskOrganize => '정리';

  @override
  String get taskBreakdown => '나누기';

  @override
  String get trashDeleteTaskTitle => '이 할 일을 영구 삭제할까요?';

  @override
  String get trashDeleteNoteTitle => '이 노트를 영구 삭제할까요?';

  @override
  String get trashDeleteBody => '되돌릴 수 없습니다.';

  @override
  String get trashEmptyTitle => '휴지통을 비울까요?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목 $count개가 영구 삭제됩니다.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => '복원했어요';

  @override
  String get trashPurged => '영구 삭제했어요';

  @override
  String trashDeletedOn(String date) {
    return '$date에 삭제됨';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '항목 $count개');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => '소리 내어 읽기';

  @override
  String get flashcardsTtsUnavailable => '이 기기에서는 텍스트 음성 변환을 사용할 수 없습니다.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      '이 언어용 음성이 설치되어 있지 않습니다. Android 텍스트 음성 변환 설정에서 추가하세요.';

  @override
  String get calendarAgenda => '일정 목록';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': '불꽃',
      'rocket': '로켓',
      'book': '책',
      'work': '업무',
      'home': '집',
      'heart': '하트',
      'code': '코드',
      'palette': '팔레트',
      'fitness': '피트니스',
      'school': '학교',
      'travel': '여행',
      'money': '저축',
      'other': '아이콘',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => '추가 필드';

  @override
  String get cardFieldExample => '예문';

  @override
  String get cardFieldExplanation => '설명';

  @override
  String get cardFieldPronunciation => '발음';

  @override
  String get cardFieldNotes => '추가 메모';

  @override
  String get projectMilestones => '마일스톤';

  @override
  String get milestoneAdd => '마일스톤 추가';

  @override
  String get milestoneEdit => '마일스톤 편집';

  @override
  String get milestoneTitleLabel => '마일스톤';

  @override
  String get milestoneNoDate => '날짜 없음';

  @override
  String get milestonesEmpty => '아직 마일스톤이 없어요. 날짜가 있는 중간 목표를 추가하면 캘린더에서 프로젝트를 추적할 수 있어요.';

  @override
  String get milestoneDeleted => '마일스톤을 삭제했어요';

  @override
  String milestoneDoneA11y(String title) {
    return '마일스톤 \'$title\' 완료로 표시';
  }

  @override
  String calendarMilestone(String project) {
    return '마일스톤 · $project';
  }

  @override
  String get tasksViewInbox => '수신함';

  @override
  String get tasksViewArchived => '보관함';

  @override
  String get tasksEmptyInbox => '프로젝트나 날짜가 없는 할 일은 여기에 모입니다. 잠깐 시간이 날 때 정리하세요.';

  @override
  String get tasksEmptyArchived => '보관한 할 일은 목록과 알림에서 빠져 여기에 보관됩니다.';

  @override
  String get taskArchivedBadge => '보관됨';

  @override
  String get taskStatusInProgress => '진행 중';

  @override
  String get taskArchived => '할 일을 보관했어요';

  @override
  String get taskUnarchived => '할 일을 보관함에서 복원했어요';

  @override
  String get focusPlanTitle => '세션 계획';

  @override
  String focusPlanTotal(String duration) {
    return '합계 $duration';
  }

  @override
  String get focusPlanRounds => '집중 세션';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => '긴 휴식 간격';

  @override
  String get focusPlanSkipLastBreak => '마지막 휴식 건너뛰기';

  @override
  String get focusPlanAutoBreaks => '휴식 자동 시작';

  @override
  String get focusPlanAutoFocus => '휴식 후 집중 자동 시작';

  @override
  String get focusPlanSave => '계획 저장';

  @override
  String get focusPlanNameHint => '예: 시험 준비';

  @override
  String get focusPlanSaved => '계획을 저장했어요';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: 집중 $work분, 휴식 $rest분';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label 줄이기';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label 늘리기';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '세션 $current/$total';
  }

  @override
  String get focusSeriesComplete => '시리즈 완료. 잘했어요!';

  @override
  String get filterAll => '전체';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added개 가져옴 · 중복 $duplicates개 건너뜀 · 불완전한 행 $invalid개';
  }

  @override
  String get flashcardsSuspend => '카드 보류';

  @override
  String get flashcardsResume => '카드 재개';

  @override
  String get flashcardsSuspended => '카드를 보류했어요: 일정에 넣지 않습니다';

  @override
  String get flashcardsResumed => '카드를 재개했어요';

  @override
  String get flashcardsSuspendedFilter => '보류됨';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '카드 $total장 중 $shown장';
  }

  @override
  String get flashcardsImportFile => '파일에서';

  @override
  String get speechTitle => '음성';

  @override
  String get speechAppLanguage => '앱 언어';

  @override
  String get speechFrontLanguage => '앞면 언어';

  @override
  String get speechBackLanguage => '뒷면 언어';

  @override
  String get speechRepeat => '읽기 반복';

  @override
  String get speechRate => '속도';

  @override
  String get speechAutoRead => '질문 자동으로 읽기';

  @override
  String get speechHint => '이 기기에 설치된 음성을 오프라인으로 사용합니다. 음성이 없는 언어는 알려 드리며 다른 음성으로 대신하지 않습니다.';

  @override
  String get studyHowTitle => '어떻게 공부할까요?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '카드 $count장 복습');
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => '모든 카드 연습(일정 변경 없음)';

  @override
  String get studyPracticeMistakes => '최근 틀린 카드 연습';

  @override
  String get studyPracticeHint => '연습은 카드 복습 일정을 바꾸지 않습니다. 복습하면 일정이 업데이트됩니다.';

  @override
  String get studyModeClassic => '기본';

  @override
  String get studyModeReverse => '거꾸로';

  @override
  String get studyModeMixed => '양방향';

  @override
  String get studyModeTyped => '답 입력';

  @override
  String get studyModeChoice => '객관식';

  @override
  String get studyModeListening => '듣기';

  @override
  String get studyPractice => '연습';

  @override
  String get studyNoMistakes => '이 덱에 최근 틀린 카드가 없어요. 훌륭해요!';

  @override
  String get studyTypeAnswer => '답을 입력하세요';

  @override
  String get studyCheck => '확인';

  @override
  String get studyKnewIt => '알았어요';

  @override
  String get studyDidntKnow => '몰랐어요';

  @override
  String studyMistakes(int count) {
    return '틀림($count)';
  }

  @override
  String get studyRepeatMistakes => '틀린 카드 다시 하기';

  @override
  String get studyCorrect => '정답';

  @override
  String get studyAlmost => '거의 맞았어요 — 철자를 확인하세요';

  @override
  String get studyWrong => '아쉬워요';

  @override
  String get studyShowText => '텍스트 보기';

  @override
  String get flashcardsImportFileFailed => '파일을 열 수 없습니다. 대신 내용을 붙여 넣을 수 있어요.';

  @override
  String get studyNoMatchingCards => '이 조건에 맞는 카드가 아직 없어요.';

  @override
  String get studyPracticeNew => '새 카드만';

  @override
  String get studyPracticeHard => '어려운 카드';

  @override
  String get studyPracticeFavorites => '즐겨찾기';

  @override
  String get studySessionSize => '세션당 카드 수';

  @override
  String get studySessionAll => '전체';

  @override
  String get studyOrder => '순서';

  @override
  String get studyOrderDue => '가장 많이 밀린 순';

  @override
  String get studyOrderRandom => '무작위';

  @override
  String get studyOrderHardest => '어려운 순';

  @override
  String get flashcardsHard => '어려움';

  @override
  String get flashcardsFavorites => '즐겨찾기';

  @override
  String get flashcardsFavorite => '즐겨찾기에 추가';

  @override
  String get flashcardsUnfavorite => '즐겨찾기에서 삭제';

  @override
  String get flashcardsDuplicate => '복제';

  @override
  String get flashcardsMoveTo => '덱으로 이동';

  @override
  String get flashcardsNoOtherDeck => '먼저 다른 덱을 만드세요.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '카드 $count장을 옮겼어요',
      one: '카드를 옮겼어요',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => '태그 추가';

  @override
  String get flashcardsTagHint => '예: 동사';

  @override
  String flashcardsSelected(int count) {
    return '$count개 선택됨';
  }

  @override
  String get flashcardsSelectAll => '보이는 항목 모두 선택';

  @override
  String flashcardsSelectCard(String front) {
    return '$front 선택';
  }

  @override
  String flashcardsRecall(String value) {
    return '기억률 $value';
  }

  @override
  String get flashcardsDuplicateTitle => '중복 가능성';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return '이 덱에 이미 “$front” → “$back”이(가) 있습니다. 그래도 저장할까요?';
  }

  @override
  String get flashcardsSaveAnyway => '그래도 저장';

  @override
  String get flashcardsStats => '통계';

  @override
  String get flashcardsStatTotal => '카드';

  @override
  String get flashcardsStatLearning => '학습 중';

  @override
  String get flashcardsStatMatureCaption => '21일 이상 기억';

  @override
  String get flashcardsStatReviewsToday => '오늘 복습';

  @override
  String get flashcardsStatCorrect => '정답 수';

  @override
  String flashcardsStatLastDays(int days) {
    return '최근 $days일';
  }

  @override
  String get flashcardsStatForget => '망각률';

  @override
  String get flashcardsStatForgetCaption => '학습한 카드의 \'다시\'';

  @override
  String get flashcardsStatRecall => '현재 기억률';

  @override
  String get flashcardsStatRecallCaption => 'FSRS 추정치, 복습한 카드';

  @override
  String flashcardsStatActivity(int count) {
    return '하루 복습 수 · 총 $count';
  }

  @override
  String get flashcardsStatHistory => '최근 답변';

  @override
  String get flashcardsStatNoHistory => '아직 복습 기록이 없어요. 덱을 공부하면 여기에 진행 상황이 표시됩니다.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field 읽기';
  }

  @override
  String get speechVoice => '음성';

  @override
  String get speechVoiceDefault => '자동';

  @override
  String get speechVoiceOnline => '인터넷 필요';

  @override
  String get speechTest => '음성 테스트';

  @override
  String get importNext => '미리보기';

  @override
  String get importPreviewTitle => '열을 필드에 맞추기';

  @override
  String get importIgnoreColumn => '무시';

  @override
  String importColumn(int n) {
    return '$n열';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '카드 $ready장 준비됨 · 불완전한 행 $invalid개는 건너뜁니다';
  }

  @override
  String get importNeedFrontBack => '어느 열이 앞면과 뒷면인지 선택하세요.';

  @override
  String get actionMoveUp => '위로 이동';

  @override
  String get actionMoveDown => '아래로 이동';

  @override
  String get flashcardsLayoutTitle => '카드 레이아웃';

  @override
  String get flashcardsLayoutHint => '이 덱의 추가 필드 이름을 바꾸거나 숨기거나 순서를 바꾸세요. 카드 내용은 바뀌지 않습니다.';

  @override
  String flashcardsLayoutShow(String field) {
    return '공부할 때 $field 표시';
  }

  @override
  String get flashcardsLayoutStepReveal => '답을 단계별로 공개';

  @override
  String get flashcardsLayoutStepRevealHint => '뒷면이 먼저 나오고, 추가 필드는 탭할 때마다 하나씩 열립니다.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field 보기';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return '이 파일은 ${mb}MB보다 큽니다.';
  }

  @override
  String get flashcardsImage => '이미지';

  @override
  String get flashcardsAudio => '오디오';

  @override
  String get flashcardsAddImage => '이미지 추가';

  @override
  String get flashcardsAddAudio => '오디오 추가';

  @override
  String get flashcardsPlayAudio => '녹음 재생';

  @override
  String get flashcardsAudioUnavailable => '이 녹음은 이 기기에서 재생할 수 없습니다.';

  @override
  String get flashcardsCustomFields => '내 필드';

  @override
  String get flashcardsTemplates => '템플릿';

  @override
  String flashcardsNewFieldName(int n) {
    return '필드 $n';
  }

  @override
  String get flashcardsAddField => '필드 추가';

  @override
  String get flashcardsFieldName => '필드 이름';

  @override
  String get flashcardsFieldLangDefault => '면 언어';

  @override
  String get flashcardsTemplateConfirm => '템플릿은 필드 표시 방식을 정하고 자체 필드를 추가합니다. 카드와 기존 필드는 그대로 유지됩니다.';

  @override
  String get flashcardsApplyTemplate => '적용';

  @override
  String get templateVocabulary => '어휘';

  @override
  String get templateTwoTranslations => '번역이 두 개인 단어';

  @override
  String get templateQuestionAnswer => '질문과 답';

  @override
  String get templateDefinition => '용어와 정의';

  @override
  String get templateGrammar => '문법 규칙';

  @override
  String get templateFieldPlural => '복수형';

  @override
  String get templateFieldTranslation2 => '두 번째 번역';

  @override
  String get templateFieldSynonyms => '유의어';

  @override
  String get templateFieldRule => '규칙';

  @override
  String get deckCategory => '수준 또는 주제';

  @override
  String get deckCategoryHint => '예: A1, 의학';

  @override
  String get flashcardsSearchAll => '모든 카드 검색';

  @override
  String get flashcardsSearchAllHint => '단어, 번역, 예문, 메모, 태그…';

  @override
  String get flashcardsAllDecks => '모든 덱';

  @override
  String get flashcardsAllLanguages => '모든 언어';

  @override
  String get flashcardsLangUnset => '언어 미설정';

  @override
  String get flashcardsLevelUnset => '수준·주제 없음';

  @override
  String get flashcardsByLanguage => '언어별 진행 상황';

  @override
  String get flashcardsByLevel => '수준·주제별 진행 상황';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '덱 $decks · 카드 $cards · 숙달 $mature · 복습 $due · 정답 $correct(30일)';
  }

  @override
  String get flashcardsRecord => '녹음';

  @override
  String get flashcardsRecording => '녹음 중…';

  @override
  String get flashcardsRecordStop => '중지하고 저장';

  @override
  String get flashcardsMicDenied => '마이크 접근이 꺼져 있습니다. 녹음하려면 시스템 설정에서 허용하세요.';

  @override
  String get flashcardsRecordFailed => '이 기기에서는 녹음할 수 없습니다.';

  @override
  String get soundsTitle => '소리';

  @override
  String get soundsNature => '자연';

  @override
  String get soundsNoise => '집중 소음';

  @override
  String get soundRain => '비';

  @override
  String get soundStorm => '뇌우';

  @override
  String get soundRiver => '강';

  @override
  String get soundOcean => '파도 소리';

  @override
  String get soundFire => '모닥불';

  @override
  String get soundForest => '숲속 새소리';

  @override
  String get soundNight => '여름밤';

  @override
  String get soundWhite => '화이트 노이즈';

  @override
  String get soundPink => '핑크 노이즈';

  @override
  String get soundBrown => '브라운 노이즈';

  @override
  String get soundsPlay => '재생';

  @override
  String get soundsSleep => '수면 타이머';

  @override
  String get soundsSleepOff => '끔';

  @override
  String soundsSleepAt(String time) {
    return '$time에 정지';
  }

  @override
  String soundsMixFull(int count) {
    return '동시에 최대 $count개의 소리를 재생할 수 있습니다.';
  }

  @override
  String get soundsHint => '소리를 탭해 시작하세요. 여러 소리를 섞고 각각 음량을 조절할 수 있어요.';

  @override
  String get soundsMixer => '믹스';

  @override
  String soundsVolumeOf(String name) {
    return '$name 음량';
  }

  @override
  String get soundsChannel => '자연의 소리';

  @override
  String get settingsEndTone => '타이머 종료 소리';

  @override
  String get toneGentle => '부드러운 비프음';

  @override
  String get toneBeeps => '비프음';

  @override
  String get toneWood => '나무 두드리는 소리';

  @override
  String get toneBird => '새소리';

  @override
  String get toneStream => '시냇물';

  @override
  String get toneSystem => '휴대폰 알림음';

  @override
  String get speechOnPhone => '이 휴대폰에 있음';

  @override
  String get speechAllLanguages => '모든 언어';

  @override
  String get speechSearchLanguage => '언어 검색';

  @override
  String get speechGetVoices => '음성 더 다운로드';

  @override
  String get speechGetVoicesHint => '음성이 없는 언어는 휴대폰의 음성 설정에서 다운로드할 수 있습니다.';

  @override
  String get speechSettingsFailed => '이 휴대폰의 음성 설정을 열 수 없습니다.';

  @override
  String get speechVoiceMissing => '음성 없음';

  @override
  String get speechPause => '반복 사이 쉬는 시간';

  @override
  String speechSeconds(String seconds) {
    return '$seconds초';
  }

  @override
  String get speechExample => '답과 함께 예문 읽기';

  @override
  String get flashListen => '듣기';

  @override
  String get flashListenNext => '다음 카드';

  @override
  String get flashListenEmpty => '들을 카드가 없습니다.';

  @override
  String get flashViewTable => '표';

  @override
  String get flashViewCards => '카드';

  @override
  String get flashSwapSides => '열 바꾸기';

  @override
  String get flashSort => '정렬';

  @override
  String get flashSortNewest => '최신순';

  @override
  String get flashSortAlpha => '가나다순';

  @override
  String get flashSortDue => '복습 예정순';

  @override
  String get flashSortHard => '어려운 순';

  @override
  String get flashPasteCards => '카드 붙여넣기';

  @override
  String get flashClipboardEmpty => '클립보드에 텍스트가 없습니다.';

  @override
  String get flashMenuAdd => '카드 추가';

  @override
  String get flashMenuDeck => '덱';

  @override
  String get flashToday => '오늘';

  @override
  String get flashStudyNow => '학습';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '카드 $count장 답함',
      zero: '답한 카드 없음',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => '숲속의 비';

  @override
  String get autoBackupTitle => '자동 백업';

  @override
  String get autoBackupDesc => '이 휴대폰에 매일 백업하고 최근 7개를 보관';

  @override
  String get autoBackupHint => '이 사본은 이 휴대폰에 남으며 앱을 삭제하면 함께 지워집니다. 새 휴대폰으로 옮기려면 ‘백업’으로 파일을 저장하세요.';

  @override
  String get autoBackupNone => '아직 자동 백업이 없어요. 첫 백업은 오늘 만들어집니다.';

  @override
  String get autoBackupRestore => '복원';

  @override
  String autoBackupConfirm(String date) {
    return '현재 데이터를 모두 $date 백업으로 대체할까요?';
  }

  @override
  String get autoBackupRestored => '복원했어요.';

  @override
  String get errorLogTitle => '오류 기록';

  @override
  String get errorLogHint =>
      '문제가 생기면 여기에 기록됩니다. 오류 종류와 코드 위치만 기록되며 내 내용은 절대 포함되지 않습니다. 문제 해결을 돕기 위해 공유할 수 있어요.';

  @override
  String get errorLogEmpty => '기록된 오류가 없습니다.';

  @override
  String get errorLogClear => '지우기';

  @override
  String get soundsWithFocus => '집중 세션과 함께 재생';

  @override
  String get soundsWithFocusHint => '집중 세션이 시작되면 믹스가 재생되고 휴식 때는 일시정지됩니다.';

  @override
  String get soundsSavedMixes => '저장한 믹스';

  @override
  String get soundsSaveMix => '이 믹스 저장';

  @override
  String get soundsMixNameHint => '이름(예: 비 오는 도서관)';

  @override
  String soundsDeleteMix(String name) {
    return '\'$name\' 믹스를 삭제할까요?';
  }

  @override
  String get settingsReviewReminderHint => '하루 한 번, 복습할 카드가 있을 때만';

  @override
  String get settingsReviewTime => '알림 시간';

  @override
  String get shortcutFocus => '집중';

  @override
  String get shortcutNewTask => '새 할 일';

  @override
  String get shortcutReview => '카드 복습';

  @override
  String get shortcutSounds => '자연의 소리';

  @override
  String get myDayTitle => '하루 시작하기';

  @override
  String get myDayHint => '오늘 하루를 한눈에 보고, 한 번 탭해 집중';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '오늘 할 일 $count개',
      zero: '오늘 할 일 없음',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => '오늘 남은 일정이 없어요';

  @override
  String myDayNextEvent(String title, String time) {
    return '다음: $time $title';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '남은 습관 $count개',
      zero: '습관 모두 완료',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => '집중 세션으로 시작하기';

  @override
  String get hijriMonth1 => '무하람';

  @override
  String get hijriMonth2 => '사파르';

  @override
  String get hijriMonth3 => '라비 알아왈';

  @override
  String get hijriMonth4 => '라비 알사니';

  @override
  String get hijriMonth5 => '주마다 알울라';

  @override
  String get hijriMonth6 => '주마다 알아키라';

  @override
  String get hijriMonth7 => '라잡';

  @override
  String get hijriMonth8 => '샤반';

  @override
  String get hijriMonth9 => '라마단';

  @override
  String get hijriMonth10 => '샤왈';

  @override
  String get hijriMonth11 => '둘 카다';

  @override
  String get hijriMonth12 => '둘 히자';

  @override
  String hijriDate(int day, String month, int year) {
    return '히즈라력 $year년 $month $day일';
  }

  @override
  String get settingsHijri => '히즈라력 날짜';

  @override
  String get settingsHijriHint => '캘린더와 홈 화면에 표시(움 알쿠라)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count일');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '오늘 카드 $goal장 중 $done장';
  }

  @override
  String get studyGoalReached => '일일 목표 달성. 잘했어요!';

  @override
  String get studyWeekTitle => '이번 주';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7일 동안 카드 $count장 답함',
      zero: '7일 동안 답한 카드 없음',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7일 동안 $duration 집중';
  }

  @override
  String studyStreakLine(int current, int best) {
    return '연속: $current · 최고: $best';
  }

  @override
  String get studyGoalTitle => '일일 목표(카드)';

  @override
  String get studyGoalOff => '끔';

  @override
  String get focusDndTitle => '집중하는 동안 방해 금지';

  @override
  String get focusDndHint => '집중 세션마다 켜지고 휴식 때 다시 꺼집니다';

  @override
  String get focusDndNeedsAccess => '사용하려면 휴대폰 설정에서 접근을 허용하세요';

  @override
  String get voiceInput => '말로 입력';

  @override
  String get voiceInputPrompt => '지금 말하세요';

  @override
  String get voiceInputUnavailable =>
      '이 휴대폰에서는 음성 입력을 사용할 수 없습니다. 음성 서비스(예: Google 음성 인식 및 합성)를 설치하거나 켜세요.';

  @override
  String get prayerFajr => '파즈르';

  @override
  String get prayerSunrise => '일출';

  @override
  String get prayerDhuhr => '주흐르';

  @override
  String get prayerAsr => '아스르';

  @override
  String get prayerMaghrib => '마그립';

  @override
  String get prayerIsha => '이샤';

  @override
  String get prayerMethodMwl => '무슬림 세계 연맹';

  @override
  String get prayerMethodUmmAlQura => '움 알쿠라, 메카';

  @override
  String get prayerMethodEgypt => '이집트 일반청';

  @override
  String get prayerMethodJordan => '요르단 와크프부';

  @override
  String get prayerMethodKarachi => '카라치 이슬람과학대학교';

  @override
  String get prayerMethodIsna => '북미 이슬람 협회(ISNA)';

  @override
  String get prayerMethodGulf => '걸프 지역';

  @override
  String get prayerMethodKuwait => '쿠웨이트';

  @override
  String get prayerMethodQatar => '카타르';

  @override
  String get prayerMethodTurkey => '튀르키예 종교청(Diyanet)';

  @override
  String get prayerMethodSingapore => '싱가포르, 말레이시아, 인도네시아';

  @override
  String get prayerMethodFrance => '프랑스(12°)';

  @override
  String get prayerMethodRussia => '러시아 종무청';

  @override
  String prayerNotifTitle(String name) {
    return '$name 시간입니다';
  }

  @override
  String prayerNotifBody(String time) {
    return '기도 시간 · $time';
  }

  @override
  String get prayerTitle => '기도 시간';

  @override
  String get prayerOffHint => '도시를 선택하면 기도 시간이 표시됩니다. 시간은 휴대폰에서 계산되며 위치 권한이 필요 없습니다.';

  @override
  String get prayerChooseCity => '도시 선택';

  @override
  String get prayerCity => '도시';

  @override
  String get prayerCitySearch => '도시 검색';

  @override
  String get prayerMethod => '계산 방법';

  @override
  String get prayerHanafiAsr => '하나피 아스르(늦은 시간)';

  @override
  String get prayerReminders => '기도 시간마다 알림';

  @override
  String get prayerPauseFocus => '기도 시간에 집중 일시정지';

  @override
  String get prayerPauseFocusHint => '진행 중인 세션이 일시정지됩니다. 기도 후 이어서 하세요';

  @override
  String get prayerTurnOff => '기도 시간 끄기';

  @override
  String get prayerAccuracyNote => '계산된 시간은 지역 모스크와 몇 분 차이가 날 수 있습니다.';

  @override
  String prayerNext(String name, String time) {
    return '$time $name';
  }

  @override
  String get importAnkiNewFormat =>
      '이 Anki 파일은 최신 형식입니다. Anki에서 ‘이전 Anki 버전 지원’을 켜고 다시 내보낸 뒤 그 파일을 가져오세요.';

  @override
  String get importTemplate => '스프레드시트 템플릿';

  @override
  String get importTemplateFront => '사과';

  @override
  String get importTemplateBack => '둥근 과일';

  @override
  String get importTemplateExample => '나는 매일 사과를 먹어요.';

  @override
  String get importTemplateTag => '음식';

  @override
  String get starterTitle => '시작용 덱';

  @override
  String get starterHint => '하나 추가하면 바로 공부를 시작할 수 있어요. 나중에 편집하거나 삭제할 수 있습니다.';

  @override
  String get starterAdd => '추가';

  @override
  String get starterWords => '일상 영어 단어(아랍어 뜻)';

  @override
  String get starterCapitals => '세계의 수도';

  @override
  String get starterElements => '화학 원소';

  @override
  String get settingsAccent => '강조 색상';

  @override
  String get accentViolet => '보라';

  @override
  String get accentBlue => '파랑';

  @override
  String get accentTeal => '청록';

  @override
  String get accentGreen => '초록';

  @override
  String get accentRose => '로즈';

  @override
  String get accentAmber => '앰버';

  @override
  String get settingsFlashTextSize => '플래시카드 글자 크기';

  @override
  String get settingsFlashTextSample => '예시';

  @override
  String get widgetStartFocus => '탭하여 집중';

  @override
  String widgetFocusUntil(String time) {
    return '$time까지 집중';
  }

  @override
  String get widgetNoCardsDue => '카드: 모두 완료';

  @override
  String get faqMyDayQ => '‘하루 시작하기’는 무엇인가요?';

  @override
  String get faqMyDayA =>
      '하루에 한 번 홈 화면에 표시됩니다. 오늘 할 일, 다음 일정, 남은 습관, 복습할 카드를 확인하고 한 번 탭해 집중 세션을 시작하세요. 앱 아이콘을 길게 누르면 빠른 실행을, 홈 화면 위젯을 추가하면 집중 시간과 복습 카드를 볼 수 있습니다.';

  @override
  String get faqTasksQ => '알림이 있는 할 일은 어떻게 추가하나요?';

  @override
  String get faqTasksA =>
      '홈에서 새 할 일을 누르거나 할 일에서 +를 누르세요. 제목을 입력하거나 마이크로 말한 다음 마감일, 시간, 알림을 설정하세요. 기한이 지난 할 일이 맨 위에 표시됩니다.';

  @override
  String get faqFocusQ => '집중 타이머는 어떻게 작동하나요?';

  @override
  String get faqFocusA =>
      '뽀모도로, 카운트다운, 자유 시간 중 하나를 고르고 시작을 누르세요. 휴식은 자동으로 이어질 수 있어요. 설정에서 종료 소리를 고르고, 집중하는 동안 방해 금지를 켜고, 세션마다 자연의 소리를 재생할 수 있습니다.';

  @override
  String get faqSoundsQ => '자연의 소리를 섞을 수 있나요?';

  @override
  String get faqSoundsA =>
      '실제 녹음을 최대 6개까지 켜고 각각 음량을 맞춘 뒤 이름을 붙여 믹스를 저장하세요. 백그라운드에서도 계속 재생되며 수면 타이머로 멈출 수 있어요. 음악은 사용하지 않습니다.';

  @override
  String get faqCalendarQ => '캘린더에 히즈라력 날짜를 표시할 수 있나요?';

  @override
  String get faqCalendarA =>
      '네. 히즈라력 날짜(움 알쿠라)는 아랍어에서 자동으로 표시되며, 다른 언어에서도 설정에서 켤 수 있습니다. 일정, 마감일이 있는 할 일, 프로젝트 마일스톤이 함께 표시됩니다.';

  @override
  String get faqFlashcardsQ => '복습은 어떤 카드를 보여 줄지 어떻게 정하나요?';

  @override
  String get faqFlashcardsA =>
      '잘 아는 카드는 더 긴 간격 뒤에, 틀린 카드는 곧 다시 나옵니다(간격 반복). 답마다 다시, 어려움, 좋음, 쉬움으로 평가하세요. 일일 목표를 정하고 오늘 카드에서 연속 기록을 이어 가세요. 덱에 시험 날짜를 정하면 남은 날과 하루에 배울 새 카드 수를 볼 수 있어요. ‘내 순서’로 정렬하면 카드를 끌어 옮길 수 있고, 어느 면이든 스피커를 탭하면 읽어 주며, 속도와 반복은 음성 메뉴에서 설정합니다.';

  @override
  String get faqImportQ => 'Anki나 Excel에서 카드를 가져올 수 있나요?';

  @override
  String get faqImportA =>
      '네. 덱에서 가져오기를 고른 뒤 Anki(.apkg), Excel(.xlsx), CSV 파일을 선택하고 열을 맞추세요. 컴퓨터에서 카드를 쓰려면 ‘스프레드시트 템플릿’을 사용하세요. Anki 파일 안의 그림과 소리는 가져오지 않습니다.';

  @override
  String get faqNotesQ => '노트로 무엇을 할 수 있나요?';

  @override
  String get faqNotesA =>
      '체크리스트와 서식으로 자유롭게 쓰고, 중요한 노트를 고정하거나 즐겨찾기하고, 태그를 달고, 노트를 할 일과 연결하세요. 마이크 버튼으로 받아쓰기도 됩니다. 새 노트는 템플릿(강의, 책 요약, 일기, 주간 계획)으로 시작할 수 있고, 그림 버튼으로 사진을 추가합니다.';

  @override
  String get faqHabitsQ => '습관 연속 기록은 어떻게 세나요?';

  @override
  String get faqHabitsA =>
      '예정된 날에 습관 목표를 달성하면 그날이 계산됩니다. 습관을 일시정지해도 연속 기록은 지켜집니다. 습관마다 알림 시간을 따로 정할 수 있어요.';

  @override
  String get faqGoalsQ => '목표는 진행 상황을 어떻게 추적하나요?';

  @override
  String get faqGoalsA => '목표에 목표치와 단위를 정하고 진행 상황을 기록하세요. 카드에 지금까지의 진행과 마감까지 남은 양이 표시됩니다.';

  @override
  String get faqProjectsQ => '프로젝트는 무엇에 쓰나요?';

  @override
  String get faqProjectsA => '할 일을 프로젝트로 묶고, 날짜가 있는 마일스톤을 추가해 전체 진행을 확인하세요. 마일스톤은 캘린더에도 표시됩니다.';

  @override
  String get faqInsightsQ => '통계에는 무엇이 보이나요?';

  @override
  String get faqInsightsA =>
      '며칠, 몇 주 동안의 집중 시간, 완료한 할 일, 학습을 부드러운 제안과 함께 보여 줍니다. 모든 계산은 휴대폰에서 이루어집니다.';

  @override
  String get faqSpacesQ => '모든 섹션은 어디에 있나요?';

  @override
  String get faqSpacesA => '공간에 앱의 모든 기능(노트, 덱, 습관, 목표, 프로젝트, 소리 등)이 모여 있어 메인 바가 단순하게 유지됩니다.';

  @override
  String get faqBackupQ => '내 데이터는 어떻게 백업되나요?';

  @override
  String get faqBackupA =>
      '앱은 매일 조용히 이 휴대폰에 암호화된 사본을 만들고 최근 7개를 보관합니다. 설정에서 비밀번호로 보호된 백업 파일을 내보내 다른 휴대폰에서 복원할 수도 있어요.';

  @override
  String get faqPrayerQ => '기도 시간은 어떻게 작동하나요?';

  @override
  String get faqPrayerA =>
      '설정 → 기도 시간에서 도시를 고르세요. 시간은 그 지역에서 쓰는 방법으로 휴대폰에서 계산되며, 계산 방법과 아스르 학파를 바꿀 수 있습니다. 기도 시간마다 알림을 받을 수 있고, 진행 중인 집중 세션은 일시정지됩니다.';

  @override
  String get faqPrivacyQ => '내 데이터는 어디에 저장되나요?';

  @override
  String get faqPrivacyA =>
      '휴대폰의 암호화된 데이터베이스에만 저장됩니다. 계정도 추적도 없습니다. 인터넷은 선택형 어시스턴트처럼 직접 켠 기능만 사용합니다.';

  @override
  String get faqAssistantQ => '어시스턴트란 무엇인가요?';

  @override
  String get faqAssistantA => '설정에서 내 AI 서비스에 연결하는 선택형 도우미입니다. 기본적으로 꺼져 있으며 노트 내용을 보내기 전에 항상 묻습니다.';

  @override
  String get tourPlanTitle => '하루를 계획하세요';

  @override
  String get tourPlanBody => '할 일, 캘린더, 습관을 차분한 한곳에서. 매일 아침 ‘하루 시작하기’로 출발하세요.';

  @override
  String get tourFocusTitle => '깊이 집중하세요';

  @override
  String get tourFocusBody => '실제 자연의 소리, 방해 금지, 부드러운 종료음과 함께하는 시간제 세션.';

  @override
  String get tourLearnTitle => '제대로 배우세요';

  @override
  String get tourLearnBody => '간격 반복 플래시카드, 여러 언어 음성, Anki나 Excel 가져오기.';

  @override
  String get helpTitle => '도움말 및 질문';

  @override
  String get helpOpen => '열기';

  @override
  String get helpTour => '둘러보기 다시 보기';

  @override
  String get tourNext => '다음';

  @override
  String get tourDone => '시작해요';

  @override
  String get transferColTitle => '제목';

  @override
  String get transferColNotes => '메모';

  @override
  String get transferColBody => '본문';

  @override
  String get transferColDue => '마감일';

  @override
  String get transferColPriority => '우선순위(0-3)';

  @override
  String get transferColDone => '완료';

  @override
  String get transferColProject => '프로젝트';

  @override
  String get transferColCategory => '카테고리';

  @override
  String get transferTitle => '가져오기 및 내보내기';

  @override
  String get transferSaveAs => '다른 형식으로 저장';

  @override
  String get transferImport => '파일에서 가져오기';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV 또는 Word 표. 열: 제목, 마감일(2026-12-31), 우선순위 0-3, 완료, 프로젝트, 메모. 이미 앱에 있는 할 일은 건너뜁니다.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown, 텍스트 파일은 노트가 됩니다. Excel이나 CSV는 한 행에 노트 하나(제목, 본문).';

  @override
  String get transferSaved => '파일을 저장했어요';

  @override
  String get transferFailed => '파일을 만들 수 없습니다. 아무것도 바뀌지 않았습니다.';

  @override
  String get transferUnsupported => '이 파일은 여기서 읽을 수 없습니다. Excel, CSV, Word, Markdown, 텍스트를 사용하세요.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added개 추가됨',
      zero: '새로 추가할 항목이 없어요',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => '텍스트';

  @override
  String get transferAllNotes => '모든 노트';

  @override
  String get transferThisNote => '이 노트';

  @override
  String get transferDeckFormats => 'Excel, Word 또는 PDF로 저장';

  @override
  String get faqFilesQ => 'Excel, Word, PDF 파일을 쓸 수 있나요?';

  @override
  String get faqFilesA =>
      '네. 할 일과 노트 상단에 가져오기/내보내기 버튼(화살표 두 개)이 있고, 모든 덱의 메뉴에도 있습니다. Excel, CSV, Word, PDF로 저장하거나 Excel, CSV, Word, Markdown, 텍스트 파일을 가져오세요. 열 이름은 앱의 어느 언어로든 쓸 수 있고, 저장한 파일은 언제든 다시 가져올 수 있습니다.';

  @override
  String get tplLecture => '강의';

  @override
  String get tplBook => '책 요약';

  @override
  String get tplJournal => '일기';

  @override
  String get tplWeek => '주간 계획';

  @override
  String get tplLectureBody => '## 핵심 내용\n- \n\n## 질문\n- [ ] \n\n## 요약\n';

  @override
  String get tplBookBody => '## 핵심 아이디어\n\n## 배운 점\n- \n\n## 인용\n> \n\n## 실천할 것\n- [ ] \n';

  @override
  String get tplJournalBody => '## 감사한 일\n- \n\n## 오늘의 집중\n- [ ] \n\n## 메모\n';

  @override
  String get tplWeekBody =>
      '## 이번 주 목표\n- [ ] \n\n### 토요일\n- [ ] \n\n### 일요일\n- [ ] \n\n### 월요일\n- [ ] \n\n### 화요일\n- [ ] \n\n### 수요일\n- [ ] \n\n### 목요일\n- [ ] \n\n### 금요일\n- [ ] \n';

  @override
  String get tplHint => '템플릿으로 시작';

  @override
  String get noteImage => '그림';

  @override
  String get noteAddImage => '그림 추가';

  @override
  String get noteImageUnreadable => '이 파일은 앱이 읽을 수 있는 그림이 아닙니다.';

  @override
  String get noteImageTooLarge => '그림이 너무 큽니다.';

  @override
  String get examSet => '시험 날짜 설정';

  @override
  String get examDate => '시험 날짜';

  @override
  String get examToday => '오늘이 시험이에요. 행운을 빌어요!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '시험까지 $count일',
      one: '내일 시험',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '하루에 새 카드 $count장 배우기');
    return '$_temp0';
  }

  @override
  String get examAllLearnt => '모든 카드를 배웠어요, 계속 복습하세요';

  @override
  String examRaiseLimit(int count) {
    return '하루 새 카드 $count장 보기';
  }

  @override
  String get backupDriveHint => '온라인에도 사본을 두려면, 다음에 열리는 저장 화면에서 Google 드라이브(또는 다른 클라우드 앱)를 선택하세요.';

  @override
  String get flashShareDeck => '친구와 덱 공유';

  @override
  String get flashSortManual => '내 순서(끌기)';

  @override
  String get flashReorderHint => '핸들을 누른 채 카드를 끌어 옮기세요.';

  @override
  String get flashReorderNeedsAll => '카드를 끌려면 검색과 필터를 지우세요.';

  @override
  String get flashDragHandle => '끌어서 이동';

  @override
  String get reportTitle => '월간 보고서';

  @override
  String get reportFocus => '집중 시간';

  @override
  String reportSessions(int count) {
    return '$count세션';
  }

  @override
  String reportBestDay(String day, String time) {
    return '최고의 날: $day($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '활동일 $count일';
  }

  @override
  String get reportCards => '복습한 카드';

  @override
  String reportCardsKnown(String percent) {
    return '$percent 기억';
  }

  @override
  String get reportTasks => '완료한 할 일';

  @override
  String get reportHabits => '습관 체크';

  @override
  String get reportEmpty => '이번 달은 아직 기록이 없어요.';

  @override
  String get reportSave => 'PDF 또는 Word로 저장';

  @override
  String get reportPrevMonth => '이전 달';

  @override
  String get reportNextMonth => '다음 달';

  @override
  String get careTitle => '휴대폰과 데이터 관리';

  @override
  String get storageTitle => '저장공간';

  @override
  String get storageSubtitle => '공간을 차지하는 항목과 쓰지 않는 그림 정리';

  @override
  String get storagePictures => '노트의 그림';

  @override
  String get storageCardMedia => '카드의 이미지와 오디오';

  @override
  String get storageText => '노트 본문';

  @override
  String get storageFree => '휴대폰 남은 공간';

  @override
  String get storageLow => '휴대폰 저장공간이 거의 가득 찼습니다. 백업과 알림이 계속 작동하도록 공간을 확보하세요.';

  @override
  String storageUnused(int count, String size) {
    return '쓰지 않는 그림 $count개($size)';
  }

  @override
  String get storageNoUnused => '쓰지 않는 그림이 없어요. 깔끔합니다.';

  @override
  String get storageClean => '쓰지 않는 그림 삭제';

  @override
  String storageCleaned(int count) {
    return '그림 $count개 삭제됨';
  }

  @override
  String get storageHint => '휴지통의 노트를 포함해 어떤 노트에도 표시되지 않는 그림만 쓰지 않는 것으로 봅니다.';

  @override
  String get batteryTitle => '알림이 계속 작동하게 하기';

  @override
  String get batterySubtitle => '일부 휴대폰은 백그라운드 앱을 멈춥니다. 내 휴대폰을 확인하세요.';

  @override
  String get batteryStatusOk => '절전 기능이 이 앱을 제한하지 않습니다. 알림과 소리가 제시간에 도착할 거예요.';

  @override
  String get batteryStatusLimited => '절전 기능이 백그라운드에서 이 앱을 멈출 수 있어 알림과 소리가 늦거나 누락될 수 있습니다.';

  @override
  String get batteryOpen => '배터리 설정 열기';

  @override
  String get batteryOpenApp => '앱 설정 열기';

  @override
  String get batteryGeneric => '배터리 설정에서 이 앱을 선택하고 ‘제한 없음’(또는 ‘최적화 안 함’)으로 설정하세요.';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: 보안 › 권한 › 자동 시작에서 이 앱을 켜고, 배터리 세이버를 ‘제한 없음’으로 설정하세요.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: 배터리 › 이 앱에서 백그라운드 활동과 자동 실행을 허용하고, 최근 앱 목록에서 앱을 잠그세요.';

  @override
  String get batterySamsung => 'Samsung: 배터리 › 백그라운드 사용 제한에서 이 앱을 ‘절전 상태 앱’과 ‘완전 절전 상태 앱’에서 빼세요.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: 앱 실행 › 이 앱 › 수동 관리를 선택하고 자동 실행, 보조 실행, 백그라운드 실행을 허용하세요.';

  @override
  String get batteryVivo => 'Vivo / iQOO: 배터리 › 백그라운드 전력 소비에서 이 앱을 허용하고, 권한에서 자동 시작을 켜세요.';

  @override
  String get whatsNewTitle => '새로운 기능';

  @override
  String get whatsNewSubtitle => '최근 변경 사항을 간단히';

  @override
  String get whatsNewDone => '확인';

  @override
  String get whatsNewOrderTitle => '카드를 원하는 순서로 끌기';

  @override
  String get whatsNewOrderBody => '덱에서 정렬 › 내 순서를 고른 뒤 핸들을 누른 채 끌어 옮기세요.';

  @override
  String get whatsNewSpeechTitle => '카드 양면에 스피커';

  @override
  String get whatsNewSpeechBody =>
      '탭하면 단어나 번역을 들을 수 있어요. 속도, 반복, 음성은 복습 메뉴에 있습니다. 언어는 텍스트에서 자동으로 인식합니다.';

  @override
  String get whatsNewReportTitle => '월간 보고서';

  @override
  String get whatsNewReportBody => '통계에서 보고서 아이콘을 탭하면 한 달 기록을 보고 PDF나 Word로 저장할 수 있어요.';

  @override
  String get whatsNewCareTitle => '휴대폰과 데이터 관리';

  @override
  String get whatsNewCareBody => '설정에 그림 정리 기능이 있는 저장공간 페이지와 휴대폰 브랜드별 배터리 안내가 추가되었습니다.';

  @override
  String get whatsNewSoundTitle => '더 차분한 소리';

  @override
  String get whatsNewSoundBody => '자연의 소리가 더 부드럽고 조용해졌고, 그림 카드도 더 예뻐졌어요.';

  @override
  String autoBackupCheckOk(String date) {
    return '$date 확인: 최근 백업이 정상적으로 열립니다.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date 확인: 손상된 백업을 발견해 새 백업으로 바꿨습니다.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date 확인: 최근 백업을 열 수 없습니다. 설정에서 직접 백업 파일을 저장하세요.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return '보통 $time쯤 공부해요';
  }

  @override
  String get smartReviewTimeUse => '이 시간 사용';

  @override
  String get widgetNewNote => '새 노트';

  @override
  String get noteConnections => '태그, 링크, 할 일';

  @override
  String get navCards => '카드';

  @override
  String get studyAnswerWay => '답하는 방법';

  @override
  String get studyMorePractice => '추가 연습';

  @override
  String get studySessionSettings => '세션 설정';

  @override
  String get focusAdjustTitle => '내 세션';

  @override
  String get focusPresetsTitle => '기본 제공';

  @override
  String get focusPresetStudy => '공부';

  @override
  String get focusPresetDeep => '딥 워크';

  @override
  String get focusPresetQuick => '짧은 스프린트';

  @override
  String get focusPresetReading => '독서';

  @override
  String get focusPresetWorkout => '운동 라운드';

  @override
  String get focusAdjustMinutes => '집중 시간';

  @override
  String get focusAdjustBreak => '휴식 시간';

  @override
  String get focusAdjustRounds => '라운드';

  @override
  String get focusRoundsOpen => '제한 없음';

  @override
  String focusMinutesShort(String n) {
    return '$n분';
  }

  @override
  String get focusTapToAdjust => '탭하여 시간 변경';

  @override
  String get flashArrangeDecks => '덱 정렬';

  @override
  String get flashDeckActions => '덱 옵션';

  @override
  String get starterBrowse => '준비된 덱';

  @override
  String get starterBrowseHint => '한 번 탭해 추가하고 학습을 시작하세요';

  @override
  String get dashOpenDecks => '카드 열기';

  @override
  String speechVoiceNumber(String n) {
    return '음성 $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return '흐름이 좋아요. $m분 쉴까요?';
  }

  @override
  String get focusFlowBreakStart => '휴식 시작';

  @override
  String tasksFinishAt(String time) {
    return '지금 시작하면 $time에 모두 끝나요';
  }

  @override
  String get focusCalmPacing => '차분한 속도';

  @override
  String get focusCalmPacingHint => '초가 움직이지 않고 분 단위와 링만 표시';

  @override
  String get focusFlipHint => '휴대폰을 뒤집어 놓으면 시작됩니다';

  @override
  String get focusImmersive => '몰입 모드';

  @override
  String get focusImmersiveBlack => '완전한 검정(배터리 절약)';

  @override
  String get focusFlipToFocus => '뒤집어 집중';

  @override
  String get focusFlipToFocusHint => '몰입 모드에서 뒤집으면 시작, 들어 올리면 일시정지';

  @override
  String get guardTitle => '방해 앱 차단';

  @override
  String get guardSubtitle => '집중하는 동안 방해되는 앱 일시정지';

  @override
  String get guardSwitch => '방해되는 앱 일시정지';

  @override
  String get guardSwitchHint => '집중 세션 중과 시간 차단 시간대에';

  @override
  String get guardNeedsAccess => '접근성 스위치가 필요합니다. 탭해서 켜세요';

  @override
  String get guardDisclosureTitle => '차단 기능 작동 방식';

  @override
  String get guardDisclosureBody =>
      '선택한 앱을 일시정지하기 위해 Deep Focus는 Android 접근성 서비스를 사용해 어떤 앱이 열려 있는지 확인합니다. ‘쇼츠와 릴스 닫기’가 켜져 있으면 화면에 짧은 동영상 플레이어가 있는지도 확인합니다.\n\n텍스트를 읽지 않고, 본 내용을 저장하지 않으며, 어디에도 보내지 않습니다. 모든 것은 휴대폰에 남습니다. 접근성 설정에서 언제든 끌 수 있어요.';

  @override
  String get guardAgree => '동의하고 설정 열기';

  @override
  String get guardModeGentle => '부드럽게';

  @override
  String get guardModeStrict => '엄격하게';

  @override
  String get guardGentleHint => '5초 동안 숨을 고른 뒤 직접 선택';

  @override
  String get guardStrictHint => '선택한 앱은 집중 시간이 끝날 때까지 닫혀 있어요';

  @override
  String get guardApps => '일시정지할 앱';

  @override
  String get guardAppsAllowed => '허용된 앱';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '앱 $count개',
      zero: '아직 선택 안 함',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => '선택한 앱만 허용';

  @override
  String get guardAllowlistHint => '다른 모든 앱은 일시정지됩니다. 전화, 설정, 키보드는 항상 작동해요';

  @override
  String get guardShorts => '쇼츠와 릴스 닫기';

  @override
  String get guardShortsHint => '차단 기능이 켜져 있을 때 항상. 최선을 다하지만 이 앱들은 자주 바뀝니다';

  @override
  String get guardSchedule => '시간 차단';

  @override
  String get guardScheduleHint => '학교나 직장처럼 정한 요일과 시간에도 차단';

  @override
  String get guardFrom => '시작';

  @override
  String get guardTo => '종료';

  @override
  String get guardSearchApps => '앱 검색';

  @override
  String get guardNoApps => '앱을 찾을 수 없어요';

  @override
  String get guardPrivacy => '휴대폰에서만 작동합니다. 어떤 앱이 열려 있는지만 보고, 앱 내용은 절대 보지 않으며, 아무것도 보내지 않아요.';

  @override
  String get guardBreathe => '들이쉬고… 내쉬세요';

  @override
  String get guardQuestion => '지금 이 앱이 꼭 필요한가요?';

  @override
  String get guardBackToFocus => '집중으로 돌아가기';

  @override
  String get guardOpenFive => '5분 동안 열기';

  @override
  String get guardStrictBody => '집중 시간이 끝날 때까지 이 앱은 일시정지됩니다.';

  @override
  String get guardShortsClosed => '차단 기능이 켜져 있는 동안 짧은 동영상이 닫혀요';

  @override
  String get faqGuardQ => '집중할 때 방해되는 앱을 어떻게 막나요?';

  @override
  String get faqGuardA =>
      '집중 → 타이머 설정 → 방해 앱 차단을 여세요. 앱을 고른 뒤 부드럽게(5초 호흡과 ‘지금 이 앱이 꼭 필요한가요?’라는 질문) 또는 엄격하게(계속 닫혀 있음)를 선택하세요. 집중 세션 중, 그리고 시간 차단으로 정한 요일과 시간에 작동합니다. ‘선택한 앱만 허용’은 나머지를 모두 일시정지하며, 전화, 설정, 키보드는 항상 작동합니다. Android에서 접근성 설정으로 한 번 켜 달라고 요청합니다. 어떤 앱이 열려 있는지만 보고 아무것도 보내지 않습니다.';

  @override
  String notesMovedToNotebook(String name) {
    return '$name(으)로 이동했어요';
  }

  @override
  String get notesDragHint => '노트를 길게 눌러 노트북으로 끌어 놓으세요';

  @override
  String get guardReviewCards => '대신 카드 복습하기';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '카드 $count장이 기다리고 있어요');
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => '긴급: 10초 길게 누르기';

  @override
  String guardEmergencyHolding(Object n) {
    return '계속 누르세요… $n';
  }

  @override
  String get guardWeekTitle => '이번 주';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '일시정지 $count번');
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '집중으로 $count번 복귀');
    return '$_temp0';
  }

  @override
  String get wordsTitle => '단어 바꾸기';

  @override
  String get wordsSubtitle => '앱의 모든 텍스트를 내 단어로 바꾸기';

  @override
  String get wordsHint => '텍스트를 탭해 바꾸세요. 바꾼 단어는 이 언어에만 적용되며 백업에 포함됩니다.';

  @override
  String get wordsSearch => '텍스트 검색';

  @override
  String get wordsChangedOnly => '바꾼 것만';

  @override
  String wordsOriginal(String text) {
    return '원래 텍스트: $text';
  }

  @override
  String get wordsReset => '원래대로';

  @override
  String get wordsResetAll => '모든 단어 초기화';

  @override
  String get wordsResetAllConfirm => '이 언어의 모든 텍스트가 원래대로 돌아갑니다.';

  @override
  String get wordsNone => '텍스트를 찾을 수 없어요';

  @override
  String get settingsLanguageSearch => '언어 검색';

  @override
  String get settingsLanguageNoMatch => '일치하는 언어가 없습니다';

  @override
  String get soundsMyMusic => '내 오디오';

  @override
  String get soundsMusicHint => '휴대폰의 오디오 파일을 재생합니다. 복사하거나 업로드하지 않습니다.';

  @override
  String get soundsChooseMusic => '오디오 선택';

  @override
  String get soundsRemoveMusic => '오디오 제거';
}
