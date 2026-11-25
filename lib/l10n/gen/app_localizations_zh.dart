// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => '首页';

  @override
  String get navTasks => '任务';

  @override
  String get navFocus => '专注';

  @override
  String get navCalendar => '日历';

  @override
  String get navSpaces => '空间';

  @override
  String get moduleProjects => '项目';

  @override
  String get moduleNotes => '笔记';

  @override
  String get moduleFlashcards => '闪卡';

  @override
  String get moduleGoals => '目标';

  @override
  String get moduleHabits => '习惯';

  @override
  String get moduleAnalytics => '洞察';

  @override
  String get moduleSearch => '搜索';

  @override
  String get moduleAssistant => '助手';

  @override
  String get moduleSettings => '设置';

  @override
  String get moduleTrash => '回收站';

  @override
  String get spacesSubtitle => '你整理的一切，尽在一处';

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => '取消';

  @override
  String get actionDelete => '删除';

  @override
  String get actionEdit => '编辑';

  @override
  String get actionDone => '完成';

  @override
  String get actionAdd => '添加';

  @override
  String get actionCreate => '创建';

  @override
  String get actionClose => '关闭';

  @override
  String get actionBack => '返回';

  @override
  String get actionUndo => '撤销';

  @override
  String get actionRestore => '恢复';

  @override
  String get actionRetry => '重试';

  @override
  String get actionContinue => '继续';

  @override
  String get actionSkip => '跳过';

  @override
  String get actionArchive => '归档';

  @override
  String get actionUnarchive => '取消归档';

  @override
  String get actionPin => '置顶';

  @override
  String get actionUnpin => '取消置顶';

  @override
  String get actionMore => '更多选项';

  @override
  String get actionClear => '清除';

  @override
  String get actionSearch => '搜索';

  @override
  String get actionFilter => '筛选';

  @override
  String get actionSort => '排序';

  @override
  String get actionShare => '分享';

  @override
  String get actionImport => '导入';

  @override
  String get actionExport => '导出';

  @override
  String get actionPause => '暂停';

  @override
  String get actionResume => '继续';

  @override
  String get actionStart => '开始';

  @override
  String get actionStop => '停止';

  @override
  String get actionComplete => '完成';

  @override
  String get actionReopen => '重新打开';

  @override
  String get actionDeleteForever => '永久删除';

  @override
  String get actionEmptyTrash => '清空回收站';

  @override
  String get actionSelect => '选择';

  @override
  String get actionNone => '无';

  @override
  String get actionLink => '关联';

  @override
  String get actionUnlink => '取消关联';

  @override
  String get actionCustomize => '自定义';

  @override
  String get actionReset => '重置';

  @override
  String get actionOpen => '打开';

  @override
  String get actionEnable => '启用';

  @override
  String get actionDisable => '停用';

  @override
  String get actionAllow => '允许';

  @override
  String get actionNotNow => '以后再说';

  @override
  String get actionPreview => '预览';

  @override
  String get actionLog => '记录进度';

  @override
  String get stateLoading => '加载中…';

  @override
  String get stateSaving => '保存中…';

  @override
  String get stateSaved => '已保存';

  @override
  String get stateUnsaved => '有未保存的更改';

  @override
  String get errorGenericTitle => '出了点问题';

  @override
  String get errorGenericMessage => '你的数据安全无虞，请重试。';

  @override
  String get errorLoadFailed => '无法加载此内容。';

  @override
  String get errorSaveFailed => '保存失败，你的更改仍保留在此。';

  @override
  String get validationRequired => '此项为必填项';

  @override
  String get validationTitleRequired => '请输入标题';

  @override
  String get validationNameRequired => '请输入名称';

  @override
  String get validationTooLong => '内容过长';

  @override
  String get validationEndBeforeStart => '结束时间必须晚于开始时间';

  @override
  String get validationStartAfterDue => '开始日期必须早于截止日期';

  @override
  String get validationPositiveNumber => '请输入大于零的数字';

  @override
  String get validationDependencyCycle => '这会造成循环依赖';

  @override
  String get validationInvalidRepeat => '此重复规则无效';

  @override
  String get deletedItem => '已移至回收站';

  @override
  String get restoredItem => '已恢复';

  @override
  String get untitled => '无标题';

  @override
  String get noProject => '无项目';

  @override
  String get confirmDeleteTitle => '永久删除？';

  @override
  String get confirmDeleteMessage => '此操作无法撤销。';

  @override
  String get greetingMorning => '早上好';

  @override
  String get greetingAfternoon => '下午好';

  @override
  String get greetingEvening => '晚上好';

  @override
  String get dashboardTitle => '今天';

  @override
  String get dashFocusToday => '今日专注';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => '开始专注';

  @override
  String get dashFocusRunning => '专注进行中';

  @override
  String get dashTodayTasks => '今日到期';

  @override
  String get dashAgenda => '日程';

  @override
  String get dashHabits => '今日习惯';

  @override
  String get dashGoals => '目标';

  @override
  String get dashReview => '复习';

  @override
  String get dashRecentNotes => '最近笔记';

  @override
  String get dashInsight => '建议';

  @override
  String get dashSeeAll => '查看全部';

  @override
  String get dashNoTasksToday => '今天没有到期任务，一路畅通。';

  @override
  String get dashNoEvents => '今天没有更多日程了';

  @override
  String get dashNoHabits => '创建一个习惯，在这里追踪';

  @override
  String get dashNoGoals => '设定一个目标，查看你的进度';

  @override
  String get dashNoNotes => '你最近的笔记会显示在这里';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 张卡片待复习',
      zero: '没有待复习的卡片',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => '立即复习';

  @override
  String get dashCustomizeTitle => '首页模块';

  @override
  String get dashCustomizeHint => '选择要在首页显示的内容。';

  @override
  String get dashSectionFocus => '专注';

  @override
  String get dashSectionToday => '今日到期任务';

  @override
  String get dashSectionAgenda => '日程';

  @override
  String get dashSectionHabits => '习惯';

  @override
  String get dashSectionGoals => '目标';

  @override
  String get dashSectionReview => '闪卡复习';

  @override
  String get dashSectionNotes => '最近笔记';

  @override
  String get dashSectionInsight => '建议';

  @override
  String get quickAddTask => '新建任务';

  @override
  String get quickAddNote => '新建笔记';

  @override
  String get quickAddEvent => '新建日程';

  @override
  String get quickStartFocus => '专注';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '你有 $count 个逾期任务，从最重要的那个开始吧。',
      one: '你有 1 个逾期任务，先重新安排或完成它吧。',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return '距离今日专注目标还差 $minutes 分钟。';
  }

  @override
  String get insightCardsDue => '趁记忆犹新，现在就复习到期的闪卡吧。';

  @override
  String get insightAllClear => '一切进展顺利。规划一下明天，或者安心休息片刻。';

  @override
  String insightHabitStreak(String habit) {
    return '保持连续记录：今天的「$habit」还未完成。';
  }

  @override
  String get focusTitle => '专注';

  @override
  String get focusModePomodoro => '番茄钟';

  @override
  String get focusModeCountdown => '倒计时';

  @override
  String get focusModeCountUp => '正计时';

  @override
  String get focusModeOpen => '不限时';

  @override
  String get focusPhaseWork => '专注';

  @override
  String get focusPhaseShortBreak => '短休息';

  @override
  String get focusPhaseLongBreak => '长休息';

  @override
  String get focusReady => '准备好就开始吧';

  @override
  String get focusPaused => '已暂停';

  @override
  String get focusRunning => '专注中';

  @override
  String get focusElapsed => '已用时间';

  @override
  String get focusRemaining => '剩余时间';

  @override
  String get focusDuration => '时长';

  @override
  String get focusLinkTask => '关联任务';

  @override
  String get focusLinkedTask => '正在进行';

  @override
  String get focusNoTask => '未关联任务';

  @override
  String focusCycle(int current, int total) {
    return '第 $current 轮，共 $total 轮';
  }

  @override
  String get focusSkipBreak => '跳过休息';

  @override
  String get focusStartBreak => '开始休息';

  @override
  String get focusStartNext => '开始下一轮专注';

  @override
  String get focusSessionComplete => '专注时段已完成';

  @override
  String get focusSessionStopped => '专注时段已保存';

  @override
  String focusSessionSummary(String duration) {
    return '你专注了 $duration。';
  }

  @override
  String get focusAddNote => '为本次专注添加备注';

  @override
  String get focusHistory => '历史记录';

  @override
  String get focusNoHistory => '已完成的专注时段会显示在这里';

  @override
  String get focusTargets => '目标';

  @override
  String get focusDailyTarget => '每日目标';

  @override
  String get focusWeeklyTarget => '每周目标';

  @override
  String get focusOutcomeCompleted => '已完成';

  @override
  String get focusOutcomeInterrupted => '提前结束';

  @override
  String get focusRecovered => '应用关闭期间，你的专注时段仍在继续。';

  @override
  String get focusCompletedWhileAway => '应用关闭期间有一个专注时段已结束，并已保存。';

  @override
  String get focusNotificationsOff => '通知已关闭。专注时段结束时你不会收到提醒。';

  @override
  String get focusBatteryHint => '部分设备会在后台暂停应用。计时依然准确，但提醒可能延迟。允许不受限制的电池使用，以确保提醒及时送达。';

  @override
  String get focusOpenSettings => '打开设置';

  @override
  String get focusStopConfirmTitle => '结束本次专注？';

  @override
  String get focusStopConfirmMessage => '已专注的时间会被保存。';

  @override
  String get focusDiscard => '放弃';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes 分钟');
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase，剩余 $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase，已用 $time';
  }

  @override
  String get focusDeleteSession => '删除专注时段';

  @override
  String get tasksTitle => '任务';

  @override
  String get tasksViewToday => '今天';

  @override
  String get tasksViewUpcoming => '即将到来';

  @override
  String get tasksViewAll => '全部';

  @override
  String get tasksViewOverdue => '已逾期';

  @override
  String get tasksViewCompleted => '已完成';

  @override
  String get tasksQuickAddHint => '添加任务…';

  @override
  String get tasksEmptyTitle => '全部搞定';

  @override
  String get tasksEmptyMessage => '添加一个任务，开始规划你的一天。';

  @override
  String get tasksEmptyCompleted => '已完成的任务会显示在这里。';

  @override
  String get taskNew => '新建任务';

  @override
  String get taskEdit => '编辑任务';

  @override
  String get taskTitleLabel => '标题';

  @override
  String get taskTitleHint => '需要做什么？';

  @override
  String get taskDescriptionLabel => '描述';

  @override
  String get taskNotesLabel => '备注';

  @override
  String get taskPriority => '优先级';

  @override
  String get priorityNone => '无';

  @override
  String get priorityLow => '低';

  @override
  String get priorityMedium => '中';

  @override
  String get priorityHigh => '高';

  @override
  String get priorityUrgent => '紧急';

  @override
  String get taskDueDate => '截止日期';

  @override
  String get taskStartDate => '开始日期';

  @override
  String get taskReminder => '提醒';

  @override
  String get taskRepeat => '重复';

  @override
  String get taskProject => '项目';

  @override
  String get taskCategory => '类别';

  @override
  String get taskCategoryHint => '例如：工作、家庭、学习';

  @override
  String get taskEstimate => '预估时长';

  @override
  String get taskEstimateMinutes => '预估时长（分钟）';

  @override
  String get taskTracked => '已记录专注';

  @override
  String get taskLabels => '标签';

  @override
  String get taskAddLabel => '新标签';

  @override
  String get taskChecklist => '清单';

  @override
  String get taskAddChecklistItem => '添加条目';

  @override
  String get taskSubtasks => '子任务';

  @override
  String get taskAddSubtask => '添加子任务';

  @override
  String get taskDependencies => '被以下任务阻塞';

  @override
  String get taskAddDependency => '添加阻塞任务';

  @override
  String get taskLinkedNotes => '关联笔记';

  @override
  String get taskSetTime => '设置时间';

  @override
  String get taskNoDate => '无日期';

  @override
  String get taskCompleted => '任务已完成';

  @override
  String get taskNextOccurrence => '已创建下一次重复任务';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskDueOn(String date) {
    return '$date 截止';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '已逾期 $days 天');
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '将“$title”标记为已完成';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '将“$title”标记为未完成';
  }

  @override
  String get sortSmart => '智能';

  @override
  String get sortDueDate => '截止日期';

  @override
  String get sortPriority => '优先级';

  @override
  String get sortCreated => '最新';

  @override
  String get sortTitle => '标题';

  @override
  String get filterAllProjects => '所有项目';

  @override
  String get filterAnyPriority => '任意优先级';

  @override
  String get filterTitle => '筛选和排序';

  @override
  String get dateToday => '今天';

  @override
  String get dateTomorrow => '明天';

  @override
  String get dateYesterday => '昨天';

  @override
  String get dateNextWeek => '下周';

  @override
  String get repeatNever => '不重复';

  @override
  String get repeatDaily => '每天';

  @override
  String get repeatWeekdays => '每个工作日';

  @override
  String get repeatWeekly => '每周';

  @override
  String get repeatMonthly => '每月';

  @override
  String get repeatYearly => '每年';

  @override
  String get repeatCustom => '自定义';

  @override
  String get repeatEvery => '重复间隔';

  @override
  String get repeatOnDays => '重复日';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '天');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '周');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '个月');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '年');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '重复 $count 次后结束');
    return '$_temp0';
  }

  @override
  String get repeatEndsNever => '永不结束';

  @override
  String get reminderAtTime => '事件开始时';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '提前 $minutes 分钟');
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(hours, locale: localeName, other: '提前 $hours 小时');
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '提前 1 天';

  @override
  String get projectsTitle => '项目';

  @override
  String get projectsEmptyTitle => '还没有项目';

  @override
  String get projectsEmptyMessage => '将相关的任务、笔记和专注时间归为一组。';

  @override
  String get projectNew => '新建项目';

  @override
  String get projectEdit => '编辑项目';

  @override
  String get projectName => '名称';

  @override
  String get projectDescription => '描述';

  @override
  String get projectGoal => '目标';

  @override
  String get projectDeadline => '截止期限';

  @override
  String get projectColor => '颜色';

  @override
  String get projectIcon => '图标';

  @override
  String get projectNotes => '项目笔记';

  @override
  String get projectProgress => '进度';

  @override
  String projectTasksDone(int done, int total) {
    return '已完成 $done/$total 个任务';
  }

  @override
  String get projectFocusTime => '专注时间';

  @override
  String get projectArchived => '已归档项目';

  @override
  String get projectShowArchived => '显示已归档';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '还剩 $days 天',
      zero: '今天截止',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => '已过截止期限';

  @override
  String get calendarTitle => '日历';

  @override
  String get calendarMonth => '月';

  @override
  String get calendarWeek => '周';

  @override
  String get calendarDay => '日';

  @override
  String get calendarToday => '今天';

  @override
  String get calendarPrevious => '上一页';

  @override
  String get calendarNext => '下一页';

  @override
  String get calendarNoEvents => '暂无安排';

  @override
  String get calendarAllDay => '全天';

  @override
  String get eventNew => '新建日程';

  @override
  String get eventEdit => '编辑日程';

  @override
  String get eventTitleHint => '日程标题';

  @override
  String get eventStarts => '开始';

  @override
  String get eventEnds => '结束';

  @override
  String get eventKind => '类型';

  @override
  String get eventKindEvent => '日程';

  @override
  String get eventKindTimeBlock => '时间块';

  @override
  String get eventKindFocus => '专注时段';

  @override
  String get eventKindGoal => '个人目标';

  @override
  String get eventDescription => '详情';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '与 $count 个日程时间重叠');
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => '当天存在日程冲突';

  @override
  String get calendarTaskDue => '任务到期';

  @override
  String get calendarDragHint => '长按并拖动日程即可重新安排';

  @override
  String get calendarRescheduled => '日程已移动';

  @override
  String get calendarScheduleTask => '安排为时间块';

  @override
  String get calendarLegend => '图例';

  @override
  String get notesTitle => '笔记';

  @override
  String get notesViewAll => '全部';

  @override
  String get notesViewPinned => '已置顶';

  @override
  String get notesViewFavorites => '收藏';

  @override
  String get notesViewArchived => '已归档';

  @override
  String get notesNotebooks => '笔记本';

  @override
  String get notesTags => '标签';

  @override
  String get notesNewNotebook => '新建笔记本';

  @override
  String get notesNoNotebook => '无笔记本';

  @override
  String get notesEmptyTitle => '一张白纸';

  @override
  String get notesEmptyMessage => '记录灵感、会议纪要和知识。';

  @override
  String get noteTitleHint => '标题';

  @override
  String get noteBodyHint => '开始书写… 用 # 添加标签，用 [[标题]] 链接笔记。';

  @override
  String get noteFavorite => '收藏';

  @override
  String get noteUnfavorite => '取消收藏';

  @override
  String get noteMoveTo => '移至笔记本';

  @override
  String get noteBacklinks => '反向链接';

  @override
  String get noteLinkedTasks => '关联任务';

  @override
  String get noteLinkTask => '关联任务';

  @override
  String get noteLinkProject => '项目';

  @override
  String get noteFormatHeading => '标题';

  @override
  String get noteFormatBold => '粗体';

  @override
  String get noteFormatItalic => '斜体';

  @override
  String get noteFormatList => '项目符号列表';

  @override
  String get noteFormatChecklist => '清单';

  @override
  String get noteFormatLink => '链接';

  @override
  String noteEdited(String time) {
    return '编辑于 $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 字');
    return '$_temp0';
  }

  @override
  String get flashTitle => '闪卡';

  @override
  String get flashEmptyTitle => '创建你的第一个卡组';

  @override
  String get flashEmptyMessage => '间隔重复会在你即将遗忘之前展示每张卡片。';

  @override
  String get deckNew => '新建卡组';

  @override
  String get deckEdit => '编辑卡组';

  @override
  String get deckName => '卡组名称';

  @override
  String get deckDescription => '描述';

  @override
  String get deckDailyNew => '每日新卡数';

  @override
  String get deckDailyReview => '每日复习目标';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 张卡片',
      zero: '没有卡片',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => '待复习';

  @override
  String get deckNewCards => '新卡';

  @override
  String get deckMature => '已熟练';

  @override
  String get deckStudy => '学习';

  @override
  String get deckNothingDue => '目前没有待复习的卡片，稍后再来吧。';

  @override
  String get deckEmptyCards => '添加卡片，开始学习。';

  @override
  String get cardNew => '新建卡片';

  @override
  String get cardEdit => '编辑卡片';

  @override
  String get cardFront => '正面';

  @override
  String get cardBack => '背面';

  @override
  String get cardFrontHint => '问题或术语';

  @override
  String get cardBackHint => '答案或释义';

  @override
  String get cardTags => '标签';

  @override
  String get cardAddAnother => '保存并继续添加';

  @override
  String get reviewShowAnswer => '显示答案';

  @override
  String get reviewAgain => '重来';

  @override
  String get reviewHard => '困难';

  @override
  String get reviewGood => '良好';

  @override
  String get reviewEasy => '简单';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => '复习完成';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '你复习了 $count 张卡片。');
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => '轻触显示答案';

  @override
  String get importCardsTitle => '导入卡片';

  @override
  String get importCardsHint =>
      '每行粘贴一张卡片（正反面用制表符或分号分隔），或选择文件：Excel（.xlsx）、CSV、Anki 卡组（.apkg）或导出的卡组。';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已导入 $count 张卡片',
      zero: '未导入任何卡片',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => '无法导入此内容。';

  @override
  String get exportCopied => '卡组已导出';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 分钟');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 天');
    return '$_temp0';
  }

  @override
  String get goalsTitle => '目标';

  @override
  String get goalsEmptyTitle => '定个目标吧';

  @override
  String get goalsEmptyMessage => '设定每日、每周、每月或长期目标，追踪真实进展。';

  @override
  String get goalNew => '新建目标';

  @override
  String get goalEdit => '编辑目标';

  @override
  String get goalTitleHint => '你想实现什么？';

  @override
  String get goalPeriod => '周期';

  @override
  String get goalPeriodDaily => '每日';

  @override
  String get goalPeriodWeekly => '每周';

  @override
  String get goalPeriodMonthly => '每月';

  @override
  String get goalPeriodLongTerm => '长期';

  @override
  String get goalTarget => '目标值';

  @override
  String get goalUnit => '单位';

  @override
  String get goalUnitHint => '例如：页、公里、小时';

  @override
  String get goalStatusActive => '进行中';

  @override
  String get goalStatusPaused => '已暂停';

  @override
  String get goalStatusAchieved => '已达成';

  @override
  String get goalPause => '暂停目标';

  @override
  String get goalResume => '继续目标';

  @override
  String get goalMarkAchieved => '标记为已达成';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => '数量';

  @override
  String get goalLogNote => '备注（可选）';

  @override
  String get goalHistory => '历史记录';

  @override
  String get goalNoHistory => '记录的进度会显示在这里';

  @override
  String get goalLinkedTasks => '关联任务';

  @override
  String get goalLinkedTasksHint => '每完成一个关联任务，该目标进度计 1。';

  @override
  String get goalThisPeriod => '本周期';

  @override
  String get habitsTitle => '习惯';

  @override
  String get habitsEmptyTitle => '每天一小步';

  @override
  String get habitsEmptyMessage => '创建一个习惯，完成后打个卡。';

  @override
  String get habitNew => '新建习惯';

  @override
  String get habitEdit => '编辑习惯';

  @override
  String get habitNameHint => '例如：阅读 20 页';

  @override
  String get habitDays => '计划';

  @override
  String get habitEveryDay => '每天';

  @override
  String get habitTargetPerDay => '每日次数';

  @override
  String get habitReminder => '每日提醒';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '连续 $count 天',
      zero: '暂无连续记录',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => '最长连续';

  @override
  String get habitCurrentStreak => '当前连续';

  @override
  String get habitConsistency => '坚持度';

  @override
  String get habitLast90 => '最近 90 天';

  @override
  String get habitPaused => '已暂停';

  @override
  String get habitPause => '暂停习惯';

  @override
  String get habitResume => '继续习惯';

  @override
  String get habitDoneToday => '今日已完成';

  @override
  String habitCountToday(int count, int target) {
    return '今日 $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '为“$name”打卡';
  }

  @override
  String get habitNotScheduledToday => '今日无计划';

  @override
  String get analyticsTitle => '洞察';

  @override
  String get rangeWeek => '7 天';

  @override
  String get rangeMonth => '30 天';

  @override
  String get rangeQuarter => '90 天';

  @override
  String get statFocusTime => '专注时间';

  @override
  String get statSessions => '专注时段';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '完成 $completed 次 · 提前结束 $interrupted 次';
  }

  @override
  String get statTasksDone => '已完成任务';

  @override
  String get statCompletionRate => '按时完成率';

  @override
  String get statHabitConsistency => '习惯坚持度';

  @override
  String get statRetention => '卡片记忆保持率';

  @override
  String get statReviews => '复习次数';

  @override
  String get statActiveGoals => '进行中的目标';

  @override
  String get statEstimated => '已完成预估工作量';

  @override
  String get statEstimatedNote => '基于你的预估，而非实测时间';

  @override
  String get statMeasuredNote => '基于专注时段实测';

  @override
  String get chartFocusByDay => '每日专注分钟数';

  @override
  String get chartTasksByDay => '每日完成任务数';

  @override
  String get chartTimeByProject => '各项目用时';

  @override
  String get chartProjectProgress => '项目进度';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title：总计 $total，最佳单日 $best';
  }

  @override
  String get analyticsNoData => '数据尚不足';

  @override
  String get analyticsUnassigned => '未分配';

  @override
  String get searchHint => '搜索全部内容…';

  @override
  String get searchRecent => '最近搜索';

  @override
  String get searchClearRecent => '清除最近搜索';

  @override
  String searchNoResults(String query) {
    return '没有找到“$query”的相关结果';
  }

  @override
  String get searchStartTyping => '搜索任务、笔记、卡片、目标、日程等内容。搜索仅在本设备上进行。';

  @override
  String get searchCatTask => '任务';

  @override
  String get searchCatProject => '项目';

  @override
  String get searchCatNote => '笔记';

  @override
  String get searchCatFlashcard => '卡片';

  @override
  String get searchCatDeck => '卡组';

  @override
  String get searchCatGoal => '目标';

  @override
  String get searchCatHabit => '习惯';

  @override
  String get searchCatEvent => '日程';

  @override
  String get searchCatSession => '专注时段';

  @override
  String get searchAll => '全部';

  @override
  String get assistantTitle => '助手';

  @override
  String get assistantIntro => '在你的设备上运行的规划助手。你也可以选择连接自己指定的 AI 服务商，用于生成摘要和内容。';

  @override
  String get assistantOnDevice => '本机处理';

  @override
  String get assistantCloud => 'AI 服务商';

  @override
  String get assistantPlanDay => '规划我的一天';

  @override
  String get assistantPlanDayDesc => '按紧急程度、优先级和预估时长排列未完成任务，并安排在你的日程之间。';

  @override
  String get assistantExtractTasks => '从笔记中提取任务';

  @override
  String get assistantExtractTasksDesc => '找出笔记中的清单条目和待办语句，并将其转为任务。';

  @override
  String get assistantMakeCards => '从笔记生成闪卡';

  @override
  String get assistantMakeCardsDesc => '将“术语：释义”和问答形式的行转为卡片。';

  @override
  String get assistantSummarize => '总结笔记';

  @override
  String get assistantSummarizeDesc => '需要 AI 服务商。仅在你确认后才会发送笔记。';

  @override
  String get assistantWorkload => '工作量概览';

  @override
  String get assistantWorkloadDesc => '对比预估工作量与你本周的空闲时间。';

  @override
  String get assistantPlanEmpty => '没有需要规划的任务，享受这份从容吧。';

  @override
  String assistantPlanCapacity(String time) {
    return '今日可用专注时间：$time';
  }

  @override
  String get assistantPlanOverflow => '以下任务今天可能排不下：';

  @override
  String get assistantChooseNote => '选择笔记';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 个任务',
      zero: '此笔记中未找到任务',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 张卡片',
      zero: '此笔记中未找到卡片',
    );
    return '$_temp0';
  }

  @override
  String get assistantCreateAll => '全部创建';

  @override
  String get assistantChooseDeck => '选择卡组';

  @override
  String get assistantCreated => '已创建';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return '预估工作量：$estimated。空闲时间：$free。';
  }

  @override
  String get assistantWorkloadOver => '计划的工作量超出了可用时间。可以考虑推迟优先级较低的任务。';

  @override
  String get assistantWorkloadOk => '你的计划在可用时间之内。';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '有 $count 个未完成任务没有预估时长。',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI 服务商';

  @override
  String get assistantProviderOff => '未连接服务商。本机工具仍可正常使用。';

  @override
  String assistantProviderOn(String host) {
    return '已连接到 $host';
  }

  @override
  String get assistantEndpoint => 'API 端点（HTTPS）';

  @override
  String get assistantModel => '模型';

  @override
  String get assistantApiKey => 'API 密钥';

  @override
  String get assistantApiKeyStored => '安全存储在本设备上';

  @override
  String get assistantHttpsOnly => '仅允许 HTTPS 端点';

  @override
  String get assistantConsentTitle => '将此内容发送给你的 AI 服务商？';

  @override
  String assistantConsentBody(String host) {
    return '所选笔记文本将离开本设备，由 $host 处理。不会发送其他任何内容。';
  }

  @override
  String get assistantConsentAlways => '对此服务商不再询问';

  @override
  String get assistantSend => '发送';

  @override
  String get assistantUnavailable => '无法连接 AI 服务商，请稍后重试。';

  @override
  String get assistantDisabledTitle => '助手已关闭';

  @override
  String get assistantDisabledMessage => '开启后即可使用规划工具。除非你连接服务商并确认每次请求，否则任何数据都不会离开你的设备。';

  @override
  String get assistantSummaryTitle => '摘要';

  @override
  String get assistantRemoveProvider => '移除服务商';

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsGeneral => '通用';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsLanguageSystem => '跟随设备语言';

  @override
  String get settingsAppearance => '外观';

  @override
  String get settingsTheme => '主题';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get themeSystem => '跟随系统';

  @override
  String get settingsReduceMotion => '减弱动态效果';

  @override
  String get settingsReduceMotionDesc => '减少动画和动态背景';

  @override
  String get settingsFocus => '专注计时器';

  @override
  String get settingsWorkLength => '专注时长';

  @override
  String get settingsShortBreak => '短休息';

  @override
  String get settingsLongBreak => '长休息';

  @override
  String get settingsLongBreakEvery => '长休息间隔';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '每 $count 个专注时段');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => '自动开始休息';

  @override
  String get settingsSound => '完成提示音';

  @override
  String get settingsDailyFocusTarget => '每日专注目标';

  @override
  String get settingsWeeklyFocusTarget => '每周专注目标';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsNotificationsEnable => '允许提醒';

  @override
  String get settingsQuietHours => '免打扰时段';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return '$start 至 $end 期间，习惯、目标和复习提醒将静音';
  }

  @override
  String get settingsReviewReminder => '闪卡复习提醒';

  @override
  String get settingsPermissionDenied => '通知已在系统设置中被阻止。';

  @override
  String get settingsPrivacy => '隐私与数据';

  @override
  String get settingsPrivacyStatement => '你的数据仅加密存储在本设备上。无需账号，没有统计分析，也没有追踪。';

  @override
  String get settingsBackup => '创建加密备份';

  @override
  String get settingsBackupDesc => '使用你设定的密码保护';

  @override
  String get settingsRestore => '从备份恢复';

  @override
  String get settingsRestoreDesc => '将替换本设备上的所有数据';

  @override
  String get settingsErase => '清除所有数据';

  @override
  String get settingsEraseDesc => '永久删除本设备上的所有内容';

  @override
  String get settingsEraseConfirmTitle => '清除所有数据？';

  @override
  String settingsEraseConfirmBody(String word) {
    return '所有任务、笔记、卡片、目标、习惯、日程和专注时段都将被永久删除。输入“$word”以确认。';
  }

  @override
  String get settingsEraseWord => '清除';

  @override
  String get settingsErased => '所有数据已清除';

  @override
  String get backupPassword => '备份密码';

  @override
  String get backupPasswordConfirm => '确认密码';

  @override
  String backupPasswordHint(int count) {
    return '至少 $count 个字符。密码一旦丢失将无法找回。';
  }

  @override
  String get backupPasswordMismatch => '两次输入的密码不一致';

  @override
  String get backupPasswordShort => '密码太短';

  @override
  String get backupCreating => '正在加密备份…';

  @override
  String get backupCreated => '备份已就绪，可以保存';

  @override
  String get backupRestoring => '正在验证并恢复…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '已恢复 $count 项');
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => '密码错误，或文件已被修改。';

  @override
  String get backupNotABackup => '此文件不是 Deep Focus 备份。';

  @override
  String get backupCorrupted => '备份文件已损坏。';

  @override
  String get backupNewer => '此备份由更新版本的应用创建，请先更新应用。';

  @override
  String get backupRestoreConfirmTitle => '替换所有数据？';

  @override
  String get backupRestoreConfirmBody => '本设备上的现有内容将全部被备份替换。如果恢复失败，数据不会有任何变化。';

  @override
  String get settingsAbout => '关于';

  @override
  String settingsVersion(String version) {
    return '版本 $version';
  }

  @override
  String get settingsLicenses => '开源许可';

  @override
  String get settingsAssistant => '助手';

  @override
  String get settingsAssistantEnable => '启用助手';

  @override
  String get settingsDashboard => '首页模块';

  @override
  String get settingsTrash => '回收站';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get trashEmpty => '回收站是空的';

  @override
  String get trashHint => '已删除的项目会保留在这里，直到你将其移除。';

  @override
  String get trashTasks => '任务';

  @override
  String get trashNotes => '笔记';

  @override
  String get onboardWelcomeTitle => '欢迎来到你的未来工作空间';

  @override
  String get onboardWelcomeBody => '任务、专注、日历、笔记、闪卡、目标和习惯——融为一体，简洁而美好。';

  @override
  String get onboardPrivateTitle => '隐私至上';

  @override
  String get onboardPrivateBody => '所有内容都加密保存在本设备上。无需账号，没有追踪。一切由你掌控。';

  @override
  String get onboardLanguageTitle => '选择语言';

  @override
  String get onboardNotifTitle => '贴心提醒';

  @override
  String get onboardNotifBody => '允许通知，以接收任务提醒和专注提示。你可以随时更改。';

  @override
  String get onboardGetStarted => '开始使用';

  @override
  String onboardStep(int current, int total) {
    return '第 $current 步，共 $total 步';
  }

  @override
  String get notifChannelReminders => '提醒';

  @override
  String get notifChannelRemindersDesc => '任务、日程、习惯和目标提醒';

  @override
  String get notifChannelFocus => '专注计时器';

  @override
  String get notifChannelFocusDesc => '专注时段或休息结束时提醒';

  @override
  String get notifTaskTitle => '任务提醒';

  @override
  String get notifEventTitle => '即将开始的日程';

  @override
  String notifEventBody(String title, String time) {
    return '$time $title';
  }

  @override
  String get notifFocusDoneTitle => '专注时段已完成';

  @override
  String get notifFocusDoneBody => '干得漂亮，休息一下吧。';

  @override
  String get notifBreakDoneTitle => '休息结束';

  @override
  String get notifBreakDoneBody => '准备好开始下一轮专注了吗？';

  @override
  String get notifHabitTitle => '习惯提醒';

  @override
  String get notifReviewTitle => '闪卡已就绪';

  @override
  String get notifReviewBody => '简短的复习能让记忆更牢固。';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours 小时 $minutes 分钟';
  }

  @override
  String durationHours(int hours) {
    return '$hours 小时';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => '一,二,三,四,五,六,日';

  @override
  String get a11yOpenMenu => '打开菜单';

  @override
  String a11yProgress(int value) {
    return '进度百分之 $value';
  }

  @override
  String a11yPriority(String level) {
    return '优先级：$level';
  }

  @override
  String a11yColor(int index) {
    return '颜色 $index';
  }

  @override
  String get a11ySelected => '已选择';

  @override
  String get analyticsRangeLabel => '时间范围';

  @override
  String get analyticsRefresh => '刷新';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$total 个到期任务中有 $done 个按时完成';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '已完成 $done / $total 个任务';
  }

  @override
  String get analyticsNoProjects => '没有进行中的项目';

  @override
  String get analyticsNoFocus => '此范围内没有专注记录';

  @override
  String get analyticsHabitsNone => '没有进行中的习惯';

  @override
  String get analyticsRetentionNote => '已掌握卡片中你记住的比例';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name：$value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return '空闲时间按工作日（$days）$start–$end 计算，并扣除有具体时间的日程。预计工作量为未来 7 天内到期的未完成任务的预估时长之和。';
  }

  @override
  String get assistantWorkdaysMonFri => '周一至周五';

  @override
  String get assistantWorkdaysSunThu => '周日至周四';

  @override
  String get assistantWorkloadDayOff => '休息日';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '计划 $estimated · 空闲 $free';
  }

  @override
  String assistantPlanRule(String end) {
    return '从现在到 $end 为止，避开今天的日程进行规划。优先安排逾期任务，其次按优先级、截止日期和预估时长排序。';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => '安排为时间块';

  @override
  String get assistantScheduleConfirmTitle => '将时间块添加到日历？';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '将向今天的日历添加 $count 个时间块。',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '已添加 $count 个时间块');
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => '已在日历中';

  @override
  String get assistantPlanTimeline => '今天可完成';

  @override
  String get assistantNoEstimate => '添加预估时长后才能规划这些任务';

  @override
  String get assistantNoNotes => '还没有笔记，请先写一条笔记。';

  @override
  String get assistantNoteEmpty => '这条笔记是空的。';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '已创建 $count 个任务');
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '已创建 $count 张卡片');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '创建 $count 项',
      zero: '未选择任何项',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint => '可识别：未勾选的复选框“- [ ]”，以及以 TODO: 或 To do: 开头的行';

  @override
  String get assistantCardsHint => '可识别：“术语: 定义”“术语 — 定义”以及成对的 Q:/A: 行';

  @override
  String get assistantProviderHint => '可使用任何兼容 OpenAI 的服务。密钥仅保存在本设备的安全存储中，不会包含在备份里。';

  @override
  String get assistantEndpointHelp => '例如 https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => '留空则保留已存储的密钥';

  @override
  String get assistantApiKeyRequired => '请输入 API 密钥';

  @override
  String get assistantProviderSaved => '服务商已保存';

  @override
  String get assistantProviderRemoved => '服务商已移除，密钥已删除';

  @override
  String get assistantRemoveProviderConfirm => '移除该服务商，并从此设备删除已存储的 API 密钥？';

  @override
  String get assistantAskEveryTime => '每次请求前询问';

  @override
  String get assistantSummarizing => '正在总结…';

  @override
  String assistantSummaryNote(String host) {
    return '由 $host 生成。使用前请先核对。';
  }

  @override
  String get assistantCopy => '复制';

  @override
  String get assistantCopied => '已复制';

  @override
  String get assistantConfigure => '设置服务商';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => '此系列中的所有日程均已移动';

  @override
  String get calendarEventReminder => '提醒';

  @override
  String get calendarEventRepeat => '重复';

  @override
  String get calendarEventColor => '颜色';

  @override
  String get calendarDefaultColor => '使用类型颜色';

  @override
  String get calendarEventLinkedTask => '关联任务';

  @override
  String get calendarEventNoTask => '无关联任务';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个日程',
      zero: '没有日程',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个任务到期',
      zero: '没有到期任务',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date。$events，$tasks';
  }

  @override
  String get calendarNoEventsHint => '添加日程或时间块来规划这一天。';

  @override
  String get calendarNow => '当前时间';

  @override
  String get calendarRecurring => '重复';

  @override
  String get calendarEventNotFound => '此日程已不存在';

  @override
  String get calendarEventLocalTime => '时间按你设备的时区显示';

  @override
  String get calendarEventDeleted => '日程已移至回收站';

  @override
  String get calendarConflictMarker => '与其他日程重叠';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title，$time';
  }

  @override
  String get calendarSeriesEditNote => '更改将应用于此系列中的所有日程';

  @override
  String get calendarDragHintSeries => '拖动重复日程会移动整个系列';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title，任务到期';
  }

  @override
  String get startupErrorTitle => '无法打开你的数据';

  @override
  String get startupErrorLocked =>
      '无法获取此设备数据的加密密钥。没有任何内容被删除。重启设备通常可以解决问题。如果你最近恢复过设备，请改为从加密备份中恢复数据。';

  @override
  String get startupErrorCipher => '此设备不支持应用所需的加密存储。没有任何内容以未加密方式保存。';

  @override
  String get startupErrorRetry => '重试';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '有 $count 张卡片待复习');
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count 待复习';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count 新卡';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return '已掌握卡片：$percent';
  }

  @override
  String get flashcardsValidationNonNegative => '请输入 0 或更大的数字';

  @override
  String get flashcardsSearchCards => '搜索卡片';

  @override
  String get flashcardsSearchEmpty => '没有符合搜索条件的卡片';

  @override
  String get flashcardsCardAdded => '卡片已添加';

  @override
  String flashcardsCardDueOn(String date) {
    return '$date到期';
  }

  @override
  String get flashcardsCopyToClipboard => '复制到剪贴板';

  @override
  String get flashcardsExportTitle => '导出卡组';

  @override
  String get flashcardsDeleteDeck => '删除卡组';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating，下次复习：$interval后';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return '问题：$text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return '答案：$text';
  }

  @override
  String get flashcardsShowQuestion => '显示问题';

  @override
  String get flashcardsImportField => '要导入的卡片';

  @override
  String get flashcardsNothingToStudy => '没有需要学习的内容';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 张卡片可学习',
      zero: '没有可学习的卡片',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => '按评分';

  @override
  String get flashcardsDeckNotFound => '此卡组已不可用。';

  @override
  String get focusSessionDeleted => '记录已删除';

  @override
  String get focusDeleteConfirm => '从历史记录中删除此次专注？其时长将不再计入你的目标。';

  @override
  String get focusUnlinkTask => '移除关联任务';

  @override
  String get focusNoteHint => '你做了什么？';

  @override
  String get focusTargetCaption => '根据已保存的专注记录统计';

  @override
  String get focusModeLabel => '计时模式';

  @override
  String focusUpNext(String phase) {
    return '接下来：$phase';
  }

  @override
  String get focusStopwatchHint => '持续正向计时，直到你停止。';

  @override
  String get focusOpenHint => '不限时。完成后随时停止。';

  @override
  String get focusNotificationsDisabledInApp => '设置中已关闭提醒。专注结束时你不会收到通知。';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode，$duration，$when';
  }

  @override
  String get goalsFilterAll => '全部';

  @override
  String get goalsFilterPeriod => '周期筛选';

  @override
  String get goalsFilterStatus => '状态筛选';

  @override
  String get goalsEmptyFiltered => '没有符合此筛选条件的目标';

  @override
  String goalsDueOn(String date) {
    return '截止 $date';
  }

  @override
  String get goalsDeadline => '截止日期（可选）';

  @override
  String get goalsNoDeadline => '无截止日期';

  @override
  String get goalsSetDeadline => '设置截止日期';

  @override
  String get goalsRemoveDeadline => '移除截止日期';

  @override
  String get goalsDescription => '描述（可选）';

  @override
  String get goalsTitleLabel => '标题';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title，$progress，$status';
  }

  @override
  String get goalsReached => '已达成目标';

  @override
  String get goalsLogged => '进度已记录';

  @override
  String get goalsEntryDeleted => '记录已移除';

  @override
  String get goalsDeleteEntry => '移除记录';

  @override
  String get goalsDeleted => '目标已删除';

  @override
  String get goalsMarkActive => '标记为进行中';

  @override
  String get goalsNotFound => '此目标已不可用';

  @override
  String get goalsLinkTask => '关联任务';

  @override
  String get goalsNoLinkedTasks => '还没有关联任务';

  @override
  String get goalsUnlinkTask => '取消关联任务';

  @override
  String get goalsTaskOpen => '尚未完成';

  @override
  String get goalsTaskLinked => '任务已关联';

  @override
  String get goalsTaskUnlinked => '已取消关联任务';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '本周期包含 $count 个已完成的关联任务',
    );
    return '$_temp0';
  }

  @override
  String get goalsHistoryAllTime => '更早周期的记录会保留在这里，但只计入其所属的周期。';

  @override
  String goalsPercentOfTarget(String percent) {
    return '目标的 $percent';
  }

  @override
  String habitsTodaySummary(int done, int total) {
    return '今天已完成 $done / $total';
  }

  @override
  String get habitsNothingToday => '今天没有安排习惯';

  @override
  String get habitsDecrease => '减少一次打卡';

  @override
  String get habitsResetToday => '重置今天';

  @override
  String get habitsCheckInHint => '长按可调整';

  @override
  String get habitsName => '名称';

  @override
  String get habitsColor => '颜色';

  @override
  String get habitsValidationDays => '请至少选择一天';

  @override
  String habitsReminderAt(String time) {
    return '每天 $time';
  }

  @override
  String get habitsSetReminder => '设置提醒时间';

  @override
  String get habitsRemoveReminder => '移除提醒';

  @override
  String get habitsReminderNote => '开启通知权限后，提醒会在安排的日期出现。';

  @override
  String get habitsArchived => '习惯已归档';

  @override
  String get habitsNotFound => '此习惯已不可用';

  @override
  String get habitsLast30 => '最近 30 天';

  @override
  String get habitsConsistencyNone => '数据尚不足';

  @override
  String get habitsCalendar => '打卡历史';

  @override
  String get habitsCalendarHint => '点按某一天即可修正。';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date：$count / $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return '最近 90 天的打卡情况。坚持率 $percent。';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => '最近 90 天的打卡情况。数据尚不足。';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 天');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => '暂停的日子不会影响你的连续记录。';

  @override
  String get habitsListSeparator => '、';

  @override
  String get habitsArchive => '归档习惯';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每天 $count 次',
      one: '每天一次',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => '其他笔记';

  @override
  String get notesAllNotebooks => '所有笔记本';

  @override
  String get notesNotebookName => '笔记本名称';

  @override
  String get notesNotebookColor => '颜色';

  @override
  String get notesDeleteNotebook => '删除笔记本';

  @override
  String get notesDeleteNotebookMessage => '笔记本将被移除，其中的笔记会保留，并显示在“所有笔记本”下。';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => '将重要笔记置顶，让它们保持在最前面。';

  @override
  String get notesEmptyFavorites => '你标记为收藏的笔记会显示在这里。';

  @override
  String get notesEmptyArchived => '已归档的笔记会显示在这里。';

  @override
  String get notesEmptyFiltered => '没有符合这些筛选条件的笔记。';

  @override
  String get notesArchivedSnack => '笔记已归档';

  @override
  String get notesUnarchivedSnack => '笔记已移回你的笔记';

  @override
  String notesChecklistProgress(int done, int total) {
    return '已完成 $done / $total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => '格式';

  @override
  String get notesWrite => '编写';

  @override
  String get notesPreviewEmpty => '暂无可预览的内容。';

  @override
  String notesBacklinksEmpty(String title) {
    return '还没有其他笔记链接到这里。使用 [[$title]] 链接到这条笔记。';
  }

  @override
  String get notesBacklinksNeedTitle => '为这条笔记添加标题，其他笔记才能链接到它。';

  @override
  String get notesLinkedTasksEmpty => '没有任务关联到这条笔记。';

  @override
  String notesLinkMissing(String title) {
    return '还没有标题为“$title”的笔记。';
  }

  @override
  String get notesNotFound => '这条笔记已不存在。';

  @override
  String notesCheckboxSemantics(String label) {
    return '清单项：$label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return '打开笔记 $title';
  }

  @override
  String get notesTagsHint => '在笔记中输入 #标签 即可添加标签。';

  @override
  String get notesTaskDone => '已完成';

  @override
  String get notifTimerDoneBody => '你设定的时间已到。';

  @override
  String get onboardingPrivatePointDevice => '仅存储在此设备上，并已加密';

  @override
  String get onboardingPrivatePointAccount => '无需账号';

  @override
  String get onboardingPrivatePointTracking => '无分析，无追踪';

  @override
  String get onboardingLanguageBody => '你可以随时在设置中更改。';

  @override
  String get onboardingNext => '下一步';

  @override
  String get projectsActive => '进行中';

  @override
  String get projectNameHint => '例如：产品发布';

  @override
  String get projectGoalHint => '完成时是什么样子？';

  @override
  String get projectNoDeadline => '无截止日期';

  @override
  String get projectTasksOpen => '未完成任务';

  @override
  String get projectTasksCompleted => '已完成任务';

  @override
  String get projectAddTask => '向项目添加任务';

  @override
  String get projectAddNote => '新建项目笔记';

  @override
  String get projectLinkedNotes => '笔记';

  @override
  String get projectNoTasks => '此项目中还没有任务';

  @override
  String get projectArchivedBadge => '已归档';

  @override
  String get projectDeleted => '项目已移至回收站';

  @override
  String get projectDeleteMessage => '任务会保留在你的列表中，但不再属于任何项目。';

  @override
  String projectSemantics(String name, int percent) {
    return '$name，已完成 $percent%';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 条结果');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => '按类型筛选';

  @override
  String searchRecentTap(String query) {
    return '再次搜索 $query';
  }

  @override
  String get settingsLanguageHint => '选择整个应用的语言。语言名称以其自身语言显示。';

  @override
  String get settingsThemeHint => '浅色、深色或跟随系统';

  @override
  String settingsDecrease(String setting) {
    return '减小$setting';
  }

  @override
  String settingsIncrease(String setting) {
    return '增大$setting';
  }

  @override
  String get settingsQuietStart => '开始';

  @override
  String get settingsQuietEnd => '结束';

  @override
  String get settingsNotificationsHint => '这会在应用内保存你的偏好。系统也可能会请求权限。';

  @override
  String get settingsDashboardHint => '拖动以重新排序。关闭你不需要的模块。';

  @override
  String settingsDashboardReorder(String section) {
    return '重新排序$section';
  }

  @override
  String get settingsDashboardReset => '恢复默认顺序';

  @override
  String get settingsAssistantDesc => '可选的规划帮助。除非你连接服务商，否则不会有任何内容离开此设备。';

  @override
  String get settingsAssistantSetup => '助手与服务商设置';

  @override
  String get settingsTrashDesc => '恢复或永久删除已移除的项目';

  @override
  String get settingsEraseFirstBody => '此操作无法撤销。建议先创建一份加密备份。';

  @override
  String settingsEraseTypeLabel(String word) {
    return '输入 $word';
  }

  @override
  String get settingsEraseFailed => '无法清除数据。没有任何更改。';

  @override
  String get settingsAboutTagline => '一个私密、本地优先的效率工作空间。';

  @override
  String get backupShowPassword => '显示密码';

  @override
  String get backupHidePassword => '隐藏密码';

  @override
  String get backupSaved => '备份已保存';

  @override
  String get backupFailed => '无法创建备份。你的数据未受影响。';

  @override
  String get backupReadFailed => '无法读取所选文件。';

  @override
  String get backupRestoreFailed => '恢复失败。没有任何更改。';

  @override
  String get backupShareSubject => 'Deep Focus 加密备份';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每 $count 天',
      one: '每天',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每 $count 周',
      one: '每周',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每 $count 个月',
      one: '每月',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每 $count 年',
      one: '每年',
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
    return '于$days';
  }

  @override
  String get repeatEndsLabel => '结束';

  @override
  String get repeatEndsAfter => '重复若干次后';

  @override
  String get repeatCountLabel => '重复次数';

  @override
  String get reminderNone => '不提醒';

  @override
  String get reminderCustomTime => '在指定时间';

  @override
  String get a11yDecrease => '减少';

  @override
  String get a11yIncrease => '增加';

  @override
  String get pickTaskTitle => '选择任务';

  @override
  String get pickTaskEmpty => '没有未完成的任务';

  @override
  String get tasksSearchTooltip => '搜索任务';

  @override
  String get tasksSectionOverdue => '已逾期';

  @override
  String get tasksSectionToday => '今天';

  @override
  String get tasksRecurringSemantics => '重复';

  @override
  String get tasksFilterPriorityAtLeast => '最低优先级';

  @override
  String get tasksFilterCategory => '分类';

  @override
  String get tasksFilterAnyCategory => '任意分类';

  @override
  String get tasksFilterLabel => '标签';

  @override
  String get tasksFilterAnyLabel => '任意标签';

  @override
  String get tasksFilterReset => '重置筛选';

  @override
  String get tasksViewByProject => '按项目';

  @override
  String get tasksViewByPriority => '按优先级';

  @override
  String get tasksViewByCategory => '按分类';

  @override
  String get tasksGroupNoCategory => '无分类';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '被 $count 个任务阻塞');
    return '$_temp0';
  }

  @override
  String get taskBlockedWarning => '此任务被未完成的任务阻塞。仍要完成它吗？';

  @override
  String get taskDeleteConfirm => '将此任务移至回收站？';

  @override
  String get taskStartFocus => '专注于此任务';

  @override
  String get taskRemoveDate => '移除日期';

  @override
  String get taskAllDay => '无具体时间';

  @override
  String get taskSaved => '任务已保存';

  @override
  String get taskCreated => '任务已创建';

  @override
  String get taskReminderNeedsDue => '设置截止日期后才能使用相对提醒';

  @override
  String taskEstimateValue(String value) {
    return '预估：$value';
  }

  @override
  String taskTrackedValue(String value) {
    return '已记录：$value';
  }

  @override
  String get taskSubtaskDetailsHint => '请先保存任务，再添加子任务、清单项、标签和依赖关系。';

  @override
  String get taskNoLabels => '还没有标签';

  @override
  String get taskLabelName => '标签名称';

  @override
  String get taskMoreDetails => '详情';

  @override
  String get taskPlanning => '规划';

  @override
  String get taskOrganize => '整理';

  @override
  String get taskBreakdown => '拆解';

  @override
  String get trashDeleteTaskTitle => '永久删除此任务？';

  @override
  String get trashDeleteNoteTitle => '永久删除此笔记？';

  @override
  String get trashDeleteBody => '此操作无法撤销。';

  @override
  String get trashEmptyTitle => '清空回收站？';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '将永久删除 $count 个项目。');
    return '$_temp0';
  }

  @override
  String get trashRestored => '已恢复';

  @override
  String get trashPurged => '已永久删除';

  @override
  String trashDeletedOn(String date) {
    return '删除于 $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 个项目');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => '朗读';

  @override
  String get flashcardsTtsUnavailable => '此设备不支持文字转语音。';

  @override
  String get flashcardsTtsLanguageUnavailable => '此语言未安装语音。请在 Android 文字转语音设置中添加。';

  @override
  String get calendarAgenda => '日程';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': '火花',
      'rocket': '火箭',
      'book': '书本',
      'work': '工作',
      'home': '家',
      'heart': '爱心',
      'code': '代码',
      'palette': '调色板',
      'fitness': '健身',
      'school': '学习',
      'travel': '旅行',
      'money': '储蓄',
      'other': '图标',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => '更多字段';

  @override
  String get cardFieldExample => '例句';

  @override
  String get cardFieldExplanation => '解释';

  @override
  String get cardFieldPronunciation => '发音';

  @override
  String get cardFieldNotes => '补充说明';

  @override
  String get projectMilestones => '里程碑';

  @override
  String get milestoneAdd => '添加里程碑';

  @override
  String get milestoneEdit => '编辑里程碑';

  @override
  String get milestoneTitleLabel => '里程碑';

  @override
  String get milestoneNoDate => '无日期';

  @override
  String get milestonesEmpty => '还没有里程碑。添加带日期的节点，在日历中跟踪项目。';

  @override
  String get milestoneDeleted => '已删除里程碑';

  @override
  String milestoneDoneA11y(String title) {
    return '将里程碑“$title”标记为完成';
  }

  @override
  String calendarMilestone(String project) {
    return '里程碑 · $project';
  }

  @override
  String get tasksViewInbox => '收件箱';

  @override
  String get tasksViewArchived => '已归档';

  @override
  String get tasksEmptyInbox => '没有项目或日期的任务会出现在这里，有空时整理一下。';

  @override
  String get tasksEmptyArchived => '已归档的任务保存在这里，不会出现在列表和提醒中。';

  @override
  String get taskArchivedBadge => '已归档';

  @override
  String get taskStatusInProgress => '进行中';

  @override
  String get taskArchived => '任务已归档';

  @override
  String get taskUnarchived => '任务已从归档中恢复';

  @override
  String get focusPlanTitle => '专注计划';

  @override
  String focusPlanTotal(String duration) {
    return '共 $duration';
  }

  @override
  String get focusPlanRounds => '专注次数';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => '长休息间隔';

  @override
  String get focusPlanSkipLastBreak => '跳过最后一次休息';

  @override
  String get focusPlanAutoBreaks => '自动开始休息';

  @override
  String get focusPlanAutoFocus => '休息后自动开始专注';

  @override
  String get focusPlanSave => '保存计划';

  @override
  String get focusPlanNameHint => '例如：备考';

  @override
  String get focusPlanSaved => '计划已保存';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name：专注 $work 分钟，休息 $rest 分钟';
  }

  @override
  String focusPlanDecrease(String label) {
    return '减少$label';
  }

  @override
  String focusPlanIncrease(String label) {
    return '增加$label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return '第 $current 次，共 $total 次';
  }

  @override
  String get focusSeriesComplete => '计划完成，做得好！';

  @override
  String get exportDone => '导出完成';

  @override
  String get filterAll => '全部';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '已导入 $added · 跳过重复 $duplicates · 不完整行 $invalid';
  }

  @override
  String get flashcardsSuspend => '暂停卡片';

  @override
  String get flashcardsResume => '恢复卡片';

  @override
  String get flashcardsSuspended => '卡片已暂停，不再安排复习';

  @override
  String get flashcardsResumed => '卡片已恢复';

  @override
  String get flashcardsSuspendedFilter => '已暂停';

  @override
  String get flashcardsExportCsv => '导出为 CSV';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown/$total 张卡片';
  }

  @override
  String get flashcardsImportFile => '从文件';

  @override
  String get speechTitle => '朗读';

  @override
  String get speechAppLanguage => '应用语言';

  @override
  String get speechFrontLanguage => '正面语言';

  @override
  String get speechBackLanguage => '背面语言';

  @override
  String get speechRepeat => '每次朗读重复';

  @override
  String get speechRate => '语速';

  @override
  String get speechAutoRead => '自动朗读问题';

  @override
  String get speechHint => '使用设备上已安装的离线语音。若某语言没有语音，会提示您，不会改用其他语言。';

  @override
  String get studyHowTitle => '想怎么学习？';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '复习 $count 张卡片');
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => '练习全部卡片（不改变复习计划）';

  @override
  String get studyPracticeMistakes => '练习最近答错的';

  @override
  String get studyPracticeHint => '练习不会改变到期时间，复习才会更新计划。';

  @override
  String get studyModeClassic => '经典';

  @override
  String get studyModeReverse => '反向';

  @override
  String get studyModeMixed => '双向';

  @override
  String get studyModeTyped => '输入答案';

  @override
  String get studyModeChoice => '选择题';

  @override
  String get studyModeListening => '听力';

  @override
  String get studyPractice => '练习';

  @override
  String get studyNoMistakes => '这组卡片最近没有错题，很棒！';

  @override
  String get studyTypeAnswer => '输入你的答案';

  @override
  String get studyCheck => '检查';

  @override
  String get studyKnewIt => '我会';

  @override
  String get studyDidntKnow => '不会';

  @override
  String studyMistakes(int count) {
    return '答错（$count）';
  }

  @override
  String get studyRepeatMistakes => '重做答错的卡片';

  @override
  String get studyCorrect => '正确';

  @override
  String get studyAlmost => '差一点——注意拼写';

  @override
  String get studyWrong => '不对';

  @override
  String get studyShowText => '显示文字';

  @override
  String get flashcardsImportFileFailed => '无法打开文件，可以改为粘贴其内容。';

  @override
  String get studyNoMatchingCards => '暂时没有符合条件的卡片。';

  @override
  String get studyPracticeNew => '仅新卡';

  @override
  String get studyPracticeHard => '困难卡片';

  @override
  String get studyPracticeFavorites => '收藏';

  @override
  String get studySessionSize => '每次卡片数';

  @override
  String get studySessionAll => '全部';

  @override
  String get studyOrder => '顺序';

  @override
  String get studyOrderDue => '最早到期优先';

  @override
  String get studyOrderRandom => '随机';

  @override
  String get studyOrderHardest => '最难优先';

  @override
  String get flashcardsHard => '困难';

  @override
  String get flashcardsFavorites => '收藏';

  @override
  String get flashcardsFavorite => '加入收藏';

  @override
  String get flashcardsUnfavorite => '取消收藏';

  @override
  String get flashcardsDuplicate => '复制';

  @override
  String get flashcardsMoveTo => '移动到卡组';

  @override
  String get flashcardsNoOtherDeck => '请先创建另一个卡组。';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '已移动 $count 张卡片');
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => '添加标签';

  @override
  String get flashcardsTagHint => '例如：动词';

  @override
  String flashcardsSelected(int count) {
    return '已选 $count';
  }

  @override
  String get flashcardsSelectAll => '全选当前';

  @override
  String flashcardsSelectCard(String front) {
    return '选择 $front';
  }

  @override
  String flashcardsRecall(String value) {
    return '记忆 $value';
  }

  @override
  String get flashcardsDuplicateTitle => '可能重复';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return '该卡组已有“$front”→“$back”。仍要保存吗？';
  }

  @override
  String get flashcardsSaveAnyway => '仍然保存';

  @override
  String get flashcardsStats => '统计';

  @override
  String get flashcardsStatTotal => '卡片';

  @override
  String get flashcardsStatLearning => '学习中';

  @override
  String get flashcardsStatMatureCaption => '记住 21 天以上';

  @override
  String get flashcardsStatReviewsToday => '今日复习';

  @override
  String get flashcardsStatCorrect => '正确率';

  @override
  String flashcardsStatLastDays(int days) {
    return '最近 $days 天';
  }

  @override
  String get flashcardsStatForget => '遗忘率';

  @override
  String get flashcardsStatForgetCaption => '已掌握卡片选“重来”';

  @override
  String get flashcardsStatRecall => '当前记忆';

  @override
  String get flashcardsStatRecallCaption => 'FSRS 估计（已复习卡片）';

  @override
  String flashcardsStatActivity(int count) {
    return '每日复习 · 共 $count 次';
  }

  @override
  String get flashcardsStatHistory => '最近作答';

  @override
  String get flashcardsStatNoHistory => '暂无复习记录，学习后这里会显示进度。';

  @override
  String flashcardsSpeakField(String field) {
    return '朗读$field';
  }

  @override
  String get speechVoice => '语音';

  @override
  String get speechVoiceDefault => '自动';

  @override
  String get speechVoiceOnline => '需联网';

  @override
  String get speechTest => '试听';

  @override
  String get importNext => '预览';

  @override
  String get importPreviewTitle => '将列对应到字段';

  @override
  String get importIgnoreColumn => '忽略';

  @override
  String importColumn(int n) {
    return '第 $n 列';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready 张卡片就绪 · 将跳过 $invalid 行不完整数据';
  }

  @override
  String get importNeedFrontBack => '请选择正面和背面对应的列。';

  @override
  String get actionMoveUp => '上移';

  @override
  String get actionMoveDown => '下移';

  @override
  String get flashcardsLayoutTitle => '卡片布局';

  @override
  String get flashcardsLayoutHint => '重命名、隐藏或调整本卡组附加字段的顺序，卡片内容不会改变。';

  @override
  String flashcardsLayoutShow(String field) {
    return '学习时显示$field';
  }

  @override
  String get flashcardsLayoutStepReveal => '逐步显示答案';

  @override
  String get flashcardsLayoutStepRevealHint => '先显示背面，点按逐个展开附加字段。';

  @override
  String flashcardsRevealNext(String field) {
    return '显示$field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return '文件超过 $mb MB。';
  }

  @override
  String get flashcardsImage => '图片';

  @override
  String get flashcardsAudio => '音频';

  @override
  String get flashcardsAddImage => '添加图片';

  @override
  String get flashcardsAddAudio => '添加音频';

  @override
  String get flashcardsPlayAudio => '播放录音';

  @override
  String get flashcardsAudioUnavailable => '此设备无法播放该录音。';

  @override
  String get flashcardsCustomFields => '自定义字段';

  @override
  String get flashcardsTemplates => '模板';

  @override
  String flashcardsNewFieldName(int n) {
    return '字段 $n';
  }

  @override
  String get flashcardsAddField => '添加字段';

  @override
  String get flashcardsFieldName => '字段名称';

  @override
  String get flashcardsFieldLangDefault => '同面语言';

  @override
  String get flashcardsTemplateConfirm => '模板设定字段显示方式并添加其字段，现有卡片和字段保持不变。';

  @override
  String get flashcardsApplyTemplate => '应用';

  @override
  String get templateVocabulary => '词汇';

  @override
  String get templateTwoTranslations => '双语翻译词';

  @override
  String get templateQuestionAnswer => '问答';

  @override
  String get templateDefinition => '术语与定义';

  @override
  String get templateGrammar => '语法规则';

  @override
  String get templateFieldPlural => '复数';

  @override
  String get templateFieldTranslation2 => '第二译文';

  @override
  String get templateFieldSynonyms => '同义词';

  @override
  String get templateFieldRule => '规则';

  @override
  String get deckCategory => '级别或主题';

  @override
  String get deckCategoryHint => '例如：A1、医学';

  @override
  String get flashcardsSearchAll => '搜索全部卡片';

  @override
  String get flashcardsSearchAllHint => '单词、译文、例句、笔记、标签…';

  @override
  String get flashcardsAllDecks => '全部卡组';

  @override
  String get flashcardsAllLanguages => '全部语言';

  @override
  String get flashcardsLangUnset => '未设置语言';

  @override
  String get flashcardsLevelUnset => '无级别或主题';

  @override
  String get flashcardsByLanguage => '按语言的进度';

  @override
  String get flashcardsByLevel => '按级别/主题的进度';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks 个卡组 · $cards 张卡 · $mature 已掌握 · $due 待复习 · 正确率 $correct（30 天）';
  }

  @override
  String get flashcardsRecord => '录音';

  @override
  String get flashcardsRecording => '正在录音…';

  @override
  String get flashcardsRecordStop => '停止并保留';

  @override
  String get flashcardsMicDenied => '麦克风权限已关闭。请在系统设置中允许后再录音。';

  @override
  String get flashcardsRecordFailed => '此设备无法录音。';

  @override
  String get soundsTitle => '声音';

  @override
  String get soundsSubtitle => '真实的自然录音，听不出任何循环。';

  @override
  String get soundsNature => '自然';

  @override
  String get soundsNoise => '专注噪音';

  @override
  String get soundRain => '雨声';

  @override
  String get soundStorm => '雷雨';

  @override
  String get soundRiver => '河流';

  @override
  String get soundOcean => '海浪';

  @override
  String get soundFire => '篝火';

  @override
  String get soundForest => '林中鸟鸣';

  @override
  String get soundNight => '夏夜';

  @override
  String get soundWhite => '白噪音';

  @override
  String get soundPink => '粉红噪音';

  @override
  String get soundBrown => '棕色噪音';

  @override
  String get soundsPlay => '播放';

  @override
  String get soundsSleep => '睡眠定时';

  @override
  String get soundsSleepOff => '关闭';

  @override
  String soundsSleepAt(String time) {
    return '将于 $time 停止';
  }

  @override
  String soundsMixFull(int count) {
    return '最多可同时播放 $count 种声音。';
  }

  @override
  String get soundsHint => '点按声音即可开始。可混合多种声音并分别调节音量。';

  @override
  String get soundsMixer => '混音';

  @override
  String soundsVolumeOf(String name) {
    return '$name音量';
  }

  @override
  String get soundsChannel => '自然声音';

  @override
  String get settingsEndTone => '计时结束提示音';

  @override
  String get toneGentle => '柔和提示音';

  @override
  String get toneBeeps => '短促提示音';

  @override
  String get toneWood => '木块敲击';

  @override
  String get toneBird => '鸟鸣';

  @override
  String get toneStream => '溪流';

  @override
  String get toneSystem => '手机提示音';

  @override
  String get speechOnPhone => '本机可用';

  @override
  String get speechAllLanguages => '所有语言';

  @override
  String get speechSearchLanguage => '搜索语言';

  @override
  String get speechGetVoices => '下载更多语音';

  @override
  String get speechGetVoicesHint => '没有语音的语言可在手机的语音设置中下载。';

  @override
  String get speechSettingsFailed => '无法打开此手机的语音设置。';

  @override
  String get speechVoiceMissing => '未安装语音';

  @override
  String get speechPause => '重复间隔';

  @override
  String speechSeconds(String seconds) {
    return '$seconds 秒';
  }

  @override
  String get speechExample => '朗读答案时一并朗读例句';

  @override
  String get flashListen => '聆听';

  @override
  String get flashListenNext => '下一张';

  @override
  String get flashListenEmpty => '没有可聆听的卡片。';

  @override
  String get flashViewTable => '表格';

  @override
  String get flashViewCards => '卡片';

  @override
  String get flashSwapSides => '交换列';

  @override
  String get flashSort => '排序';

  @override
  String get flashSortNewest => '最新优先';

  @override
  String get flashSortAlpha => '按字母';

  @override
  String get flashSortDue => '到期优先';

  @override
  String get flashSortHard => '最难优先';

  @override
  String get flashPasteCards => '粘贴卡片';

  @override
  String get flashClipboardEmpty => '剪贴板中没有文本。';

  @override
  String get flashMenuAdd => '添加卡片';

  @override
  String get flashMenuDeck => '卡组';

  @override
  String get flashToday => '今天';

  @override
  String get flashStudyNow => '学习';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已答 $count 张卡片',
      zero: '今天还没有答题',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => '林中雨';

  @override
  String get autoBackupTitle => '自动备份';

  @override
  String get autoBackupDesc => '每天保存在本机，保留最近 7 份';

  @override
  String get autoBackupHint => '这些副本保存在本机，卸载应用时会被删除。换手机时请用“备份”保存文件。';

  @override
  String get autoBackupNone => '还没有自动备份，今天会生成第一份。';

  @override
  String get autoBackupRestore => '恢复';

  @override
  String autoBackupConfirm(String date) {
    return '用 $date 的备份替换当前所有数据？';
  }

  @override
  String get autoBackupRestored => '已恢复。';

  @override
  String get errorLogTitle => '错误日志';

  @override
  String get errorLogHint => '出现问题时会记录在此：仅记录错误类型和代码位置，绝不包含您的内容。分享它以帮助修复问题。';

  @override
  String get errorLogEmpty => '没有记录到错误。';

  @override
  String get errorLogClear => '清除';

  @override
  String get soundsWithFocus => '随专注时段播放';

  @override
  String get soundsWithFocusHint => '混音随专注时段开始，休息时暂停。';

  @override
  String get soundsSavedMixes => '已保存的混音';

  @override
  String get soundsSaveMix => '保存此混音';

  @override
  String get soundsMixNameHint => '名称，例如：雨天书房';

  @override
  String soundsDeleteMix(String name) {
    return '删除混音“$name”？';
  }

  @override
  String get settingsReviewReminderHint => '每天一次，仅在有待复习卡片时';

  @override
  String get settingsReviewTime => '提醒时间';

  @override
  String get shortcutFocus => '专注';

  @override
  String get shortcutNewTask => '新建任务';

  @override
  String get shortcutReview => '复习卡片';

  @override
  String get shortcutSounds => '自然声音';

  @override
  String get myDayTitle => '开始我的一天';

  @override
  String get myDayHint => '一眼看清今天，一键开始专注';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今天 $count 项任务',
      zero: '今天没有任务',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => '今天没有更多日程';

  @override
  String myDayNextEvent(String title, String time) {
    return '下一个：$time $title';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '还剩 $count 个习惯',
      zero: '习惯已全部完成',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => '从一次专注开始';

  @override
  String get hijriMonth1 => '穆哈兰姆月';

  @override
  String get hijriMonth2 => '色法尔月';

  @override
  String get hijriMonth3 => '赖比尔·敖外鲁月';

  @override
  String get hijriMonth4 => '赖比尔·阿色尼月';

  @override
  String get hijriMonth5 => '主马达·敖外鲁月';

  @override
  String get hijriMonth6 => '主马达·阿色尼月';

  @override
  String get hijriMonth7 => '赖哲卜月';

  @override
  String get hijriMonth8 => '舍尔邦月';

  @override
  String get hijriMonth9 => '莱麦丹月';

  @override
  String get hijriMonth10 => '闪瓦鲁月';

  @override
  String get hijriMonth11 => '都尔喀尔德月';

  @override
  String get hijriMonth12 => '都尔黑哲月';

  @override
  String hijriDate(int day, String month, int year) {
    return '伊斯兰历 $year年 $month $day日';
  }

  @override
  String get settingsHijri => '伊斯兰历日期';

  @override
  String get settingsHijriHint => '在日历和首页显示（乌姆库拉历）';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '连续 $count 天');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '今天 $done/$goal 张卡片';
  }

  @override
  String get studyGoalReached => '今日目标已完成，真棒！';

  @override
  String get studyWeekTitle => '本周回顾';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '7 天内回答 $count 张卡片');
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '7 天专注 $duration';
  }

  @override
  String studyStreakLine(int current, int best) {
    return '连续：$current · 最佳：$best';
  }

  @override
  String get studyGoalTitle => '每日目标（卡片）';

  @override
  String get studyGoalOff => '关闭';

  @override
  String get focusDndTitle => '专注时勿扰';

  @override
  String get focusDndHint => '每次专注时开启，休息时恢复';

  @override
  String get focusDndNeedsAccess => '请在手机设置中允许访问';

  @override
  String get voiceInput => '语音输入';

  @override
  String get voiceInputPrompt => '请说话';

  @override
  String get voiceInputUnavailable => '此手机不支持语音输入。请安装或开启语音识别服务（例如 Google 语音服务）。';

  @override
  String get prayerFajr => '晨礼';

  @override
  String get prayerSunrise => '日出';

  @override
  String get prayerDhuhr => '晌礼';

  @override
  String get prayerAsr => '晡礼';

  @override
  String get prayerMaghrib => '昏礼';

  @override
  String get prayerIsha => '宵礼';

  @override
  String get prayerMethodMwl => '世界穆斯林联盟';

  @override
  String get prayerMethodUmmAlQura => '乌姆库拉（麦加）';

  @override
  String get prayerMethodEgypt => '埃及测绘总局';

  @override
  String get prayerMethodJordan => '约旦宗教基金部';

  @override
  String get prayerMethodKarachi => '卡拉奇伊斯兰科学大学';

  @override
  String get prayerMethodIsna => '北美伊斯兰协会';

  @override
  String get prayerMethodGulf => '海湾地区';

  @override
  String get prayerMethodKuwait => '科威特';

  @override
  String get prayerMethodQatar => '卡塔尔';

  @override
  String get prayerMethodTurkey => '土耳其宗教事务局';

  @override
  String get prayerMethodSingapore => '新加坡、马来西亚、印尼';

  @override
  String get prayerMethodFrance => '法国（12°）';

  @override
  String get prayerMethodRussia => '俄罗斯穆斯林宗教管理局';

  @override
  String prayerNotifTitle(String name) {
    return '$name时间到了';
  }

  @override
  String prayerNotifBody(String time) {
    return '礼拜时间 · $time';
  }

  @override
  String get prayerTitle => '礼拜时间';

  @override
  String get prayerOffHint => '选择城市即可查看礼拜时间。在手机上计算，无需位置权限。';

  @override
  String get prayerChooseCity => '选择城市';

  @override
  String get prayerCity => '城市';

  @override
  String get prayerCitySearch => '搜索城市';

  @override
  String get prayerMethod => '计算方法';

  @override
  String get prayerHanafiAsr => '哈乃斐派晡礼（较晚）';

  @override
  String get prayerReminders => '每次礼拜时提醒';

  @override
  String get prayerPauseFocus => '礼拜时暂停专注';

  @override
  String get prayerPauseFocusHint => '进行中的专注会暂停，礼拜后可继续';

  @override
  String get prayerTurnOff => '关闭礼拜时间';

  @override
  String get prayerAccuracyNote => '计算时间可能与当地清真寺相差几分钟。';

  @override
  String prayerNext(String name, String time) {
    return '$time $name';
  }

  @override
  String get importAnkiNewFormat => '此 Anki 文件为最新格式。请在 Anki 中勾选“支持旧版 Anki”后重新导出，再导入该文件。';

  @override
  String get importTemplate => '表格模板';

  @override
  String get importTemplateFront => '苹果';

  @override
  String get importTemplateBack => '一种圆形水果';

  @override
  String get importTemplateExample => '我每天吃一个苹果。';

  @override
  String get importTemplateTag => '食物';

  @override
  String get starterTitle => '入门卡组';

  @override
  String get starterHint => '添加一个立即开始学习，之后可编辑或删除。';

  @override
  String get starterAdd => '添加';

  @override
  String get starterWords => '日常英语单词（阿拉伯语）';

  @override
  String get starterCapitals => '世界各国首都';

  @override
  String get starterElements => '化学元素';

  @override
  String get settingsAccent => '强调色';

  @override
  String get accentViolet => '紫色';

  @override
  String get accentBlue => '蓝色';

  @override
  String get accentTeal => '青色';

  @override
  String get accentGreen => '绿色';

  @override
  String get accentRose => '玫红';

  @override
  String get accentAmber => '琥珀色';

  @override
  String get settingsFlashTextSize => '卡片文字大小';

  @override
  String get settingsFlashTextSample => '示例';

  @override
  String get widgetStartFocus => '点按开始专注';

  @override
  String widgetFocusUntil(String time) {
    return '专注至 $time';
  }

  @override
  String get widgetNoCardsDue => '卡片：已全部完成';

  @override
  String get faqMyDayQ => '“开始我的一天”有什么用？';

  @override
  String get faqMyDayA =>
      '首页每天出现一次：查看今日任务、下一个日程、剩余习惯和待复习卡片，然后一键开始专注。长按应用图标可使用快捷操作，也可添加桌面小部件查看专注时间和待复习卡片。';

  @override
  String get faqTasksQ => '如何添加带提醒的任务？';

  @override
  String get faqTasksA => '在首页点“新建任务”或在任务中点 +。输入标题或用麦克风说出，然后设置截止日期、时间和提醒。逾期任务排在最前。';

  @override
  String get faqFocusQ => '专注计时器如何使用？';

  @override
  String get faqFocusA => '选择番茄钟、倒计时或自由计时并点“开始”，休息可自动开始。在设置中可选择结束提示音、专注时开启勿扰，并在每次专注时播放自然声音。';

  @override
  String get faqSoundsQ => '可以混合自然声音吗？';

  @override
  String get faqSoundsA => '最多同时开启六种真实录音，分别调节音量并命名保存。可在后台播放，睡眠定时器可自动停止。不含任何音乐。';

  @override
  String get faqCalendarQ => '日历能显示伊斯兰历吗？';

  @override
  String get faqCalendarA => '可以。阿拉伯语下自动显示伊斯兰历（乌姆库拉历），其他语言可在设置中开启。日程、有截止日期的任务和项目里程碑会一起显示。';

  @override
  String get faqFlashcardsQ => '复习时如何决定显示哪些卡片？';

  @override
  String get faqFlashcardsA =>
      '掌握好的卡片间隔更久再出现，答错的很快再出现（间隔重复）。每次作答选择“重来”“困难”“良好”或“简单”。可设置每日目标，并在“今天”卡片上保持连续天数。 在卡组中设置考试日期，即可看到剩余天数和每天要学的新卡片数。 选择“我的顺序”即可拖动卡片排序，点按任一面的喇叭收听，并在朗读菜单中设置语速和重复次数。';

  @override
  String get faqImportQ => '可以从 Anki 或 Excel 导入卡片吗？';

  @override
  String get faqImportA =>
      '可以。在卡组中选择“导入”，再选文件：Anki（.apkg）、Excel（.xlsx）或 CSV，并匹配各列。可用“表格模板”在电脑上编写卡片。Anki 文件中的图片和声音不会导入。';

  @override
  String get faqNotesQ => '笔记能做什么？';

  @override
  String get faqNotesA =>
      '可使用清单和格式自由书写，置顶或收藏重要笔记，添加标签并关联到任务。点击麦克风按钮即可语音输入。 新笔记可从模板开始（课堂笔记、读书笔记、日记、周计划），图片按钮可添加照片。';

  @override
  String get faqHabitsQ => '习惯的连续天数如何计算？';

  @override
  String get faqHabitsA => '在计划的日子达到习惯目标即计为一天。暂停习惯不会中断连续天数。每个习惯都可设置自己的提醒时间。';

  @override
  String get faqGoalsQ => '目标如何跟踪进度？';

  @override
  String get faqGoalsA => '为目标设定数量和单位，然后记录进度。目标卡片会显示完成情况以及截止前还剩多少。';

  @override
  String get faqProjectsQ => '项目有什么用？';

  @override
  String get faqProjectsA => '将任务归入项目，添加带日期的里程碑并查看整体进度。里程碑也会显示在日历中。';

  @override
  String get faqInsightsQ => '洞察页显示什么？';

  @override
  String get faqInsightsA => '按天和周显示专注时间、完成的任务和学习情况，并给出温和建议。全部在手机上计算。';

  @override
  String get faqSpacesQ => '所有板块在哪里？';

  @override
  String get faqSpacesA => '“空间”汇集了应用的所有部分（笔记、卡组、习惯、目标、项目、声音等），让主导航栏保持简洁。';

  @override
  String get faqBackupQ => '我的数据如何备份？';

  @override
  String get faqBackupA => '应用每天会在本机自动保存一份加密副本，并保留最近 7 份。也可在设置中导出带密码的备份文件，在另一部手机上恢复。';

  @override
  String get faqPrayerQ => '礼拜时间如何使用？';

  @override
  String get faqPrayerA => '在“设置 → 礼拜时间”中选择城市。时间在手机上按当地常用方法计算，可更改计算方法和晡礼学派。可在每次礼拜时收到提醒，进行中的专注会暂停。';

  @override
  String get faqPrivacyQ => '我的数据存储在哪里？';

  @override
  String get faqPrivacyA => '仅保存在你的手机上，使用加密数据库。无需账号，没有跟踪。只有你主动开启的功能（如可选助手）才会联网。';

  @override
  String get faqAssistantQ => '助手是什么？';

  @override
  String get faqAssistantA => '一个可选助手，可在设置中连接你自己的 AI 服务。默认关闭，发送笔记内容前会先征得同意。';

  @override
  String get tourPlanTitle => '规划你的一天';

  @override
  String get tourPlanBody => '任务、日历和习惯集中在一个安静的地方。每天早上从“开始我的一天”开始。';

  @override
  String get tourFocusTitle => '深度专注';

  @override
  String get tourFocusBody => '带真实自然声音、勿扰模式和柔和提示音的计时专注。';

  @override
  String get tourLearnTitle => '学而不忘';

  @override
  String get tourLearnBody => '间隔重复卡片、多语言朗读，并支持从 Anki 或 Excel 导入。';

  @override
  String get helpTitle => '帮助与常见问题';

  @override
  String get helpOpen => '打开';

  @override
  String get helpTour => '查看导览';

  @override
  String get tourNext => '下一步';

  @override
  String get tourDone => '开始吧';

  @override
  String get transferColTitle => '标题';

  @override
  String get transferColNotes => '备注';

  @override
  String get transferColBody => '正文';

  @override
  String get transferColDue => '截止日期';

  @override
  String get transferColPriority => '优先级 (0-3)';

  @override
  String get transferColDone => '已完成';

  @override
  String get transferColProject => '项目';

  @override
  String get transferColCategory => '类别';

  @override
  String get transferTitle => '导入和导出';

  @override
  String get transferSaveAs => '另存为';

  @override
  String get transferImport => '从文件导入';

  @override
  String get transferImportTasksHint =>
      'Excel、CSV 或 Word 表格。列：标题、截止日期（2026-12-31）、优先级 0-3、已完成、项目、备注。已有任务会被跳过。';

  @override
  String get transferImportNotesHint => 'Word、Markdown 或文本文件会成为一条笔记。Excel 或 CSV：每行一条笔记（标题、正文）。';

  @override
  String get transferSaved => '文件已保存';

  @override
  String get transferFailed => '无法生成文件，未做任何更改。';

  @override
  String get transferUnsupported => '此处无法读取该文件。请使用 Excel、CSV、Word、Markdown 或文本。';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(added, locale: localeName, other: '已添加 $added 项');
    return '$_temp0';
  }

  @override
  String get transferFormatText => '文本';

  @override
  String get transferAllNotes => '全部笔记';

  @override
  String get transferThisNote => '这条笔记';

  @override
  String get transferDeckFormats => '保存为 Excel、Word 或 PDF';

  @override
  String get faqFilesQ => '可以使用 Excel、Word 或 PDF 文件吗？';

  @override
  String get faqFilesA =>
      '可以。任务和笔记顶部有导入导出按钮（两个箭头），每个卡组的菜单里也有。可保存为 Excel、CSV、Word 或 PDF，也可导入 Excel、CSV、Word、Markdown 或文本文件。列名可用应用支持的任意语言，保存的文件随时可再次导入。';

  @override
  String get tplLecture => '课堂笔记';

  @override
  String get tplBook => '读书笔记';

  @override
  String get tplJournal => '日记';

  @override
  String get tplWeek => '周计划';

  @override
  String get tplLectureBody => '## 要点\n- \n\n## 问题\n- [ ] \n\n## 总结\n';

  @override
  String get tplBookBody => '## 核心观点\n\n## 我的收获\n- \n\n## 摘录\n> \n\n## 行动\n- [ ] \n';

  @override
  String get tplJournalBody => '## 感恩\n- \n\n## 今日重点\n- [ ] \n\n## 随记\n';

  @override
  String get tplWeekBody =>
      '## 本周目标\n- [ ] \n\n### 周六\n- [ ] \n\n### 周日\n- [ ] \n\n### 周一\n- [ ] \n\n### 周二\n- [ ] \n\n### 周三\n- [ ] \n\n### 周四\n- [ ] \n\n### 周五\n- [ ] \n';

  @override
  String get tplHint => '从模板开始';

  @override
  String get noteImage => '图片';

  @override
  String get noteAddImage => '添加图片';

  @override
  String get noteImageUnreadable => '该文件不是应用可读取的图片。';

  @override
  String get noteImageTooLarge => '图片过大。';

  @override
  String get examSet => '设置考试日期';

  @override
  String get examDate => '考试日期';

  @override
  String get examToday => '今天考试，祝你好运！';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count 天后考试');
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '每天学习 $count 张新卡片');
    return '$_temp0';
  }

  @override
  String get examAllLearnt => '已全部学完，继续复习';

  @override
  String examRaiseLimit(int count) {
    return '每天显示 $count 张新卡片';
  }

  @override
  String get backupDriveHint => '如需在线保存副本，请在接下来打开的保存界面中选择 Google 云端硬盘（或其他云存储应用）。';

  @override
  String get flashShareDeck => '与朋友分享卡组';

  @override
  String get flashSortManual => '我的顺序（拖动）';

  @override
  String get flashReorderHint => '按住手柄并拖动卡片即可移动。';

  @override
  String get flashReorderNeedsAll => '清除搜索和筛选后才能拖动卡片。';

  @override
  String get flashDragHandle => '拖动移动';

  @override
  String get reportTitle => '月度报告';

  @override
  String get reportSubtitle => '本月专注、卡片、任务和习惯，可直接保存';

  @override
  String get reportFocus => '专注时间';

  @override
  String reportSessions(int count) {
    return '$count 次专注';
  }

  @override
  String reportBestDay(String day, String time) {
    return '最佳一天：$day（$time）';
  }

  @override
  String reportActiveDays(int count) {
    return '$count 个活跃日';
  }

  @override
  String get reportCards => '复习的卡片';

  @override
  String reportCardsKnown(String percent) {
    return '记住 $percent';
  }

  @override
  String get reportTasks => '完成的任务';

  @override
  String get reportHabits => '习惯打卡';

  @override
  String get reportEmpty => '本月还没有记录。';

  @override
  String get reportSave => '保存为 PDF 或 Word';

  @override
  String get reportPrevMonth => '上个月';

  @override
  String get reportNextMonth => '下个月';

  @override
  String get careTitle => '手机与数据维护';

  @override
  String get storageTitle => '存储空间';

  @override
  String get storageSubtitle => '占用情况与清理未使用的图片';

  @override
  String get storagePictures => '笔记中的图片';

  @override
  String get storageCardMedia => '卡片中的图片和音频';

  @override
  String get storageText => '笔记文字';

  @override
  String get storageFree => '手机可用空间';

  @override
  String get storageLow => '手机存储空间快满了。请释放一些空间，以免备份和提醒失效。';

  @override
  String storageUnused(int count, String size) {
    return '$count 张未使用的图片（$size）';
  }

  @override
  String get storageNoUnused => '没有未使用的图片，一切整洁。';

  @override
  String get storageClean => '删除未使用的图片';

  @override
  String storageCleaned(int count) {
    return '已删除 $count 张图片';
  }

  @override
  String get storageHint => '只有在没有任何笔记（包括回收站中的笔记）使用时，图片才算未使用。';

  @override
  String get batteryTitle => '让提醒始终有效';

  @override
  String get batterySubtitle => '部分手机会限制后台应用，请检查你的手机。';

  @override
  String get batteryStatusOk => '省电模式未限制本应用，提醒和声音应能准时到达。';

  @override
  String get batteryStatusLimited => '省电模式可能在后台停止本应用，提醒和声音可能延迟或丢失。';

  @override
  String get batteryOpen => '打开电池设置';

  @override
  String get batteryOpenApp => '打开应用设置';

  @override
  String get batteryGeneric => '在电池设置中选择本应用，设为“无限制”（或“不优化”）。';

  @override
  String get batteryXiaomi => '小米 / Redmi / POCO：还需在“安全 › 权限 › 自启动”中开启本应用，并将省电策略设为“无限制”。';

  @override
  String get batteryOppo => 'Oppo / Realme / OnePlus：进入“电池 › 本应用”，允许后台活动和自启动，并在最近任务中锁定本应用。';

  @override
  String get batterySamsung => '三星：电池 › 后台使用限制：将本应用从“休眠应用”和“深度休眠应用”中移除。';

  @override
  String get batteryHuawei => '华为 / 荣耀：“应用启动管理 › 本应用 › 手动管理”，允许自启动、关联启动和后台活动。';

  @override
  String get batteryVivo => 'vivo / iQOO：“电池 › 后台耗电管理”中允许本应用，并在权限中开启自启动。';

  @override
  String get whatsNewTitle => '新功能';

  @override
  String get whatsNewSubtitle => '最近更新一览';

  @override
  String get whatsNewDone => '知道了';

  @override
  String get whatsNewOrderTitle => '拖动卡片自定义顺序';

  @override
  String get whatsNewOrderBody => '在卡组中选择“排序 › 我的顺序”，按住手柄拖动。';

  @override
  String get whatsNewSpeechTitle => '每面都有朗读按钮';

  @override
  String get whatsNewSpeechBody => '点按即可听单词或译文。语速、重复和声音在复习菜单中，语言会根据文字自动识别。';

  @override
  String get whatsNewReportTitle => '月度报告';

  @override
  String get whatsNewReportBody => '在统计中点按报告图标，查看本月并保存为 PDF 或 Word。';

  @override
  String get whatsNewCareTitle => '手机与数据维护';

  @override
  String get whatsNewCareBody => '设置中新增存储页面（可清理图片）和针对手机品牌的电池指南。';

  @override
  String get whatsNewSoundTitle => '更柔和的声音';

  @override
  String get whatsNewSoundBody => '自然声音更柔和更轻，图片卡片也更美观。';

  @override
  String autoBackupCheckOk(String date) {
    return '$date 已检查：最新备份可正常打开。';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return '$date 已检查：发现损坏的备份，已用新备份替换。';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return '$date 已检查：无法打开最新备份。请在设置中手动保存备份文件。';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return '你通常在 $time 左右学习';
  }

  @override
  String get smartReviewTimeUse => '使用';

  @override
  String get widgetNewNote => '新笔记';

  @override
  String get noteConnections => '标签、链接和任务';

  @override
  String get navCards => '卡片';

  @override
  String get studyAnswerWay => '答题方式';

  @override
  String get studyMorePractice => '额外练习';

  @override
  String get studySessionSettings => '本轮设置';

  @override
  String get focusAdjustTitle => '你的专注';

  @override
  String get focusPresetsTitle => '预设';

  @override
  String get focusPresetStudy => '学习';

  @override
  String get focusPresetDeep => '深度工作';

  @override
  String get focusPresetQuick => '快速冲刺';

  @override
  String get focusPresetReading => '阅读';

  @override
  String get focusPresetWorkout => '运动回合';

  @override
  String get focusAdjustMinutes => '专注时长';

  @override
  String get focusAdjustBreak => '休息时长';

  @override
  String get focusAdjustRounds => '回合数';

  @override
  String get focusRoundsOpen => '不限';

  @override
  String focusMinutesShort(String n) {
    return '$n 分钟';
  }

  @override
  String get focusTapToAdjust => '点按以修改时间';

  @override
  String get flashArrangeDecks => '排列卡组';

  @override
  String get flashDeckActions => '卡组选项';

  @override
  String get starterBrowse => '现成卡组';

  @override
  String get starterBrowseHint => '轻点添加，马上开始学习';

  @override
  String get dashOpenDecks => '打开你的卡片';

  @override
  String speechVoiceNumber(String n) {
    return '语音 $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return '专注得很好。休息 $m 分钟？';
  }

  @override
  String get focusFlowBreakStart => '开始休息';

  @override
  String tasksFinishAt(String time) {
    return '现在开始，$time 前全部完成';
  }

  @override
  String get focusCalmPacing => '平静节奏';

  @override
  String get focusCalmPacingHint => '只显示整分钟和圆环，不显示秒';

  @override
  String get focusFlipHint => '将手机屏幕朝下即可开始';

  @override
  String get focusImmersive => '沉浸模式';

  @override
  String get focusImmersiveBlack => '纯黑（省电）';

  @override
  String get focusFlipToFocus => '翻转开始专注';

  @override
  String get focusFlipToFocusHint => '沉浸模式下：屏幕朝下开始，拿起暂停';

  @override
  String get guardTitle => '防分心守护';

  @override
  String get guardSubtitle => '专注时暂停分心应用';

  @override
  String get guardSwitch => '暂停分心应用';

  @override
  String get guardSwitchHint => '在专注时段和定时守护时间内';

  @override
  String get guardNeedsAccess => '需要开启无障碍权限：点按开启';

  @override
  String get guardDisclosureTitle => '守护如何工作';

  @override
  String get guardDisclosureBody =>
      '为了暂停你选择的应用，Deep Focus 使用 Android 无障碍服务来查看当前打开的应用。开启“关闭 Shorts 和 Reels”后，还会检查屏幕上是否有短视频播放器。\n\n它不读取任何文字，不保存看到的内容，也不发送任何数据：一切都留在你的手机上。你可以随时在无障碍设置中关闭它。';

  @override
  String get guardAgree => '同意并打开设置';

  @override
  String get guardModeGentle => '温和';

  @override
  String get guardModeStrict => '严格';

  @override
  String get guardGentleHint => '先呼吸 5 秒，再由你决定';

  @override
  String get guardStrictHint => '所选应用在专注结束前保持关闭';

  @override
  String get guardApps => '要暂停的应用';

  @override
  String get guardAppsAllowed => '允许的应用';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个应用',
      zero: '尚未选择',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => '仅允许所选应用';

  @override
  String get guardAllowlistHint => '其他应用都会暂停；通话、设置和键盘始终可用';

  @override
  String get guardShorts => '关闭 Shorts 和 Reels';

  @override
  String get guardShortsHint => '守护开启时随时生效。尽力而为：这些应用经常更新';

  @override
  String get guardSchedule => '定时守护';

  @override
  String get guardScheduleHint => '也在固定日期和时段守护，如上课或工作';

  @override
  String get guardFrom => '开始';

  @override
  String get guardTo => '结束';

  @override
  String get guardSearchApps => '搜索应用';

  @override
  String get guardNoApps => '未找到应用';

  @override
  String get guardPrivacy => '仅在你的手机上运行：只看当前打开的是哪个应用，从不看其中内容，也不发送任何数据。';

  @override
  String get guardBreathe => '吸气……呼气';

  @override
  String get guardQuestion => '你现在需要这个应用吗？';

  @override
  String get guardBackToFocus => '回到专注';

  @override
  String get guardOpenFive => '打开 5 分钟';

  @override
  String get guardStrictBody => '此应用在专注结束前已暂停。';

  @override
  String get guardShortsClosed => '守护开启期间短视频已关闭';

  @override
  String get faqGuardQ => '专注时如何阻止分心应用？';

  @override
  String get faqGuardA =>
      '打开 专注 → 计时器设置 → 防分心守护。选择应用，然后选温和（呼吸 5 秒并询问“你现在需要这个应用吗？”）或严格（保持关闭）。它在专注时段生效；开启定时守护后，也会在你设定的日期和时段生效。“仅允许所选应用”会暂停其他所有应用；通话、设置和键盘始终可用。Android 会请你在无障碍设置中开启一次。它只看当前打开的是哪个应用，不发送任何数据。';

  @override
  String notesMovedToNotebook(String name) {
    return '已移至 $name';
  }

  @override
  String get notesDragHint => '长按笔记并拖到笔记本上';

  @override
  String get guardReviewCards => '改为复习卡片';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '有 $count 张卡片在等你');
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => '紧急：按住 10 秒';

  @override
  String guardEmergencyHolding(Object n) {
    return '继续按住… $n';
  }

  @override
  String get guardWeekTitle => '本周';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '暂停 $count 次');
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '回到专注 $count 次');
    return '$_temp0';
  }
}
