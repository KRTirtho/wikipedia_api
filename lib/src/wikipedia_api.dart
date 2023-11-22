library wikipedia_api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

part './api_client.dart';
part './api_helper.dart';
part './api_exception.dart';
part './auth/authentication.dart';
part './auth/api_key_auth.dart';
part './auth/oauth.dart';
part './auth/http_basic_auth.dart';
part './auth/http_bearer_auth.dart';

part './api/citation_api.dart';
part './api/feed_api.dart';
part './api/math_api.dart';
part './api/mobile_api.dart';
part './api/offline_api.dart';
part './api/page_content_api.dart';
part './api/reading_lists_api.dart';
part './api/recommendation_api.dart';
part './api/talk_pages_api.dart';
part './api/transforms_api.dart';

part './model/action.dart';
part './model/announcement.dart';
part './model/announcements_response.dart';
part './model/batch.dart';
part './model/cx_dict.dart';
part './model/cx_dict_translations_inner.dart';
part './model/cx_mt.dart';
part './model/data_lists_get200_response.dart';
part './model/data_lists_id_entries_batch_post200_response.dart';
part './model/data_lists_id_entries_batch_post200_response_batch_inner.dart';
part './model/data_lists_id_entries_batch_post_request.dart';
part './model/data_lists_id_entries_post200_response.dart';
part './model/data_lists_pages_project_title_get200_response.dart';
part './model/data_lists_post200_response.dart';
part './model/data_parsoid.dart';
part './model/feed.dart';
part './model/get_list_entries200_response.dart';
part './model/image.dart';
part './model/image_description.dart';
part './model/list_create_batch.dart';
part './model/list_entry_read.dart';
part './model/list_entry_write.dart';
part './model/list_id.dart';
part './model/list_read.dart';
part './model/list_write.dart';
part './model/listing.dart';
part './model/listing_links.dart';
part './model/listing_links_next.dart';
part './model/media_item.dart';
part './model/media_item_caption.dart';
part './model/media_item_original.dart';
part './model/media_list.dart';
part './model/morelike_result_inner.dart';
part './model/mostread.dart';
part './model/mostread_article.dart';
part './model/news_item.dart';
part './model/onthisday_inner.dart';
part './model/onthisday_response.dart';
part './model/originalimage.dart';
part './model/page_segments_title_get200_response.dart';
part './model/problem.dart';
part './model/recommendation_result.dart';
part './model/recommendation_result_items_inner.dart';
part './model/related.dart';
part './model/result.dart';
part './model/revision.dart';
part './model/revision_identifier.dart';
part './model/revision_info.dart';
part './model/revisions.dart';
part './model/summary.dart';
part './model/summary_coordinates.dart';
part './model/thumbnail.dart';
part './model/titles_set.dart';
part './model/transform_wikitext_to_lint_post_request.dart';

/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var _defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
