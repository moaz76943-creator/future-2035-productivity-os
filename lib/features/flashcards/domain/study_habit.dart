/// When the user usually studies cards, from the times of past reviews.
///
/// Returns the minute of the day (a full hour) in which most reviews happened,
/// or null when there is too little to say. Reviews must be local times.
int? usualStudyMinute(Iterable<DateTime> localReviewTimes, {int minReviews = 15}) {
  final perHour = List<int>.filled(24, 0);
  var total = 0;
  for (final t in localReviewTimes) {
    perHour[t.hour]++;
    total++;
  }
  if (total < minReviews) return null;
  var best = 0;
  for (var h = 1; h < 24; h++) {
    if (perHour[h] > perHour[best]) best = h;
  }
  // The busiest hour must stand out a little (at least a fifth of all reviews).
  if (perHour[best] * 5 < total) return null;
  return best * 60;
}
