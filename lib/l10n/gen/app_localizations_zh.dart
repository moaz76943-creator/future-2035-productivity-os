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
  String get analyticsRangeLabel => 'Time range';

  @override
  String get analyticsRefresh => 'Refresh';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done of $total due tasks done on time';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done of $total tasks done';
  }

  @override
  String get analyticsNoProjects => 'No active projects';

  @override
  String get analyticsNoFocus => 'No focus sessions in this range';

  @override
  String get analyticsHabitsNone => 'No active habits';

  @override
  String get analyticsRetentionNote => 'Share of mature cards you remembered';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Free time counts $start–$end on workdays ($days), minus timed events. Estimated work is the sum of estimates of open tasks due in the next 7 days.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Monday–Friday';

  @override
  String get assistantWorkdaysSunThu => 'Sunday–Thursday';

  @override
  String get assistantWorkloadDayOff => 'Day off';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planned · $free free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planned from now until $end, around today\'s events. Overdue tasks first, then priority, due date and estimate.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Schedule as time blocks';

  @override
  String get assistantScheduleConfirmTitle => 'Add time blocks to your calendar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time blocks will be added to today\'s calendar.',
      one: '1 time block will be added to today\'s calendar.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time blocks added',
      one: '1 time block added',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Already on your calendar';

  @override
  String get assistantPlanTimeline => 'Fits today';

  @override
  String get assistantNoEstimate => 'Add an estimate to plan these';

  @override
  String get assistantNoNotes => 'No notes yet. Write a note first.';

  @override
  String get assistantNoteEmpty => 'This note is empty.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks created',
      one: '1 task created',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards created',
      one: '1 card created',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Create $count',
      one: 'Create 1',
      zero: 'Nothing selected',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Recognized: unchecked checkboxes \"- [ ]\" and lines starting with TODO: or To do:';

  @override
  String get assistantCardsHint =>
      'Recognized: \"term: definition\", \"term — definition\" and Q:/A: line pairs';

  @override
  String get assistantProviderHint =>
      'Use any OpenAI-compatible service. The key stays in this device\'s secure storage and is never included in backups.';

  @override
  String get assistantEndpointHelp => 'For example https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Leave empty to keep the stored key';

  @override
  String get assistantApiKeyRequired => 'Enter an API key';

  @override
  String get assistantProviderSaved => 'Provider saved';

  @override
  String get assistantProviderRemoved => 'Provider removed and key deleted';

  @override
  String get assistantRemoveProviderConfirm =>
      'Remove the provider and delete the stored API key from this device?';

  @override
  String get assistantAskEveryTime => 'Ask before every request';

  @override
  String get assistantSummarizing => 'Summarizing…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generated by $host. Review before relying on it.';
  }

  @override
  String get assistantCopy => 'Copy';

  @override
  String get assistantCopied => 'Copied';

  @override
  String get assistantConfigure => 'Set up provider';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'All events in this series were moved';

  @override
  String get calendarEventReminder => 'Reminder';

  @override
  String get calendarEventRepeat => 'Repeat';

  @override
  String get calendarEventColor => 'Color';

  @override
  String get calendarDefaultColor => 'Use type color';

  @override
  String get calendarEventLinkedTask => 'Linked task';

  @override
  String get calendarEventNoTask => 'No linked task';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events',
      one: '1 event',
      zero: 'No events',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks due',
      one: '1 task due',
      zero: 'no tasks due',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Add an event or a time block to plan this day.';

  @override
  String get calendarNow => 'Current time';

  @override
  String get calendarRecurring => 'Repeats';

  @override
  String get calendarEventNotFound => 'This event no longer exists';

  @override
  String get calendarEventLocalTime => 'Times are shown in your device\'s time zone';

  @override
  String get calendarEventDeleted => 'Event moved to trash';

  @override
  String get calendarConflictMarker => 'Overlaps another event';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Changes apply to every event in this series';

  @override
  String get calendarDragHintSeries => 'Dragging a repeating event moves the whole series';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, task due';
  }

  @override
  String get startupErrorTitle => 'Your data could not be opened';

  @override
  String get startupErrorLocked =>
      'The encryption key for this device\'s data is not available. Nothing has been deleted. Restarting the device often helps. If you recently restored the device, restore your data from an encrypted backup instead.';

  @override
  String get startupErrorCipher =>
      'This device does not support the encrypted storage the app requires. Nothing has been saved unencrypted.';

  @override
  String get startupErrorRetry => 'Try again';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards are due for review',
      one: '1 card is due for review',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count due';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count new';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Mature cards: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Enter 0 or more';

  @override
  String get flashcardsSearchCards => 'Search cards';

  @override
  String get flashcardsSearchEmpty => 'No cards match your search';

  @override
  String get flashcardsCardAdded => 'Card added';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Due $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copy to clipboard';

  @override
  String get flashcardsExportTitle => 'Export deck';

  @override
  String get flashcardsDeleteDeck => 'Delete deck';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, next review in $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Question: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Answer: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Show question';

  @override
  String get flashcardsImportField => 'Cards to import';

  @override
  String get flashcardsNothingToStudy => 'Nothing to study';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards ready to study',
      one: '1 card ready to study',
      zero: 'No cards ready',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'By rating';

  @override
  String get flashcardsDeckNotFound => 'This deck is no longer available.';

  @override
  String get focusSessionDeleted => 'Session deleted';

  @override
  String get focusDeleteConfirm =>
      'Delete this session from your history? Its time will no longer count toward your targets.';

  @override
  String get focusUnlinkTask => 'Remove linked task';

  @override
  String get focusNoteHint => 'What did you work on?';

  @override
  String get focusTargetCaption => 'Measured from saved sessions';

  @override
  String get focusModeLabel => 'Timer mode';

  @override
  String focusUpNext(String phase) {
    return 'Up next: $phase';
  }

  @override
  String get focusStopwatchHint => 'Counts up until you stop.';

  @override
  String get focusOpenHint => 'No time limit. Stop whenever you are done.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Reminders are turned off in settings. You will not be alerted when a session ends.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'All';

  @override
  String get goalsFilterPeriod => 'Period filter';

  @override
  String get goalsFilterStatus => 'Status filter';

  @override
  String get goalsEmptyFiltered => 'No goals match this filter';

  @override
  String goalsDueOn(String date) {
    return 'Due $date';
  }

  @override
  String get goalsDeadline => 'Deadline (optional)';

  @override
  String get goalsNoDeadline => 'No deadline';

  @override
  String get goalsSetDeadline => 'Set deadline';

  @override
  String get goalsRemoveDeadline => 'Remove deadline';

  @override
  String get goalsDescription => 'Description (optional)';

  @override
  String get goalsTitleLabel => 'Title';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Target reached';

  @override
  String get goalsLogged => 'Progress logged';

  @override
  String get goalsEntryDeleted => 'Entry removed';

  @override
  String get goalsDeleteEntry => 'Remove entry';

  @override
  String get goalsDeleted => 'Goal deleted';

  @override
  String get goalsMarkActive => 'Mark as active';

  @override
  String get goalsNotFound => 'This goal is no longer available';

  @override
  String get goalsLinkTask => 'Link a task';

  @override
  String get goalsNoLinkedTasks => 'No linked tasks yet';

  @override
  String get goalsUnlinkTask => 'Unlink task';

  @override
  String get goalsTaskOpen => 'Not completed yet';

  @override
  String get goalsTaskLinked => 'Task linked';

  @override
  String get goalsTaskUnlinked => 'Task unlinked';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count completed linked tasks',
      one: '1 completed linked task',
    );
    return 'Includes $_temp0 this period';
  }

  @override
  String get goalsHistoryAllTime =>
      'Entries from earlier periods are kept here but count only toward their own period.';

  @override
  String goalsPercentOfTarget(String percent) {
    return '$percent of target';
  }

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done of $total done today';
  }

  @override
  String get habitsNothingToday => 'No habits are scheduled for today';

  @override
  String get habitsDecrease => 'Remove one check-in';

  @override
  String get habitsResetToday => 'Reset today';

  @override
  String get habitsCheckInHint => 'Long-press to adjust';

  @override
  String get habitsName => 'Name';

  @override
  String get habitsColor => 'Color';

  @override
  String get habitsValidationDays => 'Choose at least one day';

  @override
  String habitsReminderAt(String time) {
    return 'Every day at $time';
  }

  @override
  String get habitsSetReminder => 'Set a reminder time';

  @override
  String get habitsRemoveReminder => 'Remove reminder';

  @override
  String get habitsReminderNote =>
      'Reminders appear on scheduled days when notifications are allowed.';

  @override
  String get habitsArchived => 'Habit archived';

  @override
  String get habitsNotFound => 'This habit is no longer available';

  @override
  String get habitsLast30 => 'Last 30 days';

  @override
  String get habitsConsistencyNone => 'Not enough data yet';

  @override
  String get habitsCalendar => 'Check-in history';

  @override
  String get habitsCalendarHint => 'Tap a day to correct it.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count of $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Check-ins over the last 90 days. Consistency $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Check-ins over the last 90 days. Not enough data yet.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Paused days don\'t affect your streak.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archive habit';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count times a day',
      one: 'Once a day',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Other notes';

  @override
  String get notesAllNotebooks => 'All notebooks';

  @override
  String get notesNotebookName => 'Notebook name';

  @override
  String get notesNotebookColor => 'Color';

  @override
  String get notesDeleteNotebook => 'Delete notebook';

  @override
  String get notesDeleteNotebookMessage =>
      'The notebook is removed. Its notes are kept and appear under All notebooks.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Pin important notes to keep them at the top.';

  @override
  String get notesEmptyFavorites => 'Notes you mark as favorite appear here.';

  @override
  String get notesEmptyArchived => 'Archived notes appear here.';

  @override
  String get notesEmptyFiltered => 'No notes match these filters.';

  @override
  String get notesArchivedSnack => 'Note archived';

  @override
  String get notesUnarchivedSnack => 'Note moved back to your notes';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done of $total done';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatting';

  @override
  String get notesWrite => 'Write';

  @override
  String get notesPreviewEmpty => 'Nothing to preview yet.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'No other notes link here yet. Link to this note with [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle => 'Give this note a title so other notes can link to it.';

  @override
  String get notesLinkedTasksEmpty => 'No tasks linked to this note.';

  @override
  String notesLinkMissing(String title) {
    return 'There is no note titled \"$title\" yet.';
  }

  @override
  String get notesNotFound => 'This note no longer exists.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Checklist item: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Open note $title';
  }

  @override
  String get notesTagsHint => 'Add tags by writing #tag in the note.';

  @override
  String get notesTaskDone => 'Completed';

  @override
  String get notifTimerDoneBody => 'The time you set has passed.';

  @override
  String get onboardingPrivatePointDevice => 'Stored only on this device, encrypted';

  @override
  String get onboardingPrivatePointAccount => 'No account needed';

  @override
  String get onboardingPrivatePointTracking => 'No analytics, no tracking';

  @override
  String get onboardingLanguageBody => 'You can change this anytime in Settings.';

  @override
  String get onboardingNext => 'Next';

  @override
  String get projectsActive => 'Active';

  @override
  String get projectNameHint => 'e.g. Product launch';

  @override
  String get projectGoalHint => 'What does done look like?';

  @override
  String get projectNoDeadline => 'No deadline';

  @override
  String get projectTasksOpen => 'Open tasks';

  @override
  String get projectTasksCompleted => 'Completed tasks';

  @override
  String get projectAddTask => 'Add task to project';

  @override
  String get projectAddNote => 'New project note';

  @override
  String get projectLinkedNotes => 'Notes';

  @override
  String get projectNoTasks => 'No tasks in this project yet';

  @override
  String get projectArchivedBadge => 'Archived';

  @override
  String get projectDeleted => 'Project moved to trash';

  @override
  String get projectDeleteMessage => 'Tasks stay in your list without a project.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent percent complete';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count results',
      one: '1 result',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filter by type';

  @override
  String searchRecentTap(String query) {
    return 'Search again for $query';
  }

  @override
  String get settingsLanguageHint =>
      'Choose the language for the whole app. Names are shown in their own language.';

  @override
  String get settingsThemeHint => 'Light, dark or follow the system';

  @override
  String settingsDecrease(String setting) {
    return 'Decrease $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Increase $setting';
  }

  @override
  String get settingsQuietStart => 'Starts';

  @override
  String get settingsQuietEnd => 'Ends';

  @override
  String get settingsNotificationsHint =>
      'This saves your preference in the app. The system may also ask for permission.';

  @override
  String get settingsDashboardHint => 'Drag to reorder. Turn off sections you do not need.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reorder $section';
  }

  @override
  String get settingsDashboardReset => 'Restore default order';

  @override
  String get settingsAssistantDesc =>
      'Optional planning help. Nothing leaves this device unless you connect a provider.';

  @override
  String get settingsAssistantSetup => 'Assistant and provider setup';

  @override
  String get settingsTrashDesc => 'Restore or permanently delete removed items';

  @override
  String get settingsEraseFirstBody =>
      'This cannot be undone. Consider creating an encrypted backup first.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Type $word';
  }

  @override
  String get settingsEraseFailed => 'Data could not be erased. Nothing was changed.';

  @override
  String get settingsAboutTagline => 'A private, local-first productivity workspace.';

  @override
  String get backupShowPassword => 'Show password';

  @override
  String get backupHidePassword => 'Hide password';

  @override
  String get backupSaved => 'Backup saved';

  @override
  String get backupFailed => 'The backup could not be created. Your data is unchanged.';

  @override
  String get backupReadFailed => 'The selected file could not be read.';

  @override
  String get backupRestoreFailed => 'Restore failed. Nothing was changed.';

  @override
  String get backupShareSubject => 'Future OS encrypted backup';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count days',
      one: 'Every day',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count weeks',
      one: 'Every week',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count months',
      one: 'Every month',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count years',
      one: 'Every year',
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
    return 'on $days';
  }

  @override
  String get repeatEndsLabel => 'Ends';

  @override
  String get repeatEndsAfter => 'After a number of times';

  @override
  String get repeatCountLabel => 'Occurrences';

  @override
  String get reminderNone => 'No reminder';

  @override
  String get reminderCustomTime => 'At a specific time';

  @override
  String get a11yDecrease => 'Decrease';

  @override
  String get a11yIncrease => 'Increase';

  @override
  String get pickTaskTitle => 'Choose a task';

  @override
  String get pickTaskEmpty => 'No open tasks';

  @override
  String get tasksSearchTooltip => 'Search tasks';

  @override
  String get tasksSectionOverdue => 'Overdue';

  @override
  String get tasksSectionToday => 'Today';

  @override
  String get tasksRecurringSemantics => 'Repeats';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimum priority';

  @override
  String get tasksFilterCategory => 'Category';

  @override
  String get tasksFilterAnyCategory => 'Any category';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Any label';

  @override
  String get tasksFilterReset => 'Reset filters';

  @override
  String get tasksViewByProject => 'By project';

  @override
  String get tasksViewByPriority => 'By priority';

  @override
  String get tasksViewByCategory => 'By category';

  @override
  String get tasksGroupNoCategory => 'No category';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks',
      one: '1 task',
    );
    return 'Blocked by $_temp0';
  }

  @override
  String get taskBlockedWarning => 'This task is blocked by unfinished tasks. Complete it anyway?';

  @override
  String get taskDeleteConfirm => 'Move this task to trash?';

  @override
  String get taskStartFocus => 'Focus on this task';

  @override
  String get taskRemoveDate => 'Remove date';

  @override
  String get taskAllDay => 'No specific time';

  @override
  String get taskSaved => 'Task saved';

  @override
  String get taskCreated => 'Task created';

  @override
  String get taskReminderNeedsDue => 'Set a due date to use relative reminders';

  @override
  String taskEstimateValue(String value) {
    return 'Estimate: $value';
  }

  @override
  String taskTrackedValue(String value) {
    return 'Tracked: $value';
  }

  @override
  String get taskSubtaskDetailsHint =>
      'Save the task first to add subtasks, checklist items, labels and dependencies.';

  @override
  String get taskNoLabels => 'No labels yet';

  @override
  String get taskLabelName => 'Label name';

  @override
  String get taskMoreDetails => 'Details';

  @override
  String get taskPlanning => 'Planning';

  @override
  String get taskOrganize => 'Organize';

  @override
  String get taskBreakdown => 'Breakdown';

  @override
  String get trashDeleteTaskTitle => 'Delete this task forever?';

  @override
  String get trashDeleteNoteTitle => 'Delete this note forever?';

  @override
  String get trashDeleteBody => 'This cannot be undone.';

  @override
  String get trashEmptyTitle => 'Empty trash?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items will be deleted permanently.',
      one: '1 item will be deleted permanently.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restored';

  @override
  String get trashPurged => 'Deleted forever';

  @override
  String trashDeletedOn(String date) {
    return 'Deleted $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }
}
