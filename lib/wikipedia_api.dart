library wikipedia_api;

import 'package:wikipedia_api/src/wikipedia_api.dart';
export 'src/wikipedia_api.dart';

class WikipediaApi {
  final CitationApi citation;
  final FeedApi feed;
  final MathApi math;
  final MobileApi mobile;
  final OfflineApi offline;
  final PageContentApi pageContent;
  final ReadingListsApi readingLists;
  final RecommendationApi recommendation;
  final TalkPagesApi talkPages;
  final TransformsApi transforms;

  WikipediaApi({ApiClient? apiClient})
      : citation = CitationApi(apiClient),
        feed = FeedApi(apiClient),
        math = MathApi(apiClient),
        mobile = MobileApi(apiClient),
        offline = OfflineApi(apiClient),
        pageContent = PageContentApi(apiClient),
        readingLists = ReadingListsApi(apiClient),
        recommendation = RecommendationApi(apiClient),
        talkPages = TalkPagesApi(apiClient),
        transforms = TransformsApi(apiClient);
}
