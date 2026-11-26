// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navTasks => 'Công việc';

  @override
  String get navFocus => 'Tập trung';

  @override
  String get navCalendar => 'Lịch';

  @override
  String get navSpaces => 'Không gian';

  @override
  String get moduleProjects => 'Dự án';

  @override
  String get moduleNotes => 'Ghi chú';

  @override
  String get moduleFlashcards => 'Thẻ ghi nhớ';

  @override
  String get moduleGoals => 'Mục tiêu';

  @override
  String get moduleHabits => 'Thói quen';

  @override
  String get moduleAnalytics => 'Thống kê';

  @override
  String get moduleSearch => 'Tìm kiếm';

  @override
  String get moduleAssistant => 'Trợ lý';

  @override
  String get moduleSettings => 'Cài đặt';

  @override
  String get moduleTrash => 'Thùng rác';

  @override
  String get actionSave => 'Lưu';

  @override
  String get actionCancel => 'Hủy';

  @override
  String get actionDelete => 'Xóa';

  @override
  String get actionEdit => 'Sửa';

  @override
  String get actionDone => 'Xong';

  @override
  String get actionAdd => 'Thêm';

  @override
  String get actionCreate => 'Tạo';

  @override
  String get actionClose => 'Đóng';

  @override
  String get actionBack => 'Quay lại';

  @override
  String get actionUndo => 'Hoàn tác';

  @override
  String get actionRestore => 'Khôi phục';

  @override
  String get actionRetry => 'Thử lại';

  @override
  String get actionContinue => 'Tiếp tục';

  @override
  String get actionSkip => 'Bỏ qua';

  @override
  String get actionArchive => 'Lưu trữ';

  @override
  String get actionUnarchive => 'Bỏ lưu trữ';

  @override
  String get actionPin => 'Ghim';

  @override
  String get actionUnpin => 'Bỏ ghim';

  @override
  String get actionMore => 'Tùy chọn khác';

  @override
  String get actionClear => 'Xóa sạch';

  @override
  String get actionSearch => 'Tìm kiếm';

  @override
  String get actionSort => 'Sắp xếp';

  @override
  String get actionShare => 'Chia sẻ';

  @override
  String get actionImport => 'Nhập';

  @override
  String get actionExport => 'Xuất';

  @override
  String get actionPause => 'Tạm dừng';

  @override
  String get actionResume => 'Tiếp tục';

  @override
  String get actionStart => 'Bắt đầu';

  @override
  String get actionStop => 'Dừng';

  @override
  String get actionComplete => 'Hoàn thành';

  @override
  String get actionDeleteForever => 'Xóa vĩnh viễn';

  @override
  String get actionEmptyTrash => 'Dọn thùng rác';

  @override
  String get actionUnlink => 'Bỏ liên kết';

  @override
  String get actionCustomize => 'Tùy chỉnh';

  @override
  String get actionPreview => 'Xem trước';

  @override
  String get actionLog => 'Ghi tiến độ';

  @override
  String get stateLoading => 'Đang tải…';

  @override
  String get stateSaving => 'Đang lưu…';

  @override
  String get stateSaved => 'Đã lưu';

  @override
  String get stateUnsaved => 'Có thay đổi chưa lưu';

  @override
  String get errorGenericTitle => 'Đã xảy ra lỗi';

  @override
  String get errorGenericMessage => 'Dữ liệu của bạn vẫn an toàn. Vui lòng thử lại.';

  @override
  String get errorLoadFailed => 'Không thể tải nội dung này.';

  @override
  String get errorSaveFailed => 'Không thể lưu. Các thay đổi của bạn vẫn còn đây.';

  @override
  String get validationRequired => 'Trường này là bắt buộc';

  @override
  String get validationTitleRequired => 'Vui lòng nhập tiêu đề';

  @override
  String get validationNameRequired => 'Vui lòng nhập tên';

  @override
  String get validationTooLong => 'Nội dung quá dài';

  @override
  String get validationEndBeforeStart => 'Thời điểm kết thúc phải sau thời điểm bắt đầu';

  @override
  String get validationStartAfterDue => 'Ngày bắt đầu phải trước hạn chót';

  @override
  String get validationPositiveNumber => 'Nhập một số lớn hơn 0';

  @override
  String get validationDependencyCycle => 'Thao tác này sẽ tạo phụ thuộc vòng tròn';

  @override
  String get validationInvalidRepeat => 'Quy tắc lặp lại này không hợp lệ';

  @override
  String get deletedItem => 'Đã chuyển vào thùng rác';

  @override
  String get untitled => 'Không có tiêu đề';

  @override
  String get noProject => 'Không có dự án';

  @override
  String get greetingMorning => 'Chào buổi sáng';

  @override
  String get greetingAfternoon => 'Chào buổi chiều';

  @override
  String get greetingEvening => 'Chào buổi tối';

  @override
  String get dashFocusToday => 'Tập trung hôm nay';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done / $target';
  }

  @override
  String get dashStartFocus => 'Bắt đầu tập trung';

  @override
  String get dashFocusRunning => 'Phiên đang diễn ra';

  @override
  String get dashTodayTasks => 'Đến hạn hôm nay';

  @override
  String get dashAgenda => 'Lịch trình';

  @override
  String get dashHabits => 'Thói quen hôm nay';

  @override
  String get dashGoals => 'Mục tiêu';

  @override
  String get dashReview => 'Ôn tập';

  @override
  String get dashRecentNotes => 'Ghi chú gần đây';

  @override
  String get dashInsight => 'Gợi ý';

  @override
  String get dashSeeAll => 'Xem tất cả';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thẻ cần ôn',
      zero: 'Không có thẻ cần ôn',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ôn ngay';

  @override
  String get dashCustomizeTitle => 'Các mục trên trang chủ';

  @override
  String get dashCustomizeHint => 'Chọn những gì hiện trên màn hình chính của bạn.';

  @override
  String get dashSectionFocus => 'Tập trung';

  @override
  String get dashSectionToday => 'Việc đến hạn hôm nay';

  @override
  String get dashSectionAgenda => 'Lịch trình';

  @override
  String get dashSectionHabits => 'Thói quen';

  @override
  String get dashSectionGoals => 'Mục tiêu';

  @override
  String get dashSectionReview => 'Ôn thẻ ghi nhớ';

  @override
  String get dashSectionNotes => 'Ghi chú gần đây';

  @override
  String get dashSectionInsight => 'Gợi ý';

  @override
  String get quickAddTask => 'Việc mới';

  @override
  String get quickAddNote => 'Ghi chú mới';

  @override
  String get quickAddEvent => 'Sự kiện mới';

  @override
  String get quickStartFocus => 'Tập trung';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bạn có $count việc quá hạn. Hãy bắt đầu với việc quan trọng nhất.',
      one: 'Bạn có 1 việc quá hạn. Hãy dời lịch hoặc làm xong trước.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Bạn còn $minutes phút nữa là đạt mục tiêu tập trung hôm nay.';
  }

  @override
  String get insightCardsDue => 'Hãy ôn các thẻ đến hạn ngay khi còn nhớ rõ.';

  @override
  String get insightAllClear => 'Mọi thứ đều ổn. Lên kế hoạch cho ngày mai hoặc nghỉ ngơi thư thả.';

  @override
  String insightHabitStreak(String habit) {
    return 'Giữ chuỗi ngày: hôm nay $habit vẫn chưa làm.';
  }

  @override
  String get focusTitle => 'Tập trung';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Hẹn giờ';

  @override
  String get focusModeCountUp => 'Bấm giờ';

  @override
  String get focusModeOpen => 'Tự do';

  @override
  String get focusPhaseWork => 'Tập trung';

  @override
  String get focusPhaseShortBreak => 'Nghỉ ngắn';

  @override
  String get focusPhaseLongBreak => 'Nghỉ dài';

  @override
  String get focusReady => 'Sẵn sàng khi bạn sẵn sàng';

  @override
  String get focusPaused => 'Đã tạm dừng';

  @override
  String get focusRunning => 'Đang tập trung';

  @override
  String get focusDuration => 'Thời lượng';

  @override
  String get focusLinkTask => 'Liên kết việc';

  @override
  String get focusLinkedTask => 'Đang làm';

  @override
  String get focusNoTask => 'Chưa liên kết việc nào';

  @override
  String focusCycle(int current, int total) {
    return 'Chu kỳ $current / $total';
  }

  @override
  String get focusSkipBreak => 'Bỏ qua giờ nghỉ';

  @override
  String get focusStartBreak => 'Bắt đầu nghỉ';

  @override
  String get focusStartNext => 'Bắt đầu phiên tập trung tiếp theo';

  @override
  String get focusSessionComplete => 'Đã hoàn thành phiên';

  @override
  String get focusSessionStopped => 'Đã lưu phiên';

  @override
  String focusSessionSummary(String duration) {
    return 'Bạn đã tập trung trong $duration.';
  }

  @override
  String get focusAddNote => 'Thêm ghi chú về phiên này';

  @override
  String get focusHistory => 'Lịch sử';

  @override
  String get focusNoHistory => 'Các phiên đã hoàn thành sẽ hiện ở đây';

  @override
  String get focusTargets => 'Mục tiêu';

  @override
  String get focusDailyTarget => 'Mục tiêu ngày';

  @override
  String get focusWeeklyTarget => 'Mục tiêu tuần';

  @override
  String get focusOutcomeCompleted => 'Hoàn thành';

  @override
  String get focusOutcomeInterrupted => 'Dừng sớm';

  @override
  String get focusRecovered => 'Phiên của bạn vẫn tiếp tục khi ứng dụng đóng.';

  @override
  String get focusCompletedWhileAway => 'Một phiên đã kết thúc khi ứng dụng đóng và đã được lưu.';

  @override
  String get focusNotificationsOff =>
      'Thông báo đang tắt. Bạn sẽ không được nhắc khi phiên kết thúc.';

  @override
  String get focusBatteryHint =>
      'Một số thiết bị tạm dừng ứng dụng chạy nền. Đồng hồ vẫn chính xác nhưng thông báo có thể đến muộn. Hãy cho phép dùng pin không giới hạn để nhận thông báo đúng giờ.';

  @override
  String get focusOpenSettings => 'Mở cài đặt';

  @override
  String get focusStopConfirmTitle => 'Dừng phiên này?';

  @override
  String get focusStopConfirmMessage => 'Thời gian tập trung đến giờ sẽ được lưu.';

  @override
  String get focusDiscard => 'Bỏ';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(minutes, locale: localeName, other: '$minutes phút');
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, còn $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, đã qua $time';
  }

  @override
  String get focusDeleteSession => 'Xóa phiên';

  @override
  String get tasksTitle => 'Công việc';

  @override
  String get tasksViewToday => 'Hôm nay';

  @override
  String get tasksViewUpcoming => 'Sắp tới';

  @override
  String get tasksViewAll => 'Tất cả';

  @override
  String get tasksViewOverdue => 'Quá hạn';

  @override
  String get tasksViewCompleted => 'Đã xong';

  @override
  String get tasksQuickAddHint => 'Thêm việc…';

  @override
  String get tasksEmptyTitle => 'Đã xong hết';

  @override
  String get tasksEmptyMessage => 'Thêm một việc để sắp xếp ngày của bạn.';

  @override
  String get tasksEmptyCompleted => 'Việc đã xong sẽ hiện ở đây.';

  @override
  String get taskNew => 'Việc mới';

  @override
  String get taskEdit => 'Sửa việc';

  @override
  String get taskTitleLabel => 'Tiêu đề';

  @override
  String get taskTitleHint => 'Cần làm gì?';

  @override
  String get taskDescriptionLabel => 'Mô tả';

  @override
  String get taskNotesLabel => 'Ghi chú';

  @override
  String get taskPriority => 'Ưu tiên';

  @override
  String get priorityNone => 'Không';

  @override
  String get priorityLow => 'Thấp';

  @override
  String get priorityMedium => 'Trung bình';

  @override
  String get priorityHigh => 'Cao';

  @override
  String get priorityUrgent => 'Khẩn cấp';

  @override
  String get taskDueDate => 'Hạn chót';

  @override
  String get taskStartDate => 'Ngày bắt đầu';

  @override
  String get taskReminder => 'Nhắc nhở';

  @override
  String get taskRepeat => 'Lặp lại';

  @override
  String get taskProject => 'Dự án';

  @override
  String get taskCategory => 'Danh mục';

  @override
  String get taskCategoryHint => 'vd: Công việc, Nhà, Học tập';

  @override
  String get taskEstimateMinutes => 'Ước tính (phút)';

  @override
  String get taskTracked => 'Thời gian tập trung đã ghi';

  @override
  String get taskLabels => 'Nhãn';

  @override
  String get taskAddLabel => 'Nhãn mới';

  @override
  String get taskChecklist => 'Danh sách kiểm tra';

  @override
  String get taskAddChecklistItem => 'Thêm mục';

  @override
  String get taskSubtasks => 'Việc con';

  @override
  String get taskAddSubtask => 'Thêm việc con';

  @override
  String get taskDependencies => 'Bị chặn bởi';

  @override
  String get taskAddDependency => 'Thêm việc chặn';

  @override
  String get taskLinkedNotes => 'Ghi chú liên kết';

  @override
  String get taskSetTime => 'Đặt giờ';

  @override
  String get taskNoDate => 'Không có ngày';

  @override
  String get taskCompleted => 'Đã hoàn thành việc';

  @override
  String get taskNextOccurrence => 'Đã tạo lần lặp tiếp theo';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'Quá hạn $days ngày');
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Đánh dấu \"$title\" là đã xong';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Đánh dấu \"$title\" là chưa xong';
  }

  @override
  String get sortSmart => 'Thông minh';

  @override
  String get sortDueDate => 'Hạn chót';

  @override
  String get sortPriority => 'Ưu tiên';

  @override
  String get sortCreated => 'Mới nhất';

  @override
  String get sortTitle => 'Tiêu đề';

  @override
  String get filterAllProjects => 'Tất cả dự án';

  @override
  String get filterAnyPriority => 'Mọi mức ưu tiên';

  @override
  String get filterTitle => 'Lọc và sắp xếp';

  @override
  String get dateToday => 'Hôm nay';

  @override
  String get dateTomorrow => 'Ngày mai';

  @override
  String get dateYesterday => 'Hôm qua';

  @override
  String get repeatNever => 'Không lặp lại';

  @override
  String get repeatDaily => 'Hằng ngày';

  @override
  String get repeatWeekdays => 'Mỗi ngày làm việc';

  @override
  String get repeatWeekly => 'Hằng tuần';

  @override
  String get repeatMonthly => 'Hằng tháng';

  @override
  String get repeatYearly => 'Hằng năm';

  @override
  String get repeatCustom => 'Tùy chỉnh';

  @override
  String get repeatEvery => 'Lặp lại mỗi';

  @override
  String get repeatOnDays => 'Vào các ngày';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ngày');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'tuần');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'tháng');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'năm');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count lần');
    return 'Kết thúc sau $_temp0';
  }

  @override
  String get repeatEndsNever => 'Không bao giờ kết thúc';

  @override
  String get reminderAtTime => 'Đúng giờ sự kiện';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Trước $minutes phút',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(hours, locale: localeName, other: 'Trước $hours giờ');
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => 'Trước 1 ngày';

  @override
  String get projectsTitle => 'Dự án';

  @override
  String get projectsEmptyTitle => 'Chưa có dự án';

  @override
  String get projectsEmptyMessage => 'Gom các việc, ghi chú và thời gian tập trung liên quan.';

  @override
  String get projectNew => 'Dự án mới';

  @override
  String get projectEdit => 'Sửa dự án';

  @override
  String get projectName => 'Tên';

  @override
  String get projectDescription => 'Mô tả';

  @override
  String get projectGoal => 'Mục đích';

  @override
  String get projectDeadline => 'Hạn chót';

  @override
  String get projectColor => 'Màu';

  @override
  String get projectIcon => 'Biểu tượng';

  @override
  String get projectProgress => 'Tiến độ';

  @override
  String projectTasksDone(int done, int total) {
    return 'Đã xong $done/$total việc';
  }

  @override
  String get projectFocusTime => 'Thời gian tập trung';

  @override
  String get projectArchived => 'Dự án đã lưu trữ';

  @override
  String get projectShowArchived => 'Hiện mục đã lưu trữ';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Còn $days ngày',
      zero: 'Đến hạn hôm nay',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Đã quá hạn';

  @override
  String get calendarTitle => 'Lịch';

  @override
  String get calendarMonth => 'Tháng';

  @override
  String get calendarWeek => 'Tuần';

  @override
  String get calendarDay => 'Ngày';

  @override
  String get calendarToday => 'Hôm nay';

  @override
  String get calendarPrevious => 'Trước';

  @override
  String get calendarNext => 'Tiếp';

  @override
  String get calendarNoEvents => 'Không có lịch';

  @override
  String get calendarAllDay => 'Cả ngày';

  @override
  String get eventNew => 'Sự kiện mới';

  @override
  String get eventEdit => 'Sửa sự kiện';

  @override
  String get eventTitleHint => 'Tên sự kiện';

  @override
  String get eventStarts => 'Bắt đầu';

  @override
  String get eventEnds => 'Kết thúc';

  @override
  String get eventKind => 'Loại';

  @override
  String get eventKindEvent => 'Sự kiện';

  @override
  String get eventKindTimeBlock => 'Khối thời gian';

  @override
  String get eventKindFocus => 'Phiên tập trung';

  @override
  String get eventKindGoal => 'Mục tiêu cá nhân';

  @override
  String get eventDescription => 'Chi tiết';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Trùng với $count sự kiện',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Ngày này có lịch bị trùng';

  @override
  String get calendarTaskDue => 'Việc đến hạn';

  @override
  String get calendarDragHint => 'Nhấn giữ và kéo một sự kiện để dời lịch';

  @override
  String get calendarRescheduled => 'Đã dời sự kiện';

  @override
  String get calendarScheduleTask => 'Lên lịch thành khối thời gian';

  @override
  String get notesTitle => 'Ghi chú';

  @override
  String get notesViewAll => 'Tất cả';

  @override
  String get notesViewPinned => 'Đã ghim';

  @override
  String get notesViewFavorites => 'Yêu thích';

  @override
  String get notesViewArchived => 'Đã lưu trữ';

  @override
  String get notesTags => 'Thẻ';

  @override
  String get notesNewNotebook => 'Sổ ghi chú mới';

  @override
  String get notesNoNotebook => 'Không có sổ';

  @override
  String get notesEmptyTitle => 'Một trang giấy trắng';

  @override
  String get notesEmptyMessage => 'Ghi lại ý tưởng, biên bản họp và kiến thức.';

  @override
  String get noteTitleHint => 'Tiêu đề';

  @override
  String get noteBodyHint => 'Bắt đầu viết… Dùng # cho thẻ và [[Tiêu đề]] để liên kết ghi chú.';

  @override
  String get noteFavorite => 'Yêu thích';

  @override
  String get noteUnfavorite => 'Bỏ yêu thích';

  @override
  String get noteMoveTo => 'Chuyển vào sổ';

  @override
  String get noteBacklinks => 'Được liên kết từ';

  @override
  String get noteLinkedTasks => 'Việc liên kết';

  @override
  String get noteLinkTask => 'Liên kết việc';

  @override
  String get noteLinkProject => 'Dự án';

  @override
  String get noteFormatHeading => 'Đề mục';

  @override
  String get noteFormatBold => 'In đậm';

  @override
  String get noteFormatItalic => 'In nghiêng';

  @override
  String get noteFormatList => 'Danh sách dấu đầu dòng';

  @override
  String get noteFormatChecklist => 'Danh sách kiểm tra';

  @override
  String get noteFormatLink => 'Liên kết';

  @override
  String noteEdited(String time) {
    return 'Đã sửa $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count từ');
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Thẻ ghi nhớ';

  @override
  String get flashEmptyTitle => 'Tạo bộ thẻ đầu tiên';

  @override
  String get flashEmptyMessage =>
      'Lặp lại ngắt quãng cho bạn xem mỗi thẻ ngay trước khi bạn sắp quên.';

  @override
  String get deckNew => 'Bộ thẻ mới';

  @override
  String get deckEdit => 'Sửa bộ thẻ';

  @override
  String get deckName => 'Tên bộ thẻ';

  @override
  String get deckDescription => 'Mô tả';

  @override
  String get deckDailyNew => 'Thẻ mới mỗi ngày';

  @override
  String get deckDailyReview => 'Mục tiêu ôn mỗi ngày';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thẻ',
      zero: 'Không có thẻ',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Đến hạn';

  @override
  String get deckNewCards => 'Mới';

  @override
  String get deckMature => 'Đã thuộc';

  @override
  String get deckStudy => 'Học';

  @override
  String get deckNothingDue => 'Hiện chưa có thẻ cần ôn. Hãy quay lại sau.';

  @override
  String get deckEmptyCards => 'Thêm thẻ để bắt đầu học.';

  @override
  String get cardNew => 'Thẻ mới';

  @override
  String get cardEdit => 'Sửa thẻ';

  @override
  String get cardFront => 'Mặt trước';

  @override
  String get cardBack => 'Mặt sau';

  @override
  String get cardFrontHint => 'Câu hỏi hoặc thuật ngữ';

  @override
  String get cardBackHint => 'Câu trả lời hoặc định nghĩa';

  @override
  String get cardTags => 'Thẻ';

  @override
  String get cardAddAnother => 'Lưu và thêm thẻ khác';

  @override
  String get reviewShowAnswer => 'Hiện đáp án';

  @override
  String get reviewAgain => 'Lại';

  @override
  String get reviewHard => 'Khó';

  @override
  String get reviewGood => 'Tốt';

  @override
  String get reviewEasy => 'Dễ';

  @override
  String reviewProgress(int done, int total) {
    return '$done / $total';
  }

  @override
  String get reviewFinishedTitle => 'Đã hoàn thành phiên';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bạn đã ôn $count thẻ.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Chạm để xem đáp án';

  @override
  String get importCardsTitle => 'Nhập thẻ';

  @override
  String get importCardsHint =>
      'Dán mỗi dòng một thẻ (mặt trước và mặt sau cách nhau bằng tab hoặc dấu chấm phẩy), hoặc chọn tệp: Excel (.xlsx), CSV, bộ thẻ Anki (.apkg) hoặc bộ thẻ đã xuất.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã nhập $count thẻ',
      zero: 'Không nhập được thẻ nào',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Không thể nhập nội dung này.';

  @override
  String get exportCopied => 'Đã xuất bộ thẻ';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count phút');
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count ngày');
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Mục tiêu';

  @override
  String get goalsEmptyTitle => 'Hãy đặt một mục tiêu';

  @override
  String get goalsEmptyMessage =>
      'Đặt mục tiêu ngày, tuần, tháng hoặc dài hạn và theo dõi tiến độ thật.';

  @override
  String get goalNew => 'Mục tiêu mới';

  @override
  String get goalEdit => 'Sửa mục tiêu';

  @override
  String get goalTitleHint => 'Bạn muốn đạt được điều gì?';

  @override
  String get goalPeriod => 'Chu kỳ';

  @override
  String get goalPeriodDaily => 'Hằng ngày';

  @override
  String get goalPeriodWeekly => 'Hằng tuần';

  @override
  String get goalPeriodMonthly => 'Hằng tháng';

  @override
  String get goalPeriodLongTerm => 'Dài hạn';

  @override
  String get goalTarget => 'Chỉ tiêu';

  @override
  String get goalUnit => 'Đơn vị';

  @override
  String get goalUnitHint => 'vd: trang, km, giờ';

  @override
  String get goalStatusActive => 'Đang thực hiện';

  @override
  String get goalStatusPaused => 'Đã tạm dừng';

  @override
  String get goalStatusAchieved => 'Đã đạt';

  @override
  String get goalPause => 'Tạm dừng mục tiêu';

  @override
  String get goalResume => 'Tiếp tục mục tiêu';

  @override
  String get goalMarkAchieved => 'Đánh dấu đã đạt';

  @override
  String goalProgressOf(String current, String target) {
    return '$current / $target';
  }

  @override
  String get goalLogAmount => 'Số lượng';

  @override
  String get goalLogNote => 'Ghi chú (không bắt buộc)';

  @override
  String get goalHistory => 'Lịch sử';

  @override
  String get goalNoHistory => 'Tiến độ đã ghi sẽ hiện ở đây';

  @override
  String get goalLinkedTasks => 'Việc liên kết';

  @override
  String get goalLinkedTasksHint => 'Mỗi việc liên kết hoàn thành được tính 1 cho mục tiêu này.';

  @override
  String get goalThisPeriod => 'Kỳ này';

  @override
  String get habitsTitle => 'Thói quen';

  @override
  String get habitsEmptyTitle => 'Từng bước nhỏ, mỗi ngày';

  @override
  String get habitsEmptyMessage => 'Tạo một thói quen và đánh dấu khi bạn làm.';

  @override
  String get habitNew => 'Thói quen mới';

  @override
  String get habitEdit => 'Sửa thói quen';

  @override
  String get habitNameHint => 'vd: Đọc 20 trang';

  @override
  String get habitDays => 'Lịch';

  @override
  String get habitEveryDay => 'Hằng ngày';

  @override
  String get habitTargetPerDay => 'Số lần mỗi ngày';

  @override
  String get habitReminder => 'Nhắc hằng ngày';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Chuỗi $count ngày',
      zero: 'Chưa có chuỗi',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Chuỗi dài nhất';

  @override
  String get habitCurrentStreak => 'Chuỗi hiện tại';

  @override
  String get habitConsistency => 'Độ đều đặn';

  @override
  String get habitLast90 => '90 ngày qua';

  @override
  String get habitPaused => 'Đã tạm dừng';

  @override
  String get habitPause => 'Tạm dừng thói quen';

  @override
  String get habitResume => 'Tiếp tục thói quen';

  @override
  String get habitDoneToday => 'Hôm nay đã xong';

  @override
  String habitCountToday(int count, int target) {
    return 'Hôm nay $count/$target';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Đánh dấu \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Hôm nay không có lịch';

  @override
  String get analyticsTitle => 'Thống kê';

  @override
  String get rangeWeek => '7 ngày';

  @override
  String get rangeMonth => '30 ngày';

  @override
  String get rangeQuarter => '90 ngày';

  @override
  String get statFocusTime => 'Thời gian tập trung';

  @override
  String get statSessions => 'Phiên';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed hoàn thành · $interrupted dừng sớm';
  }

  @override
  String get statTasksDone => 'Việc đã xong';

  @override
  String get statCompletionRate => 'Xong đúng hạn';

  @override
  String get statHabitConsistency => 'Độ đều đặn thói quen';

  @override
  String get statRetention => 'Khả năng nhớ thẻ';

  @override
  String get statReviews => 'Lượt ôn';

  @override
  String get statActiveGoals => 'Mục tiêu đang thực hiện';

  @override
  String get statEstimated => 'Khối lượng việc ước tính đã xong';

  @override
  String get statEstimatedNote => 'Dựa trên ước tính của bạn, không phải thời gian đo được';

  @override
  String get statMeasuredNote => 'Đo từ các phiên tập trung';

  @override
  String get chartFocusByDay => 'Số phút tập trung mỗi ngày';

  @override
  String get chartTasksByDay => 'Số việc xong mỗi ngày';

  @override
  String get chartTimeByProject => 'Thời gian theo dự án';

  @override
  String get chartProjectProgress => 'Tiến độ dự án';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: tổng $total, ngày tốt nhất $best';
  }

  @override
  String get analyticsNoData => 'Chưa đủ dữ liệu';

  @override
  String get analyticsUnassigned => 'Chưa phân loại';

  @override
  String get searchHint => 'Tìm mọi thứ…';

  @override
  String get searchRecent => 'Tìm kiếm gần đây';

  @override
  String get searchClearRecent => 'Xóa lịch sử tìm kiếm';

  @override
  String searchNoResults(String query) {
    return 'Không có kết quả cho \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Tìm trong việc, ghi chú, thẻ, mục tiêu, sự kiện và hơn thế nữa. Việc tìm kiếm chỉ diễn ra trên thiết bị này.';

  @override
  String get searchCatTask => 'Công việc';

  @override
  String get searchCatProject => 'Dự án';

  @override
  String get searchCatNote => 'Ghi chú';

  @override
  String get searchCatFlashcard => 'Thẻ';

  @override
  String get searchCatDeck => 'Bộ thẻ';

  @override
  String get searchCatGoal => 'Mục tiêu';

  @override
  String get searchCatHabit => 'Thói quen';

  @override
  String get searchCatEvent => 'Sự kiện';

  @override
  String get searchCatSession => 'Phiên';

  @override
  String get searchAll => 'Tất cả';

  @override
  String get assistantTitle => 'Trợ lý';

  @override
  String get assistantIntro =>
      'Trợ giúp lập kế hoạch chạy ngay trên thiết bị của bạn. Bạn có thể kết nối nhà cung cấp AI tùy chọn để tóm tắt và tạo nội dung.';

  @override
  String get assistantOnDevice => 'Trên thiết bị';

  @override
  String get assistantCloud => 'Nhà cung cấp AI';

  @override
  String get assistantPlanDay => 'Lên kế hoạch cho ngày';

  @override
  String get assistantPlanDayDesc =>
      'Sắp xếp các việc đang mở theo độ gấp, ưu tiên và ước tính, rồi xếp chúng quanh các sự kiện của bạn.';

  @override
  String get assistantExtractTasks => 'Tách việc từ ghi chú';

  @override
  String get assistantExtractTasksDesc =>
      'Tìm các mục danh sách kiểm tra và dòng hành động trong ghi chú rồi biến chúng thành việc.';

  @override
  String get assistantMakeCards => 'Tạo thẻ từ ghi chú';

  @override
  String get assistantMakeCardsDesc =>
      'Biến các dòng \"thuật ngữ: định nghĩa\" và hỏi/đáp thành thẻ.';

  @override
  String get assistantSummarize => 'Tóm tắt ghi chú';

  @override
  String get assistantSummarizeDesc =>
      'Cần nhà cung cấp AI. Ghi chú chỉ được gửi sau khi bạn xác nhận.';

  @override
  String get assistantWorkload => 'Tổng quan khối lượng việc';

  @override
  String get assistantWorkloadDesc =>
      'So sánh khối lượng việc ước tính với thời gian rảnh của bạn trong tuần này.';

  @override
  String get assistantPlanEmpty =>
      'Không có việc nào cần lên kế hoạch. Hãy tận hưởng khoảng trống.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Thời gian rảnh để tập trung hôm nay: $time';
  }

  @override
  String get assistantPlanOverflow => 'Những việc này có thể không kịp hôm nay:';

  @override
  String get assistantChooseNote => 'Chọn ghi chú';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tìm thấy $count việc',
      zero: 'Không tìm thấy việc trong ghi chú này',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tìm thấy $count thẻ',
      zero: 'Không tìm thấy thẻ trong ghi chú này',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Chọn bộ thẻ';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Khối lượng ước tính: $estimated. Thời gian rảnh: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Bạn đã lên kế hoạch nhiều hơn thời gian hiện có. Hãy cân nhắc dời các việc ít ưu tiên hơn.';

  @override
  String get assistantWorkloadOk => 'Kế hoạch của bạn vừa với thời gian hiện có.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count việc đang mở chưa có ước tính.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Nhà cung cấp AI';

  @override
  String get assistantProviderOff =>
      'Chưa kết nối nhà cung cấp. Các công cụ trên thiết bị vẫn hoạt động.';

  @override
  String assistantProviderOn(String host) {
    return 'Đã kết nối với $host';
  }

  @override
  String get assistantEndpoint => 'Điểm cuối API (HTTPS)';

  @override
  String get assistantModel => 'Mô hình';

  @override
  String get assistantApiKey => 'Khóa API';

  @override
  String get assistantApiKeyStored => 'Được lưu an toàn trên thiết bị này';

  @override
  String get assistantHttpsOnly => 'Chỉ cho phép điểm cuối HTTPS';

  @override
  String get assistantConsentTitle => 'Gửi nội dung này đến nhà cung cấp AI?';

  @override
  String assistantConsentBody(String host) {
    return 'Văn bản ghi chú đã chọn sẽ rời thiết bị này và được $host xử lý. Không gửi gì khác.';
  }

  @override
  String get assistantConsentAlways => 'Không hỏi lại với nhà cung cấp này';

  @override
  String get assistantSend => 'Gửi';

  @override
  String get assistantUnavailable => 'Không kết nối được nhà cung cấp AI. Hãy thử lại sau.';

  @override
  String get assistantDisabledTitle => 'Trợ lý đang tắt';

  @override
  String get assistantDisabledMessage =>
      'Bật để dùng công cụ lập kế hoạch. Không có dữ liệu nào rời thiết bị trừ khi bạn kết nối nhà cung cấp và xác nhận từng yêu cầu.';

  @override
  String get assistantSummaryTitle => 'Tóm tắt';

  @override
  String get assistantRemoveProvider => 'Gỡ nhà cung cấp';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsGeneral => 'Chung';

  @override
  String get settingsLanguage => 'Ngôn ngữ';

  @override
  String get settingsLanguageSystem => 'Ngôn ngữ thiết bị';

  @override
  String get settingsAppearance => 'Giao diện';

  @override
  String get settingsTheme => 'Chủ đề';

  @override
  String get themeLight => 'Sáng';

  @override
  String get themeDark => 'Tối';

  @override
  String get themeSystem => 'Hệ thống';

  @override
  String get settingsReduceMotion => 'Giảm chuyển động';

  @override
  String get settingsReduceMotionDesc => 'Hạn chế hiệu ứng và hình nền chuyển động';

  @override
  String get settingsFocus => 'Bộ hẹn giờ tập trung';

  @override
  String get settingsWorkLength => 'Thời lượng tập trung';

  @override
  String get settingsShortBreak => 'Nghỉ ngắn';

  @override
  String get settingsLongBreak => 'Nghỉ dài';

  @override
  String get settingsLongBreakEvery => 'Nghỉ dài sau';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count phiên');
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Tự bắt đầu giờ nghỉ';

  @override
  String get settingsSound => 'Âm báo kết thúc';

  @override
  String get settingsDailyFocusTarget => 'Mục tiêu tập trung hằng ngày';

  @override
  String get settingsWeeklyFocusTarget => 'Mục tiêu tập trung hằng tuần';

  @override
  String get settingsNotifications => 'Thông báo';

  @override
  String get settingsNotificationsEnable => 'Cho phép nhắc nhở';

  @override
  String get settingsQuietHours => 'Giờ yên tĩnh';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Nhắc thói quen, mục tiêu và ôn tập được tắt tiếng từ $start đến $end';
  }

  @override
  String get settingsReviewReminder => 'Nhắc ôn thẻ ghi nhớ';

  @override
  String get settingsPermissionDenied => 'Thông báo đang bị chặn trong cài đặt hệ thống.';

  @override
  String get settingsPrivacy => 'Quyền riêng tư và dữ liệu';

  @override
  String get settingsPrivacyStatement =>
      'Dữ liệu của bạn chỉ được lưu trên thiết bị này và được mã hóa. Không tài khoản, không phân tích, không theo dõi.';

  @override
  String get settingsBackup => 'Tạo bản sao lưu mã hóa';

  @override
  String get settingsBackupDesc => 'Được bảo vệ bằng mật khẩu do bạn chọn';

  @override
  String get settingsRestore => 'Khôi phục từ bản sao lưu';

  @override
  String get settingsRestoreDesc => 'Thay thế toàn bộ dữ liệu trên thiết bị này';

  @override
  String get settingsErase => 'Xóa toàn bộ dữ liệu';

  @override
  String get settingsEraseDesc => 'Xóa vĩnh viễn mọi thứ trên thiết bị này';

  @override
  String get settingsEraseConfirmTitle => 'Xóa toàn bộ dữ liệu?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Mọi việc, ghi chú, thẻ, mục tiêu, thói quen, sự kiện và phiên sẽ bị xóa vĩnh viễn. Gõ $word để xác nhận.';
  }

  @override
  String get settingsEraseWord => 'XÓA';

  @override
  String get settingsErased => 'Đã xóa toàn bộ dữ liệu';

  @override
  String get backupPassword => 'Mật khẩu sao lưu';

  @override
  String get backupPasswordConfirm => 'Xác nhận mật khẩu';

  @override
  String backupPasswordHint(int count) {
    return 'Ít nhất $count ký tự. Không thể khôi phục nếu bị mất.';
  }

  @override
  String get backupPasswordMismatch => 'Mật khẩu không khớp';

  @override
  String get backupPasswordShort => 'Mật khẩu quá ngắn';

  @override
  String get backupCreating => 'Đang mã hóa bản sao lưu…';

  @override
  String get backupCreated => 'Bản sao lưu đã sẵn sàng để lưu';

  @override
  String get backupRestoring => 'Đang kiểm tra và khôi phục…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã khôi phục $count mục',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Sai mật khẩu hoặc tệp đã bị thay đổi.';

  @override
  String get backupNotABackup => 'Tệp này không phải bản sao lưu Deep Focus.';

  @override
  String get backupCorrupted => 'Tệp sao lưu bị hỏng.';

  @override
  String get backupNewer =>
      'Bản sao lưu này được tạo bằng phiên bản ứng dụng mới hơn. Hãy cập nhật ứng dụng trước.';

  @override
  String get backupRestoreConfirmTitle => 'Thay thế toàn bộ dữ liệu?';

  @override
  String get backupRestoreConfirmBody =>
      'Mọi thứ hiện có trên thiết bị sẽ được thay bằng bản sao lưu. Nếu khôi phục thất bại, không có gì thay đổi.';

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String settingsVersion(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get settingsLicenses => 'Giấy phép mã nguồn mở';

  @override
  String get settingsAssistant => 'Trợ lý';

  @override
  String get settingsAssistantEnable => 'Bật trợ lý';

  @override
  String get settingsDashboard => 'Các mục trên trang chủ';

  @override
  String get settingsTrash => 'Thùng rác';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes phút';
  }

  @override
  String get trashEmpty => 'Thùng rác trống';

  @override
  String get trashHint => 'Các mục đã xóa ở lại đây cho đến khi bạn gỡ bỏ.';

  @override
  String get trashTasks => 'Công việc';

  @override
  String get trashNotes => 'Ghi chú';

  @override
  String get onboardWelcomeTitle => 'Chào mừng đến không gian làm việc mới của bạn';

  @override
  String get onboardWelcomeBody =>
      'Công việc, tập trung, lịch, ghi chú, thẻ ghi nhớ, mục tiêu và thói quen — gói gọn trong một, đơn giản và đẹp.';

  @override
  String get onboardPrivateTitle => 'Riêng tư từ thiết kế';

  @override
  String get onboardPrivateBody =>
      'Mọi thứ nằm trên thiết bị này và được mã hóa. Không tài khoản. Không theo dõi. Bạn luôn làm chủ.';

  @override
  String get onboardLanguageTitle => 'Chọn ngôn ngữ của bạn';

  @override
  String get onboardNotifTitle => 'Nhắc nhở nhẹ nhàng';

  @override
  String get onboardNotifBody =>
      'Cho phép thông báo để nhận nhắc việc và báo giờ tập trung. Bạn có thể đổi bất cứ lúc nào.';

  @override
  String get onboardGetStarted => 'Bắt đầu';

  @override
  String onboardStep(int current, int total) {
    return 'Bước $current/$total';
  }

  @override
  String get notifChannelReminders => 'Nhắc nhở';

  @override
  String get notifChannelRemindersDesc => 'Nhắc việc, sự kiện, thói quen và mục tiêu';

  @override
  String get notifChannelFocus => 'Bộ hẹn giờ tập trung';

  @override
  String get notifChannelFocusDesc => 'Báo khi một phiên tập trung hoặc giờ nghỉ kết thúc';

  @override
  String get notifTaskTitle => 'Nhắc việc';

  @override
  String get notifEventTitle => 'Sự kiện sắp tới';

  @override
  String notifEventBody(String title, String time) {
    return '$title lúc $time';
  }

  @override
  String get notifFocusDoneTitle => 'Đã hoàn thành phiên tập trung';

  @override
  String get notifFocusDoneBody => 'Làm tốt lắm. Đến giờ nghỉ rồi.';

  @override
  String get notifBreakDoneTitle => 'Hết giờ nghỉ';

  @override
  String get notifBreakDoneBody => 'Sẵn sàng cho phiên tập trung tiếp theo?';

  @override
  String get notifHabitTitle => 'Nhắc thói quen';

  @override
  String get notifReviewTitle => 'Thẻ ghi nhớ đã sẵn sàng';

  @override
  String get notifReviewBody => 'Ôn một chút giúp trí nhớ luôn vững.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours giờ $minutes phút';
  }

  @override
  String durationHours(int hours) {
    return '$hours giờ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes phút';
  }

  @override
  String percentValue(int value) {
    return '$value%';
  }

  @override
  String get weekdaysShort => 'T2,T3,T4,T5,T6,T7,CN';

  @override
  String a11yProgress(int value) {
    return 'Tiến độ $value phần trăm';
  }

  @override
  String a11yPriority(String level) {
    return 'Ưu tiên: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Màu $index';
  }

  @override
  String get analyticsRangeLabel => 'Khoảng thời gian';

  @override
  String get analyticsRefresh => 'Làm mới';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done/$total việc đến hạn xong đúng hạn';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return 'Đã xong $done/$total việc';
  }

  @override
  String get analyticsNoProjects => 'Không có dự án đang thực hiện';

  @override
  String get analyticsNoFocus => 'Không có phiên tập trung trong khoảng này';

  @override
  String get analyticsHabitsNone => 'Không có thói quen đang thực hiện';

  @override
  String get analyticsRetentionNote => 'Tỷ lệ thẻ đã thuộc mà bạn nhớ được';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Thời gian rảnh tính từ $start–$end vào ngày làm việc ($days), trừ các sự kiện có giờ. Khối lượng ước tính là tổng ước tính của các việc đang mở đến hạn trong 7 ngày tới.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Thứ Hai–Thứ Sáu';

  @override
  String get assistantWorkdaysSunThu => 'Chủ Nhật–Thứ Năm';

  @override
  String get assistantWorkloadDayOff => 'Ngày nghỉ';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated đã lên lịch · $free rảnh';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Lên kế hoạch từ giờ đến $end, quanh các sự kiện hôm nay. Việc quá hạn trước, rồi đến ưu tiên, hạn chót và ước tính.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Lên lịch thành khối thời gian';

  @override
  String get assistantScheduleConfirmTitle => 'Thêm khối thời gian vào lịch?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sẽ thêm $count khối thời gian vào lịch hôm nay.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count khối thời gian',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Đã có trong lịch';

  @override
  String get assistantPlanTimeline => 'Vừa trong hôm nay';

  @override
  String get assistantNoEstimate => 'Thêm ước tính để lên kế hoạch';

  @override
  String get assistantNoNotes => 'Chưa có ghi chú. Hãy viết một ghi chú trước.';

  @override
  String get assistantNoteEmpty => 'Ghi chú này trống.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Đã tạo $count việc');
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Đã tạo $count thẻ');
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tạo $count',
      zero: 'Chưa chọn gì',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Nhận diện: ô chưa đánh dấu \"- [ ]\" và dòng bắt đầu bằng TODO: hoặc To do:';

  @override
  String get assistantCardsHint =>
      'Nhận diện: \"thuật ngữ: định nghĩa\", \"thuật ngữ — định nghĩa\" và các cặp dòng Q: và A:';

  @override
  String get assistantProviderHint =>
      'Dùng bất kỳ dịch vụ nào tương thích OpenAI. Khóa nằm trong kho lưu trữ an toàn của thiết bị và không bao giờ có trong bản sao lưu.';

  @override
  String get assistantEndpointHelp => 'Ví dụ https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Để trống để giữ khóa đã lưu';

  @override
  String get assistantApiKeyRequired => 'Nhập khóa API';

  @override
  String get assistantProviderSaved => 'Đã lưu nhà cung cấp';

  @override
  String get assistantProviderRemoved => 'Đã gỡ nhà cung cấp và xóa khóa';

  @override
  String get assistantRemoveProviderConfirm =>
      'Gỡ nhà cung cấp và xóa khóa API đã lưu khỏi thiết bị này?';

  @override
  String get assistantAskEveryTime => 'Hỏi trước mỗi yêu cầu';

  @override
  String get assistantSummarizing => 'Đang tóm tắt…';

  @override
  String assistantSummaryNote(String host) {
    return 'Do $host tạo. Hãy xem lại trước khi dựa vào.';
  }

  @override
  String get assistantCopy => 'Sao chép';

  @override
  String get assistantCopied => 'Đã sao chép';

  @override
  String get assistantConfigure => 'Thiết lập nhà cung cấp';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Đã dời tất cả sự kiện trong chuỗi này';

  @override
  String get calendarEventReminder => 'Nhắc nhở';

  @override
  String get calendarEventRepeat => 'Lặp lại';

  @override
  String get calendarEventColor => 'Màu';

  @override
  String get calendarDefaultColor => 'Dùng màu theo loại';

  @override
  String get calendarEventLinkedTask => 'Việc liên kết';

  @override
  String get calendarEventNoTask => 'Không có việc liên kết';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sự kiện',
      zero: 'Không có sự kiện',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count việc đến hạn',
      zero: 'không có việc đến hạn',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Thêm sự kiện hoặc khối thời gian để lên kế hoạch cho ngày này.';

  @override
  String get calendarNow => 'Giờ hiện tại';

  @override
  String get calendarRecurring => 'Lặp lại';

  @override
  String get calendarEventNotFound => 'Sự kiện này không còn tồn tại';

  @override
  String get calendarEventLocalTime => 'Giờ được hiển thị theo múi giờ của thiết bị';

  @override
  String get calendarEventDeleted => 'Đã chuyển sự kiện vào thùng rác';

  @override
  String get calendarConflictMarker => 'Trùng với sự kiện khác';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Thay đổi áp dụng cho mọi sự kiện trong chuỗi này';

  @override
  String get calendarDragHintSeries => 'Kéo một sự kiện lặp lại sẽ dời cả chuỗi';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, việc đến hạn';
  }

  @override
  String get startupErrorTitle => 'Không thể mở dữ liệu của bạn';

  @override
  String get startupErrorLocked =>
      'Khóa mã hóa dữ liệu của thiết bị này không khả dụng. Chưa có gì bị xóa. Khởi động lại thiết bị thường sẽ giúp ích. Nếu bạn vừa khôi phục thiết bị, hãy khôi phục dữ liệu từ bản sao lưu mã hóa.';

  @override
  String get startupErrorCipher =>
      'Thiết bị này không hỗ trợ bộ nhớ mã hóa mà ứng dụng cần. Không có gì được lưu mà không mã hóa.';

  @override
  String get startupErrorRetry => 'Thử lại';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count thẻ cần ôn');
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count cần ôn';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count mới';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Thẻ đã thuộc: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Nhập 0 trở lên';

  @override
  String get flashcardsSearchCards => 'Tìm thẻ';

  @override
  String get flashcardsSearchEmpty => 'Không có thẻ nào khớp';

  @override
  String get flashcardsCardAdded => 'Đã thêm thẻ';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Ôn vào $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Sao chép vào bộ nhớ tạm';

  @override
  String get flashcardsExportTitle => 'Xuất bộ thẻ';

  @override
  String get flashcardsDeleteDeck => 'Xóa bộ thẻ';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, ôn lại sau $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Câu hỏi: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Đáp án: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Hiện câu hỏi';

  @override
  String get flashcardsImportField => 'Thẻ cần nhập';

  @override
  String get flashcardsNothingToStudy => 'Không có gì để học';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thẻ sẵn sàng để học',
      zero: 'Chưa có thẻ sẵn sàng',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Theo đánh giá';

  @override
  String get flashcardsDeckNotFound => 'Bộ thẻ này không còn nữa.';

  @override
  String get focusSessionDeleted => 'Đã xóa phiên';

  @override
  String get focusDeleteConfirm =>
      'Xóa phiên này khỏi lịch sử? Thời gian của nó sẽ không còn được tính vào mục tiêu.';

  @override
  String get focusUnlinkTask => 'Gỡ việc liên kết';

  @override
  String get focusNoteHint => 'Bạn đã làm gì?';

  @override
  String get focusTargetCaption => 'Đo từ các phiên đã lưu';

  @override
  String get focusModeLabel => 'Chế độ hẹn giờ';

  @override
  String focusUpNext(String phase) {
    return 'Tiếp theo: $phase';
  }

  @override
  String get focusStopwatchHint => 'Đếm lên cho đến khi bạn dừng.';

  @override
  String get focusOpenHint => 'Không giới hạn thời gian. Dừng khi bạn xong.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Nhắc nhở đang tắt trong cài đặt. Bạn sẽ không được báo khi phiên kết thúc.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Tất cả';

  @override
  String get goalsFilterPeriod => 'Lọc theo kỳ';

  @override
  String get goalsFilterStatus => 'Lọc theo trạng thái';

  @override
  String get goalsEmptyFiltered => 'Không có mục tiêu nào khớp bộ lọc';

  @override
  String goalsDueOn(String date) {
    return 'Hạn $date';
  }

  @override
  String get goalsDeadline => 'Hạn chót (không bắt buộc)';

  @override
  String get goalsNoDeadline => 'Không có hạn';

  @override
  String get goalsSetDeadline => 'Đặt hạn chót';

  @override
  String get goalsRemoveDeadline => 'Bỏ hạn chót';

  @override
  String get goalsDescription => 'Mô tả (không bắt buộc)';

  @override
  String get goalsTitleLabel => 'Tiêu đề';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Đã đạt chỉ tiêu';

  @override
  String get goalsLogged => 'Đã ghi tiến độ';

  @override
  String get goalsEntryDeleted => 'Đã xóa mục ghi';

  @override
  String get goalsDeleteEntry => 'Xóa mục ghi';

  @override
  String get goalsDeleted => 'Đã xóa mục tiêu';

  @override
  String get goalsMarkActive => 'Đánh dấu đang thực hiện';

  @override
  String get goalsNotFound => 'Mục tiêu này không còn nữa';

  @override
  String get goalsLinkTask => 'Liên kết việc';

  @override
  String get goalsNoLinkedTasks => 'Chưa có việc liên kết';

  @override
  String get goalsUnlinkTask => 'Bỏ liên kết việc';

  @override
  String get goalsTaskOpen => 'Chưa hoàn thành';

  @override
  String get goalsTaskLinked => 'Đã liên kết việc';

  @override
  String get goalsTaskUnlinked => 'Đã bỏ liên kết việc';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count việc liên kết đã xong',
    );
    return 'Bao gồm $_temp0 trong kỳ này';
  }

  @override
  String get goalsHistoryAllTime =>
      'Mục ghi của các kỳ trước vẫn ở đây nhưng chỉ tính cho kỳ của chúng.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Hôm nay xong $done/$total';
  }

  @override
  String get habitsNothingToday => 'Hôm nay không có thói quen nào trong lịch';

  @override
  String get habitsDecrease => 'Bớt một lần đánh dấu';

  @override
  String get habitsResetToday => 'Đặt lại hôm nay';

  @override
  String get habitsCheckInHint => 'Nhấn giữ để điều chỉnh';

  @override
  String get habitsName => 'Tên';

  @override
  String get habitsColor => 'Màu';

  @override
  String get habitsValidationDays => 'Chọn ít nhất một ngày';

  @override
  String habitsReminderAt(String time) {
    return 'Hằng ngày lúc $time';
  }

  @override
  String get habitsSetReminder => 'Đặt giờ nhắc';

  @override
  String get habitsRemoveReminder => 'Bỏ nhắc nhở';

  @override
  String get habitsReminderNote =>
      'Nhắc nhở hiện vào các ngày có lịch khi thông báo được cho phép.';

  @override
  String get habitsArchived => 'Đã lưu trữ thói quen';

  @override
  String get habitsNotFound => 'Thói quen này không còn nữa';

  @override
  String get habitsLast30 => '30 ngày qua';

  @override
  String get habitsConsistencyNone => 'Chưa đủ dữ liệu';

  @override
  String get habitsCalendar => 'Lịch sử đánh dấu';

  @override
  String get habitsCalendarHint => 'Chạm vào một ngày để sửa.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count/$target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Các lần đánh dấu trong 90 ngày qua. Độ đều đặn $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Các lần đánh dấu trong 90 ngày qua. Chưa đủ dữ liệu.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count ngày');
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Những ngày tạm dừng không ảnh hưởng đến chuỗi của bạn.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Lưu trữ thói quen';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mỗi ngày $count lần',
      one: 'Mỗi ngày một lần',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Ghi chú khác';

  @override
  String get notesAllNotebooks => 'Tất cả sổ ghi chú';

  @override
  String get notesNotebookName => 'Tên sổ ghi chú';

  @override
  String get notesNotebookColor => 'Màu';

  @override
  String get notesDeleteNotebook => 'Xóa sổ ghi chú';

  @override
  String get notesDeleteNotebookMessage =>
      'Sổ ghi chú sẽ bị xóa. Các ghi chú trong đó vẫn được giữ và hiện trong Tất cả sổ ghi chú.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Ghim các ghi chú quan trọng để chúng luôn ở trên cùng.';

  @override
  String get notesEmptyFavorites => 'Ghi chú bạn đánh dấu yêu thích sẽ hiện ở đây.';

  @override
  String get notesEmptyArchived => 'Ghi chú đã lưu trữ sẽ hiện ở đây.';

  @override
  String get notesEmptyFiltered => 'Không có ghi chú nào khớp bộ lọc.';

  @override
  String get notesArchivedSnack => 'Đã lưu trữ ghi chú';

  @override
  String get notesUnarchivedSnack => 'Đã đưa ghi chú trở lại';

  @override
  String notesChecklistProgress(int done, int total) {
    return 'Xong $done/$total';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Định dạng';

  @override
  String get notesWrite => 'Viết';

  @override
  String get notesPreviewEmpty => 'Chưa có gì để xem trước.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Chưa có ghi chú nào liên kết đến đây. Liên kết đến ghi chú này bằng [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Đặt tiêu đề cho ghi chú này để các ghi chú khác có thể liên kết đến.';

  @override
  String get notesLinkedTasksEmpty => 'Chưa có việc nào liên kết với ghi chú này.';

  @override
  String notesLinkMissing(String title) {
    return 'Chưa có ghi chú nào tên \"$title\".';
  }

  @override
  String get notesNotFound => 'Ghi chú này không còn tồn tại.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Mục kiểm tra: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Mở ghi chú $title';
  }

  @override
  String get notesTaskDone => 'Đã hoàn thành';

  @override
  String get notifTimerDoneBody => 'Đã hết thời gian bạn đặt.';

  @override
  String get onboardingPrivatePointDevice => 'Chỉ lưu trên thiết bị này, có mã hóa';

  @override
  String get onboardingPrivatePointAccount => 'Không cần tài khoản';

  @override
  String get onboardingPrivatePointTracking => 'Không phân tích, không theo dõi';

  @override
  String get onboardingLanguageBody => 'Bạn có thể đổi bất cứ lúc nào trong Cài đặt.';

  @override
  String get onboardingNext => 'Tiếp';

  @override
  String get projectsActive => 'Đang thực hiện';

  @override
  String get projectNameHint => 'vd: Ra mắt sản phẩm';

  @override
  String get projectGoalHint => 'Thế nào là hoàn thành?';

  @override
  String get projectNoDeadline => 'Không có hạn chót';

  @override
  String get projectTasksOpen => 'Việc đang mở';

  @override
  String get projectTasksCompleted => 'Việc đã xong';

  @override
  String get projectAddTask => 'Thêm việc vào dự án';

  @override
  String get projectAddNote => 'Ghi chú dự án mới';

  @override
  String get projectLinkedNotes => 'Ghi chú';

  @override
  String get projectNoTasks => 'Dự án này chưa có việc nào';

  @override
  String get projectArchivedBadge => 'Đã lưu trữ';

  @override
  String get projectDeleted => 'Đã chuyển dự án vào thùng rác';

  @override
  String get projectDeleteMessage => 'Các việc vẫn nằm trong danh sách, không thuộc dự án nào.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, hoàn thành $percent phần trăm';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count kết quả');
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Lọc theo loại';

  @override
  String searchRecentTap(String query) {
    return 'Tìm lại $query';
  }

  @override
  String get settingsLanguageHint =>
      'Chọn ngôn ngữ cho toàn bộ ứng dụng. Tên được hiển thị bằng chính ngôn ngữ đó.';

  @override
  String get settingsThemeHint => 'Sáng, tối hoặc theo hệ thống';

  @override
  String settingsDecrease(String setting) {
    return 'Giảm $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Tăng $setting';
  }

  @override
  String get settingsQuietStart => 'Bắt đầu';

  @override
  String get settingsQuietEnd => 'Kết thúc';

  @override
  String get settingsNotificationsHint =>
      'Thao tác này lưu lựa chọn trong ứng dụng. Hệ thống có thể hỏi thêm quyền.';

  @override
  String get settingsDashboardHint => 'Kéo để sắp xếp lại. Tắt các mục bạn không cần.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Sắp xếp lại $section';
  }

  @override
  String get settingsDashboardReset => 'Khôi phục thứ tự mặc định';

  @override
  String get settingsAssistantDesc =>
      'Trợ giúp lập kế hoạch tùy chọn. Không có gì rời thiết bị trừ khi bạn kết nối nhà cung cấp.';

  @override
  String get settingsAssistantSetup => 'Thiết lập trợ lý và nhà cung cấp';

  @override
  String get settingsTrashDesc => 'Khôi phục hoặc xóa vĩnh viễn các mục đã xóa';

  @override
  String get settingsEraseFirstBody =>
      'Không thể hoàn tác. Hãy cân nhắc tạo bản sao lưu mã hóa trước.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Gõ $word';
  }

  @override
  String get settingsEraseFailed => 'Không thể xóa dữ liệu. Chưa có gì thay đổi.';

  @override
  String get settingsAboutTagline => 'Không gian làm việc riêng tư, ưu tiên lưu cục bộ.';

  @override
  String get backupShowPassword => 'Hiện mật khẩu';

  @override
  String get backupHidePassword => 'Ẩn mật khẩu';

  @override
  String get backupSaved => 'Đã lưu bản sao lưu';

  @override
  String get backupFailed => 'Không thể tạo bản sao lưu. Dữ liệu của bạn không thay đổi.';

  @override
  String get backupReadFailed => 'Không thể đọc tệp đã chọn.';

  @override
  String get backupRestoreFailed => 'Khôi phục thất bại. Chưa có gì thay đổi.';

  @override
  String get backupShareSubject => 'Bản sao lưu mã hóa Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mỗi $count ngày',
      one: 'Hằng ngày',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mỗi $count tuần',
      one: 'Hằng tuần',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mỗi $count tháng',
      one: 'Hằng tháng',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mỗi $count năm',
      one: 'Hằng năm',
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
    return 'vào $days';
  }

  @override
  String get repeatEndsLabel => 'Kết thúc';

  @override
  String get repeatEndsAfter => 'Sau một số lần';

  @override
  String get repeatCountLabel => 'Số lần';

  @override
  String get reminderNone => 'Không nhắc';

  @override
  String get reminderCustomTime => 'Vào một giờ cụ thể';

  @override
  String get a11yDecrease => 'Giảm';

  @override
  String get a11yIncrease => 'Tăng';

  @override
  String get pickTaskTitle => 'Chọn việc';

  @override
  String get pickTaskEmpty => 'Không có việc đang mở';

  @override
  String get tasksSearchTooltip => 'Tìm việc';

  @override
  String get tasksSectionOverdue => 'Quá hạn';

  @override
  String get tasksSectionToday => 'Hôm nay';

  @override
  String get tasksRecurringSemantics => 'Lặp lại';

  @override
  String get tasksFilterPriorityAtLeast => 'Ưu tiên tối thiểu';

  @override
  String get tasksFilterCategory => 'Danh mục';

  @override
  String get tasksFilterAnyCategory => 'Mọi danh mục';

  @override
  String get tasksFilterLabel => 'Nhãn';

  @override
  String get tasksFilterAnyLabel => 'Mọi nhãn';

  @override
  String get tasksFilterReset => 'Đặt lại bộ lọc';

  @override
  String get tasksViewByProject => 'Theo dự án';

  @override
  String get tasksViewByPriority => 'Theo ưu tiên';

  @override
  String get tasksViewByCategory => 'Theo danh mục';

  @override
  String get tasksGroupNoCategory => 'Không có danh mục';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count việc');
    return 'Bị chặn bởi $_temp0';
  }

  @override
  String get taskBlockedWarning => 'Việc này đang bị chặn bởi các việc chưa xong. Vẫn hoàn thành?';

  @override
  String get taskStartFocus => 'Tập trung vào việc này';

  @override
  String get taskRemoveDate => 'Xóa ngày';

  @override
  String get taskAllDay => 'Không có giờ cụ thể';

  @override
  String get taskSaved => 'Đã lưu việc';

  @override
  String get taskCreated => 'Đã tạo việc';

  @override
  String get taskReminderNeedsDue => 'Đặt hạn chót để dùng nhắc nhở tương đối';

  @override
  String get taskLabelName => 'Tên nhãn';

  @override
  String get taskPlanning => 'Lên kế hoạch';

  @override
  String get taskOrganize => 'Sắp xếp';

  @override
  String get taskBreakdown => 'Chia nhỏ';

  @override
  String get trashDeleteTaskTitle => 'Xóa vĩnh viễn việc này?';

  @override
  String get trashDeleteNoteTitle => 'Xóa vĩnh viễn ghi chú này?';

  @override
  String get trashDeleteBody => 'Không thể hoàn tác.';

  @override
  String get trashEmptyTitle => 'Dọn thùng rác?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục sẽ bị xóa vĩnh viễn.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Đã khôi phục';

  @override
  String get trashPurged => 'Đã xóa vĩnh viễn';

  @override
  String trashDeletedOn(String date) {
    return 'Đã xóa $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count mục');
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Đọc to';

  @override
  String get flashcardsTtsUnavailable => 'Thiết bị này không có chuyển văn bản thành giọng nói.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Chưa cài giọng đọc cho ngôn ngữ này. Hãy thêm trong cài đặt chuyển văn bản thành giọng nói của Android.';

  @override
  String get calendarAgenda => 'Lịch trình';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Tia lửa',
      'rocket': 'Tên lửa',
      'book': 'Sách',
      'work': 'Công việc',
      'home': 'Nhà',
      'heart': 'Trái tim',
      'code': 'Mã',
      'palette': 'Bảng màu',
      'fitness': 'Thể dục',
      'school': 'Trường học',
      'travel': 'Du lịch',
      'money': 'Tiết kiệm',
      'other': 'Biểu tượng',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Trường khác';

  @override
  String get cardFieldExample => 'Ví dụ';

  @override
  String get cardFieldExplanation => 'Giải thích';

  @override
  String get cardFieldPronunciation => 'Phát âm';

  @override
  String get cardFieldNotes => 'Ghi chú thêm';

  @override
  String get projectMilestones => 'Cột mốc';

  @override
  String get milestoneAdd => 'Thêm cột mốc';

  @override
  String get milestoneEdit => 'Sửa cột mốc';

  @override
  String get milestoneTitleLabel => 'Cột mốc';

  @override
  String get milestoneNoDate => 'Không có ngày';

  @override
  String get milestonesEmpty =>
      'Chưa có cột mốc. Thêm các mốc có ngày để theo dõi dự án trên lịch.';

  @override
  String get milestoneDeleted => 'Đã xóa cột mốc';

  @override
  String milestoneDoneA11y(String title) {
    return 'Đánh dấu cột mốc \"$title\" là đã xong';
  }

  @override
  String calendarMilestone(String project) {
    return 'Cột mốc · $project';
  }

  @override
  String get tasksViewInbox => 'Hộp thư đến';

  @override
  String get tasksViewArchived => 'Đã lưu trữ';

  @override
  String get tasksEmptyInbox =>
      'Các việc không có dự án hay ngày sẽ nằm ở đây. Hãy sắp xếp khi bạn rảnh.';

  @override
  String get tasksEmptyArchived => 'Việc đã lưu trữ được giữ ở đây, ngoài danh sách và nhắc nhở.';

  @override
  String get taskArchivedBadge => 'Đã lưu trữ';

  @override
  String get taskStatusInProgress => 'Đang làm';

  @override
  String get taskArchived => 'Đã lưu trữ việc';

  @override
  String get taskUnarchived => 'Đã khôi phục việc từ lưu trữ';

  @override
  String get focusPlanTitle => 'Kế hoạch phiên';

  @override
  String focusPlanTotal(String duration) {
    return 'Tổng $duration';
  }

  @override
  String get focusPlanRounds => 'Phiên tập trung';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Nghỉ dài sau';

  @override
  String get focusPlanSkipLastBreak => 'Bỏ giờ nghỉ cuối';

  @override
  String get focusPlanAutoBreaks => 'Tự bắt đầu giờ nghỉ';

  @override
  String get focusPlanAutoFocus => 'Tự bắt đầu tập trung sau giờ nghỉ';

  @override
  String get focusPlanSave => 'Lưu kế hoạch';

  @override
  String get focusPlanNameHint => 'vd: Ôn thi';

  @override
  String get focusPlanSaved => 'Đã lưu kế hoạch';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: tập trung $work phút, nghỉ $rest phút';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Giảm $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Tăng $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Phiên $current/$total';
  }

  @override
  String get focusSeriesComplete => 'Đã xong chuỗi phiên. Làm tốt lắm!';

  @override
  String get filterAll => 'Tất cả';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return 'Đã nhập $added · bỏ qua $duplicates trùng lặp · $invalid dòng thiếu';
  }

  @override
  String get flashcardsSuspend => 'Tạm ngưng thẻ';

  @override
  String get flashcardsResume => 'Tiếp tục thẻ';

  @override
  String get flashcardsSuspended => 'Đã tạm ngưng thẻ: thẻ sẽ không được lên lịch';

  @override
  String get flashcardsResumed => 'Đã tiếp tục thẻ';

  @override
  String get flashcardsSuspendedFilter => 'Tạm ngưng';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown/$total thẻ';
  }

  @override
  String get flashcardsImportFile => 'Từ tệp';

  @override
  String get speechTitle => 'Giọng nói';

  @override
  String get speechAppLanguage => 'Ngôn ngữ ứng dụng';

  @override
  String get speechFrontLanguage => 'Ngôn ngữ mặt trước';

  @override
  String get speechBackLanguage => 'Ngôn ngữ mặt sau';

  @override
  String get speechRepeat => 'Lặp lại mỗi lần đọc';

  @override
  String get speechRate => 'Tốc độ';

  @override
  String get speechAutoRead => 'Tự đọc câu hỏi';

  @override
  String get speechHint =>
      'Dùng giọng đọc đã cài trên thiết bị, không cần mạng. Nếu một ngôn ngữ không có giọng, bạn sẽ được báo và không dùng giọng khác thay thế.';

  @override
  String get studyHowTitle => 'Bạn muốn học thế nào?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Ôn $count thẻ');
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Luyện tất cả thẻ (lịch không đổi)';

  @override
  String get studyPracticeMistakes => 'Luyện các lỗi gần đây';

  @override
  String get studyPracticeHint =>
      'Các lượt luyện không bao giờ thay đổi lịch đến hạn. Ôn tập sẽ cập nhật lịch.';

  @override
  String get studyModeClassic => 'Cổ điển';

  @override
  String get studyModeReverse => 'Đảo ngược';

  @override
  String get studyModeMixed => 'Cả hai chiều';

  @override
  String get studyModeTyped => 'Gõ đáp án';

  @override
  String get studyModeChoice => 'Trắc nghiệm';

  @override
  String get studyModeListening => 'Nghe';

  @override
  String get studyPractice => 'luyện tập';

  @override
  String get studyNoMistakes => 'Bộ thẻ này không có lỗi gần đây. Tuyệt!';

  @override
  String get studyTypeAnswer => 'Gõ câu trả lời';

  @override
  String get studyCheck => 'Kiểm tra';

  @override
  String get studyKnewIt => 'Tôi biết';

  @override
  String get studyDidntKnow => 'Không biết';

  @override
  String studyMistakes(int count) {
    return 'Bỏ lỡ ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ôn lại các thẻ bỏ lỡ';

  @override
  String get studyCorrect => 'Đúng';

  @override
  String get studyAlmost => 'Gần đúng — kiểm tra chính tả';

  @override
  String get studyWrong => 'Chưa đúng';

  @override
  String get studyShowText => 'Hiện văn bản';

  @override
  String get flashcardsImportFileFailed =>
      'Không thể mở tệp. Bạn có thể dán nội dung của nó thay thế.';

  @override
  String get studyNoMatchingCards => 'Chưa có thẻ nào cho lựa chọn này.';

  @override
  String get studyPracticeNew => 'Chỉ thẻ mới';

  @override
  String get studyPracticeHard => 'Thẻ khó';

  @override
  String get studyPracticeFavorites => 'Yêu thích';

  @override
  String get studySessionSize => 'Số thẻ mỗi phiên';

  @override
  String get studySessionAll => 'Tất cả';

  @override
  String get studyOrder => 'Thứ tự';

  @override
  String get studyOrderDue => 'Quá hạn lâu nhất trước';

  @override
  String get studyOrderRandom => 'Ngẫu nhiên';

  @override
  String get studyOrderHardest => 'Khó nhất trước';

  @override
  String get flashcardsHard => 'Khó';

  @override
  String get flashcardsFavorites => 'Yêu thích';

  @override
  String get flashcardsFavorite => 'Thêm vào yêu thích';

  @override
  String get flashcardsUnfavorite => 'Bỏ yêu thích';

  @override
  String get flashcardsDuplicate => 'Nhân bản';

  @override
  String get flashcardsMoveTo => 'Chuyển sang bộ thẻ';

  @override
  String get flashcardsNoOtherDeck => 'Hãy tạo một bộ thẻ khác trước.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Đã chuyển $count thẻ');
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Thêm thẻ tag';

  @override
  String get flashcardsTagHint => 'vd: động từ';

  @override
  String flashcardsSelected(int count) {
    return 'Đã chọn $count';
  }

  @override
  String get flashcardsSelectAll => 'Chọn tất cả đang hiện';

  @override
  String flashcardsSelectCard(String front) {
    return 'Chọn $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Khả năng nhớ $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Có thể trùng lặp';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Bộ thẻ này đã có “$front” → “$back”. Vẫn lưu?';
  }

  @override
  String get flashcardsSaveAnyway => 'Vẫn lưu';

  @override
  String get flashcardsStats => 'Thống kê';

  @override
  String get flashcardsStatTotal => 'Thẻ';

  @override
  String get flashcardsStatLearning => 'Đang học';

  @override
  String get flashcardsStatMatureCaption => 'Nhớ trên 21 ngày';

  @override
  String get flashcardsStatReviewsToday => 'Lượt ôn hôm nay';

  @override
  String get flashcardsStatCorrect => 'Câu trả lời đúng';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days ngày qua';
  }

  @override
  String get flashcardsStatForget => 'Tỷ lệ quên';

  @override
  String get flashcardsStatForgetCaption => '“Lại” ở thẻ đã học';

  @override
  String get flashcardsStatRecall => 'Khả năng nhớ hiện tại';

  @override
  String get flashcardsStatRecallCaption => 'Ước tính FSRS, thẻ đã ôn';

  @override
  String flashcardsStatActivity(int count) {
    return 'Lượt ôn mỗi ngày · tổng $count';
  }

  @override
  String get flashcardsStatHistory => 'Câu trả lời gần đây';

  @override
  String get flashcardsStatNoHistory => 'Chưa có lượt ôn. Hãy học bộ thẻ để xem tiến độ ở đây.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Đọc to $field';
  }

  @override
  String get speechVoice => 'Giọng đọc';

  @override
  String get speechVoiceDefault => 'Tự động';

  @override
  String get speechVoiceOnline => 'cần internet';

  @override
  String get speechTest => 'Thử giọng';

  @override
  String get importNext => 'Xem trước';

  @override
  String get importPreviewTitle => 'Ghép cột với trường';

  @override
  String get importIgnoreColumn => 'Bỏ qua';

  @override
  String importColumn(int n) {
    return 'Cột $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready thẻ sẵn sàng · sẽ bỏ qua $invalid dòng thiếu';
  }

  @override
  String get importNeedFrontBack => 'Chọn cột nào là mặt trước và mặt sau.';

  @override
  String get actionMoveUp => 'Lên trên';

  @override
  String get actionMoveDown => 'Xuống dưới';

  @override
  String get flashcardsLayoutTitle => 'Bố cục thẻ';

  @override
  String get flashcardsLayoutHint =>
      'Đổi tên, ẩn hoặc sắp xếp lại các trường thêm của bộ thẻ này. Nội dung thẻ không bao giờ thay đổi.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Hiện $field khi học';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Hiện đáp án từng bước';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Mặt sau hiện trước; mỗi trường thêm mở ra khi chạm.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Hiện $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Tệp này lớn hơn $mb MB.';
  }

  @override
  String get flashcardsImage => 'Hình ảnh';

  @override
  String get flashcardsAudio => 'Âm thanh';

  @override
  String get flashcardsAddImage => 'Thêm hình ảnh';

  @override
  String get flashcardsAddAudio => 'Thêm âm thanh';

  @override
  String get flashcardsPlayAudio => 'Phát bản ghi';

  @override
  String get flashcardsAudioUnavailable => 'Không thể phát bản ghi này trên thiết bị.';

  @override
  String get flashcardsCustomFields => 'Trường của bạn';

  @override
  String get flashcardsTemplates => 'Mẫu';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Trường $n';
  }

  @override
  String get flashcardsAddField => 'Thêm trường';

  @override
  String get flashcardsFieldName => 'Tên trường';

  @override
  String get flashcardsFieldLangDefault => 'Ngôn ngữ mặt thẻ';

  @override
  String get flashcardsTemplateConfirm =>
      'Mẫu quy định cách hiển thị các trường và thêm trường của mẫu. Thẻ và trường hiện có vẫn giữ nguyên.';

  @override
  String get flashcardsApplyTemplate => 'Áp dụng';

  @override
  String get templateVocabulary => 'Từ vựng';

  @override
  String get templateTwoTranslations => 'Từ có hai bản dịch';

  @override
  String get templateQuestionAnswer => 'Hỏi và đáp';

  @override
  String get templateDefinition => 'Thuật ngữ và định nghĩa';

  @override
  String get templateGrammar => 'Quy tắc ngữ pháp';

  @override
  String get templateFieldPlural => 'Số nhiều';

  @override
  String get templateFieldTranslation2 => 'Bản dịch thứ hai';

  @override
  String get templateFieldSynonyms => 'Từ đồng nghĩa';

  @override
  String get templateFieldRule => 'Quy tắc';

  @override
  String get deckCategory => 'Trình độ hoặc chủ đề';

  @override
  String get deckCategoryHint => 'vd: A1, Y khoa';

  @override
  String get flashcardsSearchAll => 'Tìm trong mọi thẻ';

  @override
  String get flashcardsSearchAllHint => 'Từ, bản dịch, ví dụ, ghi chú, thẻ tag…';

  @override
  String get flashcardsAllDecks => 'Tất cả bộ thẻ';

  @override
  String get flashcardsAllLanguages => 'Tất cả ngôn ngữ';

  @override
  String get flashcardsLangUnset => 'Chưa đặt ngôn ngữ';

  @override
  String get flashcardsLevelUnset => 'Không có trình độ hay chủ đề';

  @override
  String get flashcardsByLanguage => 'Tiến độ theo ngôn ngữ';

  @override
  String get flashcardsByLevel => 'Tiến độ theo trình độ hoặc chủ đề';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks bộ · $cards thẻ · $mature đã thuộc · $due cần ôn · $correct đúng (30 ngày)';
  }

  @override
  String get flashcardsRecord => 'Ghi âm';

  @override
  String get flashcardsRecording => 'Đang ghi âm…';

  @override
  String get flashcardsRecordStop => 'Dừng và giữ lại';

  @override
  String get flashcardsMicDenied =>
      'Quyền truy cập micrô đang tắt. Hãy cho phép trong cài đặt hệ thống để ghi âm.';

  @override
  String get flashcardsRecordFailed => 'Thiết bị này không hỗ trợ ghi âm.';

  @override
  String get soundsTitle => 'Âm thanh';

  @override
  String get soundsNature => 'Thiên nhiên';

  @override
  String get soundsNoise => 'Tiếng ồn tập trung';

  @override
  String get soundRain => 'Mưa';

  @override
  String get soundStorm => 'Giông bão';

  @override
  String get soundRiver => 'Dòng sông';

  @override
  String get soundOcean => 'Sóng biển';

  @override
  String get soundFire => 'Lửa trại';

  @override
  String get soundForest => 'Chim rừng';

  @override
  String get soundNight => 'Đêm hè';

  @override
  String get soundWhite => 'Tiếng ồn trắng';

  @override
  String get soundPink => 'Tiếng ồn hồng';

  @override
  String get soundBrown => 'Tiếng ồn nâu';

  @override
  String get soundsPlay => 'Phát';

  @override
  String get soundsSleep => 'Hẹn giờ ngủ';

  @override
  String get soundsSleepOff => 'Tắt';

  @override
  String soundsSleepAt(String time) {
    return 'Dừng lúc $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Có thể phát cùng lúc tối đa $count âm thanh.';
  }

  @override
  String get soundsHint =>
      'Chạm vào một âm thanh để bắt đầu. Trộn nhiều âm và chỉnh từng mức âm lượng.';

  @override
  String get soundsMixer => 'Bản phối';

  @override
  String soundsVolumeOf(String name) {
    return 'Âm lượng $name';
  }

  @override
  String get soundsChannel => 'Âm thanh thiên nhiên';

  @override
  String get settingsEndTone => 'Âm báo hết giờ';

  @override
  String get toneGentle => 'Bíp nhẹ';

  @override
  String get toneBeeps => 'Bíp';

  @override
  String get toneWood => 'Gõ gỗ';

  @override
  String get toneBird => 'Tiếng chim';

  @override
  String get toneStream => 'Suối chảy';

  @override
  String get toneSystem => 'Âm thanh của điện thoại';

  @override
  String get speechOnPhone => 'Trên điện thoại này';

  @override
  String get speechAllLanguages => 'Tất cả ngôn ngữ';

  @override
  String get speechSearchLanguage => 'Tìm ngôn ngữ';

  @override
  String get speechGetVoices => 'Tải thêm giọng đọc';

  @override
  String get speechGetVoicesHint =>
      'Có thể tải giọng cho các ngôn ngữ chưa có trong cài đặt giọng nói của điện thoại.';

  @override
  String get speechSettingsFailed => 'Không thể mở cài đặt giọng nói trên điện thoại này.';

  @override
  String get speechVoiceMissing => 'Chưa cài giọng đọc';

  @override
  String get speechPause => 'Ngắt giữa các lần lặp';

  @override
  String speechSeconds(String seconds) {
    return '$seconds giây';
  }

  @override
  String get speechExample => 'Đọc ví dụ cùng đáp án';

  @override
  String get flashListen => 'Nghe';

  @override
  String get flashListenNext => 'Thẻ tiếp theo';

  @override
  String get flashListenEmpty => 'Không có thẻ nào để nghe.';

  @override
  String get flashViewTable => 'Bảng';

  @override
  String get flashViewCards => 'Thẻ';

  @override
  String get flashSwapSides => 'Đổi cột';

  @override
  String get flashSort => 'Sắp xếp';

  @override
  String get flashSortNewest => 'Mới nhất trước';

  @override
  String get flashSortAlpha => 'Từ A đến Z';

  @override
  String get flashSortDue => 'Đến hạn trước';

  @override
  String get flashSortHard => 'Khó nhất trước';

  @override
  String get flashPasteCards => 'Dán thẻ';

  @override
  String get flashClipboardEmpty => 'Bộ nhớ tạm không có văn bản.';

  @override
  String get flashMenuAdd => 'Thêm thẻ';

  @override
  String get flashMenuDeck => 'Bộ thẻ';

  @override
  String get flashToday => 'Hôm nay';

  @override
  String get flashStudyNow => 'Học';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã trả lời $count thẻ',
      zero: 'Chưa trả lời thẻ nào',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Mưa trong rừng';

  @override
  String get autoBackupTitle => 'Sao lưu tự động';

  @override
  String get autoBackupDesc => 'Mỗi ngày trên điện thoại này; giữ 7 bản gần nhất';

  @override
  String get autoBackupHint =>
      'Các bản này nằm trên điện thoại và sẽ bị xóa nếu gỡ ứng dụng. Để chuyển sang điện thoại mới, hãy dùng “Sao lưu” để lưu một tệp.';

  @override
  String get autoBackupNone => 'Chưa có bản sao lưu tự động. Bản đầu tiên sẽ được tạo hôm nay.';

  @override
  String get autoBackupRestore => 'Khôi phục';

  @override
  String autoBackupConfirm(String date) {
    return 'Thay toàn bộ dữ liệu hiện tại bằng bản sao lưu ngày $date?';
  }

  @override
  String get autoBackupRestored => 'Đã khôi phục.';

  @override
  String get errorLogTitle => 'Nhật ký lỗi';

  @override
  String get errorLogHint =>
      'Nếu có sự cố, nó sẽ được ghi ở đây: chỉ loại lỗi và vị trí trong mã, không bao giờ có nội dung của bạn. Chia sẻ để giúp sửa lỗi.';

  @override
  String get errorLogEmpty => 'Chưa ghi nhận lỗi nào.';

  @override
  String get errorLogClear => 'Xóa sạch';

  @override
  String get soundsWithFocus => 'Phát cùng phiên tập trung';

  @override
  String get soundsWithFocusHint =>
      'Bản phối của bạn bắt đầu cùng phiên tập trung và tạm dừng khi nghỉ.';

  @override
  String get soundsSavedMixes => 'Bản phối đã lưu';

  @override
  String get soundsSaveMix => 'Lưu bản phối này';

  @override
  String get soundsMixNameHint => 'Tên, vd: Thư viện ngày mưa';

  @override
  String soundsDeleteMix(String name) {
    return 'Xóa bản phối “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Mỗi ngày một lần, chỉ khi có thẻ cần ôn';

  @override
  String get settingsReviewTime => 'Giờ nhắc';

  @override
  String get shortcutFocus => 'Tập trung';

  @override
  String get shortcutNewTask => 'Việc mới';

  @override
  String get shortcutReview => 'Ôn thẻ';

  @override
  String get shortcutSounds => 'Âm thanh thiên nhiên';

  @override
  String get myDayTitle => 'Bắt đầu ngày mới';

  @override
  String get myDayHint => 'Nhìn nhanh ngày của bạn, rồi một chạm để tập trung';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hôm nay có $count việc',
      zero: 'Hôm nay không có việc',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Hôm nay không còn sự kiện nào';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Tiếp theo: $title lúc $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Còn $count thói quen',
      zero: 'Đã xong mọi thói quen',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Bắt đầu bằng một phiên tập trung';

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
  String get hijriMonth6 => 'Jumada al-Akhirah';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qadah';

  @override
  String get hijriMonth12 => 'Dhu al-Hijjah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month năm $year AH';
  }

  @override
  String get settingsHijri => 'Ngày Hồi lịch';

  @override
  String get settingsHijriHint => 'Hiển thị trong lịch và trên trang chủ (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count ngày');
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Hôm nay $done/$goal thẻ';
  }

  @override
  String get studyGoalReached => 'Đã đạt mục tiêu ngày. Làm tốt lắm!';

  @override
  String get studyWeekTitle => 'Tuần của bạn';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã trả lời $count thẻ trong 7 ngày',
      zero: 'Không trả lời thẻ nào trong 7 ngày',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration tập trung trong 7 ngày';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Chuỗi: $current · Dài nhất: $best';
  }

  @override
  String get studyGoalTitle => 'Mục tiêu ngày (thẻ)';

  @override
  String get studyGoalOff => 'Tắt';

  @override
  String get focusDndTitle => 'Không làm phiền khi tập trung';

  @override
  String get focusDndHint => 'Bật cho mỗi phiên tập trung và tắt khi nghỉ';

  @override
  String get focusDndNeedsAccess =>
      'Cho phép truy cập trong cài đặt điện thoại để dùng tính năng này';

  @override
  String get voiceInput => 'Nói để nhập';

  @override
  String get voiceInputPrompt => 'Hãy nói';

  @override
  String get voiceInputUnavailable =>
      'Điện thoại này không hỗ trợ nhập bằng giọng nói. Hãy cài hoặc bật một dịch vụ giọng nói (ví dụ Nhận dạng và tổng hợp giọng nói của Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Bình minh';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Liên đoàn Hồi giáo Thế giới';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mecca';

  @override
  String get prayerMethodEgypt => 'Cơ quan Tổng cục Ai Cập';

  @override
  String get prayerMethodJordan => 'Jordan, Bộ Awqaf';

  @override
  String get prayerMethodKarachi => 'Đại học Khoa học Hồi giáo, Karachi';

  @override
  String get prayerMethodIsna => 'Hội Hồi giáo Bắc Mỹ (ISNA)';

  @override
  String get prayerMethodGulf => 'Khu vực vùng Vịnh';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Thổ Nhĩ Kỳ, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'Pháp (12°)';

  @override
  String get prayerMethodRussia => 'Nga, Ban Quản lý Tôn giáo';

  @override
  String prayerNotifTitle(String name) {
    return 'Đến giờ $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Giờ cầu nguyện · $time';
  }

  @override
  String get prayerTitle => 'Giờ cầu nguyện';

  @override
  String get prayerOffHint =>
      'Chọn thành phố để xem giờ cầu nguyện. Giờ được tính trên điện thoại; không cần quyền vị trí.';

  @override
  String get prayerChooseCity => 'Chọn thành phố';

  @override
  String get prayerCity => 'Thành phố';

  @override
  String get prayerCitySearch => 'Tìm thành phố';

  @override
  String get prayerMethod => 'Phương pháp tính';

  @override
  String get prayerHanafiAsr => 'Asr theo Hanafi (giờ muộn hơn)';

  @override
  String get prayerReminders => 'Thông báo mỗi giờ cầu nguyện';

  @override
  String get prayerPauseFocus => 'Tạm dừng tập trung vào giờ cầu nguyện';

  @override
  String get prayerPauseFocusHint => 'Phiên đang chạy sẽ tạm dừng; tiếp tục sau khi cầu nguyện';

  @override
  String get prayerTurnOff => 'Tắt giờ cầu nguyện';

  @override
  String get prayerAccuracyNote =>
      'Giờ tính toán có thể chênh vài phút so với thánh đường nơi bạn ở.';

  @override
  String prayerNext(String name, String time) {
    return '$name lúc $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Tệp Anki này dùng định dạng mới nhất. Trong Anki, hãy xuất lại với tùy chọn “Support older Anki versions” được bật, rồi nhập tệp đó.';

  @override
  String get importTemplate => 'Mẫu bảng tính';

  @override
  String get importTemplateFront => 'quả táo';

  @override
  String get importTemplateBack => 'một loại quả tròn';

  @override
  String get importTemplateExample => 'Mỗi ngày tôi ăn một quả táo.';

  @override
  String get importTemplateTag => 'đồ ăn';

  @override
  String get starterTitle => 'Bộ thẻ khởi đầu';

  @override
  String get starterHint => 'Thêm một bộ để thử học ngay. Bạn có thể sửa hoặc xóa sau.';

  @override
  String get starterAdd => 'Thêm';

  @override
  String get starterWords => 'Từ tiếng Anh thông dụng (nghĩa tiếng Ả Rập)';

  @override
  String get starterCapitals => 'Thủ đô thế giới';

  @override
  String get starterElements => 'Nguyên tố hóa học';

  @override
  String get settingsAccent => 'Màu nhấn';

  @override
  String get accentViolet => 'Tím';

  @override
  String get accentBlue => 'Xanh dương';

  @override
  String get accentTeal => 'Xanh mòng két';

  @override
  String get accentGreen => 'Xanh lá';

  @override
  String get accentRose => 'Hồng';

  @override
  String get accentAmber => 'Hổ phách';

  @override
  String get settingsFlashTextSize => 'Cỡ chữ trên thẻ';

  @override
  String get settingsFlashTextSample => 'Ví dụ';

  @override
  String get widgetStartFocus => 'Chạm để tập trung';

  @override
  String widgetFocusUntil(String time) {
    return 'Tập trung đến $time';
  }

  @override
  String get widgetNoCardsDue => 'Thẻ: đã xong hết';

  @override
  String get faqMyDayQ => '“Bắt đầu ngày mới” làm gì?';

  @override
  String get faqMyDayA =>
      'Mỗi ngày một lần, trang chủ sẽ gợi ý: xem việc hôm nay, sự kiện tiếp theo, thói quen còn lại và thẻ cần ôn, rồi bắt đầu một phiên tập trung chỉ với một chạm. Nhấn giữ biểu tượng ứng dụng để có thao tác nhanh, hoặc thêm tiện ích màn hình chính để xem thời gian tập trung và thẻ cần ôn.';

  @override
  String get faqTasksQ => 'Làm sao thêm việc có nhắc nhở?';

  @override
  String get faqTasksA =>
      'Chạm Việc mới ở Trang chủ hoặc + trong Công việc. Gõ tiêu đề hoặc đọc bằng micrô, rồi đặt hạn chót, giờ và nhắc nhở. Việc quá hạn được xếp lên đầu.';

  @override
  String get faqFocusQ => 'Bộ hẹn giờ tập trung hoạt động thế nào?';

  @override
  String get faqFocusA =>
      'Chọn Pomodoro, đếm ngược hoặc thời gian tự do rồi nhấn Bắt đầu; giờ nghỉ có thể tự đến. Trong Cài đặt bạn có thể chọn âm báo kết thúc, bật Không làm phiền khi tập trung và phát âm thanh thiên nhiên mỗi phiên.';

  @override
  String get faqSoundsQ => 'Tôi có thể trộn âm thanh thiên nhiên không?';

  @override
  String get faqSoundsA =>
      'Bật tối đa sáu bản ghi thật, chỉnh âm lượng từng bản và lưu bản phối theo tên. Chúng tiếp tục phát khi chạy nền, và hẹn giờ ngủ có thể dừng chúng. Không dùng nhạc.';

  @override
  String get faqCalendarQ => 'Lịch có hiển thị ngày Hồi lịch không?';

  @override
  String get faqCalendarA =>
      'Có. Ngày Hồi lịch (Umm al-Qura) tự hiện khi dùng tiếng Ả Rập và có thể bật trong Cài đặt cho mọi ngôn ngữ. Sự kiện, việc có hạn chót và cột mốc dự án hiện cùng nhau.';

  @override
  String get faqFlashcardsQ => 'Ôn tập chọn thẻ cho tôi xem như thế nào?';

  @override
  String get faqFlashcardsA =>
      'Thẻ bạn đã nhớ kỹ sẽ quay lại sau khoảng cách dài hơn, còn thẻ bạn quên sẽ quay lại sớm (lặp lại ngắt quãng). Đánh giá mỗi câu trả lời là Lại, Khó, Tốt hoặc Dễ. Đặt mục tiêu ngày và giữ chuỗi trên thẻ Hôm nay. Đặt ngày thi trong bộ thẻ để xem số ngày còn lại và số thẻ mới cần học mỗi ngày. Sắp xếp theo \"Thứ tự của tôi\" để kéo thẻ vào chỗ, chạm loa ở một mặt để nghe, và chỉnh tốc độ, số lần lặp trong menu Giọng nói.';

  @override
  String get faqImportQ => 'Tôi có thể đưa thẻ từ Anki hoặc Excel vào không?';

  @override
  String get faqImportA =>
      'Có. Trong bộ thẻ chọn Nhập, rồi chọn tệp: Anki (.apkg), Excel (.xlsx) hoặc CSV, và ghép các cột. Dùng “Mẫu bảng tính” để soạn thẻ trên máy tính. Hình ảnh và âm thanh trong tệp Anki không được nhập.';

  @override
  String get faqNotesQ => 'Ghi chú làm được gì?';

  @override
  String get faqNotesA =>
      'Viết tự do với danh sách kiểm tra và định dạng, ghim hoặc đánh dấu yêu thích ghi chú quan trọng, thêm thẻ tag và liên kết ghi chú với việc. Nút micrô cho phép đọc để nhập. Ghi chú mới có thể bắt đầu từ mẫu (bài giảng, tóm tắt sách, nhật ký, kế hoạch tuần), và nút hình ảnh để thêm ảnh.';

  @override
  String get faqHabitsQ => 'Chuỗi thói quen được tính thế nào?';

  @override
  String get faqHabitsA =>
      'Một ngày được tính khi bạn đạt chỉ tiêu của thói quen vào ngày có lịch. Tạm dừng thói quen giữ chuỗi an toàn. Mỗi thói quen có thể có giờ nhắc riêng.';

  @override
  String get faqGoalsQ => 'Mục tiêu theo dõi tiến độ thế nào?';

  @override
  String get faqGoalsA =>
      'Đặt cho mục tiêu một chỉ tiêu và đơn vị, rồi ghi tiến độ. Thẻ của nó cho thấy bạn đã đi được bao xa và còn bao nhiêu trước hạn chót.';

  @override
  String get faqProjectsQ => 'Dự án dùng để làm gì?';

  @override
  String get faqProjectsA =>
      'Gom các việc vào một dự án, thêm cột mốc có ngày và theo dõi tiến độ chung. Cột mốc cũng hiện trong lịch.';

  @override
  String get faqInsightsQ => 'Thống kê cho thấy gì?';

  @override
  String get faqInsightsA =>
      'Thời gian tập trung, việc đã xong và việc học của bạn theo ngày và tuần, kèm gợi ý nhẹ nhàng. Mọi thứ được tính trên điện thoại.';

  @override
  String get faqSpacesQ => 'Các mục khác nằm ở đâu?';

  @override
  String get faqSpacesA =>
      'Không gian liệt kê mọi phần của ứng dụng (ghi chú, bộ thẻ, thói quen, mục tiêu, dự án, âm thanh và hơn nữa) để thanh chính luôn gọn.';

  @override
  String get faqBackupQ => 'Dữ liệu của tôi được sao lưu thế nào?';

  @override
  String get faqBackupA =>
      'Mỗi ngày ứng dụng âm thầm giữ một bản sao mã hóa trên điện thoại và giữ 7 bản gần nhất. Trong Cài đặt bạn cũng có thể xuất tệp sao lưu có mật khẩu và khôi phục trên điện thoại khác.';

  @override
  String get faqPrayerQ => 'Giờ cầu nguyện hoạt động thế nào?';

  @override
  String get faqPrayerA =>
      'Chọn thành phố trong Cài đặt → Giờ cầu nguyện. Giờ được tính trên điện thoại theo phương pháp dùng ở nơi đó, và bạn có thể đổi phương pháp cũng như trường phái tính Asr. Bạn có thể nhận thông báo mỗi giờ cầu nguyện, và phiên tập trung đang chạy sẽ tạm dừng.';

  @override
  String get faqPrivacyQ => 'Dữ liệu của tôi được lưu ở đâu?';

  @override
  String get faqPrivacyA =>
      'Chỉ trên điện thoại của bạn, trong cơ sở dữ liệu mã hóa. Không có tài khoản, không theo dõi. Internet chỉ được dùng bởi tính năng bạn tự bật, như trợ lý tùy chọn.';

  @override
  String get faqAssistantQ => 'Trợ lý là gì?';

  @override
  String get faqAssistantA =>
      'Một trợ thủ tùy chọn bạn kết nối với dịch vụ AI của riêng mình trong Cài đặt. Mặc định tắt và luôn hỏi trước khi gửi văn bản ghi chú.';

  @override
  String get tourPlanTitle => 'Lên kế hoạch cho ngày';

  @override
  String get tourPlanBody =>
      'Công việc, lịch và thói quen ở một nơi yên tĩnh. Bắt đầu mỗi sáng với “Bắt đầu ngày mới”.';

  @override
  String get tourFocusTitle => 'Tập trung sâu';

  @override
  String get tourFocusBody =>
      'Các phiên có hẹn giờ với âm thanh thiên nhiên thật, Không làm phiền và âm báo kết thúc nhẹ nhàng.';

  @override
  String get tourLearnTitle => 'Học để nhớ lâu';

  @override
  String get tourLearnBody =>
      'Thẻ ghi nhớ với lặp lại ngắt quãng, đọc thành tiếng nhiều ngôn ngữ và nhập từ Anki hoặc Excel.';

  @override
  String get helpTitle => 'Trợ giúp & câu hỏi';

  @override
  String get helpOpen => 'Mở';

  @override
  String get helpTour => 'Xem giới thiệu';

  @override
  String get tourNext => 'Tiếp';

  @override
  String get tourDone => 'Bắt đầu nào';

  @override
  String get transferColTitle => 'Tiêu đề';

  @override
  String get transferColNotes => 'Ghi chú';

  @override
  String get transferColBody => 'Văn bản';

  @override
  String get transferColDue => 'Hạn chót';

  @override
  String get transferColPriority => 'Ưu tiên (0-3)';

  @override
  String get transferColDone => 'Đã xong';

  @override
  String get transferColProject => 'Dự án';

  @override
  String get transferColCategory => 'Danh mục';

  @override
  String get transferTitle => 'Nhập và xuất';

  @override
  String get transferSaveAs => 'Lưu dưới dạng';

  @override
  String get transferImport => 'Nhập từ tệp';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV hoặc bảng trong Word. Các cột: tiêu đề, hạn chót (2026-12-31), ưu tiên 0-3, đã xong, dự án, ghi chú. Việc đã có trong ứng dụng sẽ được bỏ qua.';

  @override
  String get transferImportNotesHint =>
      'Tệp Word, Markdown hoặc văn bản sẽ thành một ghi chú. Excel hoặc CSV: mỗi dòng một ghi chú (tiêu đề, văn bản).';

  @override
  String get transferSaved => 'Đã lưu tệp';

  @override
  String get transferFailed => 'Không thể tạo tệp. Chưa có gì thay đổi.';

  @override
  String get transferUnsupported =>
      'Không đọc được tệp này ở đây. Hãy dùng Excel, CSV, Word, Markdown hoặc văn bản.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: 'Đã thêm $added',
      zero: 'Không có gì mới để thêm',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Văn bản';

  @override
  String get transferAllNotes => 'Tất cả ghi chú';

  @override
  String get transferThisNote => 'Ghi chú này';

  @override
  String get transferDeckFormats => 'Lưu dưới dạng Excel, Word hoặc PDF';

  @override
  String get faqFilesQ => 'Tôi có dùng được tệp Excel, Word hoặc PDF không?';

  @override
  String get faqFilesA =>
      'Có. Công việc và Ghi chú có nút nhập và xuất (hai mũi tên) ở trên cùng, và mỗi bộ thẻ có nút này trong menu. Lưu dưới dạng Excel, CSV, Word hoặc PDF, hoặc đưa vào tệp Excel, CSV, Word, Markdown hay văn bản. Tên cột có thể viết bằng bất kỳ ngôn ngữ nào của ứng dụng, và tệp bạn đã lưu luôn có thể nhập lại.';

  @override
  String get tplLecture => 'Bài giảng';

  @override
  String get tplBook => 'Tóm tắt sách';

  @override
  String get tplJournal => 'Nhật ký';

  @override
  String get tplWeek => 'Kế hoạch tuần';

  @override
  String get tplLectureBody => '## Ý chính\n- \n\n## Câu hỏi\n- [ ] \n\n## Tóm tắt\n';

  @override
  String get tplBookBody =>
      '## Ý tưởng chính\n\n## Điều tôi học được\n- \n\n## Trích dẫn\n> \n\n## Áp dụng\n- [ ] \n';

  @override
  String get tplJournalBody => '## Biết ơn vì\n- \n\n## Tập trung hôm nay\n- [ ] \n\n## Ghi chú\n';

  @override
  String get tplWeekBody =>
      '## Mục tiêu tuần này\n- [ ] \n\n### Thứ Bảy\n- [ ] \n\n### Chủ Nhật\n- [ ] \n\n### Thứ Hai\n- [ ] \n\n### Thứ Ba\n- [ ] \n\n### Thứ Tư\n- [ ] \n\n### Thứ Năm\n- [ ] \n\n### Thứ Sáu\n- [ ] \n';

  @override
  String get tplHint => 'Bắt đầu từ mẫu';

  @override
  String get noteImage => 'Hình ảnh';

  @override
  String get noteAddImage => 'Thêm hình ảnh';

  @override
  String get noteImageUnreadable => 'Tệp này không phải hình ảnh mà ứng dụng đọc được.';

  @override
  String get noteImageTooLarge => 'Hình ảnh này quá lớn.';

  @override
  String get examSet => 'Đặt ngày thi';

  @override
  String get examDate => 'Ngày thi';

  @override
  String get examToday => 'Hôm nay thi. Chúc may mắn!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Còn $count ngày nữa thi',
      one: 'Mai thi',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'học $count thẻ mới mỗi ngày',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'đã học hết thẻ, hãy tiếp tục ôn';

  @override
  String examRaiseLimit(int count) {
    return 'Hiện $count thẻ mới mỗi ngày';
  }

  @override
  String get backupDriveHint =>
      'Để giữ một bản trực tuyến, hãy chọn Google Drive (hoặc ứng dụng đám mây khác) ở màn hình lưu sắp mở.';

  @override
  String get flashShareDeck => 'Chia sẻ bộ thẻ với bạn bè';

  @override
  String get flashSortManual => 'Thứ tự của tôi (kéo)';

  @override
  String get flashReorderHint => 'Giữ tay nắm và kéo thẻ để di chuyển.';

  @override
  String get flashReorderNeedsAll => 'Xóa tìm kiếm và bộ lọc để kéo thẻ.';

  @override
  String get flashDragHandle => 'Kéo để di chuyển';

  @override
  String get reportTitle => 'Báo cáo tháng';

  @override
  String get reportFocus => 'Thời gian tập trung';

  @override
  String reportSessions(int count) {
    return '$count phiên';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Ngày tốt nhất: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count ngày hoạt động';
  }

  @override
  String get reportCards => 'Thẻ đã ôn';

  @override
  String reportCardsKnown(String percent) {
    return 'Nhớ được $percent';
  }

  @override
  String get reportTasks => 'Việc đã xong';

  @override
  String get reportHabits => 'Lượt đánh dấu thói quen';

  @override
  String get reportEmpty => 'Tháng này chưa có ghi nhận nào.';

  @override
  String get reportSave => 'Lưu dưới dạng PDF hoặc Word';

  @override
  String get reportPrevMonth => 'Tháng trước';

  @override
  String get reportNextMonth => 'Tháng sau';

  @override
  String get careTitle => 'Chăm sóc điện thoại và dữ liệu';

  @override
  String get storageTitle => 'Bộ nhớ';

  @override
  String get storageSubtitle => 'Những gì chiếm dung lượng và dọn ảnh không dùng';

  @override
  String get storagePictures => 'Ảnh trong ghi chú';

  @override
  String get storageCardMedia => 'Ảnh và âm thanh trong thẻ';

  @override
  String get storageText => 'Văn bản ghi chú';

  @override
  String get storageFree => 'Còn trống trên điện thoại';

  @override
  String get storageLow =>
      'Điện thoại sắp đầy. Hãy giải phóng ít dung lượng để sao lưu và nhắc nhở tiếp tục hoạt động.';

  @override
  String storageUnused(int count, String size) {
    return '$count ảnh không dùng ($size)';
  }

  @override
  String get storageNoUnused => 'Không có ảnh thừa. Mọi thứ gọn gàng.';

  @override
  String get storageClean => 'Xóa ảnh không dùng';

  @override
  String storageCleaned(int count) {
    return 'Đã xóa $count ảnh';
  }

  @override
  String get storageHint =>
      'Ảnh chỉ được coi là không dùng khi không ghi chú nào hiển thị nó, kể cả ghi chú trong thùng rác.';

  @override
  String get batteryTitle => 'Giữ nhắc nhở hoạt động';

  @override
  String get batterySubtitle =>
      'Một số điện thoại dừng ứng dụng chạy nền. Hãy kiểm tra điện thoại của bạn.';

  @override
  String get batteryStatusOk =>
      'Chế độ tiết kiệm pin không hạn chế ứng dụng này. Nhắc nhở và âm thanh sẽ đến đúng giờ.';

  @override
  String get batteryStatusLimited =>
      'Chế độ tiết kiệm pin có thể dừng ứng dụng khi chạy nền, nên nhắc nhở và âm thanh có thể đến muộn hoặc bị mất.';

  @override
  String get batteryOpen => 'Mở cài đặt pin';

  @override
  String get batteryOpenApp => 'Mở cài đặt ứng dụng';

  @override
  String get batteryGeneric =>
      'Trong cài đặt pin, chọn ứng dụng này và đặt thành Không hạn chế (hoặc Không tối ưu hóa).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: mở thêm Bảo mật › Quyền › Tự khởi động và bật ứng dụng này, rồi đặt Tiết kiệm pin thành Không hạn chế.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: mở Pin › ứng dụng này và cho phép hoạt động nền và tự khởi chạy; khóa ứng dụng trong danh sách ứng dụng gần đây.';

  @override
  String get batterySamsung =>
      'Samsung: Pin › Giới hạn sử dụng nền: gỡ ứng dụng này khỏi Ứng dụng ngủ và Ứng dụng ngủ sâu.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Khởi chạy ứng dụng › ứng dụng này › quản lý thủ công, và cho phép tự khởi chạy, khởi chạy phụ và chạy nền.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Pin › Tiêu thụ điện năng nền › cho phép ứng dụng này, và bật tự khởi động trong phần quyền.';

  @override
  String get whatsNewTitle => 'Có gì mới';

  @override
  String get whatsNewSubtitle => 'Những thay đổi mới nhất trong vài dòng';

  @override
  String get whatsNewDone => 'Đã hiểu';

  @override
  String get whatsNewOrderTitle => 'Kéo thẻ theo thứ tự của bạn';

  @override
  String get whatsNewOrderBody =>
      'Trong bộ thẻ chọn Sắp xếp › Thứ tự của tôi, rồi giữ tay nắm và kéo.';

  @override
  String get whatsNewSpeechTitle => 'Loa trên mỗi mặt thẻ';

  @override
  String get whatsNewSpeechBody =>
      'Chạm để nghe từ hoặc bản dịch. Tốc độ, số lần lặp và giọng đọc nằm trong menu ôn tập. Ngôn ngữ được nhận diện từ văn bản.';

  @override
  String get whatsNewReportTitle => 'Báo cáo tháng';

  @override
  String get whatsNewReportBody =>
      'Trong Thống kê, chạm biểu tượng báo cáo để xem tháng và lưu dưới dạng PDF hoặc Word.';

  @override
  String get whatsNewCareTitle => 'Chăm sóc điện thoại và dữ liệu';

  @override
  String get whatsNewCareBody =>
      'Cài đặt giờ có trang bộ nhớ với tính năng dọn ảnh và hướng dẫn pin theo hãng điện thoại của bạn.';

  @override
  String get whatsNewSoundTitle => 'Âm thanh êm dịu hơn';

  @override
  String get whatsNewSoundBody => 'Âm thanh thiên nhiên nhẹ và nhỏ hơn, thẻ hình cũng đẹp hơn.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Đã kiểm tra $date: bản sao lưu mới nhất mở bình thường.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Đã kiểm tra $date: phát hiện bản sao lưu hỏng và đã thay bằng bản mới.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Đã kiểm tra $date: không mở được bản sao lưu mới nhất. Hãy tự lưu một tệp sao lưu trong Cài đặt.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Bạn thường học vào khoảng $time';
  }

  @override
  String get smartReviewTimeUse => 'Dùng giờ này';

  @override
  String get widgetNewNote => 'Ghi chú mới';

  @override
  String get noteConnections => 'Thẻ tag, liên kết và việc';

  @override
  String get navCards => 'Thẻ';

  @override
  String get studyAnswerWay => 'Cách trả lời';

  @override
  String get studyMorePractice => 'Luyện thêm';

  @override
  String get studySessionSettings => 'Cài đặt phiên';

  @override
  String get focusAdjustTitle => 'Phiên của bạn';

  @override
  String get focusPresetsTitle => 'Có sẵn';

  @override
  String get focusPresetStudy => 'Học tập';

  @override
  String get focusPresetDeep => 'Làm việc sâu';

  @override
  String get focusPresetQuick => 'Chạy nước rút ngắn';

  @override
  String get focusPresetReading => 'Đọc sách';

  @override
  String get focusPresetWorkout => 'Các hiệp tập luyện';

  @override
  String get focusAdjustMinutes => 'Thời lượng tập trung';

  @override
  String get focusAdjustBreak => 'Thời lượng nghỉ';

  @override
  String get focusAdjustRounds => 'Số hiệp';

  @override
  String get focusRoundsOpen => 'Không giới hạn';

  @override
  String focusMinutesShort(String n) {
    return '$n phút';
  }

  @override
  String get focusTapToAdjust => 'Chạm để đổi thời gian';

  @override
  String get flashArrangeDecks => 'Sắp xếp bộ thẻ';

  @override
  String get flashDeckActions => 'Tùy chọn bộ thẻ';

  @override
  String get starterBrowse => 'Bộ thẻ có sẵn';

  @override
  String get starterBrowseHint => 'Thêm chỉ với một chạm và bắt đầu học';

  @override
  String get dashOpenDecks => 'Mở thẻ của bạn';

  @override
  String speechVoiceNumber(String n) {
    return 'Giọng $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Nhịp tốt. Nghỉ $m phút nhé?';
  }

  @override
  String get focusFlowBreakStart => 'Bắt đầu nghỉ';

  @override
  String tasksFinishAt(String time) {
    return 'Bắt đầu ngay thì bạn sẽ xong hết lúc $time';
  }

  @override
  String get focusCalmPacing => 'Nhịp điệu nhẹ nhàng';

  @override
  String get focusCalmPacingHint => 'Chỉ hiện số phút tròn và vòng tiến độ, không có giây nhảy';

  @override
  String get focusFlipHint => 'Úp điện thoại xuống để bắt đầu';

  @override
  String get focusImmersive => 'Chế độ đắm chìm';

  @override
  String get focusImmersiveBlack => 'Đen tuyệt đối (tiết kiệm pin)';

  @override
  String get focusFlipToFocus => 'Úp máy để tập trung';

  @override
  String get focusFlipToFocusHint =>
      'Trong chế độ đắm chìm: úp xuống để bắt đầu, nhấc lên để tạm dừng';

  @override
  String get guardTitle => 'Chặn xao nhãng';

  @override
  String get guardSubtitle => 'Tạm dừng ứng dụng gây xao nhãng khi bạn tập trung';

  @override
  String get guardSwitch => 'Tạm dừng ứng dụng gây xao nhãng';

  @override
  String get guardSwitchHint => 'Trong các phiên tập trung và khung giờ Hẹn giờ chặn của bạn';

  @override
  String get guardNeedsAccess => 'Cần bật công tắc trợ năng: chạm để bật';

  @override
  String get guardDisclosureTitle => 'Cách hoạt động';

  @override
  String get guardDisclosureBody =>
      'Để tạm dừng các ứng dụng bạn chọn, Deep Focus dùng dịch vụ trợ năng của Android để biết ứng dụng nào đang mở. Khi bật “Đóng Shorts và Reels”, nó cũng kiểm tra xem trên màn hình có trình phát video ngắn hay không.\n\nNó không đọc văn bản, không lưu bất cứ thứ gì nó thấy và không gửi đi đâu cả: mọi thứ ở lại trên điện thoại của bạn. Bạn có thể tắt bất cứ lúc nào trong cài đặt Hỗ trợ tiếp cận.';

  @override
  String get guardAgree => 'Đồng ý và mở cài đặt';

  @override
  String get guardModeGentle => 'Nhẹ nhàng';

  @override
  String get guardModeStrict => 'Nghiêm ngặt';

  @override
  String get guardGentleHint => 'Một nhịp thở 5 giây, rồi bạn tự quyết định';

  @override
  String get guardStrictHint => 'Ứng dụng đã chọn vẫn đóng cho đến khi hết giờ tập trung';

  @override
  String get guardApps => 'Ứng dụng cần tạm dừng';

  @override
  String get guardAppsAllowed => 'Ứng dụng được phép';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ứng dụng',
      zero: 'Chưa chọn',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Chỉ cho phép ứng dụng đã chọn';

  @override
  String get guardAllowlistHint =>
      'Mọi ứng dụng khác đều tạm dừng; cuộc gọi, cài đặt và bàn phím luôn hoạt động';

  @override
  String get guardShorts => 'Đóng Shorts và Reels';

  @override
  String get guardShortsHint =>
      'Bất cứ khi nào bật chặn. Cố gắng hết mức: các ứng dụng này thay đổi thường xuyên';

  @override
  String get guardSchedule => 'Hẹn giờ chặn';

  @override
  String get guardScheduleHint => 'Chặn cả vào ngày và giờ cố định, như giờ học hoặc giờ làm';

  @override
  String get guardFrom => 'Từ';

  @override
  String get guardTo => 'Đến';

  @override
  String get guardSearchApps => 'Tìm ứng dụng';

  @override
  String get guardNoApps => 'Không tìm thấy ứng dụng';

  @override
  String get guardPrivacy =>
      'Chỉ hoạt động trên điện thoại: tính năng chặn biết ứng dụng nào đang mở, không bao giờ xem nội dung bên trong, và không gửi gì đi.';

  @override
  String get guardBreathe => 'Hít vào… và thở ra';

  @override
  String get guardQuestion => 'Bạn có cần ứng dụng này ngay bây giờ không?';

  @override
  String get guardBackToFocus => 'Quay lại tập trung';

  @override
  String get guardOpenFive => 'Mở trong 5 phút';

  @override
  String get guardStrictBody => 'Ứng dụng này tạm dừng cho đến khi hết giờ tập trung.';

  @override
  String get guardShortsClosed => 'Video ngắn bị đóng khi bật chặn';

  @override
  String get faqGuardQ => 'Làm sao chặn ứng dụng gây xao nhãng khi tôi tập trung?';

  @override
  String get faqGuardA =>
      'Mở Tập trung → cài đặt hẹn giờ → Chặn xao nhãng. Chọn các ứng dụng, rồi chọn Nhẹ nhàng (thở 5 giây và câu hỏi “Bạn có cần ứng dụng này ngay bây giờ không?”) hoặc Nghiêm ngặt (ứng dụng vẫn đóng). Tính năng hoạt động trong các phiên tập trung và, với Hẹn giờ chặn, vào những ngày giờ bạn đặt. “Chỉ cho phép ứng dụng đã chọn” tạm dừng mọi thứ khác; cuộc gọi, cài đặt và bàn phím luôn hoạt động. Android sẽ hỏi bạn một lần để bật tính năng trong cài đặt Hỗ trợ tiếp cận. Nó chỉ biết ứng dụng nào đang mở và không gửi gì đi.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Đã chuyển vào $name';
  }

  @override
  String get notesDragHint => 'Giữ một ghi chú và kéo vào sổ';

  @override
  String get guardReviewCards => 'Ôn thẻ thay vì vậy';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thẻ đang chờ bạn',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Khẩn cấp: giữ 10 giây';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Tiếp tục giữ… $n';
  }

  @override
  String get guardWeekTitle => 'Tuần này';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count lần tạm dừng');
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'quay lại tập trung $count lần',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Đổi tên từ ngữ';

  @override
  String get wordsSubtitle => 'Dùng từ của riêng bạn cho bất kỳ văn bản nào trong ứng dụng';

  @override
  String get wordsHint =>
      'Chạm vào một văn bản để đổi. Từ của bạn chỉ áp dụng cho ngôn ngữ này và có trong bản sao lưu.';

  @override
  String get wordsSearch => 'Tìm văn bản';

  @override
  String get wordsChangedOnly => 'Chỉ mục đã đổi';

  @override
  String wordsOriginal(String text) {
    return 'Gốc: $text';
  }

  @override
  String get wordsReset => 'Dùng bản gốc';

  @override
  String get wordsResetAll => 'Đặt lại mọi từ';

  @override
  String get wordsResetAllConfirm => 'Mọi văn bản trong ngôn ngữ này sẽ trở về bản gốc.';

  @override
  String get wordsNone => 'Không tìm thấy văn bản';

  @override
  String get settingsLanguageSearch => 'Tìm ngôn ngữ';

  @override
  String get settingsLanguageNoMatch => 'Không có ngôn ngữ phù hợp';

  @override
  String get soundsMyMusic => 'Âm thanh của bạn';

  @override
  String get soundsMusicHint =>
      'Phát tệp âm thanh từ điện thoại. Không có gì được sao chép hay tải lên.';

  @override
  String get soundsChooseMusic => 'Chọn âm thanh';

  @override
  String get soundsRemoveMusic => 'Gỡ âm thanh';

  @override
  String get wordPacksTitle => 'Gói từ vựng';

  @override
  String get wordPacksHint =>
      'Danh sách từ theo chủ đề. Chỉ tải ngôn ngữ bạn muốn, rồi tùy ý sửa hoặc xóa thẻ.';

  @override
  String get wordPacksFailed => 'Không tải được. Hãy kiểm tra kết nối.';

  @override
  String get wordPacksEmpty => 'Từ vựng cho ngôn ngữ này vẫn đang được chuẩn bị.';
}
