/// Route paths. Use these helpers instead of string literals in widgets.
abstract final class Routes {
  static const home = '/';
  static const tasks = '/tasks';
  static const focus = '/focus';
  static const calendar = '/calendar';
  static const spaces = '/spaces';

  static const taskNew = '/task/new';
  static String task(String id) => '/task/$id';
  static const eventNew = '/event/new';
  static String event(String id) => '/event/$id';
  static const projects = '/projects';
  static String project(String id) => '/projects/$id';
  static const notes = '/notes';
  static String note(String id) => '/notes/$id';
  static const flashcards = '/flashcards';
  static String deck(String id) => '/flashcards/$id';
  static String review(String deckId) => '/flashcards/$deckId/review';
  static const goals = '/goals';
  static String goal(String id) => '/goals/$id';
  static const habits = '/habits';
  static String habit(String id) => '/habits/$id';
  static const insights = '/insights';
  static const search = '/search';
  static const assistant = '/assistant';
  static const settings = '/settings';
  static const trash = '/trash';
  static const onboarding = '/onboarding';
}
