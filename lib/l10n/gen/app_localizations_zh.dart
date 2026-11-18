// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Future OS';

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
  String get importCardsHint => '每行粘贴一张卡片，正面和背面用制表符或分号分隔；也可以粘贴导出的卡组文件。';

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
  String get backupNotABackup => '此文件不是 Future OS 备份。';

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
  String get backupShareSubject => 'Future OS 加密备份';

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
}
