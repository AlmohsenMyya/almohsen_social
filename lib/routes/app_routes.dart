import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/log_in_screen/binding/log_in_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/notification_screen/binding/notification_binding.dart';
import '../presentation/invite_friends_screen/invite_friends_screen.dart';
import '../presentation/invite_friends_screen/binding/invite_friends_binding.dart';
import '../presentation/daily_new_tab_container_screen/daily_new_tab_container_screen.dart';
import '../presentation/daily_new_tab_container_screen/binding/daily_new_tab_container_binding.dart';
import '../presentation/trending_tab_container_screen/trending_tab_container_screen.dart';
import '../presentation/trending_tab_container_screen/binding/trending_tab_container_binding.dart';
import '../presentation/stories_container_screen/stories_container_screen.dart';
import '../presentation/stories_container_screen/binding/stories_container_binding.dart';
import '../presentation/trending_posts_tab_container_screen/trending_posts_tab_container_screen.dart';
import '../presentation/trending_posts_tab_container_screen/binding/trending_posts_tab_container_binding.dart';
import '../presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import '../presentation/stories_and_tweets_screen/binding/stories_and_tweets_binding.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/search_screen/binding/search_binding.dart';
import '../presentation/live_screen/live_screen.dart';
import '../presentation/live_screen/binding/live_binding.dart';
import '../presentation/for_you_screen/for_you_screen.dart';
import '../presentation/for_you_screen/binding/for_you_binding.dart';
import '../presentation/page_view_screen/page_view_screen.dart';
import '../presentation/page_view_screen/binding/page_view_binding.dart';
import '../presentation/comments_screen/comments_screen.dart';
import '../presentation/comments_screen/binding/comments_binding.dart';
import '../presentation/account_view_screen/account_view_screen.dart';
import '../presentation/account_view_screen/binding/account_view_binding.dart';
import '../presentation/account_details_screen/account_details_screen.dart';
import '../presentation/account_details_screen/binding/account_details_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/friends_screen/friends_screen.dart';
import '../presentation/friends_screen/binding/friends_binding.dart';
import '../presentation/detailed_profile_screen/detailed_profile_screen.dart';
import '../presentation/detailed_profile_screen/binding/detailed_profile_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String notificationScreen = '/notification_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String discoverPage = '/discover_page';

  static const String dailyNewPage = '/daily_new_page';

  static const String dailyNewTabContainerScreen =
      '/daily_new_tab_container_screen';

  static const String trendingPage = '/trending_page';

  static const String trendingTabContainerScreen =
      '/trending_tab_container_screen';

  static const String storiesPage = '/stories_page';

  static const String storiesContainerScreen = '/stories_container_screen';

  static const String trendingPostsPage = '/trending_posts_page';

  static const String trendingPostsTabContainerScreen =
      '/trending_posts_tab_container_screen';

  static const String storiesAndTweetsScreen = '/stories_and_tweets_screen';

  static const String searchScreen = '/search_screen';

  static const String liveScreen = '/live_screen';

  static const String forYouScreen = '/for_you_screen';

  static const String pageViewScreen = '/page_view_screen';

  static const String commentsScreen = '/comments_screen';

  static const String accountViewScreen = '/account_view_screen';

  static const String accountDetailsScreen = '/account_details_screen';

  static const String messagesPage = '/messages_page';

  static const String chatScreen = '/chat_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationsPage = '/notifications_page';

  static const String profilePage = '/profile_page';

  static const String detailedProfileScreen = '/detailed_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: inviteFriendsScreen,
      page: () => InviteFriendsScreen(),
      bindings: [
        InviteFriendsBinding(),
      ],
    ),
    GetPage(
      name: dailyNewTabContainerScreen,
      page: () => DailyNewTabContainerScreen(),
      bindings: [
        DailyNewTabContainerBinding(),
      ],
    ),
    GetPage(
      name: trendingTabContainerScreen,
      page: () => TrendingTabContainerScreen(),
      bindings: [
        TrendingTabContainerBinding(),
      ],
    ),
    GetPage(
      name: storiesContainerScreen,
      page: () => StoriesContainerScreen(),
      bindings: [
        StoriesContainerBinding(),
      ],
    ),
    GetPage(
      name: trendingPostsTabContainerScreen,
      page: () => TrendingPostsTabContainerScreen(),
      bindings: [
        TrendingPostsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: storiesAndTweetsScreen,
      page: () => StoriesAndTweetsScreen(),
      bindings: [
        StoriesAndTweetsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: liveScreen,
      page: () => LiveScreen(),
      bindings: [
        LiveBinding(),
      ],
    ),
    GetPage(
      name: forYouScreen,
      page: () => ForYouScreen(),
      bindings: [
        ForYouBinding(),
      ],
    ),
    GetPage(
      name: pageViewScreen,
      page: () => PageViewScreen(),
      bindings: [
        PageViewBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: accountViewScreen,
      page: () => AccountViewScreen(),
      bindings: [
        AccountViewBinding(),
      ],
    ),
    GetPage(
      name: accountDetailsScreen,
      page: () => AccountDetailsScreen(),
      bindings: [
        AccountDetailsBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: friendsScreen,
      page: () => FriendsScreen(),
      bindings: [
        FriendsBinding(),
      ],
    ),
    GetPage(
      name: detailedProfileScreen,
      page: () => DetailedProfileScreen(),
      bindings: [
        DetailedProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
