// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'ホーム';

  @override
  String get navTasks => 'タスク';

  @override
  String get navFocus => '集中';

  @override
  String get navCalendar => 'カレンダー';

  @override
  String get navSpaces => 'スペース';

  @override
  String get moduleProjects => 'プロジェクト';

  @override
  String get moduleNotes => 'メモ';

  @override
  String get moduleFlashcards => '単語カード';

  @override
  String get moduleGoals => '目標';

  @override
  String get moduleHabits => '習慣';

  @override
  String get moduleAnalytics => '分析';

  @override
  String get moduleSearch => '検索';

  @override
  String get moduleAssistant => 'アシスタント';

  @override
  String get moduleSettings => '設定';

  @override
  String get moduleTrash => 'ゴミ箱';

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => 'キャンセル';

  @override
  String get actionDelete => '削除';

  @override
  String get actionEdit => '編集';

  @override
  String get actionDone => '完了';

  @override
  String get actionAdd => '追加';

  @override
  String get actionCreate => '作成';

  @override
  String get actionClose => '閉じる';

  @override
  String get actionBack => '戻る';

  @override
  String get actionUndo => '元に戻す';

  @override
  String get actionRestore => '復元';

  @override
  String get actionRetry => '再試行';

  @override
  String get actionContinue => '続ける';

  @override
  String get actionSkip => 'スキップ';

  @override
  String get actionArchive => 'アーカイブ';

  @override
  String get actionUnarchive => 'アーカイブ解除';

  @override
  String get actionPin => 'ピン留め';

  @override
  String get actionUnpin => 'ピン留めを外す';

  @override
  String get actionMore => 'その他のオプション';

  @override
  String get actionClear => 'クリア';

  @override
  String get actionSearch => '検索';

  @override
  String get actionSort => '並べ替え';

  @override
  String get actionShare => '共有';

  @override
  String get actionImport => 'インポート';

  @override
  String get actionExport => 'エクスポート';

  @override
  String get actionPause => '一時停止';

  @override
  String get actionResume => '再開';

  @override
  String get actionStart => '開始';

  @override
  String get actionStop => '停止';

  @override
  String get actionComplete => '完了にする';

  @override
  String get actionDeleteForever => '完全に削除';

  @override
  String get actionEmptyTrash => 'ゴミ箱を空にする';

  @override
  String get actionUnlink => 'リンクを解除';

  @override
  String get actionCustomize => 'カスタマイズ';

  @override
  String get actionPreview => 'プレビュー';

  @override
  String get actionLog => '進捗を記録';

  @override
  String get stateLoading => '読み込み中…';

  @override
  String get stateSaving => '保存中…';

  @override
  String get stateSaved => '保存しました';

  @override
  String get stateUnsaved => '未保存の変更があります';

  @override
  String get errorGenericTitle => '問題が発生しました';

  @override
  String get errorGenericMessage => 'データは安全です。もう一度お試しください。';

  @override
  String get errorLoadFailed => 'このコンテンツを読み込めませんでした。';

  @override
  String get errorSaveFailed => '保存できませんでした。変更内容はそのまま残っています。';

  @override
  String get validationRequired => 'この項目は必須です';

  @override
  String get validationTitleRequired => 'タイトルを入力してください';

  @override
  String get validationNameRequired => '名前を入力してください';

  @override
  String get validationTooLong => '長すぎます';

  @override
  String get validationEndBeforeStart => '終了は開始より後にしてください';

  @override
  String get validationStartAfterDue => '開始日は期限より前にしてください';

  @override
  String get validationPositiveNumber => '0より大きい数を入力してください';

  @override
  String get validationDependencyCycle => '循環依存になってしまいます';

  @override
  String get validationInvalidRepeat => 'この繰り返しルールは無効です';

  @override
  String get deletedItem => 'ゴミ箱に移動しました';

  @override
  String get untitled => '無題';

  @override
  String get noProject => 'プロジェクトなし';

  @override
  String get greetingMorning => 'おはようございます';

  @override
  String get greetingAfternoon => 'こんにちは';

  @override
  String get greetingEvening => 'こんばんは';

  @override
  String get dashFocusToday => '今日の集中';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => '集中を始める';

  @override
  String get dashFocusRunning => 'セッション進行中';

  @override
  String get dashTodayTasks => '今日が期限';

  @override
  String get dashAgenda => '予定';

  @override
  String get dashHabits => '今日の習慣';

  @override
  String get dashGoals => '目標';

  @override
  String get dashReview => '復習';

  @override
  String get dashRecentNotes => '最近のメモ';

  @override
  String get dashInsight => 'ヒント';

  @override
  String get dashSeeAll => 'すべて表示';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '復習カード $count 枚',
      zero: '復習するカードはありません',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => '今すぐ復習';

  @override
  String get dashCustomizeTitle => 'ホームのセクション';

  @override
  String get dashCustomizeHint => 'ホーム画面に表示する項目を選びます。';

  @override
  String get dashSectionFocus => '集中';

  @override
  String get dashSectionToday => '今日が期限のタスク';

  @override
  String get dashSectionAgenda => '予定';

  @override
  String get dashSectionHabits => '習慣';

  @override
  String get dashSectionGoals => '目標';

  @override
  String get dashSectionReview => 'カードの復習';

  @override
  String get dashSectionNotes => '最近のメモ';

  @override
  String get dashSectionInsight => 'ヒント';

  @override
  String get quickAddTask => '新しいタスク';

  @override
  String get quickAddNote => '新しいメモ';

  @override
  String get quickAddEvent => '新しい予定';

  @override
  String get quickStartFocus => '集中';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '期限切れのタスクが$count件あります。最も重要なものから始めましょう。',
      one: '期限切れのタスクが1件あります。先に日程を変えるか終わらせましょう。',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '今日の集中目標まであと$minutes分です。';
  }

  @override
  String get insightCardsDue => '記憶が新しいうちに、期限のカードを復習しましょう。';

  @override
  String get insightAllClear => 'すべて順調です。明日の計画を立てるか、ゆっくり休憩しましょう。';

  @override
  String insightHabitStreak(String habit) {
    return '連続記録を守りましょう：今日はまだ「$habit」が残っています。';
  }

  @override
  String get focusTitle => '集中';

  @override
  String get focusModePomodoro => 'ポモドーロ';

  @override
  String get focusModeCountdown => 'タイマー';

  @override
  String get focusModeCountUp => 'ストップウォッチ';

  @override
  String get focusModeOpen => 'フリー';

  @override
  String get focusPhaseWork => '集中';

  @override
  String get focusPhaseShortBreak => '短い休憩';

  @override
  String get focusPhaseLongBreak => '長い休憩';

  @override
  String get focusReady => '準備ができたら始めましょう';

  @override
  String get focusPaused => '一時停止中';

  @override
  String get focusRunning => '集中中';

  @override
  String get focusDuration => '時間';

  @override
  String get focusLinkTask => 'タスクを関連付け';

  @override
  String get focusLinkedTask => '取り組み中';

  @override
  String get focusNoTask => '関連付けたタスクなし';

  @override
  String focusCycle(int current, int total) {
    return 'サイクル $current / $total';
  }

  @override
  String get focusSkipBreak => '休憩をスキップ';

  @override
  String get focusStartBreak => '休憩を始める';

  @override
  String get focusStartNext => '次の集中を始める';

  @override
  String get focusSessionComplete => 'セッション完了';

  @override
  String get focusSessionStopped => 'セッションを保存しました';

  @override
  String focusSessionSummary(String duration) {
    return '$duration集中しました。';
  }

  @override
  String get focusAddNote => 'このセッションのメモを追加';

  @override
  String get focusHistory => '履歴';

  @override
  String get focusNoHistory => '完了したセッションがここに表示されます';

  @override
  String get focusTargets => '目標';

  @override
  String get focusDailyTarget => '1日の目標';

  @override
  String get focusWeeklyTarget => '1週間の目標';

  @override
  String get focusOutcomeCompleted => '完了';

  @override
  String get focusOutcomeInterrupted => '途中で終了';

  @override
  String get focusRecovered => 'アプリを閉じている間もセッションは続いていました。';

  @override
  String get focusCompletedWhileAway => 'アプリを閉じている間にセッションが終わり、保存されました。';

  @override
  String get focusNotificationsOff => '通知がオフです。セッション終了時にお知らせできません。';

  @override
  String get focusBatteryHint =>
      '一部の端末ではバックグラウンドのアプリが停止されます。タイマーは正確ですが、通知が遅れることがあります。確実に通知するには、電池の使用を「制限なし」にしてください。';

  @override
  String get focusOpenSettings => '設定を開く';

  @override
  String get focusStopConfirmTitle => 'このセッションを終了しますか？';

  @override
  String get focusStopConfirmMessage => 'ここまでの集中時間は保存されます。';

  @override
  String get focusDiscard => '破棄';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes分');
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase、残り$time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase、経過$time';
  }

  @override
  String get focusDeleteSession => 'セッションを削除';

  @override
  String get tasksTitle => 'タスク';

  @override
  String get tasksViewToday => '今日';

  @override
  String get tasksViewUpcoming => '今後';

  @override
  String get tasksViewAll => 'すべて';

  @override
  String get tasksViewOverdue => '期限切れ';

  @override
  String get tasksViewCompleted => '完了';

  @override
  String get tasksQuickAddHint => 'タスクを追加…';

  @override
  String get tasksEmptyTitle => 'すべて完了';

  @override
  String get tasksEmptyMessage => 'タスクを追加して、1日を組み立てましょう。';

  @override
  String get tasksEmptyCompleted => '完了したタスクがここに表示されます。';

  @override
  String get taskNew => '新しいタスク';

  @override
  String get taskEdit => 'タスクを編集';

  @override
  String get taskTitleLabel => 'タイトル';

  @override
  String get taskTitleHint => '何をしますか？';

  @override
  String get taskDescriptionLabel => '説明';

  @override
  String get taskNotesLabel => 'メモ';

  @override
  String get taskPriority => '優先度';

  @override
  String get priorityNone => 'なし';

  @override
  String get priorityLow => '低';

  @override
  String get priorityMedium => '中';

  @override
  String get priorityHigh => '高';

  @override
  String get priorityUrgent => '緊急';

  @override
  String get taskDueDate => '期限';

  @override
  String get taskStartDate => '開始日';

  @override
  String get taskReminder => 'リマインダー';

  @override
  String get taskRepeat => '繰り返し';

  @override
  String get taskProject => 'プロジェクト';

  @override
  String get taskCategory => 'カテゴリ';

  @override
  String get taskCategoryHint => '例：仕事、家、勉強';

  @override
  String get taskEstimateMinutes => '見積もり（分）';

  @override
  String get taskTracked => '記録された集中時間';

  @override
  String get taskLabels => 'ラベル';

  @override
  String get taskAddLabel => '新しいラベル';

  @override
  String get taskChecklist => 'チェックリスト';

  @override
  String get taskAddChecklistItem => '項目を追加';

  @override
  String get taskSubtasks => 'サブタスク';

  @override
  String get taskAddSubtask => 'サブタスクを追加';

  @override
  String get taskDependencies => 'ブロック元';

  @override
  String get taskAddDependency => 'ブロックしているタスクを追加';

  @override
  String get taskLinkedNotes => '関連メモ';

  @override
  String get taskSetTime => '時刻を設定';

  @override
  String get taskNoDate => '日付なし';

  @override
  String get taskCompleted => 'タスクを完了しました';

  @override
  String get taskNextOccurrence => '次の繰り返しを作成しました';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days日超過');
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '「$title」を完了にする';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '「$title」を未完了にする';
  }

  @override
  String get sortSmart => 'おすすめ順';

  @override
  String get sortDueDate => '期限';

  @override
  String get sortPriority => '優先度';

  @override
  String get sortCreated => '新しい順';

  @override
  String get sortTitle => 'タイトル';

  @override
  String get filterAllProjects => 'すべてのプロジェクト';

  @override
  String get filterAnyPriority => 'すべての優先度';

  @override
  String get filterTitle => '絞り込みと並べ替え';

  @override
  String get dateToday => '今日';

  @override
  String get dateTomorrow => '明日';

  @override
  String get dateYesterday => '昨日';

  @override
  String get repeatNever => '繰り返さない';

  @override
  String get repeatDaily => '毎日';

  @override
  String get repeatWeekdays => '平日のみ';

  @override
  String get repeatWeekly => '毎週';

  @override
  String get repeatMonthly => '毎月';

  @override
  String get repeatYearly => '毎年';

  @override
  String get repeatCustom => 'カスタム';

  @override
  String get repeatEvery => '繰り返し間隔';

  @override
  String get repeatOnDays => '曜日';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '日');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '週');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'か月');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '年');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count回');
    return '$_temp0で終了';
  }

  @override
  String get repeatEndsNever => '終了しない';

  @override
  String get reminderAtTime => '予定の時刻';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes分前');
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(hours, locale: localeName, other: '$hours時間前');
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1日前';

  @override
  String get projectsTitle => 'プロジェクト';

  @override
  String get projectsEmptyTitle => 'プロジェクトはまだありません';

  @override
  String get projectsEmptyMessage => '関連するタスク、メモ、集中時間をまとめましょう。';

  @override
  String get projectNew => '新しいプロジェクト';

  @override
  String get projectEdit => 'プロジェクトを編集';

  @override
  String get projectName => '名前';

  @override
  String get projectDescription => '説明';

  @override
  String get projectGoal => '目的';

  @override
  String get projectDeadline => '締め切り';

  @override
  String get projectColor => '色';

  @override
  String get projectIcon => 'アイコン';

  @override
  String get projectProgress => '進捗';

  @override
  String projectTasksDone(int done, int total) {
    return '$total件中$done件完了';
  }

  @override
  String get projectFocusTime => '集中時間';

  @override
  String get projectArchived => 'アーカイブしたプロジェクト';

  @override
  String get projectShowArchived => 'アーカイブを表示';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '残り$days日',
      zero: '今日が期限',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => '締め切り超過';

  @override
  String get calendarTitle => 'カレンダー';

  @override
  String get calendarMonth => '月';

  @override
  String get calendarWeek => '週';

  @override
  String get calendarDay => '日';

  @override
  String get calendarToday => '今日';

  @override
  String get calendarPrevious => '前へ';

  @override
  String get calendarNext => '次へ';

  @override
  String get calendarNoEvents => '予定はありません';

  @override
  String get calendarAllDay => '終日';

  @override
  String get eventNew => '新しい予定';

  @override
  String get eventEdit => '予定を編集';

  @override
  String get eventTitleHint => '予定のタイトル';

  @override
  String get eventStarts => '開始';

  @override
  String get eventEnds => '終了';

  @override
  String get eventKind => '種類';

  @override
  String get eventKindEvent => '予定';

  @override
  String get eventKindTimeBlock => '時間ブロック';

  @override
  String get eventKindFocus => '集中セッション';

  @override
  String get eventKindGoal => '個人目標';

  @override
  String get eventDescription => '詳細';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件の予定と重なっています');
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'この日は予定が重なっています';

  @override
  String get calendarTaskDue => '期限のタスク';

  @override
  String get calendarDragHint => '予定を長押ししてドラッグすると移動できます';

  @override
  String get calendarRescheduled => '予定を移動しました';

  @override
  String get calendarScheduleTask => '時間ブロックとして予定に入れる';

  @override
  String get notesTitle => 'メモ';

  @override
  String get notesViewAll => 'すべて';

  @override
  String get notesViewPinned => 'ピン留め';

  @override
  String get notesViewFavorites => 'お気に入り';

  @override
  String get notesViewArchived => 'アーカイブ';

  @override
  String get notesTags => 'タグ';

  @override
  String get notesNewNotebook => '新しいノート';

  @override
  String get notesNoNotebook => 'ノートなし';

  @override
  String get notesEmptyTitle => 'まっさらなページ';

  @override
  String get notesEmptyMessage => 'アイデア、会議メモ、知識を書き留めましょう。';

  @override
  String get noteTitleHint => 'タイトル';

  @override
  String get noteBodyHint => '書き始めましょう… # でタグ、[[タイトル]] でメモをリンクできます。';

  @override
  String get noteFavorite => 'お気に入り';

  @override
  String get noteUnfavorite => 'お気に入りから外す';

  @override
  String get noteMoveTo => 'ノートへ移動';

  @override
  String get noteBacklinks => 'リンク元';

  @override
  String get noteLinkedTasks => '関連タスク';

  @override
  String get noteLinkTask => 'タスクを関連付け';

  @override
  String get noteLinkProject => 'プロジェクト';

  @override
  String get noteFormatHeading => '見出し';

  @override
  String get noteFormatBold => '太字';

  @override
  String get noteFormatItalic => '斜体';

  @override
  String get noteFormatList => '箇条書き';

  @override
  String get noteFormatChecklist => 'チェックリスト';

  @override
  String get noteFormatLink => 'リンク';

  @override
  String noteEdited(String time) {
    return '$timeに編集';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count語');
    return '$_temp0';
  }

  @override
  String get flashTitle => '単語カード';

  @override
  String get flashEmptyTitle => '最初のデッキを作りましょう';

  @override
  String get flashEmptyMessage => '間隔反復で、忘れかける直前に各カードを出題します。';

  @override
  String get deckNew => '新しいデッキ';

  @override
  String get deckEdit => 'デッキを編集';

  @override
  String get deckName => 'デッキ名';

  @override
  String get deckDescription => '説明';

  @override
  String get deckDailyNew => '1日の新規カード数';

  @override
  String get deckDailyReview => '1日の復習目標';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count枚',
      zero: 'カードなし',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => '復習期限';

  @override
  String get deckNewCards => '新規';

  @override
  String get deckMature => '定着';

  @override
  String get deckStudy => '学習する';

  @override
  String get deckNothingDue => '今は復習するものがありません。また後で来てください。';

  @override
  String get deckEmptyCards => 'カードを追加して学習を始めましょう。';

  @override
  String get cardNew => '新しいカード';

  @override
  String get cardEdit => 'カードを編集';

  @override
  String get cardFront => '表';

  @override
  String get cardBack => '裏';

  @override
  String get cardFrontHint => '質問または用語';

  @override
  String get cardBackHint => '答えまたは定義';

  @override
  String get cardTags => 'タグ';

  @override
  String get cardAddAnother => '保存して続けて追加';

  @override
  String get reviewShowAnswer => '答えを見る';

  @override
  String get reviewAgain => 'もう一度';

  @override
  String get reviewHard => '難しい';

  @override
  String get reviewGood => '普通';

  @override
  String get reviewEasy => '簡単';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'セッション完了';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count枚のカードを復習しました。');
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'タップして答えを表示';

  @override
  String get importCardsTitle => 'カードをインポート';

  @override
  String get importCardsHint =>
      '1行に1枚ずつ貼り付けるか（表と裏はタブまたはセミコロンで区切る）、ファイルを選択します：Excel（.xlsx）、CSV、Ankiデッキ（.apkg）、エクスポートしたデッキ。';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count枚のカードをインポートしました',
      zero: 'インポートしたカードはありません',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'このコンテンツをインポートできませんでした。';

  @override
  String get exportCopied => 'デッキをエクスポートしました';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count分');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count日');
    return '$_temp0';
  }

  @override
  String get goalsTitle => '目標';

  @override
  String get goalsEmptyTitle => '何かを目指そう';

  @override
  String get goalsEmptyMessage => '日・週・月・長期の目標を立てて、実際の進み具合を記録しましょう。';

  @override
  String get goalNew => '新しい目標';

  @override
  String get goalEdit => '目標を編集';

  @override
  String get goalTitleHint => '何を達成したいですか？';

  @override
  String get goalPeriod => '期間';

  @override
  String get goalPeriodDaily => '毎日';

  @override
  String get goalPeriodWeekly => '毎週';

  @override
  String get goalPeriodMonthly => '毎月';

  @override
  String get goalPeriodLongTerm => '長期';

  @override
  String get goalTarget => '目標値';

  @override
  String get goalUnit => '単位';

  @override
  String get goalUnitHint => '例：ページ、km、時間';

  @override
  String get goalStatusActive => '進行中';

  @override
  String get goalStatusPaused => '一時停止中';

  @override
  String get goalStatusAchieved => '達成';

  @override
  String get goalPause => '目標を一時停止';

  @override
  String get goalResume => '目標を再開';

  @override
  String get goalMarkAchieved => '達成にする';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => '量';

  @override
  String get goalLogNote => 'メモ（任意）';

  @override
  String get goalHistory => '履歴';

  @override
  String get goalNoHistory => '記録した進捗がここに表示されます';

  @override
  String get goalLinkedTasks => '関連タスク';

  @override
  String get goalLinkedTasksHint => '関連タスクを1件完了するごとに、この目標に1が加算されます。';

  @override
  String get goalThisPeriod => 'この期間';

  @override
  String get habitsTitle => '習慣';

  @override
  String get habitsEmptyTitle => '毎日、小さな一歩を';

  @override
  String get habitsEmptyMessage => '習慣を作り、実行したらチェックしましょう。';

  @override
  String get habitNew => '新しい習慣';

  @override
  String get habitEdit => '習慣を編集';

  @override
  String get habitNameHint => '例：20ページ読む';

  @override
  String get habitDays => 'スケジュール';

  @override
  String get habitEveryDay => '毎日';

  @override
  String get habitTargetPerDay => '1日の回数';

  @override
  String get habitReminder => '毎日のリマインダー';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日連続',
      zero: '連続記録なし',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => '最長記録';

  @override
  String get habitCurrentStreak => '現在の連続記録';

  @override
  String get habitConsistency => '継続率';

  @override
  String get habitLast90 => '過去90日';

  @override
  String get habitPaused => '一時停止中';

  @override
  String get habitPause => '習慣を一時停止';

  @override
  String get habitResume => '習慣を再開';

  @override
  String get habitDoneToday => '今日は完了';

  @override
  String habitCountToday(int count, int target) {
    return '今日 $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '「$name」をチェック';
  }

  @override
  String get habitNotScheduledToday => '今日は予定なし';

  @override
  String get analyticsTitle => '分析';

  @override
  String get rangeWeek => '7日間';

  @override
  String get rangeMonth => '30日間';

  @override
  String get rangeQuarter => '90日間';

  @override
  String get statFocusTime => '集中時間';

  @override
  String get statSessions => 'セッション';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '完了 $completed · 途中終了 $interrupted';
  }

  @override
  String get statTasksDone => '完了したタスク';

  @override
  String get statCompletionRate => '期限内の完了';

  @override
  String get statHabitConsistency => '習慣の継続率';

  @override
  String get statRetention => 'カードの記憶率';

  @override
  String get statReviews => '復習';

  @override
  String get statActiveGoals => '進行中の目標';

  @override
  String get statEstimated => '完了した作業量（見積もり）';

  @override
  String get statEstimatedNote => '計測した時間ではなく、見積もりにもとづきます';

  @override
  String get statMeasuredNote => '集中セッションから計測';

  @override
  String get chartFocusByDay => '1日の集中時間（分）';

  @override
  String get chartTasksByDay => '1日の完了タスク数';

  @override
  String get chartTimeByProject => 'プロジェクト別の時間';

  @override
  String get chartProjectProgress => 'プロジェクトの進捗';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title：合計 $total、最高の日 $best';
  }

  @override
  String get analyticsNoData => 'まだデータが足りません';

  @override
  String get analyticsUnassigned => '未分類';

  @override
  String get searchHint => 'すべてを検索…';

  @override
  String get searchRecent => '最近の検索';

  @override
  String get searchClearRecent => '最近の検索を消去';

  @override
  String searchNoResults(String query) {
    return '「$query」の結果はありません';
  }

  @override
  String get searchStartTyping => 'タスク、メモ、カード、目標、予定などを検索できます。検索はこの端末内で行われます。';

  @override
  String get searchCatTask => 'タスク';

  @override
  String get searchCatProject => 'プロジェクト';

  @override
  String get searchCatNote => 'メモ';

  @override
  String get searchCatFlashcard => 'カード';

  @override
  String get searchCatDeck => 'デッキ';

  @override
  String get searchCatGoal => '目標';

  @override
  String get searchCatHabit => '習慣';

  @override
  String get searchCatEvent => '予定';

  @override
  String get searchCatSession => 'セッション';

  @override
  String get searchAll => 'すべて';

  @override
  String get assistantTitle => 'アシスタント';

  @override
  String get assistantIntro => '端末内で動く計画サポートです。要約や生成のために、好きなAIプロバイダーを接続することもできます。';

  @override
  String get assistantOnDevice => '端末内';

  @override
  String get assistantCloud => 'AIプロバイダー';

  @override
  String get assistantPlanDay => '今日の計画を立てる';

  @override
  String get assistantPlanDayDesc => '未完了のタスクを緊急度・優先度・見積もりで並べ、予定の合間に組み込みます。';

  @override
  String get assistantExtractTasks => 'メモからタスクを抽出';

  @override
  String get assistantExtractTasksDesc => 'メモ内のチェックリスト項目や行動を表す行を見つけてタスクにします。';

  @override
  String get assistantMakeCards => 'メモから単語カードを作成';

  @override
  String get assistantMakeCardsDesc => '「用語: 定義」や質問/答えの行をカードにします。';

  @override
  String get assistantSummarize => 'メモを要約';

  @override
  String get assistantSummarizeDesc => 'AIプロバイダーが必要です。メモは確認後にのみ送信されます。';

  @override
  String get assistantWorkload => '作業量の確認';

  @override
  String get assistantWorkloadDesc => '今週の見積もり作業量と空き時間を比べます。';

  @override
  String get assistantPlanEmpty => '計画するタスクはありません。ゆとりを楽しみましょう。';

  @override
  String assistantPlanCapacity(String time) {
    return '今日の空き集中時間：$time';
  }

  @override
  String get assistantPlanOverflow => '今日は入りきらないかもしれません：';

  @override
  String get assistantChooseNote => 'メモを選択';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のタスクが見つかりました',
      zero: 'このメモにタスクは見つかりませんでした',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count枚のカードが見つかりました',
      zero: 'このメモにカードは見つかりませんでした',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'デッキを選択';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return '見積もり作業：$estimated。空き時間：$free。';
  }

  @override
  String get assistantWorkloadOver => '使える時間より予定が多すぎます。優先度の低いタスクを移すことを検討しましょう。';

  @override
  String get assistantWorkloadOk => '計画は空き時間に収まっています。';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '未完了タスク$count件に見積もりがありません。',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AIプロバイダー';

  @override
  String get assistantProviderOff => 'プロバイダーは未接続です。端末内のツールはそのまま使えます。';

  @override
  String assistantProviderOn(String host) {
    return '$host に接続中';
  }

  @override
  String get assistantEndpoint => 'APIエンドポイント（HTTPS）';

  @override
  String get assistantModel => 'モデル';

  @override
  String get assistantApiKey => 'APIキー';

  @override
  String get assistantApiKeyStored => 'この端末に安全に保存されます';

  @override
  String get assistantHttpsOnly => 'HTTPSのエンドポイントのみ使用できます';

  @override
  String get assistantConsentTitle => 'この内容をAIプロバイダーに送信しますか？';

  @override
  String assistantConsentBody(String host) {
    return '選んだメモの本文がこの端末から送信され、$host で処理されます。それ以外は送信されません。';
  }

  @override
  String get assistantConsentAlways => 'このプロバイダーでは今後確認しない';

  @override
  String get assistantSend => '送信';

  @override
  String get assistantUnavailable => 'AIプロバイダーに接続できませんでした。後でもう一度お試しください。';

  @override
  String get assistantDisabledTitle => 'アシスタントはオフです';

  @override
  String get assistantDisabledMessage =>
      'オンにすると計画ツールを使えます。プロバイダーを接続して毎回確認しない限り、データが端末の外に出ることはありません。';

  @override
  String get assistantSummaryTitle => '要約';

  @override
  String get assistantRemoveProvider => 'プロバイダーを削除';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsGeneral => '一般';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsLanguageSystem => '端末の言語';

  @override
  String get settingsAppearance => '外観';

  @override
  String get settingsTheme => 'テーマ';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get themeSystem => 'システム';

  @override
  String get settingsReduceMotion => '動きを減らす';

  @override
  String get settingsReduceMotionDesc => 'アニメーションや動く背景を最小限にします';

  @override
  String get settingsFocus => '集中タイマー';

  @override
  String get settingsWorkLength => '集中の長さ';

  @override
  String get settingsShortBreak => '短い休憩';

  @override
  String get settingsLongBreak => '長い休憩';

  @override
  String get settingsLongBreakEvery => '長い休憩までの回数';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$countセッション');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => '休憩を自動で始める';

  @override
  String get settingsSound => '終了の音';

  @override
  String get settingsDailyFocusTarget => '1日の集中目標';

  @override
  String get settingsWeeklyFocusTarget => '1週間の集中目標';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsNotificationsEnable => 'リマインダーを許可';

  @override
  String get settingsQuietHours => 'おやすみ時間';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return '$startから$endまで、習慣・目標・復習のリマインダーは鳴りません';
  }

  @override
  String get settingsReviewReminder => '単語カードの復習リマインダー';

  @override
  String get settingsPermissionDenied => 'システム設定で通知がブロックされています。';

  @override
  String get settingsPrivacy => 'プライバシーとデータ';

  @override
  String get settingsPrivacyStatement => 'データはこの端末だけに暗号化して保存されます。アカウントも分析も追跡もありません。';

  @override
  String get settingsBackup => '暗号化バックアップを作成';

  @override
  String get settingsBackupDesc => '自分で決めたパスワードで保護されます';

  @override
  String get settingsRestore => 'バックアップから復元';

  @override
  String get settingsRestoreDesc => 'この端末のすべてのデータを置き換えます';

  @override
  String get settingsErase => 'すべてのデータを消去';

  @override
  String get settingsEraseDesc => 'この端末のすべてを完全に削除します';

  @override
  String get settingsEraseConfirmTitle => 'すべてのデータを消去しますか？';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'タスク、メモ、カード、目標、習慣、予定、セッションがすべて完全に削除されます。確認のため $word と入力してください。';
  }

  @override
  String get settingsEraseWord => '消去';

  @override
  String get settingsErased => 'すべてのデータを消去しました';

  @override
  String get backupPassword => 'バックアップのパスワード';

  @override
  String get backupPasswordConfirm => 'パスワードの確認';

  @override
  String backupPasswordHint(int count) {
    return '$count文字以上。忘れると復元できません。';
  }

  @override
  String get backupPasswordMismatch => 'パスワードが一致しません';

  @override
  String get backupPasswordShort => 'パスワードが短すぎます';

  @override
  String get backupCreating => 'バックアップを暗号化中…';

  @override
  String get backupCreated => 'バックアップを保存できます';

  @override
  String get backupRestoring => '確認して復元中…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件を復元しました');
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'パスワードが違うか、ファイルが変更されています。';

  @override
  String get backupNotABackup => 'このファイルはDeep Focusのバックアップではありません。';

  @override
  String get backupCorrupted => 'バックアップファイルが壊れています。';

  @override
  String get backupNewer => 'このバックアップは新しいバージョンのアプリで作成されています。先にアプリを更新してください。';

  @override
  String get backupRestoreConfirmTitle => 'すべてのデータを置き換えますか？';

  @override
  String get backupRestoreConfirmBody => 'この端末の現在のデータはすべてバックアップに置き換わります。復元に失敗した場合は何も変わりません。';

  @override
  String get settingsAbout => 'アプリについて';

  @override
  String settingsVersion(String version) {
    return 'バージョン $version';
  }

  @override
  String get settingsLicenses => 'オープンソースライセンス';

  @override
  String get settingsAssistant => 'アシスタント';

  @override
  String get settingsAssistantEnable => 'アシスタントを有効にする';

  @override
  String get settingsDashboard => 'ホームのセクション';

  @override
  String get settingsTrash => 'ゴミ箱';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes分';
  }

  @override
  String get trashEmpty => 'ゴミ箱は空です';

  @override
  String get trashHint => '削除した項目は、完全に削除するまでここに残ります。';

  @override
  String get trashTasks => 'タスク';

  @override
  String get trashNotes => 'メモ';

  @override
  String get onboardWelcomeTitle => '新しいワークスペースへようこそ';

  @override
  String get onboardWelcomeBody => 'タスク、集中、カレンダー、メモ、単語カード、目標、習慣。すべてをひとつに、美しくシンプルに。';

  @override
  String get onboardPrivateTitle => 'プライバシー重視の設計';

  @override
  String get onboardPrivateBody => 'すべてこの端末に暗号化して保存。アカウントなし。追跡なし。主導権はあなたにあります。';

  @override
  String get onboardLanguageTitle => '言語を選んでください';

  @override
  String get onboardNotifTitle => 'やさしいリマインダー';

  @override
  String get onboardNotifBody => 'タスクのリマインダーや集中の通知を受け取るには、通知を許可してください。いつでも変更できます。';

  @override
  String get onboardGetStarted => 'はじめる';

  @override
  String onboardStep(int current, int total) {
    return 'ステップ $current/$total';
  }

  @override
  String get notifChannelReminders => 'リマインダー';

  @override
  String get notifChannelRemindersDesc => 'タスク、予定、習慣、目標のリマインダー';

  @override
  String get notifChannelFocus => '集中タイマー';

  @override
  String get notifChannelFocusDesc => '集中セッションや休憩が終わったときの通知';

  @override
  String get notifTaskTitle => 'タスクのリマインダー';

  @override
  String get notifEventTitle => 'まもなく始まる予定';

  @override
  String notifEventBody(String title, String time) {
    return '$time $title';
  }

  @override
  String get notifFocusDoneTitle => '集中セッション完了';

  @override
  String get notifFocusDoneBody => 'よく頑張りました。休憩しましょう。';

  @override
  String get notifBreakDoneTitle => '休憩終了';

  @override
  String get notifBreakDoneBody => '次の集中セッションを始めますか？';

  @override
  String get notifHabitTitle => '習慣のリマインダー';

  @override
  String get notifReviewTitle => '単語カードの準備ができました';

  @override
  String get notifReviewBody => '短い復習で記憶をしっかり保ちましょう。';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours時間$minutes分';
  }

  @override
  String durationHours(int hours) {
    return '$hours時間';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes分';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => '月,火,水,木,金,土,日';

  @override
  String a11yProgress(int value) {
    return '進捗 $valueパーセント';
  }

  @override
  String a11yPriority(String level) {
    return '優先度：$level';
  }

  @override
  String a11yColor(int index) {
    return '色 $index';
  }

  @override
  String get analyticsRangeLabel => '期間';

  @override
  String get analyticsRefresh => '更新';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '期限のあるタスク$total件中$done件を期限内に完了';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$total件中$done件のタスクが完了';
  }

  @override
  String get analyticsNoProjects => '進行中のプロジェクトはありません';

  @override
  String get analyticsNoFocus => 'この期間の集中セッションはありません';

  @override
  String get analyticsHabitsNone => '進行中の習慣はありません';

  @override
  String get analyticsRetentionNote => '定着カードのうち思い出せた割合';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name：$value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return '空き時間は平日（$days）の$start〜$endから時刻のある予定を除いて計算します。見積もり作業量は、今後7日以内が期限の未完了タスクの見積もりの合計です。';
  }

  @override
  String get assistantWorkdaysMonFri => '月曜〜金曜';

  @override
  String get assistantWorkdaysSunThu => '日曜〜木曜';

  @override
  String get assistantWorkloadDayOff => '休日';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '予定 $estimated · 空き $free';
  }

  @override
  String assistantPlanRule(String end) {
    return '今から$endまで、今日の予定の合間に計画しました。期限切れのタスクを先に、その後は優先度・期限・見積もりの順です。';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start〜$end';
  }

  @override
  String get assistantScheduleBlocks => '時間ブロックとして予定に入れる';

  @override
  String get assistantScheduleConfirmTitle => 'カレンダーに時間ブロックを追加しますか？';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今日のカレンダーに時間ブロックを$count件追加します。',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '時間ブロックを$count件追加しました');
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'すでにカレンダーにあります';

  @override
  String get assistantPlanTimeline => '今日に収まります';

  @override
  String get assistantNoEstimate => '計画するには見積もりを追加してください';

  @override
  String get assistantNoNotes => 'まだメモがありません。先にメモを書いてください。';

  @override
  String get assistantNoteEmpty => 'このメモは空です。';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件のタスクを作成しました');
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count枚のカードを作成しました');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件作成',
      zero: '未選択',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint => '対象：未チェックのチェックボックス「- [ ]」と、TODO: または To do: で始まる行';

  @override
  String get assistantCardsHint => '対象：「用語: 定義」「用語 — 定義」と、Q: と A: の行のペア';

  @override
  String get assistantProviderHint => 'OpenAI互換のサービスなら何でも使えます。キーはこの端末の安全な保存領域に残り、バックアップには含まれません。';

  @override
  String get assistantEndpointHelp => '例：https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => '保存済みのキーを使う場合は空欄のままにします';

  @override
  String get assistantApiKeyRequired => 'APIキーを入力してください';

  @override
  String get assistantProviderSaved => 'プロバイダーを保存しました';

  @override
  String get assistantProviderRemoved => 'プロバイダーとキーを削除しました';

  @override
  String get assistantRemoveProviderConfirm => 'プロバイダーを削除し、保存したAPIキーをこの端末から消去しますか？';

  @override
  String get assistantAskEveryTime => 'リクエストのたびに確認する';

  @override
  String get assistantSummarizing => '要約中…';

  @override
  String assistantSummaryNote(String host) {
    return '$host が生成しました。頼る前に内容を確認してください。';
  }

  @override
  String get assistantCopy => 'コピー';

  @override
  String get assistantCopied => 'コピーしました';

  @override
  String get assistantConfigure => 'プロバイダーを設定';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start〜$end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start〜$end';
  }

  @override
  String get calendarSeriesMoved => 'このシリーズの予定をすべて移動しました';

  @override
  String get calendarEventReminder => 'リマインダー';

  @override
  String get calendarEventRepeat => '繰り返し';

  @override
  String get calendarEventColor => '色';

  @override
  String get calendarDefaultColor => '種類の色を使う';

  @override
  String get calendarEventLinkedTask => '関連タスク';

  @override
  String get calendarEventNoTask => '関連タスクなし';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '予定$count件',
      zero: '予定なし',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '期限のタスク$count件',
      zero: '期限のタスクなし',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date。$events、$tasks';
  }

  @override
  String get calendarNoEventsHint => '予定や時間ブロックを追加して、この日を計画しましょう。';

  @override
  String get calendarNow => '現在時刻';

  @override
  String get calendarRecurring => '繰り返し';

  @override
  String get calendarEventNotFound => 'この予定はもう存在しません';

  @override
  String get calendarEventLocalTime => '時刻は端末のタイムゾーンで表示されます';

  @override
  String get calendarEventDeleted => '予定をゴミ箱に移動しました';

  @override
  String get calendarConflictMarker => 'ほかの予定と重なっています';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title、$time';
  }

  @override
  String get calendarSeriesEditNote => '変更はこのシリーズのすべての予定に適用されます';

  @override
  String get calendarDragHintSeries => '繰り返しの予定をドラッグすると、シリーズ全体が移動します';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title、期限のタスク';
  }

  @override
  String get startupErrorTitle => 'データを開けませんでした';

  @override
  String get startupErrorLocked =>
      'この端末のデータの暗号化キーが利用できません。何も削除されていません。端末を再起動すると直ることがよくあります。最近端末を復元した場合は、暗号化バックアップからデータを復元してください。';

  @override
  String get startupErrorCipher => 'この端末は、アプリに必要な暗号化ストレージに対応していません。暗号化されずに保存されたものはありません。';

  @override
  String get startupErrorRetry => '再試行';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '復習期限のカードが$count枚あります');
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '期限 $count';
  }

  @override
  String flashcardsNewCount(int count) {
    return '新規 $count';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return '定着カード：$percent';
  }

  @override
  String get flashcardsValidationNonNegative => '0以上を入力してください';

  @override
  String get flashcardsSearchCards => 'カードを検索';

  @override
  String get flashcardsSearchEmpty => '検索に一致するカードはありません';

  @override
  String get flashcardsCardAdded => 'カードを追加しました';

  @override
  String flashcardsCardDueOn(String date) {
    return '期限 $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'クリップボードにコピー';

  @override
  String get flashcardsExportTitle => 'デッキをエクスポート';

  @override
  String get flashcardsDeleteDeck => 'デッキを削除';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating、次の復習は$interval後';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return '質問：$text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return '答え：$text';
  }

  @override
  String get flashcardsShowQuestion => '質問を表示';

  @override
  String get flashcardsImportField => 'インポートするカード';

  @override
  String get flashcardsNothingToStudy => '学習するものはありません';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '学習できるカード$count枚',
      zero: '準備できたカードはありません',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => '評価別';

  @override
  String get flashcardsDeckNotFound => 'このデッキはもう利用できません。';

  @override
  String get focusSessionDeleted => 'セッションを削除しました';

  @override
  String get focusDeleteConfirm => 'このセッションを履歴から削除しますか？その時間は目標に数えられなくなります。';

  @override
  String get focusUnlinkTask => '関連タスクを外す';

  @override
  String get focusNoteHint => '何に取り組みましたか？';

  @override
  String get focusTargetCaption => '保存したセッションから計測';

  @override
  String get focusModeLabel => 'タイマーモード';

  @override
  String focusUpNext(String phase) {
    return '次は：$phase';
  }

  @override
  String get focusStopwatchHint => '止めるまでカウントアップします。';

  @override
  String get focusOpenHint => '時間制限なし。終わったらいつでも止められます。';

  @override
  String get focusNotificationsDisabledInApp => '設定でリマインダーがオフになっています。セッション終了時にお知らせできません。';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode、$duration、$when';
  }

  @override
  String get goalsFilterAll => 'すべて';

  @override
  String get goalsFilterPeriod => '期間で絞り込み';

  @override
  String get goalsFilterStatus => '状態で絞り込み';

  @override
  String get goalsEmptyFiltered => 'この条件に合う目標はありません';

  @override
  String goalsDueOn(String date) {
    return '期限 $date';
  }

  @override
  String get goalsDeadline => '締め切り（任意）';

  @override
  String get goalsNoDeadline => '締め切りなし';

  @override
  String get goalsSetDeadline => '締め切りを設定';

  @override
  String get goalsRemoveDeadline => '締め切りを削除';

  @override
  String get goalsDescription => '説明（任意）';

  @override
  String get goalsTitleLabel => 'タイトル';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount$unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title、$progress、$status';
  }

  @override
  String get goalsReached => '目標値に到達';

  @override
  String get goalsLogged => '進捗を記録しました';

  @override
  String get goalsEntryDeleted => '記録を削除しました';

  @override
  String get goalsDeleteEntry => '記録を削除';

  @override
  String get goalsDeleted => '目標を削除しました';

  @override
  String get goalsMarkActive => '進行中にする';

  @override
  String get goalsNotFound => 'この目標はもう利用できません';

  @override
  String get goalsLinkTask => 'タスクを関連付け';

  @override
  String get goalsNoLinkedTasks => '関連タスクはまだありません';

  @override
  String get goalsUnlinkTask => '関連付けを解除';

  @override
  String get goalsTaskOpen => '未完了';

  @override
  String get goalsTaskLinked => 'タスクを関連付けました';

  @override
  String get goalsTaskUnlinked => '関連付けを解除しました';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件');
    return 'この期間の完了した関連タスク$_temp0を含みます';
  }

  @override
  String get goalsHistoryAllTime => '以前の期間の記録はここに残りますが、その期間にのみ数えられます。';

  @override
  String habitsTodaySummary(int done, int total) {
    return '今日 $total件中$done件完了';
  }

  @override
  String get habitsNothingToday => '今日予定されている習慣はありません';

  @override
  String get habitsDecrease => 'チェックを1回取り消す';

  @override
  String get habitsResetToday => '今日をリセット';

  @override
  String get habitsCheckInHint => '長押しで調整';

  @override
  String get habitsName => '名前';

  @override
  String get habitsColor => '色';

  @override
  String get habitsValidationDays => '1日以上選んでください';

  @override
  String habitsReminderAt(String time) {
    return '毎日 $time';
  }

  @override
  String get habitsSetReminder => 'リマインダーの時刻を設定';

  @override
  String get habitsRemoveReminder => 'リマインダーを削除';

  @override
  String get habitsReminderNote => '通知が許可されていれば、予定した日にリマインダーが表示されます。';

  @override
  String get habitsArchived => '習慣をアーカイブしました';

  @override
  String get habitsNotFound => 'この習慣はもう利用できません';

  @override
  String get habitsLast30 => '過去30日';

  @override
  String get habitsConsistencyNone => 'まだデータが足りません';

  @override
  String get habitsCalendar => 'チェック履歴';

  @override
  String get habitsCalendarHint => '日付をタップして修正できます。';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date：$count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return '過去90日のチェック。継続率 $percent。';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => '過去90日のチェック。まだデータが足りません。';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count日');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => '一時停止した日は連続記録に影響しません。';

  @override
  String get habitsListSeparator => '、';

  @override
  String get habitsArchive => '習慣をアーカイブ';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '1日$count回',
      one: '1日1回',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'その他のメモ';

  @override
  String get notesAllNotebooks => 'すべてのノート';

  @override
  String get notesNotebookName => 'ノート名';

  @override
  String get notesNotebookColor => '色';

  @override
  String get notesDeleteNotebook => 'ノートを削除';

  @override
  String get notesDeleteNotebookMessage => 'ノートは削除されます。中のメモは残り、「すべてのノート」に表示されます。';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => '大切なメモはピン留めすると上に残ります。';

  @override
  String get notesEmptyFavorites => 'お気に入りにしたメモがここに表示されます。';

  @override
  String get notesEmptyArchived => 'アーカイブしたメモがここに表示されます。';

  @override
  String get notesEmptyFiltered => 'この条件に合うメモはありません。';

  @override
  String get notesArchivedSnack => 'メモをアーカイブしました';

  @override
  String get notesUnarchivedSnack => 'メモを元に戻しました';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$total件中$done件完了';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => '書式';

  @override
  String get notesWrite => '編集';

  @override
  String get notesPreviewEmpty => 'プレビューする内容はまだありません。';

  @override
  String notesBacklinksEmpty(String title) {
    return 'このメモにリンクしているメモはまだありません。[[$title]] でこのメモにリンクできます。';
  }

  @override
  String get notesBacklinksNeedTitle => 'ほかのメモからリンクできるように、タイトルを付けましょう。';

  @override
  String get notesLinkedTasksEmpty => 'このメモに関連付けたタスクはありません。';

  @override
  String notesLinkMissing(String title) {
    return '「$title」というタイトルのメモはまだありません。';
  }

  @override
  String get notesNotFound => 'このメモはもう存在しません。';

  @override
  String notesCheckboxSemantics(String label) {
    return 'チェック項目：$label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'メモ「$title」を開く';
  }

  @override
  String get notesTaskDone => '完了';

  @override
  String get notifTimerDoneBody => '設定した時間になりました。';

  @override
  String get onboardingPrivatePointDevice => 'この端末にのみ暗号化して保存';

  @override
  String get onboardingPrivatePointAccount => 'アカウント不要';

  @override
  String get onboardingPrivatePointTracking => '分析なし、追跡なし';

  @override
  String get onboardingLanguageBody => '設定からいつでも変更できます。';

  @override
  String get onboardingNext => '次へ';

  @override
  String get projectsActive => '進行中';

  @override
  String get projectNameHint => '例：新製品の発売';

  @override
  String get projectGoalHint => '何ができたら完了ですか？';

  @override
  String get projectNoDeadline => '締め切りなし';

  @override
  String get projectTasksOpen => '未完了のタスク';

  @override
  String get projectTasksCompleted => '完了したタスク';

  @override
  String get projectAddTask => 'プロジェクトにタスクを追加';

  @override
  String get projectAddNote => '新しいプロジェクトメモ';

  @override
  String get projectLinkedNotes => 'メモ';

  @override
  String get projectNoTasks => 'このプロジェクトにはまだタスクがありません';

  @override
  String get projectArchivedBadge => 'アーカイブ済み';

  @override
  String get projectDeleted => 'プロジェクトをゴミ箱に移動しました';

  @override
  String get projectDeleteMessage => 'タスクはプロジェクトなしで一覧に残ります。';

  @override
  String projectSemantics(String name, int percent) {
    return '$name、$percentパーセント完了';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件の結果');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => '種類で絞り込み';

  @override
  String searchRecentTap(String query) {
    return '$query をもう一度検索';
  }

  @override
  String get settingsLanguageHint => 'アプリ全体の言語を選びます。言語名はその言語で表示されます。';

  @override
  String get settingsThemeHint => 'ライト、ダーク、またはシステムに合わせる';

  @override
  String settingsDecrease(String setting) {
    return '$settingを減らす';
  }

  @override
  String settingsIncrease(String setting) {
    return '$settingを増やす';
  }

  @override
  String get settingsQuietStart => '開始';

  @override
  String get settingsQuietEnd => '終了';

  @override
  String get settingsNotificationsHint => 'アプリ内の設定として保存します。システムから許可を求められることもあります。';

  @override
  String get settingsDashboardHint => 'ドラッグして並べ替えます。不要なセクションはオフにできます。';

  @override
  String settingsDashboardReorder(String section) {
    return '$sectionを並べ替え';
  }

  @override
  String get settingsDashboardReset => '元の順序に戻す';

  @override
  String get settingsAssistantDesc => '任意の計画サポートです。プロバイダーを接続しない限り、何も端末の外に出ません。';

  @override
  String get settingsAssistantSetup => 'アシスタントとプロバイダーの設定';

  @override
  String get settingsTrashDesc => '削除した項目を復元するか、完全に削除します';

  @override
  String get settingsEraseFirstBody => '元に戻せません。先に暗号化バックアップを作成することをおすすめします。';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word と入力';
  }

  @override
  String get settingsEraseFailed => 'データを消去できませんでした。何も変更されていません。';

  @override
  String get settingsAboutTagline => 'プライベートで、端末内で完結する生産性ワークスペース。';

  @override
  String get backupShowPassword => 'パスワードを表示';

  @override
  String get backupHidePassword => 'パスワードを隠す';

  @override
  String get backupSaved => 'バックアップを保存しました';

  @override
  String get backupFailed => 'バックアップを作成できませんでした。データは変更されていません。';

  @override
  String get backupReadFailed => '選んだファイルを読み込めませんでした。';

  @override
  String get backupRestoreFailed => '復元に失敗しました。何も変更されていません。';

  @override
  String get backupShareSubject => 'Deep Focus 暗号化バックアップ';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count日ごと', one: '毎日');
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count週間ごと',
      one: '毎週',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countか月ごと',
      one: '毎月',
    );
    String _temp3 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count年ごと', one: '毎年');
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
  String get repeatEndsLabel => '終了';

  @override
  String get repeatEndsAfter => '回数を指定';

  @override
  String get repeatCountLabel => '回数';

  @override
  String get reminderNone => 'リマインダーなし';

  @override
  String get reminderCustomTime => '日時を指定';

  @override
  String get a11yDecrease => '減らす';

  @override
  String get a11yIncrease => '増やす';

  @override
  String get pickTaskTitle => 'タスクを選択';

  @override
  String get pickTaskEmpty => '未完了のタスクはありません';

  @override
  String get tasksSearchTooltip => 'タスクを検索';

  @override
  String get tasksSectionOverdue => '期限切れ';

  @override
  String get tasksSectionToday => '今日';

  @override
  String get tasksRecurringSemantics => '繰り返し';

  @override
  String get tasksFilterPriorityAtLeast => '最低の優先度';

  @override
  String get tasksFilterCategory => 'カテゴリ';

  @override
  String get tasksFilterAnyCategory => 'すべてのカテゴリ';

  @override
  String get tasksFilterLabel => 'ラベル';

  @override
  String get tasksFilterAnyLabel => 'すべてのラベル';

  @override
  String get tasksFilterReset => '絞り込みをリセット';

  @override
  String get tasksViewByProject => 'プロジェクト別';

  @override
  String get tasksViewByPriority => '優先度別';

  @override
  String get tasksViewByCategory => 'カテゴリ別';

  @override
  String get tasksGroupNoCategory => 'カテゴリなし';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件のタスク');
    return '$_temp0待ち';
  }

  @override
  String get taskBlockedWarning => 'このタスクは未完了のタスク待ちです。それでも完了にしますか？';

  @override
  String get taskStartFocus => 'このタスクに集中';

  @override
  String get taskRemoveDate => '日付を削除';

  @override
  String get taskAllDay => '時刻を指定しない';

  @override
  String get taskSaved => 'タスクを保存しました';

  @override
  String get taskCreated => 'タスクを作成しました';

  @override
  String get taskReminderNeedsDue => '相対的なリマインダーを使うには期限を設定してください';

  @override
  String get taskSubtaskDetailsHint => 'サブタスク、チェック項目、ラベル、依存関係を追加するには、先にタスクを保存してください。';

  @override
  String get taskLabelName => 'ラベル名';

  @override
  String get taskMoreDetails => '詳細';

  @override
  String get taskPlanning => '計画';

  @override
  String get taskOrganize => '整理';

  @override
  String get taskBreakdown => '分解';

  @override
  String get trashDeleteTaskTitle => 'このタスクを完全に削除しますか？';

  @override
  String get trashDeleteNoteTitle => 'このメモを完全に削除しますか？';

  @override
  String get trashDeleteBody => '元に戻せません。';

  @override
  String get trashEmptyTitle => 'ゴミ箱を空にしますか？';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件が完全に削除されます。');
    return '$_temp0';
  }

  @override
  String get trashRestored => '復元しました';

  @override
  String get trashPurged => '完全に削除しました';

  @override
  String trashDeletedOn(String date) {
    return '$dateに削除';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count件');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => '読み上げ';

  @override
  String get flashcardsTtsUnavailable => 'この端末では音声読み上げを利用できません。';

  @override
  String get flashcardsTtsLanguageUnavailable => 'この言語の音声がインストールされていません。Androidの音声読み上げ設定で追加してください。';

  @override
  String get calendarAgenda => '予定リスト';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'ひらめき',
      'rocket': 'ロケット',
      'book': '本',
      'work': '仕事',
      'home': '家',
      'heart': 'ハート',
      'code': 'コード',
      'palette': 'パレット',
      'fitness': 'フィットネス',
      'school': '学校',
      'travel': '旅行',
      'money': '貯金',
      'other': 'アイコン',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'その他の項目';

  @override
  String get cardFieldExample => '例文';

  @override
  String get cardFieldExplanation => '解説';

  @override
  String get cardFieldPronunciation => '発音';

  @override
  String get cardFieldNotes => '補足メモ';

  @override
  String get projectMilestones => 'マイルストーン';

  @override
  String get milestoneAdd => 'マイルストーンを追加';

  @override
  String get milestoneEdit => 'マイルストーンを編集';

  @override
  String get milestoneTitleLabel => 'マイルストーン';

  @override
  String get milestoneNoDate => '日付なし';

  @override
  String get milestonesEmpty => 'マイルストーンはまだありません。日付付きの節目を追加すると、カレンダーでプロジェクトを追えます。';

  @override
  String get milestoneDeleted => 'マイルストーンを削除しました';

  @override
  String milestoneDoneA11y(String title) {
    return 'マイルストーン「$title」を完了にする';
  }

  @override
  String calendarMilestone(String project) {
    return 'マイルストーン · $project';
  }

  @override
  String get tasksViewInbox => '受信箱';

  @override
  String get tasksViewArchived => 'アーカイブ';

  @override
  String get tasksEmptyInbox => 'プロジェクトも日付もないタスクはここに入ります。時間のあるときに整理しましょう。';

  @override
  String get tasksEmptyArchived => 'アーカイブしたタスクは、一覧やリマインダーから外れてここに保管されます。';

  @override
  String get taskArchivedBadge => 'アーカイブ済み';

  @override
  String get taskStatusInProgress => '進行中';

  @override
  String get taskArchived => 'タスクをアーカイブしました';

  @override
  String get taskUnarchived => 'タスクをアーカイブから戻しました';

  @override
  String get focusPlanTitle => 'セッションプラン';

  @override
  String focusPlanTotal(String duration) {
    return '合計 $duration';
  }

  @override
  String get focusPlanRounds => '集中セッション';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => '長い休憩までの回数';

  @override
  String get focusPlanSkipLastBreak => '最後の休憩をスキップ';

  @override
  String get focusPlanAutoBreaks => '休憩を自動で始める';

  @override
  String get focusPlanAutoFocus => '休憩後に集中を自動で始める';

  @override
  String get focusPlanSave => 'プランを保存';

  @override
  String get focusPlanNameHint => '例：試験対策';

  @override
  String get focusPlanSaved => 'プランを保存しました';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name：集中$work分、休憩$rest分';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$labelを減らす';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$labelを増やす';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'セッション $current/$total';
  }

  @override
  String get focusSeriesComplete => 'シリーズ完了。よく頑張りました！';

  @override
  String get filterAll => 'すべて';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added件インポート · 重複$duplicates件をスキップ · 不完全な行$invalid件';
  }

  @override
  String get flashcardsSuspend => 'カードを保留';

  @override
  String get flashcardsResume => 'カードを再開';

  @override
  String get flashcardsSuspended => 'カードを保留しました：出題されません';

  @override
  String get flashcardsResumed => 'カードを再開しました';

  @override
  String get flashcardsSuspendedFilter => '保留中';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$total枚中$shown枚';
  }

  @override
  String get flashcardsImportFile => 'ファイルから';

  @override
  String get speechTitle => '読み上げ';

  @override
  String get speechAppLanguage => 'アプリの言語';

  @override
  String get speechFrontLanguage => '表の言語';

  @override
  String get speechBackLanguage => '裏の言語';

  @override
  String get speechRepeat => '読み上げを繰り返す';

  @override
  String get speechRate => '速度';

  @override
  String get speechAutoRead => '質問を自動で読み上げる';

  @override
  String get speechHint => 'この端末にインストールされた音声をオフラインで使います。音声がない言語はお知らせし、ほかの音声で代用はしません。';

  @override
  String get studyHowTitle => 'どのように学習しますか？';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count枚を復習');
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'すべてのカードを練習（スケジュールは変わりません）';

  @override
  String get studyPracticeMistakes => '最近の間違いを練習';

  @override
  String get studyPracticeHint => '練習ではカードの期限は変わりません。復習するとスケジュールが更新されます。';

  @override
  String get studyModeClassic => '通常';

  @override
  String get studyModeReverse => '逆向き';

  @override
  String get studyModeMixed => '両方向';

  @override
  String get studyModeTyped => '答えを入力';

  @override
  String get studyModeChoice => '選択式';

  @override
  String get studyModeListening => 'リスニング';

  @override
  String get studyPractice => '練習';

  @override
  String get studyNoMistakes => 'このデッキに最近の間違いはありません。すばらしい！';

  @override
  String get studyTypeAnswer => '答えを入力してください';

  @override
  String get studyCheck => '確認';

  @override
  String get studyKnewIt => 'わかった';

  @override
  String get studyDidntKnow => 'わからなかった';

  @override
  String studyMistakes(int count) {
    return '間違い（$count）';
  }

  @override
  String get studyRepeatMistakes => '間違えたカードを繰り返す';

  @override
  String get studyCorrect => '正解';

  @override
  String get studyAlmost => '惜しい — つづりを確認しましょう';

  @override
  String get studyWrong => '不正解';

  @override
  String get studyShowText => 'テキストを表示';

  @override
  String get flashcardsImportFileFailed => 'ファイルを開けませんでした。代わりに内容を貼り付けることができます。';

  @override
  String get studyNoMatchingCards => 'この条件に合うカードはまだありません。';

  @override
  String get studyPracticeNew => '新規のみ';

  @override
  String get studyPracticeHard => '難しいカード';

  @override
  String get studyPracticeFavorites => 'お気に入り';

  @override
  String get studySessionSize => '1回のカード枚数';

  @override
  String get studySessionAll => 'すべて';

  @override
  String get studyOrder => '順序';

  @override
  String get studyOrderDue => '期限超過が長い順';

  @override
  String get studyOrderRandom => 'ランダム';

  @override
  String get studyOrderHardest => '難しい順';

  @override
  String get flashcardsHard => '難しい';

  @override
  String get flashcardsFavorites => 'お気に入り';

  @override
  String get flashcardsFavorite => 'お気に入りに追加';

  @override
  String get flashcardsUnfavorite => 'お気に入りから外す';

  @override
  String get flashcardsDuplicate => '複製';

  @override
  String get flashcardsMoveTo => 'デッキへ移動';

  @override
  String get flashcardsNoOtherDeck => '先に別のデッキを作成してください。';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count枚のカードを移動しました',
      one: 'カードを移動しました',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'タグを追加';

  @override
  String get flashcardsTagHint => '例：動詞';

  @override
  String flashcardsSelected(int count) {
    return '$count件選択中';
  }

  @override
  String get flashcardsSelectAll => '表示中をすべて選択';

  @override
  String flashcardsSelectCard(String front) {
    return '$frontを選択';
  }

  @override
  String flashcardsRecall(String value) {
    return '想起率 $value';
  }

  @override
  String get flashcardsDuplicateTitle => '重複の可能性';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'このデッキにはすでに「$front」→「$back」があります。それでも保存しますか？';
  }

  @override
  String get flashcardsSaveAnyway => 'それでも保存';

  @override
  String get flashcardsStats => '統計';

  @override
  String get flashcardsStatTotal => 'カード';

  @override
  String get flashcardsStatLearning => '学習中';

  @override
  String get flashcardsStatMatureCaption => '21日以上記憶';

  @override
  String get flashcardsStatReviewsToday => '今日の復習';

  @override
  String get flashcardsStatCorrect => '正解数';

  @override
  String flashcardsStatLastDays(int days) {
    return '過去$days日';
  }

  @override
  String get flashcardsStatForget => '忘却率';

  @override
  String get flashcardsStatForgetCaption => '学習済みカードの「もう一度」';

  @override
  String get flashcardsStatRecall => '現在の想起率';

  @override
  String get flashcardsStatRecallCaption => 'FSRSの推定、復習済みカード';

  @override
  String flashcardsStatActivity(int count) {
    return '1日の復習数 · 合計$count';
  }

  @override
  String get flashcardsStatHistory => '最近の回答';

  @override
  String get flashcardsStatNoHistory => 'まだ復習していません。デッキを学習すると、ここに進捗が表示されます。';

  @override
  String flashcardsSpeakField(String field) {
    return '$fieldを読み上げ';
  }

  @override
  String get speechVoice => '音声';

  @override
  String get speechVoiceDefault => '自動';

  @override
  String get speechVoiceOnline => 'インターネットが必要';

  @override
  String get speechTest => '音声を試す';

  @override
  String get importNext => 'プレビュー';

  @override
  String get importPreviewTitle => '列を項目に割り当て';

  @override
  String get importIgnoreColumn => '無視';

  @override
  String importColumn(int n) {
    return '列$n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return 'カード$ready枚の準備完了 · 不完全な行$invalid件はスキップされます';
  }

  @override
  String get importNeedFrontBack => 'どの列を表と裏にするか選んでください。';

  @override
  String get actionMoveUp => '上へ移動';

  @override
  String get actionMoveDown => '下へ移動';

  @override
  String get flashcardsLayoutTitle => 'カードのレイアウト';

  @override
  String get flashcardsLayoutHint => 'このデッキの追加項目の名前変更、非表示、並べ替えができます。カードの内容は変わりません。';

  @override
  String flashcardsLayoutShow(String field) {
    return '学習中に$fieldを表示';
  }

  @override
  String get flashcardsLayoutStepReveal => '答えを段階的に表示';

  @override
  String get flashcardsLayoutStepRevealHint => 'まず裏面が表示され、追加項目はタップするごとに開きます。';

  @override
  String flashcardsRevealNext(String field) {
    return '$fieldを表示';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'このファイルは${mb}MBを超えています。';
  }

  @override
  String get flashcardsImage => '画像';

  @override
  String get flashcardsAudio => '音声';

  @override
  String get flashcardsAddImage => '画像を追加';

  @override
  String get flashcardsAddAudio => '音声を追加';

  @override
  String get flashcardsPlayAudio => '録音を再生';

  @override
  String get flashcardsAudioUnavailable => 'この録音はこの端末では再生できません。';

  @override
  String get flashcardsCustomFields => 'あなたの項目';

  @override
  String get flashcardsTemplates => 'テンプレート';

  @override
  String flashcardsNewFieldName(int n) {
    return '項目$n';
  }

  @override
  String get flashcardsAddField => '項目を追加';

  @override
  String get flashcardsFieldName => '項目名';

  @override
  String get flashcardsFieldLangDefault => '面の言語';

  @override
  String get flashcardsTemplateConfirm => 'テンプレートは項目の表示方法を決め、その項目を追加します。カードと既存の項目はそのまま残ります。';

  @override
  String get flashcardsApplyTemplate => '適用';

  @override
  String get templateVocabulary => '単語';

  @override
  String get templateTwoTranslations => '2つの訳がある単語';

  @override
  String get templateQuestionAnswer => '質問と答え';

  @override
  String get templateDefinition => '用語と定義';

  @override
  String get templateGrammar => '文法ルール';

  @override
  String get templateFieldPlural => '複数形';

  @override
  String get templateFieldTranslation2 => '2つ目の訳';

  @override
  String get templateFieldSynonyms => '類義語';

  @override
  String get templateFieldRule => 'ルール';

  @override
  String get deckCategory => 'レベルまたはテーマ';

  @override
  String get deckCategoryHint => '例：A1、医学';

  @override
  String get flashcardsSearchAll => 'すべてのカードを検索';

  @override
  String get flashcardsSearchAllHint => '単語、訳、例文、メモ、タグ…';

  @override
  String get flashcardsAllDecks => 'すべてのデッキ';

  @override
  String get flashcardsAllLanguages => 'すべての言語';

  @override
  String get flashcardsLangUnset => '言語未設定';

  @override
  String get flashcardsLevelUnset => 'レベル・テーマなし';

  @override
  String get flashcardsByLanguage => '言語別の進捗';

  @override
  String get flashcardsByLevel => 'レベル・テーマ別の進捗';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return 'デッキ$decks · カード$cards · 定着$mature · 期限$due · 正解$correct（30日）';
  }

  @override
  String get flashcardsRecord => '録音';

  @override
  String get flashcardsRecording => '録音中…';

  @override
  String get flashcardsRecordStop => '停止して保存';

  @override
  String get flashcardsMicDenied => 'マイクへのアクセスがオフです。録音するにはシステム設定で許可してください。';

  @override
  String get flashcardsRecordFailed => 'この端末では録音できません。';

  @override
  String get soundsTitle => 'サウンド';

  @override
  String get soundsNature => '自然';

  @override
  String get soundsNoise => '集中ノイズ';

  @override
  String get soundRain => '雨';

  @override
  String get soundStorm => '雷雨';

  @override
  String get soundRiver => '川';

  @override
  String get soundOcean => '波の音';

  @override
  String get soundFire => 'たき火';

  @override
  String get soundForest => '森の鳥';

  @override
  String get soundNight => '夏の夜';

  @override
  String get soundWhite => 'ホワイトノイズ';

  @override
  String get soundPink => 'ピンクノイズ';

  @override
  String get soundBrown => 'ブラウンノイズ';

  @override
  String get soundsPlay => '再生';

  @override
  String get soundsSleep => 'スリープタイマー';

  @override
  String get soundsSleepOff => 'オフ';

  @override
  String soundsSleepAt(String time) {
    return '$timeに停止';
  }

  @override
  String soundsMixFull(int count) {
    return '同時に再生できるのは$countつまでです。';
  }

  @override
  String get soundsHint => 'サウンドをタップして開始。いくつか組み合わせて、それぞれの音量を調整できます。';

  @override
  String get soundsMixer => 'ミックス';

  @override
  String soundsVolumeOf(String name) {
    return '$nameの音量';
  }

  @override
  String get soundsChannel => '自然の音';

  @override
  String get settingsEndTone => 'タイマー終了の音';

  @override
  String get toneGentle => 'やさしいビープ';

  @override
  String get toneBeeps => 'ビープ';

  @override
  String get toneWood => '木を叩く音';

  @override
  String get toneBird => '鳥の声';

  @override
  String get toneStream => '小川';

  @override
  String get toneSystem => '端末の通知音';

  @override
  String get speechOnPhone => 'この端末';

  @override
  String get speechAllLanguages => 'すべての言語';

  @override
  String get speechSearchLanguage => '言語を検索';

  @override
  String get speechGetVoices => '音声をさらにダウンロード';

  @override
  String get speechGetVoicesHint => '音声のない言語は、端末の音声設定からダウンロードできます。';

  @override
  String get speechSettingsFailed => 'この端末の音声設定を開けませんでした。';

  @override
  String get speechVoiceMissing => '音声未インストール';

  @override
  String get speechPause => '繰り返しの間隔';

  @override
  String speechSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String get speechExample => '答えと一緒に例文を読み上げる';

  @override
  String get flashListen => '聞く';

  @override
  String get flashListenNext => '次のカード';

  @override
  String get flashListenEmpty => '聞くカードがありません。';

  @override
  String get flashViewTable => '表';

  @override
  String get flashViewCards => 'カード';

  @override
  String get flashSwapSides => '列を入れ替え';

  @override
  String get flashSort => '並べ替え';

  @override
  String get flashSortNewest => '新しい順';

  @override
  String get flashSortAlpha => '五十音・アルファベット順';

  @override
  String get flashSortDue => '期限が近い順';

  @override
  String get flashSortHard => '難しい順';

  @override
  String get flashPasteCards => 'カードを貼り付け';

  @override
  String get flashClipboardEmpty => 'クリップボードにテキストがありません。';

  @override
  String get flashMenuAdd => 'カードを追加';

  @override
  String get flashMenuDeck => 'デッキ';

  @override
  String get flashToday => '今日';

  @override
  String get flashStudyNow => '学習';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count枚回答',
      zero: '回答したカードはありません',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => '森の雨';

  @override
  String get autoBackupTitle => '自動バックアップ';

  @override
  String get autoBackupDesc => '毎日この端末に作成し、最新7件を保存';

  @override
  String get autoBackupHint =>
      'このコピーはこの端末に保存され、アプリをアンインストールすると削除されます。新しい端末に移るときは「バックアップ」でファイルを保存してください。';

  @override
  String get autoBackupNone => '自動バックアップはまだありません。最初のバックアップは今日作成されます。';

  @override
  String get autoBackupRestore => '復元';

  @override
  String autoBackupConfirm(String date) {
    return '現在のデータをすべて$dateのバックアップに置き換えますか？';
  }

  @override
  String get autoBackupRestored => '復元しました。';

  @override
  String get errorLogTitle => 'エラーログ';

  @override
  String get errorLogHint =>
      '問題が起きたときはここに記録されます。記録されるのはエラーの種類とコード内の場所だけで、あなたの内容は含まれません。不具合の修正に役立てるため共有できます。';

  @override
  String get errorLogEmpty => 'エラーは記録されていません。';

  @override
  String get errorLogClear => '消去';

  @override
  String get soundsWithFocus => '集中セッションと一緒に再生';

  @override
  String get soundsWithFocusHint => 'ミックスは集中セッションと同時に始まり、休憩中は一時停止します。';

  @override
  String get soundsSavedMixes => '保存したミックス';

  @override
  String get soundsSaveMix => 'このミックスを保存';

  @override
  String get soundsMixNameHint => '名前（例：雨の図書館）';

  @override
  String soundsDeleteMix(String name) {
    return 'ミックス「$name」を削除しますか？';
  }

  @override
  String get settingsReviewReminderHint => '1日1回、復習するカードがあるときだけ';

  @override
  String get settingsReviewTime => 'リマインダーの時刻';

  @override
  String get shortcutFocus => '集中';

  @override
  String get shortcutNewTask => '新しいタスク';

  @override
  String get shortcutReview => 'カードを復習';

  @override
  String get shortcutSounds => '自然の音';

  @override
  String get myDayTitle => '1日を始める';

  @override
  String get myDayHint => '今日の予定をひと目で確認し、ワンタップで集中';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今日のタスク$count件',
      zero: '今日のタスクはありません',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => '今日の予定はもうありません';

  @override
  String myDayNextEvent(String title, String time) {
    return '次：$time $title';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '残りの習慣$count件',
      zero: '習慣はすべて完了',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => '集中セッションから始める';

  @override
  String get hijriMonth1 => 'ムハッラム';

  @override
  String get hijriMonth2 => 'サファル';

  @override
  String get hijriMonth3 => 'ラビーウ・アル＝アウワル';

  @override
  String get hijriMonth4 => 'ラビーウ・アッ＝サーニー';

  @override
  String get hijriMonth5 => 'ジュマーダー・アル＝ウーラー';

  @override
  String get hijriMonth6 => 'ジュマーダー・アル＝アーヒラ';

  @override
  String get hijriMonth7 => 'ラジャブ';

  @override
  String get hijriMonth8 => 'シャアバーン';

  @override
  String get hijriMonth9 => 'ラマダーン';

  @override
  String get hijriMonth10 => 'シャウワール';

  @override
  String get hijriMonth11 => 'ズー・アル＝カアダ';

  @override
  String get hijriMonth12 => 'ズー・アル＝ヒッジャ';

  @override
  String hijriDate(int day, String month, int year) {
    return 'ヒジュラ暦$year年$month$day日';
  }

  @override
  String get settingsHijri => 'ヒジュラ暦';

  @override
  String get settingsHijriHint => 'カレンダーとホーム画面に表示（ウンム・アル＝クラー暦）';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count日');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '今日 $goal枚中$done枚';
  }

  @override
  String get studyGoalReached => '今日の目標を達成。よく頑張りました！';

  @override
  String get studyWeekTitle => '今週のまとめ';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '7日間で$count枚回答',
      zero: '7日間で回答したカードはありません',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7日間で$duration集中';
  }

  @override
  String studyStreakLine(int current, int best) {
    return '連続：$current · 最長：$best';
  }

  @override
  String get studyGoalTitle => '1日の目標（カード）';

  @override
  String get studyGoalOff => 'オフ';

  @override
  String get focusDndTitle => '集中中はおやすみモード';

  @override
  String get focusDndHint => '集中セッションのたびにオンになり、休憩でオフに戻ります';

  @override
  String get focusDndNeedsAccess => '使うには端末の設定でアクセスを許可してください';

  @override
  String get voiceInput => '音声で入力';

  @override
  String get voiceInputPrompt => 'お話しください';

  @override
  String get voiceInputUnavailable =>
      'この端末では音声入力を使えません。音声サービス（例：Googleの音声認識と合成）をインストールするか、オンにしてください。';

  @override
  String get prayerFajr => 'ファジュル';

  @override
  String get prayerSunrise => '日の出';

  @override
  String get prayerDhuhr => 'ズフル';

  @override
  String get prayerAsr => 'アスル';

  @override
  String get prayerMaghrib => 'マグリブ';

  @override
  String get prayerIsha => 'イシャー';

  @override
  String get prayerMethodMwl => 'ムスリム世界連盟';

  @override
  String get prayerMethodUmmAlQura => 'ウンム・アル＝クラー（マッカ）';

  @override
  String get prayerMethodEgypt => 'エジプト総合庁';

  @override
  String get prayerMethodJordan => 'ヨルダン、ワクフ省';

  @override
  String get prayerMethodKarachi => 'イスラム科学大学（カラチ）';

  @override
  String get prayerMethodIsna => '北米イスラム協会（ISNA）';

  @override
  String get prayerMethodGulf => '湾岸地域';

  @override
  String get prayerMethodKuwait => 'クウェート';

  @override
  String get prayerMethodQatar => 'カタール';

  @override
  String get prayerMethodTurkey => 'トルコ、宗務庁';

  @override
  String get prayerMethodSingapore => 'シンガポール、マレーシア、インドネシア';

  @override
  String get prayerMethodFrance => 'フランス（12°）';

  @override
  String get prayerMethodRussia => 'ロシア、宗務局';

  @override
  String prayerNotifTitle(String name) {
    return '$nameの時刻です';
  }

  @override
  String prayerNotifBody(String time) {
    return '礼拝の時刻 · $time';
  }

  @override
  String get prayerTitle => '礼拝時刻';

  @override
  String get prayerOffHint => '都市を選ぶと礼拝時刻が表示されます。時刻は端末内で計算され、位置情報へのアクセスは不要です。';

  @override
  String get prayerChooseCity => '都市を選ぶ';

  @override
  String get prayerCity => '都市';

  @override
  String get prayerCitySearch => '都市を検索';

  @override
  String get prayerMethod => '計算方法';

  @override
  String get prayerHanafiAsr => 'ハナフィー派のアスル（遅い時刻）';

  @override
  String get prayerReminders => '礼拝の時刻ごとに通知';

  @override
  String get prayerPauseFocus => '礼拝の時刻に集中を一時停止';

  @override
  String get prayerPauseFocusHint => '進行中のセッションは一時停止します。礼拝後に再開してください';

  @override
  String get prayerTurnOff => '礼拝時刻をオフにする';

  @override
  String get prayerAccuracyNote => '計算した時刻は地元のモスクと数分ずれることがあります。';

  @override
  String prayerNext(String name, String time) {
    return '$time $name';
  }

  @override
  String get importAnkiNewFormat =>
      'このAnkiファイルは最新の形式です。Ankiで「古いバージョンのAnkiをサポート」をオンにして再度エクスポートし、そのファイルをインポートしてください。';

  @override
  String get importTemplate => 'スプレッドシートのテンプレート';

  @override
  String get importTemplateFront => 'りんご';

  @override
  String get importTemplateBack => '丸い果物';

  @override
  String get importTemplateExample => '私は毎日りんごを食べます。';

  @override
  String get importTemplateTag => '食べ物';

  @override
  String get starterTitle => 'スターターデッキ';

  @override
  String get starterHint => '追加すればすぐに学習を試せます。あとで編集や削除もできます。';

  @override
  String get starterAdd => '追加';

  @override
  String get starterWords => '日常の英単語（アラビア語訳）';

  @override
  String get starterCapitals => '世界の首都';

  @override
  String get starterElements => '元素記号';

  @override
  String get settingsAccent => 'アクセントカラー';

  @override
  String get accentViolet => 'バイオレット';

  @override
  String get accentBlue => 'ブルー';

  @override
  String get accentTeal => 'ティール';

  @override
  String get accentGreen => 'グリーン';

  @override
  String get accentRose => 'ローズ';

  @override
  String get accentAmber => 'アンバー';

  @override
  String get settingsFlashTextSize => '単語カードの文字サイズ';

  @override
  String get settingsFlashTextSample => '例文';

  @override
  String get widgetStartFocus => 'タップして集中';

  @override
  String widgetFocusUntil(String time) {
    return '$timeまで集中';
  }

  @override
  String get widgetNoCardsDue => 'カード：すべて完了';

  @override
  String get faqMyDayQ => '「1日を始める」とは？';

  @override
  String get faqMyDayA =>
      '1日に1回、ホーム画面に表示されます。今日のタスク、次の予定、残りの習慣、復習するカードを確認し、ワンタップで集中セッションを始められます。アプリのアイコンを長押しするとクイック操作、ホーム画面ウィジェットを追加すると集中時間と復習カードを確認できます。';

  @override
  String get faqTasksQ => 'リマインダー付きのタスクを追加するには？';

  @override
  String get faqTasksA =>
      'ホームの「新しいタスク」か、タスクの＋をタップします。タイトルを入力するかマイクで話し、期限・時刻・リマインダーを設定します。期限切れのタスクが一番上に表示されます。';

  @override
  String get faqFocusQ => '集中タイマーの使い方は？';

  @override
  String get faqFocusA =>
      'ポモドーロ、カウントダウン、フリーのいずれかを選んで開始を押します。休憩は自動で続けることもできます。設定で終了音の選択、集中中のおやすみモード、各セッションでの自然の音の再生ができます。';

  @override
  String get faqSoundsQ => '自然の音を組み合わせられますか？';

  @override
  String get faqSoundsA =>
      '本物の録音を最大6つオンにし、それぞれ音量を調整して、名前を付けてミックスを保存できます。バックグラウンドでも再生が続き、スリープタイマーで止められます。音楽は使いません。';

  @override
  String get faqCalendarQ => 'カレンダーにヒジュラ暦を表示できますか？';

  @override
  String get faqCalendarA =>
      'はい。ヒジュラ暦（ウンム・アル＝クラー暦）はアラビア語では自動で表示され、ほかの言語でも設定でオンにできます。予定、期限のあるタスク、プロジェクトのマイルストーンが一緒に表示されます。';

  @override
  String get faqFlashcardsQ => '復習ではどのカードが出るのですか？';

  @override
  String get faqFlashcardsA =>
      'よく覚えているカードは間隔をあけて、忘れたカードはすぐに再び出題されます（間隔反復）。回答ごとに「もう一度」「難しい」「普通」「簡単」で評価します。1日の目標を設定し、「今日」カードで連続記録を保ちましょう。デッキに試験日を設定すると、残り日数と1日に覚える新規カードの数がわかります。「自分の順序」で並べ替えるとカードをドラッグでき、どちらの面でもスピーカーをタップすると読み上げます。速度や繰り返しは「読み上げ」メニューで設定します。';

  @override
  String get faqImportQ => 'AnkiやExcelからカードを取り込めますか？';

  @override
  String get faqImportA =>
      'はい。デッキで「インポート」を選び、Anki（.apkg）、Excel（.xlsx）、CSVのファイルを選んで列を割り当てます。パソコンでカードを作るには「スプレッドシートのテンプレート」を使います。Ankiファイル内の画像や音声はインポートされません。';

  @override
  String get faqNotesQ => 'メモでは何ができますか？';

  @override
  String get faqNotesA =>
      'チェックリストや書式を使って自由に書き、大切なメモをピン留めやお気に入りにし、タグを付けたりタスクと関連付けたりできます。マイクボタンで音声入力もできます。新しいメモはテンプレート（講義、本の要約、日記、週間計画）から始められ、画像ボタンで写真を追加できます。';

  @override
  String get faqHabitsQ => '習慣の連続記録はどう数えますか？';

  @override
  String get faqHabitsA =>
      '予定した日に習慣の目標を達成すると、その日が数えられます。習慣を一時停止しても連続記録は途切れません。習慣ごとにリマインダーの時刻を設定できます。';

  @override
  String get faqGoalsQ => '目標の進捗はどう記録しますか？';

  @override
  String get faqGoalsA => '目標に目標値と単位を設定し、進捗を記録します。カードには現在の位置と締め切りまでの残りが表示されます。';

  @override
  String get faqProjectsQ => 'プロジェクトは何のためにありますか？';

  @override
  String get faqProjectsA => 'タスクをプロジェクトにまとめ、日付付きのマイルストーンを追加して全体の進捗を追えます。マイルストーンはカレンダーにも表示されます。';

  @override
  String get faqInsightsQ => '分析では何が見られますか？';

  @override
  String get faqInsightsA => '日ごと・週ごとの集中時間、完了したタスク、学習の記録を、やさしい提案とともに表示します。すべて端末内で計算されます。';

  @override
  String get faqSpacesQ => 'すべてのセクションはどこですか？';

  @override
  String get faqSpacesA =>
      '「スペース」にはアプリのすべての機能（メモ、デッキ、習慣、目標、プロジェクト、サウンドなど）がまとまっているので、メインのバーはシンプルなままです。';

  @override
  String get faqBackupQ => 'データはどのようにバックアップされますか？';

  @override
  String get faqBackupA =>
      'アプリは毎日自動でこの端末に暗号化したコピーを作り、最新7件を保存します。設定から、パスワードで保護したバックアップファイルを書き出して別の端末で復元することもできます。';

  @override
  String get faqPrayerQ => '礼拝時刻はどう計算されますか？';

  @override
  String get faqPrayerA =>
      '設定 → 礼拝時刻で都市を選びます。時刻はその地域の方法で端末内で計算され、計算方法とアスルの学派は変更できます。礼拝ごとに通知を受け取れ、進行中の集中セッションは一時停止します。';

  @override
  String get faqPrivacyQ => 'データはどこに保存されますか？';

  @override
  String get faqPrivacyA =>
      'あなたの端末内の暗号化されたデータベースだけです。アカウントも追跡もありません。インターネットは、任意のアシスタントなど自分でオンにした機能だけが使います。';

  @override
  String get faqAssistantQ => 'アシスタントとは？';

  @override
  String get faqAssistantA => '設定で自分のAIサービスに接続して使う任意のアシスタントです。初期設定ではオフで、メモの本文を送る前に必ず確認します。';

  @override
  String get tourPlanTitle => '1日を計画する';

  @override
  String get tourPlanBody => 'タスク、カレンダー、習慣をひとつの落ち着いた場所に。毎朝「1日を始める」からスタートしましょう。';

  @override
  String get tourFocusTitle => '深く集中する';

  @override
  String get tourFocusBody => '本物の自然の音、おやすみモード、やさしい終了音で時間を区切って集中できます。';

  @override
  String get tourLearnTitle => 'しっかり身につける';

  @override
  String get tourLearnBody => '間隔反復の単語カード、多言語の読み上げ、AnkiやExcelからのインポート。';

  @override
  String get helpTitle => 'ヘルプとよくある質問';

  @override
  String get helpOpen => '開く';

  @override
  String get helpTour => 'ツアーを見る';

  @override
  String get tourNext => '次へ';

  @override
  String get tourDone => 'はじめる';

  @override
  String get transferColTitle => 'タイトル';

  @override
  String get transferColNotes => 'メモ';

  @override
  String get transferColBody => '本文';

  @override
  String get transferColDue => '期限';

  @override
  String get transferColPriority => '優先度（0-3）';

  @override
  String get transferColDone => '完了';

  @override
  String get transferColProject => 'プロジェクト';

  @override
  String get transferColCategory => 'カテゴリ';

  @override
  String get transferTitle => 'インポートとエクスポート';

  @override
  String get transferSaveAs => '保存形式';

  @override
  String get transferImport => 'ファイルからインポート';

  @override
  String get transferImportTasksHint =>
      'Excel、CSV、またはWordの表。列：タイトル、期限（2026-12-31）、優先度0-3、完了、プロジェクト、メモ。アプリにすでにあるタスクはスキップされます。';

  @override
  String get transferImportNotesHint =>
      'Word、Markdown、テキストファイルはメモになります。ExcelやCSVは1行につき1件のメモ（タイトル、本文）。';

  @override
  String get transferSaved => 'ファイルを保存しました';

  @override
  String get transferFailed => 'ファイルを作成できませんでした。何も変更されていません。';

  @override
  String get transferUnsupported => 'このファイルはここでは読み込めません。Excel、CSV、Word、Markdown、テキストを使ってください。';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added件追加しました',
      zero: '追加する新しい項目はありません',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'テキスト';

  @override
  String get transferAllNotes => 'すべてのメモ';

  @override
  String get transferThisNote => 'このメモ';

  @override
  String get transferDeckFormats => 'Excel、Word、PDFで保存';

  @override
  String get faqFilesQ => 'Excel、Word、PDFファイルを使えますか？';

  @override
  String get faqFilesA =>
      'はい。タスクとメモの上部にインポート・エクスポートボタン（2つの矢印）があり、各デッキのメニューにもあります。Excel、CSV、Word、PDFで保存したり、Excel、CSV、Word、Markdown、テキストファイルを取り込んだりできます。列名はアプリのどの言語でもよく、保存したファイルはいつでも再インポートできます。';

  @override
  String get tplLecture => '講義';

  @override
  String get tplBook => '本の要約';

  @override
  String get tplJournal => '日記';

  @override
  String get tplWeek => '週間計画';

  @override
  String get tplLectureBody => '## 要点\n- \n\n## 疑問\n- [ ] \n\n## まとめ\n';

  @override
  String get tplBookBody => '## 主なテーマ\n\n## 学んだこと\n- \n\n## 引用\n> \n\n## 実践すること\n- [ ] \n';

  @override
  String get tplJournalBody => '## 感謝していること\n- \n\n## 今日の集中\n- [ ] \n\n## メモ\n';

  @override
  String get tplWeekBody =>
      '## 今週の目標\n- [ ] \n\n### 土曜日\n- [ ] \n\n### 日曜日\n- [ ] \n\n### 月曜日\n- [ ] \n\n### 火曜日\n- [ ] \n\n### 水曜日\n- [ ] \n\n### 木曜日\n- [ ] \n\n### 金曜日\n- [ ] \n';

  @override
  String get tplHint => 'テンプレートから始める';

  @override
  String get noteImage => '画像';

  @override
  String get noteAddImage => '画像を追加';

  @override
  String get noteImageUnreadable => 'このファイルはアプリで読み込める画像ではありません。';

  @override
  String get noteImageTooLarge => 'この画像は大きすぎます。';

  @override
  String get examSet => '試験日を設定';

  @override
  String get examDate => '試験日';

  @override
  String get examToday => '今日は試験日です。頑張って！';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '試験まであと$count日',
      one: '試験は明日',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '1日に新規カードを$count枚覚える');
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'すべてのカードを学習済み、復習を続けましょう';

  @override
  String examRaiseLimit(int count) {
    return '1日に新規カードを$count枚表示';
  }

  @override
  String get backupDriveHint => 'オンラインにもコピーを残すには、次に開く保存画面でGoogleドライブ（またはほかのクラウドアプリ）を選んでください。';

  @override
  String get flashShareDeck => 'デッキを友達と共有';

  @override
  String get flashSortManual => '自分の順序（ドラッグ）';

  @override
  String get flashReorderHint => 'ハンドルを押さえたままカードをドラッグすると移動できます。';

  @override
  String get flashReorderNeedsAll => 'カードをドラッグするには検索と絞り込みを解除してください。';

  @override
  String get flashDragHandle => 'ドラッグして移動';

  @override
  String get reportTitle => '月間レポート';

  @override
  String get reportFocus => '集中時間';

  @override
  String reportSessions(int count) {
    return '$countセッション';
  }

  @override
  String reportBestDay(String day, String time) {
    return '最高の日：$day（$time）';
  }

  @override
  String reportActiveDays(int count) {
    return '活動日数 $count日';
  }

  @override
  String get reportCards => '復習したカード';

  @override
  String reportCardsKnown(String percent) {
    return '記憶率 $percent';
  }

  @override
  String get reportTasks => '完了したタスク';

  @override
  String get reportHabits => '習慣のチェック';

  @override
  String get reportEmpty => '今月はまだ記録がありません。';

  @override
  String get reportSave => 'PDFまたはWordで保存';

  @override
  String get reportPrevMonth => '前の月';

  @override
  String get reportNextMonth => '次の月';

  @override
  String get careTitle => '端末とデータのお手入れ';

  @override
  String get storageTitle => 'ストレージ';

  @override
  String get storageSubtitle => '容量を使っているものと、使われていない画像の整理';

  @override
  String get storagePictures => 'メモ内の画像';

  @override
  String get storageCardMedia => 'カード内の画像と音声';

  @override
  String get storageText => 'メモの本文';

  @override
  String get storageFree => '端末の空き容量';

  @override
  String get storageLow => '端末の容量がほぼいっぱいです。バックアップやリマインダーが動き続けるよう、空き容量を確保してください。';

  @override
  String storageUnused(int count, String size) {
    return '使われていない画像 $count件（$size）';
  }

  @override
  String get storageNoUnused => '使われていない画像はありません。すっきりしています。';

  @override
  String get storageClean => '使われていない画像を削除';

  @override
  String storageCleaned(int count) {
    return '画像を$count件削除しました';
  }

  @override
  String get storageHint => 'ゴミ箱内のメモも含め、どのメモにも表示されていない画像だけが未使用と判定されます。';

  @override
  String get batteryTitle => 'リマインダーを確実に届ける';

  @override
  String get batterySubtitle => '一部の端末はバックグラウンドのアプリを停止します。お使いの端末を確認しましょう。';

  @override
  String get batteryStatusOk => '省電力機能はこのアプリを制限していません。リマインダーとサウンドは時間どおりに届くはずです。';

  @override
  String get batteryStatusLimited =>
      '省電力機能がバックグラウンドでこのアプリを停止するため、リマインダーやサウンドが遅れたり届かなかったりすることがあります。';

  @override
  String get batteryOpen => 'バッテリー設定を開く';

  @override
  String get batteryOpenApp => 'アプリの設定を開く';

  @override
  String get batteryGeneric => 'バッテリー設定でこのアプリを選び、「制限なし」（または「最適化しない」）に設定してください。';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO：セキュリティ › 権限 › 自動起動でこのアプリをオンにし、バッテリーセーバーを「制限なし」に設定します。';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus：バッテリー › このアプリでバックグラウンド動作と自動起動を許可し、最近使ったアプリの一覧でアプリをロックします。';

  @override
  String get batterySamsung =>
      'Samsung：バッテリー › バックグラウンドでの使用制限で、このアプリを「スリープ中のアプリ」と「ディープスリープ中のアプリ」から外します。';

  @override
  String get batteryHuawei =>
      'Huawei / Honor：アプリ起動 › このアプリ › 手動で管理を選び、自動起動、二次起動、バックグラウンドでの実行を許可します。';

  @override
  String get batteryVivo => 'Vivo / iQOO：バッテリー › バックグラウンドの電力消費でこのアプリを許可し、権限で自動起動をオンにします。';

  @override
  String get whatsNewTitle => '新機能';

  @override
  String get whatsNewSubtitle => '最新の変更をひとことで';

  @override
  String get whatsNewDone => 'OK';

  @override
  String get whatsNewOrderTitle => 'カードを好きな順に並べ替え';

  @override
  String get whatsNewOrderBody => 'デッキで 並べ替え › 自分の順序 を選び、ハンドルを押さえてドラッグします。';

  @override
  String get whatsNewSpeechTitle => 'カードの両面にスピーカー';

  @override
  String get whatsNewSpeechBody => 'タップすると単語や訳を読み上げます。速度、繰り返し、音声は復習メニューにあります。言語は本文から自動で判別します。';

  @override
  String get whatsNewReportTitle => '月間レポート';

  @override
  String get whatsNewReportBody => '分析でレポートのアイコンをタップすると、その月の記録を見てPDFやWordで保存できます。';

  @override
  String get whatsNewCareTitle => '端末とデータのお手入れ';

  @override
  String get whatsNewCareBody => '設定に、画像の整理ができるストレージページと、端末メーカー別のバッテリーガイドが加わりました。';

  @override
  String get whatsNewSoundTitle => 'より穏やかなサウンド';

  @override
  String get whatsNewSoundBody => '自然の音がやわらかく静かになり、画像カードもきれいになりました。';

  @override
  String autoBackupCheckOk(String date) {
    return '$dateに確認：最新のバックアップは正しく開けます。';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$dateに確認：壊れたバックアップが見つかったため、新しいものに置き換えました。';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$dateに確認：最新のバックアップを開けませんでした。設定からバックアップファイルを保存してください。';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'いつもは$timeごろに学習しています';
  }

  @override
  String get smartReviewTimeUse => 'この時刻にする';

  @override
  String get widgetNewNote => '新しいメモ';

  @override
  String get noteConnections => 'タグ、リンク、タスク';

  @override
  String get navCards => 'カード';

  @override
  String get studyAnswerWay => '回答方法';

  @override
  String get studyMorePractice => '追加の練習';

  @override
  String get studySessionSettings => 'セッションの設定';

  @override
  String get focusAdjustTitle => 'セッション';

  @override
  String get focusPresetsTitle => 'プリセット';

  @override
  String get focusPresetStudy => '勉強';

  @override
  String get focusPresetDeep => 'ディープワーク';

  @override
  String get focusPresetQuick => '短いスプリント';

  @override
  String get focusPresetReading => '読書';

  @override
  String get focusPresetWorkout => 'トレーニング';

  @override
  String get focusAdjustMinutes => '集中の長さ';

  @override
  String get focusAdjustBreak => '休憩の長さ';

  @override
  String get focusAdjustRounds => 'ラウンド数';

  @override
  String get focusRoundsOpen => '無制限';

  @override
  String focusMinutesShort(String n) {
    return '$n分';
  }

  @override
  String get focusTapToAdjust => 'タップして時間を変更';

  @override
  String get flashArrangeDecks => 'デッキを並べ替え';

  @override
  String get flashDeckActions => 'デッキのオプション';

  @override
  String get starterBrowse => 'すぐ使えるデッキ';

  @override
  String get starterBrowseHint => 'ワンタップで追加して学習を始めましょう';

  @override
  String get dashOpenDecks => 'カードを開く';

  @override
  String speechVoiceNumber(String n) {
    return '音声$n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'いい流れです。$m分休憩しますか？';
  }

  @override
  String get focusFlowBreakStart => '休憩を始める';

  @override
  String tasksFinishAt(String time) {
    return '今始めれば$timeにすべて終わります';
  }

  @override
  String get focusCalmPacing => '穏やかなペース';

  @override
  String get focusCalmPacingHint => '分単位とリングだけを表示し、秒は刻みません';

  @override
  String get focusFlipHint => '端末を伏せると開始します';

  @override
  String get focusImmersive => '没入モード';

  @override
  String get focusImmersiveBlack => '完全な黒（バッテリー節約）';

  @override
  String get focusFlipToFocus => '伏せて集中';

  @override
  String get focusFlipToFocusHint => '没入モードで、伏せると開始、持ち上げると一時停止';

  @override
  String get guardTitle => 'ディストラクションガード';

  @override
  String get guardSubtitle => '集中中は気が散るアプリを一時停止';

  @override
  String get guardSwitch => '気が散るアプリを一時停止';

  @override
  String get guardSwitchHint => '集中セッション中とタイムガードの時間帯';

  @override
  String get guardNeedsAccess => 'ユーザー補助のスイッチが必要です。タップしてオンにしてください';

  @override
  String get guardDisclosureTitle => 'ガードのしくみ';

  @override
  String get guardDisclosureBody =>
      '選んだアプリを一時停止するため、Deep FocusはAndroidのユーザー補助サービスを使って、どのアプリが開いているかを確認します。「ショートとリールを閉じる」がオンのときは、画面にショート動画のプレーヤーがあるかどうかも確認します。\n\nテキストは読み取らず、見たものは保存せず、どこにも送信しません。すべて端末内で完結します。ユーザー補助の設定からいつでもオフにできます。';

  @override
  String get guardAgree => '同意して設定を開く';

  @override
  String get guardModeGentle => 'やさしい';

  @override
  String get guardModeStrict => '厳格';

  @override
  String get guardGentleHint => '5秒間の深呼吸のあと、あなたが選びます';

  @override
  String get guardStrictHint => '選んだアプリは集中時間が終わるまで閉じたまま';

  @override
  String get guardApps => '一時停止するアプリ';

  @override
  String get guardAppsAllowed => '許可するアプリ';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count個のアプリ',
      zero: 'まだ選んでいません',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => '選んだアプリだけ許可';

  @override
  String get guardAllowlistHint => 'ほかのアプリはすべて一時停止。通話、設定、キーボードはいつでも使えます';

  @override
  String get guardShorts => 'ショートとリールを閉じる';

  @override
  String get guardShortsHint => 'ガードがオンのときはいつでも。ベストエフォート：これらのアプリはよく変わります';

  @override
  String get guardSchedule => 'タイムガード';

  @override
  String get guardScheduleHint => '学校や仕事など、決まった曜日と時間帯もガード';

  @override
  String get guardFrom => '開始';

  @override
  String get guardTo => '終了';

  @override
  String get guardSearchApps => 'アプリを検索';

  @override
  String get guardNoApps => 'アプリが見つかりません';

  @override
  String get guardPrivacy => '端末内だけで動作：ガードが見るのは開いているアプリだけで、中身は見ず、何も送信しません。';

  @override
  String get guardBreathe => '吸って…吐いて';

  @override
  String get guardQuestion => 'このアプリは今必要ですか？';

  @override
  String get guardBackToFocus => '集中に戻る';

  @override
  String get guardOpenFive => '5分間だけ開く';

  @override
  String get guardStrictBody => '集中時間が終わるまで、このアプリは一時停止中です。';

  @override
  String get guardShortsClosed => 'ガードがオンの間、ショート動画は閉じられます';

  @override
  String get faqGuardQ => '集中中に気が散るアプリを止めるには？';

  @override
  String get faqGuardA =>
      '集中 → タイマーの設定 → ディストラクションガード を開きます。アプリを選び、「やさしい」（5秒の深呼吸と「このアプリは今必要ですか？」という質問）か「厳格」（閉じたまま）を選びます。集中セッション中と、タイムガードで設定した曜日・時間帯に動作します。「選んだアプリだけ許可」にするとほかはすべて一時停止しますが、通話、設定、キーボードはいつでも使えます。初回はAndroidのユーザー補助設定でガードをオンにするよう求められます。見るのは開いているアプリだけで、何も送信しません。';

  @override
  String notesMovedToNotebook(String name) {
    return '$nameに移動しました';
  }

  @override
  String get notesDragHint => 'メモを長押ししてノートにドラッグ';

  @override
  String get guardReviewCards => '代わりにカードを復習';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'カード$count枚があなたを待っています',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => '緊急時：10秒長押し';

  @override
  String guardEmergencyHolding(Object n) {
    return 'そのまま押し続けて… $n';
  }

  @override
  String get guardWeekTitle => '今週';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '一時停止$count回');
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '集中に戻った回数 $count回');
    return '$_temp0';
  }

  @override
  String get wordsTitle => '言葉の変更';

  @override
  String get wordsSubtitle => 'アプリ内のどの文言も自分の言葉に変えられます';

  @override
  String get wordsHint => '文言をタップして変更します。変更はこの言語だけに適用され、バックアップにも含まれます。';

  @override
  String get wordsSearch => '文言を検索';

  @override
  String get wordsChangedOnly => '変更したものだけ';

  @override
  String wordsOriginal(String text) {
    return '元の文言：$text';
  }

  @override
  String get wordsReset => '元に戻す';

  @override
  String get wordsResetAll => 'すべての言葉をリセット';

  @override
  String get wordsResetAllConfirm => 'この言語のすべての文言が元に戻ります。';

  @override
  String get wordsNone => '文言が見つかりません';

  @override
  String get settingsLanguageSearch => '言語を検索';

  @override
  String get settingsLanguageNoMatch => '一致する言語がありません';

  @override
  String get soundsMyMusic => '自分の音声';

  @override
  String get soundsMusicHint => 'スマートフォンの音声ファイルを再生します。コピーやアップロードは行いません。';

  @override
  String get soundsChooseMusic => '音声を選ぶ';

  @override
  String get soundsRemoveMusic => '音声を削除';

  @override
  String get wordPacksTitle => '単語パック';

  @override
  String get wordPacksHint => 'テーマ別の単語リストです。必要な言語だけをダウンロードし、カードは自由に編集・削除できます。';

  @override
  String get wordPacksFailed => 'ダウンロードできませんでした。接続を確認してください。';

  @override
  String get wordPacksEmpty => 'この言語の単語はまだ準備中です。';
}
