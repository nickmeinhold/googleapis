// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.youtube.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/youtube/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.AbuseType> buildUnnamed2330() {
  var o = <api.AbuseType>[];
  o.add(buildAbuseType());
  o.add(buildAbuseType());
  return o;
}

void checkUnnamed2330(core.List<api.AbuseType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAbuseType(o[0]);
  checkAbuseType(o[1]);
}

core.List<api.RelatedEntity> buildUnnamed2331() {
  var o = <api.RelatedEntity>[];
  o.add(buildRelatedEntity());
  o.add(buildRelatedEntity());
  return o;
}

void checkUnnamed2331(core.List<api.RelatedEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedEntity(o[0]);
  checkRelatedEntity(o[1]);
}

core.int buildCounterAbuseReport = 0;
api.AbuseReport buildAbuseReport() {
  var o = api.AbuseReport();
  buildCounterAbuseReport++;
  if (buildCounterAbuseReport < 3) {
    o.abuseTypes = buildUnnamed2330();
    o.description = 'foo';
    o.relatedEntities = buildUnnamed2331();
    o.subject = buildEntity();
  }
  buildCounterAbuseReport--;
  return o;
}

void checkAbuseReport(api.AbuseReport o) {
  buildCounterAbuseReport++;
  if (buildCounterAbuseReport < 3) {
    checkUnnamed2330(o.abuseTypes);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2331(o.relatedEntities);
    checkEntity(o.subject);
  }
  buildCounterAbuseReport--;
}

core.int buildCounterAbuseType = 0;
api.AbuseType buildAbuseType() {
  var o = api.AbuseType();
  buildCounterAbuseType++;
  if (buildCounterAbuseType < 3) {
    o.id = 'foo';
  }
  buildCounterAbuseType--;
  return o;
}

void checkAbuseType(api.AbuseType o) {
  buildCounterAbuseType++;
  if (buildCounterAbuseType < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAbuseType--;
}

core.List<core.String> buildUnnamed2332() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2332(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessPolicy = 0;
api.AccessPolicy buildAccessPolicy() {
  var o = api.AccessPolicy();
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    o.allowed = true;
    o.exception = buildUnnamed2332();
  }
  buildCounterAccessPolicy--;
  return o;
}

void checkAccessPolicy(api.AccessPolicy o) {
  buildCounterAccessPolicy++;
  if (buildCounterAccessPolicy < 3) {
    unittest.expect(o.allowed, unittest.isTrue);
    checkUnnamed2332(o.exception);
  }
  buildCounterAccessPolicy--;
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  var o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.contentDetails = buildActivityContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildActivitySnippet();
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkActivitySnippet(o.snippet);
  }
  buildCounterActivity--;
}

core.int buildCounterActivityContentDetails = 0;
api.ActivityContentDetails buildActivityContentDetails() {
  var o = api.ActivityContentDetails();
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    o.bulletin = buildActivityContentDetailsBulletin();
    o.channelItem = buildActivityContentDetailsChannelItem();
    o.comment = buildActivityContentDetailsComment();
    o.favorite = buildActivityContentDetailsFavorite();
    o.like = buildActivityContentDetailsLike();
    o.playlistItem = buildActivityContentDetailsPlaylistItem();
    o.promotedItem = buildActivityContentDetailsPromotedItem();
    o.recommendation = buildActivityContentDetailsRecommendation();
    o.social = buildActivityContentDetailsSocial();
    o.subscription = buildActivityContentDetailsSubscription();
    o.upload = buildActivityContentDetailsUpload();
  }
  buildCounterActivityContentDetails--;
  return o;
}

void checkActivityContentDetails(api.ActivityContentDetails o) {
  buildCounterActivityContentDetails++;
  if (buildCounterActivityContentDetails < 3) {
    checkActivityContentDetailsBulletin(o.bulletin);
    checkActivityContentDetailsChannelItem(o.channelItem);
    checkActivityContentDetailsComment(o.comment);
    checkActivityContentDetailsFavorite(o.favorite);
    checkActivityContentDetailsLike(o.like);
    checkActivityContentDetailsPlaylistItem(o.playlistItem);
    checkActivityContentDetailsPromotedItem(o.promotedItem);
    checkActivityContentDetailsRecommendation(o.recommendation);
    checkActivityContentDetailsSocial(o.social);
    checkActivityContentDetailsSubscription(o.subscription);
    checkActivityContentDetailsUpload(o.upload);
  }
  buildCounterActivityContentDetails--;
}

core.int buildCounterActivityContentDetailsBulletin = 0;
api.ActivityContentDetailsBulletin buildActivityContentDetailsBulletin() {
  var o = api.ActivityContentDetailsBulletin();
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsBulletin--;
  return o;
}

void checkActivityContentDetailsBulletin(api.ActivityContentDetailsBulletin o) {
  buildCounterActivityContentDetailsBulletin++;
  if (buildCounterActivityContentDetailsBulletin < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsBulletin--;
}

core.int buildCounterActivityContentDetailsChannelItem = 0;
api.ActivityContentDetailsChannelItem buildActivityContentDetailsChannelItem() {
  var o = api.ActivityContentDetailsChannelItem();
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsChannelItem--;
  return o;
}

void checkActivityContentDetailsChannelItem(
    api.ActivityContentDetailsChannelItem o) {
  buildCounterActivityContentDetailsChannelItem++;
  if (buildCounterActivityContentDetailsChannelItem < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsChannelItem--;
}

core.int buildCounterActivityContentDetailsComment = 0;
api.ActivityContentDetailsComment buildActivityContentDetailsComment() {
  var o = api.ActivityContentDetailsComment();
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsComment--;
  return o;
}

void checkActivityContentDetailsComment(api.ActivityContentDetailsComment o) {
  buildCounterActivityContentDetailsComment++;
  if (buildCounterActivityContentDetailsComment < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsComment--;
}

core.int buildCounterActivityContentDetailsFavorite = 0;
api.ActivityContentDetailsFavorite buildActivityContentDetailsFavorite() {
  var o = api.ActivityContentDetailsFavorite();
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsFavorite--;
  return o;
}

void checkActivityContentDetailsFavorite(api.ActivityContentDetailsFavorite o) {
  buildCounterActivityContentDetailsFavorite++;
  if (buildCounterActivityContentDetailsFavorite < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsFavorite--;
}

core.int buildCounterActivityContentDetailsLike = 0;
api.ActivityContentDetailsLike buildActivityContentDetailsLike() {
  var o = api.ActivityContentDetailsLike();
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsLike--;
  return o;
}

void checkActivityContentDetailsLike(api.ActivityContentDetailsLike o) {
  buildCounterActivityContentDetailsLike++;
  if (buildCounterActivityContentDetailsLike < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsLike--;
}

core.int buildCounterActivityContentDetailsPlaylistItem = 0;
api.ActivityContentDetailsPlaylistItem
    buildActivityContentDetailsPlaylistItem() {
  var o = api.ActivityContentDetailsPlaylistItem();
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    o.playlistId = 'foo';
    o.playlistItemId = 'foo';
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsPlaylistItem--;
  return o;
}

void checkActivityContentDetailsPlaylistItem(
    api.ActivityContentDetailsPlaylistItem o) {
  buildCounterActivityContentDetailsPlaylistItem++;
  if (buildCounterActivityContentDetailsPlaylistItem < 3) {
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.playlistItemId, unittest.equals('foo'));
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsPlaylistItem--;
}

core.List<core.String> buildUnnamed2333() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2333(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2334() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2334(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityContentDetailsPromotedItem = 0;
api.ActivityContentDetailsPromotedItem
    buildActivityContentDetailsPromotedItem() {
  var o = api.ActivityContentDetailsPromotedItem();
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    o.adTag = 'foo';
    o.clickTrackingUrl = 'foo';
    o.creativeViewUrl = 'foo';
    o.ctaType = 'foo';
    o.customCtaButtonText = 'foo';
    o.descriptionText = 'foo';
    o.destinationUrl = 'foo';
    o.forecastingUrl = buildUnnamed2333();
    o.impressionUrl = buildUnnamed2334();
    o.videoId = 'foo';
  }
  buildCounterActivityContentDetailsPromotedItem--;
  return o;
}

void checkActivityContentDetailsPromotedItem(
    api.ActivityContentDetailsPromotedItem o) {
  buildCounterActivityContentDetailsPromotedItem++;
  if (buildCounterActivityContentDetailsPromotedItem < 3) {
    unittest.expect(o.adTag, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.creativeViewUrl, unittest.equals('foo'));
    unittest.expect(o.ctaType, unittest.equals('foo'));
    unittest.expect(o.customCtaButtonText, unittest.equals('foo'));
    unittest.expect(o.descriptionText, unittest.equals('foo'));
    unittest.expect(o.destinationUrl, unittest.equals('foo'));
    checkUnnamed2333(o.forecastingUrl);
    checkUnnamed2334(o.impressionUrl);
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsPromotedItem--;
}

core.int buildCounterActivityContentDetailsRecommendation = 0;
api.ActivityContentDetailsRecommendation
    buildActivityContentDetailsRecommendation() {
  var o = api.ActivityContentDetailsRecommendation();
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    o.reason = 'foo';
    o.resourceId = buildResourceId();
    o.seedResourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsRecommendation--;
  return o;
}

void checkActivityContentDetailsRecommendation(
    api.ActivityContentDetailsRecommendation o) {
  buildCounterActivityContentDetailsRecommendation++;
  if (buildCounterActivityContentDetailsRecommendation < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    checkResourceId(o.seedResourceId);
  }
  buildCounterActivityContentDetailsRecommendation--;
}

core.int buildCounterActivityContentDetailsSocial = 0;
api.ActivityContentDetailsSocial buildActivityContentDetailsSocial() {
  var o = api.ActivityContentDetailsSocial();
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    o.author = 'foo';
    o.imageUrl = 'foo';
    o.referenceUrl = 'foo';
    o.resourceId = buildResourceId();
    o.type = 'foo';
  }
  buildCounterActivityContentDetailsSocial--;
  return o;
}

void checkActivityContentDetailsSocial(api.ActivityContentDetailsSocial o) {
  buildCounterActivityContentDetailsSocial++;
  if (buildCounterActivityContentDetailsSocial < 3) {
    unittest.expect(o.author, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.referenceUrl, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsSocial--;
}

core.int buildCounterActivityContentDetailsSubscription = 0;
api.ActivityContentDetailsSubscription
    buildActivityContentDetailsSubscription() {
  var o = api.ActivityContentDetailsSubscription();
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterActivityContentDetailsSubscription--;
  return o;
}

void checkActivityContentDetailsSubscription(
    api.ActivityContentDetailsSubscription o) {
  buildCounterActivityContentDetailsSubscription++;
  if (buildCounterActivityContentDetailsSubscription < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterActivityContentDetailsSubscription--;
}

core.int buildCounterActivityContentDetailsUpload = 0;
api.ActivityContentDetailsUpload buildActivityContentDetailsUpload() {
  var o = api.ActivityContentDetailsUpload();
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    o.videoId = 'foo';
  }
  buildCounterActivityContentDetailsUpload--;
  return o;
}

void checkActivityContentDetailsUpload(api.ActivityContentDetailsUpload o) {
  buildCounterActivityContentDetailsUpload++;
  if (buildCounterActivityContentDetailsUpload < 3) {
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterActivityContentDetailsUpload--;
}

core.List<api.Activity> buildUnnamed2335() {
  var o = <api.Activity>[];
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

void checkUnnamed2335(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivityListResponse = 0;
api.ActivityListResponse buildActivityListResponse() {
  var o = api.ActivityListResponse();
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2335();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterActivityListResponse--;
  return o;
}

void checkActivityListResponse(api.ActivityListResponse o) {
  buildCounterActivityListResponse++;
  if (buildCounterActivityListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2335(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterActivityListResponse--;
}

core.int buildCounterActivitySnippet = 0;
api.ActivitySnippet buildActivitySnippet() {
  var o = api.ActivitySnippet();
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.groupId = 'foo';
    o.publishedAt = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterActivitySnippet--;
  return o;
}

void checkActivitySnippet(api.ActivitySnippet o) {
  buildCounterActivitySnippet++;
  if (buildCounterActivitySnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterActivitySnippet--;
}

core.int buildCounterCaption = 0;
api.Caption buildCaption() {
  var o = api.Caption();
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildCaptionSnippet();
  }
  buildCounterCaption--;
  return o;
}

void checkCaption(api.Caption o) {
  buildCounterCaption++;
  if (buildCounterCaption < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCaptionSnippet(o.snippet);
  }
  buildCounterCaption--;
}

core.List<api.Caption> buildUnnamed2336() {
  var o = <api.Caption>[];
  o.add(buildCaption());
  o.add(buildCaption());
  return o;
}

void checkUnnamed2336(core.List<api.Caption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaption(o[0]);
  checkCaption(o[1]);
}

core.int buildCounterCaptionListResponse = 0;
api.CaptionListResponse buildCaptionListResponse() {
  var o = api.CaptionListResponse();
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2336();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterCaptionListResponse--;
  return o;
}

void checkCaptionListResponse(api.CaptionListResponse o) {
  buildCounterCaptionListResponse++;
  if (buildCounterCaptionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2336(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCaptionListResponse--;
}

core.int buildCounterCaptionSnippet = 0;
api.CaptionSnippet buildCaptionSnippet() {
  var o = api.CaptionSnippet();
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    o.audioTrackType = 'foo';
    o.failureReason = 'foo';
    o.isAutoSynced = true;
    o.isCC = true;
    o.isDraft = true;
    o.isEasyReader = true;
    o.isLarge = true;
    o.language = 'foo';
    o.lastUpdated = 'foo';
    o.name = 'foo';
    o.status = 'foo';
    o.trackKind = 'foo';
    o.videoId = 'foo';
  }
  buildCounterCaptionSnippet--;
  return o;
}

void checkCaptionSnippet(api.CaptionSnippet o) {
  buildCounterCaptionSnippet++;
  if (buildCounterCaptionSnippet < 3) {
    unittest.expect(o.audioTrackType, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.isAutoSynced, unittest.isTrue);
    unittest.expect(o.isCC, unittest.isTrue);
    unittest.expect(o.isDraft, unittest.isTrue);
    unittest.expect(o.isEasyReader, unittest.isTrue);
    unittest.expect(o.isLarge, unittest.isTrue);
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUpdated, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackKind, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterCaptionSnippet--;
}

core.int buildCounterCdnSettings = 0;
api.CdnSettings buildCdnSettings() {
  var o = api.CdnSettings();
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    o.format = 'foo';
    o.frameRate = 'foo';
    o.ingestionInfo = buildIngestionInfo();
    o.ingestionType = 'foo';
    o.resolution = 'foo';
  }
  buildCounterCdnSettings--;
  return o;
}

void checkCdnSettings(api.CdnSettings o) {
  buildCounterCdnSettings++;
  if (buildCounterCdnSettings < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.frameRate, unittest.equals('foo'));
    checkIngestionInfo(o.ingestionInfo);
    unittest.expect(o.ingestionType, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
  }
  buildCounterCdnSettings--;
}

core.Map<core.String, api.ChannelLocalization> buildUnnamed2337() {
  var o = <core.String, api.ChannelLocalization>{};
  o['x'] = buildChannelLocalization();
  o['y'] = buildChannelLocalization();
  return o;
}

void checkUnnamed2337(core.Map<core.String, api.ChannelLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelLocalization(o['x']);
  checkChannelLocalization(o['y']);
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.auditDetails = buildChannelAuditDetails();
    o.brandingSettings = buildChannelBrandingSettings();
    o.contentDetails = buildChannelContentDetails();
    o.contentOwnerDetails = buildChannelContentOwnerDetails();
    o.conversionPings = buildChannelConversionPings();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed2337();
    o.snippet = buildChannelSnippet();
    o.statistics = buildChannelStatistics();
    o.status = buildChannelStatus();
    o.topicDetails = buildChannelTopicDetails();
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    checkChannelAuditDetails(o.auditDetails);
    checkChannelBrandingSettings(o.brandingSettings);
    checkChannelContentDetails(o.contentDetails);
    checkChannelContentOwnerDetails(o.contentOwnerDetails);
    checkChannelConversionPings(o.conversionPings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2337(o.localizations);
    checkChannelSnippet(o.snippet);
    checkChannelStatistics(o.statistics);
    checkChannelStatus(o.status);
    checkChannelTopicDetails(o.topicDetails);
  }
  buildCounterChannel--;
}

core.int buildCounterChannelAuditDetails = 0;
api.ChannelAuditDetails buildChannelAuditDetails() {
  var o = api.ChannelAuditDetails();
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    o.communityGuidelinesGoodStanding = true;
    o.contentIdClaimsGoodStanding = true;
    o.copyrightStrikesGoodStanding = true;
  }
  buildCounterChannelAuditDetails--;
  return o;
}

void checkChannelAuditDetails(api.ChannelAuditDetails o) {
  buildCounterChannelAuditDetails++;
  if (buildCounterChannelAuditDetails < 3) {
    unittest.expect(o.communityGuidelinesGoodStanding, unittest.isTrue);
    unittest.expect(o.contentIdClaimsGoodStanding, unittest.isTrue);
    unittest.expect(o.copyrightStrikesGoodStanding, unittest.isTrue);
  }
  buildCounterChannelAuditDetails--;
}

core.int buildCounterChannelBannerResource = 0;
api.ChannelBannerResource buildChannelBannerResource() {
  var o = api.ChannelBannerResource();
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.url = 'foo';
  }
  buildCounterChannelBannerResource--;
  return o;
}

void checkChannelBannerResource(api.ChannelBannerResource o) {
  buildCounterChannelBannerResource++;
  if (buildCounterChannelBannerResource < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterChannelBannerResource--;
}

core.List<api.PropertyValue> buildUnnamed2338() {
  var o = <api.PropertyValue>[];
  o.add(buildPropertyValue());
  o.add(buildPropertyValue());
  return o;
}

void checkUnnamed2338(core.List<api.PropertyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPropertyValue(o[0]);
  checkPropertyValue(o[1]);
}

core.int buildCounterChannelBrandingSettings = 0;
api.ChannelBrandingSettings buildChannelBrandingSettings() {
  var o = api.ChannelBrandingSettings();
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    o.channel = buildChannelSettings();
    o.hints = buildUnnamed2338();
    o.image = buildImageSettings();
    o.watch = buildWatchSettings();
  }
  buildCounterChannelBrandingSettings--;
  return o;
}

void checkChannelBrandingSettings(api.ChannelBrandingSettings o) {
  buildCounterChannelBrandingSettings++;
  if (buildCounterChannelBrandingSettings < 3) {
    checkChannelSettings(o.channel);
    checkUnnamed2338(o.hints);
    checkImageSettings(o.image);
    checkWatchSettings(o.watch);
  }
  buildCounterChannelBrandingSettings--;
}

core.int buildCounterChannelContentDetailsRelatedPlaylists = 0;
api.ChannelContentDetailsRelatedPlaylists
    buildChannelContentDetailsRelatedPlaylists() {
  var o = api.ChannelContentDetailsRelatedPlaylists();
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    o.favorites = 'foo';
    o.likes = 'foo';
    o.uploads = 'foo';
    o.watchHistory = 'foo';
    o.watchLater = 'foo';
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
  return o;
}

void checkChannelContentDetailsRelatedPlaylists(
    api.ChannelContentDetailsRelatedPlaylists o) {
  buildCounterChannelContentDetailsRelatedPlaylists++;
  if (buildCounterChannelContentDetailsRelatedPlaylists < 3) {
    unittest.expect(o.favorites, unittest.equals('foo'));
    unittest.expect(o.likes, unittest.equals('foo'));
    unittest.expect(o.uploads, unittest.equals('foo'));
    unittest.expect(o.watchHistory, unittest.equals('foo'));
    unittest.expect(o.watchLater, unittest.equals('foo'));
  }
  buildCounterChannelContentDetailsRelatedPlaylists--;
}

core.int buildCounterChannelContentDetails = 0;
api.ChannelContentDetails buildChannelContentDetails() {
  var o = api.ChannelContentDetails();
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    o.relatedPlaylists = buildChannelContentDetailsRelatedPlaylists();
  }
  buildCounterChannelContentDetails--;
  return o;
}

void checkChannelContentDetails(api.ChannelContentDetails o) {
  buildCounterChannelContentDetails++;
  if (buildCounterChannelContentDetails < 3) {
    checkChannelContentDetailsRelatedPlaylists(o.relatedPlaylists);
  }
  buildCounterChannelContentDetails--;
}

core.int buildCounterChannelContentOwnerDetails = 0;
api.ChannelContentOwnerDetails buildChannelContentOwnerDetails() {
  var o = api.ChannelContentOwnerDetails();
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    o.contentOwner = 'foo';
    o.timeLinked = 'foo';
  }
  buildCounterChannelContentOwnerDetails--;
  return o;
}

void checkChannelContentOwnerDetails(api.ChannelContentOwnerDetails o) {
  buildCounterChannelContentOwnerDetails++;
  if (buildCounterChannelContentOwnerDetails < 3) {
    unittest.expect(o.contentOwner, unittest.equals('foo'));
    unittest.expect(o.timeLinked, unittest.equals('foo'));
  }
  buildCounterChannelContentOwnerDetails--;
}

core.int buildCounterChannelConversionPing = 0;
api.ChannelConversionPing buildChannelConversionPing() {
  var o = api.ChannelConversionPing();
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    o.context = 'foo';
    o.conversionUrl = 'foo';
  }
  buildCounterChannelConversionPing--;
  return o;
}

void checkChannelConversionPing(api.ChannelConversionPing o) {
  buildCounterChannelConversionPing++;
  if (buildCounterChannelConversionPing < 3) {
    unittest.expect(o.context, unittest.equals('foo'));
    unittest.expect(o.conversionUrl, unittest.equals('foo'));
  }
  buildCounterChannelConversionPing--;
}

core.List<api.ChannelConversionPing> buildUnnamed2339() {
  var o = <api.ChannelConversionPing>[];
  o.add(buildChannelConversionPing());
  o.add(buildChannelConversionPing());
  return o;
}

void checkUnnamed2339(core.List<api.ChannelConversionPing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelConversionPing(o[0]);
  checkChannelConversionPing(o[1]);
}

core.int buildCounterChannelConversionPings = 0;
api.ChannelConversionPings buildChannelConversionPings() {
  var o = api.ChannelConversionPings();
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    o.pings = buildUnnamed2339();
  }
  buildCounterChannelConversionPings--;
  return o;
}

void checkChannelConversionPings(api.ChannelConversionPings o) {
  buildCounterChannelConversionPings++;
  if (buildCounterChannelConversionPings < 3) {
    checkUnnamed2339(o.pings);
  }
  buildCounterChannelConversionPings--;
}

core.List<api.Channel> buildUnnamed2340() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed2340(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterChannelListResponse = 0;
api.ChannelListResponse buildChannelListResponse() {
  var o = api.ChannelListResponse();
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2340();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterChannelListResponse--;
  return o;
}

void checkChannelListResponse(api.ChannelListResponse o) {
  buildCounterChannelListResponse++;
  if (buildCounterChannelListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2340(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterChannelListResponse--;
}

core.int buildCounterChannelLocalization = 0;
api.ChannelLocalization buildChannelLocalization() {
  var o = api.ChannelLocalization();
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterChannelLocalization--;
  return o;
}

void checkChannelLocalization(api.ChannelLocalization o) {
  buildCounterChannelLocalization++;
  if (buildCounterChannelLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelLocalization--;
}

core.int buildCounterChannelProfileDetails = 0;
api.ChannelProfileDetails buildChannelProfileDetails() {
  var o = api.ChannelProfileDetails();
  buildCounterChannelProfileDetails++;
  if (buildCounterChannelProfileDetails < 3) {
    o.channelId = 'foo';
    o.channelUrl = 'foo';
    o.displayName = 'foo';
    o.profileImageUrl = 'foo';
  }
  buildCounterChannelProfileDetails--;
  return o;
}

void checkChannelProfileDetails(api.ChannelProfileDetails o) {
  buildCounterChannelProfileDetails++;
  if (buildCounterChannelProfileDetails < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelUrl, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.profileImageUrl, unittest.equals('foo'));
  }
  buildCounterChannelProfileDetails--;
}

core.Map<core.String, api.ChannelSectionLocalization> buildUnnamed2341() {
  var o = <core.String, api.ChannelSectionLocalization>{};
  o['x'] = buildChannelSectionLocalization();
  o['y'] = buildChannelSectionLocalization();
  return o;
}

void checkUnnamed2341(core.Map<core.String, api.ChannelSectionLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSectionLocalization(o['x']);
  checkChannelSectionLocalization(o['y']);
}

core.int buildCounterChannelSection = 0;
api.ChannelSection buildChannelSection() {
  var o = api.ChannelSection();
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    o.contentDetails = buildChannelSectionContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed2341();
    o.snippet = buildChannelSectionSnippet();
    o.targeting = buildChannelSectionTargeting();
  }
  buildCounterChannelSection--;
  return o;
}

void checkChannelSection(api.ChannelSection o) {
  buildCounterChannelSection++;
  if (buildCounterChannelSection < 3) {
    checkChannelSectionContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2341(o.localizations);
    checkChannelSectionSnippet(o.snippet);
    checkChannelSectionTargeting(o.targeting);
  }
  buildCounterChannelSection--;
}

core.List<core.String> buildUnnamed2342() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2343() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2343(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSectionContentDetails = 0;
api.ChannelSectionContentDetails buildChannelSectionContentDetails() {
  var o = api.ChannelSectionContentDetails();
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    o.channels = buildUnnamed2342();
    o.playlists = buildUnnamed2343();
  }
  buildCounterChannelSectionContentDetails--;
  return o;
}

void checkChannelSectionContentDetails(api.ChannelSectionContentDetails o) {
  buildCounterChannelSectionContentDetails++;
  if (buildCounterChannelSectionContentDetails < 3) {
    checkUnnamed2342(o.channels);
    checkUnnamed2343(o.playlists);
  }
  buildCounterChannelSectionContentDetails--;
}

core.List<api.ChannelSection> buildUnnamed2344() {
  var o = <api.ChannelSection>[];
  o.add(buildChannelSection());
  o.add(buildChannelSection());
  return o;
}

void checkUnnamed2344(core.List<api.ChannelSection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelSection(o[0]);
  checkChannelSection(o[1]);
}

core.int buildCounterChannelSectionListResponse = 0;
api.ChannelSectionListResponse buildChannelSectionListResponse() {
  var o = api.ChannelSectionListResponse();
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2344();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterChannelSectionListResponse--;
  return o;
}

void checkChannelSectionListResponse(api.ChannelSectionListResponse o) {
  buildCounterChannelSectionListResponse++;
  if (buildCounterChannelSectionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2344(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterChannelSectionListResponse--;
}

core.int buildCounterChannelSectionLocalization = 0;
api.ChannelSectionLocalization buildChannelSectionLocalization() {
  var o = api.ChannelSectionLocalization();
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    o.title = 'foo';
  }
  buildCounterChannelSectionLocalization--;
  return o;
}

void checkChannelSectionLocalization(api.ChannelSectionLocalization o) {
  buildCounterChannelSectionLocalization++;
  if (buildCounterChannelSectionLocalization < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelSectionLocalization--;
}

core.int buildCounterChannelSectionSnippet = 0;
api.ChannelSectionSnippet buildChannelSectionSnippet() {
  var o = api.ChannelSectionSnippet();
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    o.channelId = 'foo';
    o.defaultLanguage = 'foo';
    o.localized = buildChannelSectionLocalization();
    o.position = 42;
    o.style = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterChannelSectionSnippet--;
  return o;
}

void checkChannelSectionSnippet(api.ChannelSectionSnippet o) {
  buildCounterChannelSectionSnippet++;
  if (buildCounterChannelSectionSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    checkChannelSectionLocalization(o.localized);
    unittest.expect(o.position, unittest.equals(42));
    unittest.expect(o.style, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannelSectionSnippet--;
}

core.List<core.String> buildUnnamed2345() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2345(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2346() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2346(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2347() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2347(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSectionTargeting = 0;
api.ChannelSectionTargeting buildChannelSectionTargeting() {
  var o = api.ChannelSectionTargeting();
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    o.countries = buildUnnamed2345();
    o.languages = buildUnnamed2346();
    o.regions = buildUnnamed2347();
  }
  buildCounterChannelSectionTargeting--;
  return o;
}

void checkChannelSectionTargeting(api.ChannelSectionTargeting o) {
  buildCounterChannelSectionTargeting++;
  if (buildCounterChannelSectionTargeting < 3) {
    checkUnnamed2345(o.countries);
    checkUnnamed2346(o.languages);
    checkUnnamed2347(o.regions);
  }
  buildCounterChannelSectionTargeting--;
}

core.List<core.String> buildUnnamed2348() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelSettings = 0;
api.ChannelSettings buildChannelSettings() {
  var o = api.ChannelSettings();
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    o.country = 'foo';
    o.defaultLanguage = 'foo';
    o.defaultTab = 'foo';
    o.description = 'foo';
    o.featuredChannelsTitle = 'foo';
    o.featuredChannelsUrls = buildUnnamed2348();
    o.keywords = 'foo';
    o.moderateComments = true;
    o.profileColor = 'foo';
    o.showBrowseView = true;
    o.showRelatedChannels = true;
    o.title = 'foo';
    o.trackingAnalyticsAccountId = 'foo';
    o.unsubscribedTrailer = 'foo';
  }
  buildCounterChannelSettings--;
  return o;
}

void checkChannelSettings(api.ChannelSettings o) {
  buildCounterChannelSettings++;
  if (buildCounterChannelSettings < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.defaultTab, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.featuredChannelsTitle, unittest.equals('foo'));
    checkUnnamed2348(o.featuredChannelsUrls);
    unittest.expect(o.keywords, unittest.equals('foo'));
    unittest.expect(o.moderateComments, unittest.isTrue);
    unittest.expect(o.profileColor, unittest.equals('foo'));
    unittest.expect(o.showBrowseView, unittest.isTrue);
    unittest.expect(o.showRelatedChannels, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.trackingAnalyticsAccountId, unittest.equals('foo'));
    unittest.expect(o.unsubscribedTrailer, unittest.equals('foo'));
  }
  buildCounterChannelSettings--;
}

core.int buildCounterChannelSnippet = 0;
api.ChannelSnippet buildChannelSnippet() {
  var o = api.ChannelSnippet();
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    o.country = 'foo';
    o.customUrl = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.localized = buildChannelLocalization();
    o.publishedAt = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterChannelSnippet--;
  return o;
}

void checkChannelSnippet(api.ChannelSnippet o) {
  buildCounterChannelSnippet++;
  if (buildCounterChannelSnippet < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.customUrl, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkChannelLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterChannelSnippet--;
}

core.int buildCounterChannelStatistics = 0;
api.ChannelStatistics buildChannelStatistics() {
  var o = api.ChannelStatistics();
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    o.commentCount = 'foo';
    o.hiddenSubscriberCount = true;
    o.subscriberCount = 'foo';
    o.videoCount = 'foo';
    o.viewCount = 'foo';
  }
  buildCounterChannelStatistics--;
  return o;
}

void checkChannelStatistics(api.ChannelStatistics o) {
  buildCounterChannelStatistics++;
  if (buildCounterChannelStatistics < 3) {
    unittest.expect(o.commentCount, unittest.equals('foo'));
    unittest.expect(o.hiddenSubscriberCount, unittest.isTrue);
    unittest.expect(o.subscriberCount, unittest.equals('foo'));
    unittest.expect(o.videoCount, unittest.equals('foo'));
    unittest.expect(o.viewCount, unittest.equals('foo'));
  }
  buildCounterChannelStatistics--;
}

core.int buildCounterChannelStatus = 0;
api.ChannelStatus buildChannelStatus() {
  var o = api.ChannelStatus();
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    o.isLinked = true;
    o.longUploadsStatus = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.selfDeclaredMadeForKids = true;
  }
  buildCounterChannelStatus--;
  return o;
}

void checkChannelStatus(api.ChannelStatus o) {
  buildCounterChannelStatus++;
  if (buildCounterChannelStatus < 3) {
    unittest.expect(o.isLinked, unittest.isTrue);
    unittest.expect(o.longUploadsStatus, unittest.equals('foo'));
    unittest.expect(o.madeForKids, unittest.isTrue);
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
    unittest.expect(o.selfDeclaredMadeForKids, unittest.isTrue);
  }
  buildCounterChannelStatus--;
}

core.int buildCounterChannelToStoreLinkDetails = 0;
api.ChannelToStoreLinkDetails buildChannelToStoreLinkDetails() {
  var o = api.ChannelToStoreLinkDetails();
  buildCounterChannelToStoreLinkDetails++;
  if (buildCounterChannelToStoreLinkDetails < 3) {
    o.storeName = 'foo';
    o.storeUrl = 'foo';
  }
  buildCounterChannelToStoreLinkDetails--;
  return o;
}

void checkChannelToStoreLinkDetails(api.ChannelToStoreLinkDetails o) {
  buildCounterChannelToStoreLinkDetails++;
  if (buildCounterChannelToStoreLinkDetails < 3) {
    unittest.expect(o.storeName, unittest.equals('foo'));
    unittest.expect(o.storeUrl, unittest.equals('foo'));
  }
  buildCounterChannelToStoreLinkDetails--;
}

core.List<core.String> buildUnnamed2349() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2350() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelTopicDetails = 0;
api.ChannelTopicDetails buildChannelTopicDetails() {
  var o = api.ChannelTopicDetails();
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    o.topicCategories = buildUnnamed2349();
    o.topicIds = buildUnnamed2350();
  }
  buildCounterChannelTopicDetails--;
  return o;
}

void checkChannelTopicDetails(api.ChannelTopicDetails o) {
  buildCounterChannelTopicDetails++;
  if (buildCounterChannelTopicDetails < 3) {
    checkUnnamed2349(o.topicCategories);
    checkUnnamed2350(o.topicIds);
  }
  buildCounterChannelTopicDetails--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  var o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildCommentSnippet();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentSnippet(o.snippet);
  }
  buildCounterComment--;
}

core.List<api.Comment> buildUnnamed2351() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed2351(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentListResponse = 0;
api.CommentListResponse buildCommentListResponse() {
  var o = api.CommentListResponse();
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2351();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterCommentListResponse--;
  return o;
}

void checkCommentListResponse(api.CommentListResponse o) {
  buildCounterCommentListResponse++;
  if (buildCounterCommentListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2351(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCommentListResponse--;
}

core.int buildCounterCommentSnippet = 0;
api.CommentSnippet buildCommentSnippet() {
  var o = api.CommentSnippet();
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    o.authorChannelId = buildCommentSnippetAuthorChannelId();
    o.authorChannelUrl = 'foo';
    o.authorDisplayName = 'foo';
    o.authorProfileImageUrl = 'foo';
    o.canRate = true;
    o.channelId = 'foo';
    o.likeCount = 42;
    o.moderationStatus = 'foo';
    o.parentId = 'foo';
    o.publishedAt = 'foo';
    o.textDisplay = 'foo';
    o.textOriginal = 'foo';
    o.updatedAt = 'foo';
    o.videoId = 'foo';
    o.viewerRating = 'foo';
  }
  buildCounterCommentSnippet--;
  return o;
}

void checkCommentSnippet(api.CommentSnippet o) {
  buildCounterCommentSnippet++;
  if (buildCounterCommentSnippet < 3) {
    checkCommentSnippetAuthorChannelId(o.authorChannelId);
    unittest.expect(o.authorChannelUrl, unittest.equals('foo'));
    unittest.expect(o.authorDisplayName, unittest.equals('foo'));
    unittest.expect(o.authorProfileImageUrl, unittest.equals('foo'));
    unittest.expect(o.canRate, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.likeCount, unittest.equals(42));
    unittest.expect(o.moderationStatus, unittest.equals('foo'));
    unittest.expect(o.parentId, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    unittest.expect(o.textDisplay, unittest.equals('foo'));
    unittest.expect(o.textOriginal, unittest.equals('foo'));
    unittest.expect(o.updatedAt, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
    unittest.expect(o.viewerRating, unittest.equals('foo'));
  }
  buildCounterCommentSnippet--;
}

core.int buildCounterCommentSnippetAuthorChannelId = 0;
api.CommentSnippetAuthorChannelId buildCommentSnippetAuthorChannelId() {
  var o = api.CommentSnippetAuthorChannelId();
  buildCounterCommentSnippetAuthorChannelId++;
  if (buildCounterCommentSnippetAuthorChannelId < 3) {
    o.value = 'foo';
  }
  buildCounterCommentSnippetAuthorChannelId--;
  return o;
}

void checkCommentSnippetAuthorChannelId(api.CommentSnippetAuthorChannelId o) {
  buildCounterCommentSnippetAuthorChannelId++;
  if (buildCounterCommentSnippetAuthorChannelId < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCommentSnippetAuthorChannelId--;
}

core.int buildCounterCommentThread = 0;
api.CommentThread buildCommentThread() {
  var o = api.CommentThread();
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.replies = buildCommentThreadReplies();
    o.snippet = buildCommentThreadSnippet();
  }
  buildCounterCommentThread--;
  return o;
}

void checkCommentThread(api.CommentThread o) {
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentThreadReplies(o.replies);
    checkCommentThreadSnippet(o.snippet);
  }
  buildCounterCommentThread--;
}

core.List<api.CommentThread> buildUnnamed2352() {
  var o = <api.CommentThread>[];
  o.add(buildCommentThread());
  o.add(buildCommentThread());
  return o;
}

void checkUnnamed2352(core.List<api.CommentThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentThread(o[0]);
  checkCommentThread(o[1]);
}

core.int buildCounterCommentThreadListResponse = 0;
api.CommentThreadListResponse buildCommentThreadListResponse() {
  var o = api.CommentThreadListResponse();
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2352();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterCommentThreadListResponse--;
  return o;
}

void checkCommentThreadListResponse(api.CommentThreadListResponse o) {
  buildCounterCommentThreadListResponse++;
  if (buildCounterCommentThreadListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2352(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterCommentThreadListResponse--;
}

core.List<api.Comment> buildUnnamed2353() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed2353(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentThreadReplies = 0;
api.CommentThreadReplies buildCommentThreadReplies() {
  var o = api.CommentThreadReplies();
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    o.comments = buildUnnamed2353();
  }
  buildCounterCommentThreadReplies--;
  return o;
}

void checkCommentThreadReplies(api.CommentThreadReplies o) {
  buildCounterCommentThreadReplies++;
  if (buildCounterCommentThreadReplies < 3) {
    checkUnnamed2353(o.comments);
  }
  buildCounterCommentThreadReplies--;
}

core.int buildCounterCommentThreadSnippet = 0;
api.CommentThreadSnippet buildCommentThreadSnippet() {
  var o = api.CommentThreadSnippet();
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    o.canReply = true;
    o.channelId = 'foo';
    o.isPublic = true;
    o.topLevelComment = buildComment();
    o.totalReplyCount = 42;
    o.videoId = 'foo';
  }
  buildCounterCommentThreadSnippet--;
  return o;
}

void checkCommentThreadSnippet(api.CommentThreadSnippet o) {
  buildCounterCommentThreadSnippet++;
  if (buildCounterCommentThreadSnippet < 3) {
    unittest.expect(o.canReply, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.isPublic, unittest.isTrue);
    checkComment(o.topLevelComment);
    unittest.expect(o.totalReplyCount, unittest.equals(42));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterCommentThreadSnippet--;
}

core.List<core.String> buildUnnamed2354() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2355() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContentRating = 0;
api.ContentRating buildContentRating() {
  var o = api.ContentRating();
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    o.acbRating = 'foo';
    o.agcomRating = 'foo';
    o.anatelRating = 'foo';
    o.bbfcRating = 'foo';
    o.bfvcRating = 'foo';
    o.bmukkRating = 'foo';
    o.catvRating = 'foo';
    o.catvfrRating = 'foo';
    o.cbfcRating = 'foo';
    o.cccRating = 'foo';
    o.cceRating = 'foo';
    o.chfilmRating = 'foo';
    o.chvrsRating = 'foo';
    o.cicfRating = 'foo';
    o.cnaRating = 'foo';
    o.cncRating = 'foo';
    o.csaRating = 'foo';
    o.cscfRating = 'foo';
    o.czfilmRating = 'foo';
    o.djctqRating = 'foo';
    o.djctqRatingReasons = buildUnnamed2354();
    o.ecbmctRating = 'foo';
    o.eefilmRating = 'foo';
    o.egfilmRating = 'foo';
    o.eirinRating = 'foo';
    o.fcbmRating = 'foo';
    o.fcoRating = 'foo';
    o.fmocRating = 'foo';
    o.fpbRating = 'foo';
    o.fpbRatingReasons = buildUnnamed2355();
    o.fskRating = 'foo';
    o.grfilmRating = 'foo';
    o.icaaRating = 'foo';
    o.ifcoRating = 'foo';
    o.ilfilmRating = 'foo';
    o.incaaRating = 'foo';
    o.kfcbRating = 'foo';
    o.kijkwijzerRating = 'foo';
    o.kmrbRating = 'foo';
    o.lsfRating = 'foo';
    o.mccaaRating = 'foo';
    o.mccypRating = 'foo';
    o.mcstRating = 'foo';
    o.mdaRating = 'foo';
    o.medietilsynetRating = 'foo';
    o.mekuRating = 'foo';
    o.menaMpaaRating = 'foo';
    o.mibacRating = 'foo';
    o.mocRating = 'foo';
    o.moctwRating = 'foo';
    o.mpaaRating = 'foo';
    o.mpaatRating = 'foo';
    o.mtrcbRating = 'foo';
    o.nbcRating = 'foo';
    o.nbcplRating = 'foo';
    o.nfrcRating = 'foo';
    o.nfvcbRating = 'foo';
    o.nkclvRating = 'foo';
    o.nmcRating = 'foo';
    o.oflcRating = 'foo';
    o.pefilmRating = 'foo';
    o.rcnofRating = 'foo';
    o.resorteviolenciaRating = 'foo';
    o.rtcRating = 'foo';
    o.rteRating = 'foo';
    o.russiaRating = 'foo';
    o.skfilmRating = 'foo';
    o.smaisRating = 'foo';
    o.smsaRating = 'foo';
    o.tvpgRating = 'foo';
    o.ytRating = 'foo';
  }
  buildCounterContentRating--;
  return o;
}

void checkContentRating(api.ContentRating o) {
  buildCounterContentRating++;
  if (buildCounterContentRating < 3) {
    unittest.expect(o.acbRating, unittest.equals('foo'));
    unittest.expect(o.agcomRating, unittest.equals('foo'));
    unittest.expect(o.anatelRating, unittest.equals('foo'));
    unittest.expect(o.bbfcRating, unittest.equals('foo'));
    unittest.expect(o.bfvcRating, unittest.equals('foo'));
    unittest.expect(o.bmukkRating, unittest.equals('foo'));
    unittest.expect(o.catvRating, unittest.equals('foo'));
    unittest.expect(o.catvfrRating, unittest.equals('foo'));
    unittest.expect(o.cbfcRating, unittest.equals('foo'));
    unittest.expect(o.cccRating, unittest.equals('foo'));
    unittest.expect(o.cceRating, unittest.equals('foo'));
    unittest.expect(o.chfilmRating, unittest.equals('foo'));
    unittest.expect(o.chvrsRating, unittest.equals('foo'));
    unittest.expect(o.cicfRating, unittest.equals('foo'));
    unittest.expect(o.cnaRating, unittest.equals('foo'));
    unittest.expect(o.cncRating, unittest.equals('foo'));
    unittest.expect(o.csaRating, unittest.equals('foo'));
    unittest.expect(o.cscfRating, unittest.equals('foo'));
    unittest.expect(o.czfilmRating, unittest.equals('foo'));
    unittest.expect(o.djctqRating, unittest.equals('foo'));
    checkUnnamed2354(o.djctqRatingReasons);
    unittest.expect(o.ecbmctRating, unittest.equals('foo'));
    unittest.expect(o.eefilmRating, unittest.equals('foo'));
    unittest.expect(o.egfilmRating, unittest.equals('foo'));
    unittest.expect(o.eirinRating, unittest.equals('foo'));
    unittest.expect(o.fcbmRating, unittest.equals('foo'));
    unittest.expect(o.fcoRating, unittest.equals('foo'));
    unittest.expect(o.fmocRating, unittest.equals('foo'));
    unittest.expect(o.fpbRating, unittest.equals('foo'));
    checkUnnamed2355(o.fpbRatingReasons);
    unittest.expect(o.fskRating, unittest.equals('foo'));
    unittest.expect(o.grfilmRating, unittest.equals('foo'));
    unittest.expect(o.icaaRating, unittest.equals('foo'));
    unittest.expect(o.ifcoRating, unittest.equals('foo'));
    unittest.expect(o.ilfilmRating, unittest.equals('foo'));
    unittest.expect(o.incaaRating, unittest.equals('foo'));
    unittest.expect(o.kfcbRating, unittest.equals('foo'));
    unittest.expect(o.kijkwijzerRating, unittest.equals('foo'));
    unittest.expect(o.kmrbRating, unittest.equals('foo'));
    unittest.expect(o.lsfRating, unittest.equals('foo'));
    unittest.expect(o.mccaaRating, unittest.equals('foo'));
    unittest.expect(o.mccypRating, unittest.equals('foo'));
    unittest.expect(o.mcstRating, unittest.equals('foo'));
    unittest.expect(o.mdaRating, unittest.equals('foo'));
    unittest.expect(o.medietilsynetRating, unittest.equals('foo'));
    unittest.expect(o.mekuRating, unittest.equals('foo'));
    unittest.expect(o.menaMpaaRating, unittest.equals('foo'));
    unittest.expect(o.mibacRating, unittest.equals('foo'));
    unittest.expect(o.mocRating, unittest.equals('foo'));
    unittest.expect(o.moctwRating, unittest.equals('foo'));
    unittest.expect(o.mpaaRating, unittest.equals('foo'));
    unittest.expect(o.mpaatRating, unittest.equals('foo'));
    unittest.expect(o.mtrcbRating, unittest.equals('foo'));
    unittest.expect(o.nbcRating, unittest.equals('foo'));
    unittest.expect(o.nbcplRating, unittest.equals('foo'));
    unittest.expect(o.nfrcRating, unittest.equals('foo'));
    unittest.expect(o.nfvcbRating, unittest.equals('foo'));
    unittest.expect(o.nkclvRating, unittest.equals('foo'));
    unittest.expect(o.nmcRating, unittest.equals('foo'));
    unittest.expect(o.oflcRating, unittest.equals('foo'));
    unittest.expect(o.pefilmRating, unittest.equals('foo'));
    unittest.expect(o.rcnofRating, unittest.equals('foo'));
    unittest.expect(o.resorteviolenciaRating, unittest.equals('foo'));
    unittest.expect(o.rtcRating, unittest.equals('foo'));
    unittest.expect(o.rteRating, unittest.equals('foo'));
    unittest.expect(o.russiaRating, unittest.equals('foo'));
    unittest.expect(o.skfilmRating, unittest.equals('foo'));
    unittest.expect(o.smaisRating, unittest.equals('foo'));
    unittest.expect(o.smsaRating, unittest.equals('foo'));
    unittest.expect(o.tvpgRating, unittest.equals('foo'));
    unittest.expect(o.ytRating, unittest.equals('foo'));
  }
  buildCounterContentRating--;
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  var o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.id = 'foo';
    o.typeId = 'foo';
    o.url = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.typeId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterEntity--;
}

core.int buildCounterGeoPoint = 0;
api.GeoPoint buildGeoPoint() {
  var o = api.GeoPoint();
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    o.altitude = 42.0;
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGeoPoint--;
  return o;
}

void checkGeoPoint(api.GeoPoint o) {
  buildCounterGeoPoint++;
  if (buildCounterGeoPoint < 3) {
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterGeoPoint--;
}

core.int buildCounterI18nLanguage = 0;
api.I18nLanguage buildI18nLanguage() {
  var o = api.I18nLanguage();
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildI18nLanguageSnippet();
  }
  buildCounterI18nLanguage--;
  return o;
}

void checkI18nLanguage(api.I18nLanguage o) {
  buildCounterI18nLanguage++;
  if (buildCounterI18nLanguage < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkI18nLanguageSnippet(o.snippet);
  }
  buildCounterI18nLanguage--;
}

core.List<api.I18nLanguage> buildUnnamed2356() {
  var o = <api.I18nLanguage>[];
  o.add(buildI18nLanguage());
  o.add(buildI18nLanguage());
  return o;
}

void checkUnnamed2356(core.List<api.I18nLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nLanguage(o[0]);
  checkI18nLanguage(o[1]);
}

core.int buildCounterI18nLanguageListResponse = 0;
api.I18nLanguageListResponse buildI18nLanguageListResponse() {
  var o = api.I18nLanguageListResponse();
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2356();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterI18nLanguageListResponse--;
  return o;
}

void checkI18nLanguageListResponse(api.I18nLanguageListResponse o) {
  buildCounterI18nLanguageListResponse++;
  if (buildCounterI18nLanguageListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2356(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterI18nLanguageListResponse--;
}

core.int buildCounterI18nLanguageSnippet = 0;
api.I18nLanguageSnippet buildI18nLanguageSnippet() {
  var o = api.I18nLanguageSnippet();
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    o.hl = 'foo';
    o.name = 'foo';
  }
  buildCounterI18nLanguageSnippet--;
  return o;
}

void checkI18nLanguageSnippet(api.I18nLanguageSnippet o) {
  buildCounterI18nLanguageSnippet++;
  if (buildCounterI18nLanguageSnippet < 3) {
    unittest.expect(o.hl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterI18nLanguageSnippet--;
}

core.int buildCounterI18nRegion = 0;
api.I18nRegion buildI18nRegion() {
  var o = api.I18nRegion();
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildI18nRegionSnippet();
  }
  buildCounterI18nRegion--;
  return o;
}

void checkI18nRegion(api.I18nRegion o) {
  buildCounterI18nRegion++;
  if (buildCounterI18nRegion < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkI18nRegionSnippet(o.snippet);
  }
  buildCounterI18nRegion--;
}

core.List<api.I18nRegion> buildUnnamed2357() {
  var o = <api.I18nRegion>[];
  o.add(buildI18nRegion());
  o.add(buildI18nRegion());
  return o;
}

void checkUnnamed2357(core.List<api.I18nRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkI18nRegion(o[0]);
  checkI18nRegion(o[1]);
}

core.int buildCounterI18nRegionListResponse = 0;
api.I18nRegionListResponse buildI18nRegionListResponse() {
  var o = api.I18nRegionListResponse();
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2357();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterI18nRegionListResponse--;
  return o;
}

void checkI18nRegionListResponse(api.I18nRegionListResponse o) {
  buildCounterI18nRegionListResponse++;
  if (buildCounterI18nRegionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2357(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterI18nRegionListResponse--;
}

core.int buildCounterI18nRegionSnippet = 0;
api.I18nRegionSnippet buildI18nRegionSnippet() {
  var o = api.I18nRegionSnippet();
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    o.gl = 'foo';
    o.name = 'foo';
  }
  buildCounterI18nRegionSnippet--;
  return o;
}

void checkI18nRegionSnippet(api.I18nRegionSnippet o) {
  buildCounterI18nRegionSnippet++;
  if (buildCounterI18nRegionSnippet < 3) {
    unittest.expect(o.gl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterI18nRegionSnippet--;
}

core.int buildCounterImageSettings = 0;
api.ImageSettings buildImageSettings() {
  var o = api.ImageSettings();
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    o.backgroundImageUrl = buildLocalizedProperty();
    o.bannerExternalUrl = 'foo';
    o.bannerImageUrl = 'foo';
    o.bannerMobileExtraHdImageUrl = 'foo';
    o.bannerMobileHdImageUrl = 'foo';
    o.bannerMobileImageUrl = 'foo';
    o.bannerMobileLowImageUrl = 'foo';
    o.bannerMobileMediumHdImageUrl = 'foo';
    o.bannerTabletExtraHdImageUrl = 'foo';
    o.bannerTabletHdImageUrl = 'foo';
    o.bannerTabletImageUrl = 'foo';
    o.bannerTabletLowImageUrl = 'foo';
    o.bannerTvHighImageUrl = 'foo';
    o.bannerTvImageUrl = 'foo';
    o.bannerTvLowImageUrl = 'foo';
    o.bannerTvMediumImageUrl = 'foo';
    o.largeBrandedBannerImageImapScript = buildLocalizedProperty();
    o.largeBrandedBannerImageUrl = buildLocalizedProperty();
    o.smallBrandedBannerImageImapScript = buildLocalizedProperty();
    o.smallBrandedBannerImageUrl = buildLocalizedProperty();
    o.trackingImageUrl = 'foo';
    o.watchIconImageUrl = 'foo';
  }
  buildCounterImageSettings--;
  return o;
}

void checkImageSettings(api.ImageSettings o) {
  buildCounterImageSettings++;
  if (buildCounterImageSettings < 3) {
    checkLocalizedProperty(o.backgroundImageUrl);
    unittest.expect(o.bannerExternalUrl, unittest.equals('foo'));
    unittest.expect(o.bannerImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileExtraHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerMobileMediumHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletExtraHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletHdImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTabletLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvHighImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvLowImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerTvMediumImageUrl, unittest.equals('foo'));
    checkLocalizedProperty(o.largeBrandedBannerImageImapScript);
    checkLocalizedProperty(o.largeBrandedBannerImageUrl);
    checkLocalizedProperty(o.smallBrandedBannerImageImapScript);
    checkLocalizedProperty(o.smallBrandedBannerImageUrl);
    unittest.expect(o.trackingImageUrl, unittest.equals('foo'));
    unittest.expect(o.watchIconImageUrl, unittest.equals('foo'));
  }
  buildCounterImageSettings--;
}

core.int buildCounterIngestionInfo = 0;
api.IngestionInfo buildIngestionInfo() {
  var o = api.IngestionInfo();
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    o.backupIngestionAddress = 'foo';
    o.ingestionAddress = 'foo';
    o.rtmpsBackupIngestionAddress = 'foo';
    o.rtmpsIngestionAddress = 'foo';
    o.streamName = 'foo';
  }
  buildCounterIngestionInfo--;
  return o;
}

void checkIngestionInfo(api.IngestionInfo o) {
  buildCounterIngestionInfo++;
  if (buildCounterIngestionInfo < 3) {
    unittest.expect(o.backupIngestionAddress, unittest.equals('foo'));
    unittest.expect(o.ingestionAddress, unittest.equals('foo'));
    unittest.expect(o.rtmpsBackupIngestionAddress, unittest.equals('foo'));
    unittest.expect(o.rtmpsIngestionAddress, unittest.equals('foo'));
    unittest.expect(o.streamName, unittest.equals('foo'));
  }
  buildCounterIngestionInfo--;
}

core.int buildCounterInvideoBranding = 0;
api.InvideoBranding buildInvideoBranding() {
  var o = api.InvideoBranding();
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    o.imageBytes = 'foo';
    o.imageUrl = 'foo';
    o.position = buildInvideoPosition();
    o.targetChannelId = 'foo';
    o.timing = buildInvideoTiming();
  }
  buildCounterInvideoBranding--;
  return o;
}

void checkInvideoBranding(api.InvideoBranding o) {
  buildCounterInvideoBranding++;
  if (buildCounterInvideoBranding < 3) {
    unittest.expect(o.imageBytes, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkInvideoPosition(o.position);
    unittest.expect(o.targetChannelId, unittest.equals('foo'));
    checkInvideoTiming(o.timing);
  }
  buildCounterInvideoBranding--;
}

core.int buildCounterInvideoPosition = 0;
api.InvideoPosition buildInvideoPosition() {
  var o = api.InvideoPosition();
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    o.cornerPosition = 'foo';
    o.type = 'foo';
  }
  buildCounterInvideoPosition--;
  return o;
}

void checkInvideoPosition(api.InvideoPosition o) {
  buildCounterInvideoPosition++;
  if (buildCounterInvideoPosition < 3) {
    unittest.expect(o.cornerPosition, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvideoPosition--;
}

core.int buildCounterInvideoTiming = 0;
api.InvideoTiming buildInvideoTiming() {
  var o = api.InvideoTiming();
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    o.durationMs = 'foo';
    o.offsetMs = 'foo';
    o.type = 'foo';
  }
  buildCounterInvideoTiming--;
  return o;
}

void checkInvideoTiming(api.InvideoTiming o) {
  buildCounterInvideoTiming++;
  if (buildCounterInvideoTiming < 3) {
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.offsetMs, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvideoTiming--;
}

core.int buildCounterLanguageTag = 0;
api.LanguageTag buildLanguageTag() {
  var o = api.LanguageTag();
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    o.value = 'foo';
  }
  buildCounterLanguageTag--;
  return o;
}

void checkLanguageTag(api.LanguageTag o) {
  buildCounterLanguageTag++;
  if (buildCounterLanguageTag < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLanguageTag--;
}

core.int buildCounterLevelDetails = 0;
api.LevelDetails buildLevelDetails() {
  var o = api.LevelDetails();
  buildCounterLevelDetails++;
  if (buildCounterLevelDetails < 3) {
    o.displayName = 'foo';
  }
  buildCounterLevelDetails--;
  return o;
}

void checkLevelDetails(api.LevelDetails o) {
  buildCounterLevelDetails++;
  if (buildCounterLevelDetails < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
  }
  buildCounterLevelDetails--;
}

core.int buildCounterLiveBroadcast = 0;
api.LiveBroadcast buildLiveBroadcast() {
  var o = api.LiveBroadcast();
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    o.contentDetails = buildLiveBroadcastContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveBroadcastSnippet();
    o.statistics = buildLiveBroadcastStatistics();
    o.status = buildLiveBroadcastStatus();
  }
  buildCounterLiveBroadcast--;
  return o;
}

void checkLiveBroadcast(api.LiveBroadcast o) {
  buildCounterLiveBroadcast++;
  if (buildCounterLiveBroadcast < 3) {
    checkLiveBroadcastContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveBroadcastSnippet(o.snippet);
    checkLiveBroadcastStatistics(o.statistics);
    checkLiveBroadcastStatus(o.status);
  }
  buildCounterLiveBroadcast--;
}

core.int buildCounterLiveBroadcastContentDetails = 0;
api.LiveBroadcastContentDetails buildLiveBroadcastContentDetails() {
  var o = api.LiveBroadcastContentDetails();
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    o.boundStreamId = 'foo';
    o.boundStreamLastUpdateTimeMs = 'foo';
    o.closedCaptionsType = 'foo';
    o.enableAutoStart = true;
    o.enableAutoStop = true;
    o.enableClosedCaptions = true;
    o.enableContentEncryption = true;
    o.enableDvr = true;
    o.enableEmbed = true;
    o.enableLowLatency = true;
    o.latencyPreference = 'foo';
    o.mesh = 'foo';
    o.monitorStream = buildMonitorStreamInfo();
    o.projection = 'foo';
    o.recordFromStart = true;
    o.startWithSlate = true;
  }
  buildCounterLiveBroadcastContentDetails--;
  return o;
}

void checkLiveBroadcastContentDetails(api.LiveBroadcastContentDetails o) {
  buildCounterLiveBroadcastContentDetails++;
  if (buildCounterLiveBroadcastContentDetails < 3) {
    unittest.expect(o.boundStreamId, unittest.equals('foo'));
    unittest.expect(o.boundStreamLastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.closedCaptionsType, unittest.equals('foo'));
    unittest.expect(o.enableAutoStart, unittest.isTrue);
    unittest.expect(o.enableAutoStop, unittest.isTrue);
    unittest.expect(o.enableClosedCaptions, unittest.isTrue);
    unittest.expect(o.enableContentEncryption, unittest.isTrue);
    unittest.expect(o.enableDvr, unittest.isTrue);
    unittest.expect(o.enableEmbed, unittest.isTrue);
    unittest.expect(o.enableLowLatency, unittest.isTrue);
    unittest.expect(o.latencyPreference, unittest.equals('foo'));
    unittest.expect(o.mesh, unittest.equals('foo'));
    checkMonitorStreamInfo(o.monitorStream);
    unittest.expect(o.projection, unittest.equals('foo'));
    unittest.expect(o.recordFromStart, unittest.isTrue);
    unittest.expect(o.startWithSlate, unittest.isTrue);
  }
  buildCounterLiveBroadcastContentDetails--;
}

core.List<api.LiveBroadcast> buildUnnamed2358() {
  var o = <api.LiveBroadcast>[];
  o.add(buildLiveBroadcast());
  o.add(buildLiveBroadcast());
  return o;
}

void checkUnnamed2358(core.List<api.LiveBroadcast> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveBroadcast(o[0]);
  checkLiveBroadcast(o[1]);
}

core.int buildCounterLiveBroadcastListResponse = 0;
api.LiveBroadcastListResponse buildLiveBroadcastListResponse() {
  var o = api.LiveBroadcastListResponse();
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2358();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveBroadcastListResponse--;
  return o;
}

void checkLiveBroadcastListResponse(api.LiveBroadcastListResponse o) {
  buildCounterLiveBroadcastListResponse++;
  if (buildCounterLiveBroadcastListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2358(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastListResponse--;
}

core.int buildCounterLiveBroadcastSnippet = 0;
api.LiveBroadcastSnippet buildLiveBroadcastSnippet() {
  var o = api.LiveBroadcastSnippet();
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    o.actualEndTime = 'foo';
    o.actualStartTime = 'foo';
    o.channelId = 'foo';
    o.description = 'foo';
    o.isDefaultBroadcast = true;
    o.liveChatId = 'foo';
    o.publishedAt = 'foo';
    o.scheduledEndTime = 'foo';
    o.scheduledStartTime = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterLiveBroadcastSnippet--;
  return o;
}

void checkLiveBroadcastSnippet(api.LiveBroadcastSnippet o) {
  buildCounterLiveBroadcastSnippet++;
  if (buildCounterLiveBroadcastSnippet < 3) {
    unittest.expect(o.actualEndTime, unittest.equals('foo'));
    unittest.expect(o.actualStartTime, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefaultBroadcast, unittest.isTrue);
    unittest.expect(o.liveChatId, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    unittest.expect(o.scheduledEndTime, unittest.equals('foo'));
    unittest.expect(o.scheduledStartTime, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastSnippet--;
}

core.int buildCounterLiveBroadcastStatistics = 0;
api.LiveBroadcastStatistics buildLiveBroadcastStatistics() {
  var o = api.LiveBroadcastStatistics();
  buildCounterLiveBroadcastStatistics++;
  if (buildCounterLiveBroadcastStatistics < 3) {
    o.totalChatCount = 'foo';
  }
  buildCounterLiveBroadcastStatistics--;
  return o;
}

void checkLiveBroadcastStatistics(api.LiveBroadcastStatistics o) {
  buildCounterLiveBroadcastStatistics++;
  if (buildCounterLiveBroadcastStatistics < 3) {
    unittest.expect(o.totalChatCount, unittest.equals('foo'));
  }
  buildCounterLiveBroadcastStatistics--;
}

core.int buildCounterLiveBroadcastStatus = 0;
api.LiveBroadcastStatus buildLiveBroadcastStatus() {
  var o = api.LiveBroadcastStatus();
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    o.lifeCycleStatus = 'foo';
    o.liveBroadcastPriority = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.recordingStatus = 'foo';
    o.selfDeclaredMadeForKids = true;
  }
  buildCounterLiveBroadcastStatus--;
  return o;
}

void checkLiveBroadcastStatus(api.LiveBroadcastStatus o) {
  buildCounterLiveBroadcastStatus++;
  if (buildCounterLiveBroadcastStatus < 3) {
    unittest.expect(o.lifeCycleStatus, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastPriority, unittest.equals('foo'));
    unittest.expect(o.madeForKids, unittest.isTrue);
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
    unittest.expect(o.recordingStatus, unittest.equals('foo'));
    unittest.expect(o.selfDeclaredMadeForKids, unittest.isTrue);
  }
  buildCounterLiveBroadcastStatus--;
}

core.int buildCounterLiveChatBan = 0;
api.LiveChatBan buildLiveChatBan() {
  var o = api.LiveChatBan();
  buildCounterLiveChatBan++;
  if (buildCounterLiveChatBan < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatBanSnippet();
  }
  buildCounterLiveChatBan--;
  return o;
}

void checkLiveChatBan(api.LiveChatBan o) {
  buildCounterLiveChatBan++;
  if (buildCounterLiveChatBan < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveChatBanSnippet(o.snippet);
  }
  buildCounterLiveChatBan--;
}

core.int buildCounterLiveChatBanSnippet = 0;
api.LiveChatBanSnippet buildLiveChatBanSnippet() {
  var o = api.LiveChatBanSnippet();
  buildCounterLiveChatBanSnippet++;
  if (buildCounterLiveChatBanSnippet < 3) {
    o.banDurationSeconds = 'foo';
    o.bannedUserDetails = buildChannelProfileDetails();
    o.liveChatId = 'foo';
    o.type = 'foo';
  }
  buildCounterLiveChatBanSnippet--;
  return o;
}

void checkLiveChatBanSnippet(api.LiveChatBanSnippet o) {
  buildCounterLiveChatBanSnippet++;
  if (buildCounterLiveChatBanSnippet < 3) {
    unittest.expect(o.banDurationSeconds, unittest.equals('foo'));
    checkChannelProfileDetails(o.bannedUserDetails);
    unittest.expect(o.liveChatId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLiveChatBanSnippet--;
}

core.int buildCounterLiveChatFanFundingEventDetails = 0;
api.LiveChatFanFundingEventDetails buildLiveChatFanFundingEventDetails() {
  var o = api.LiveChatFanFundingEventDetails();
  buildCounterLiveChatFanFundingEventDetails++;
  if (buildCounterLiveChatFanFundingEventDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.userComment = 'foo';
  }
  buildCounterLiveChatFanFundingEventDetails--;
  return o;
}

void checkLiveChatFanFundingEventDetails(api.LiveChatFanFundingEventDetails o) {
  buildCounterLiveChatFanFundingEventDetails++;
  if (buildCounterLiveChatFanFundingEventDetails < 3) {
    unittest.expect(o.amountDisplayString, unittest.equals('foo'));
    unittest.expect(o.amountMicros, unittest.equals('foo'));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.userComment, unittest.equals('foo'));
  }
  buildCounterLiveChatFanFundingEventDetails--;
}

core.int buildCounterLiveChatMessage = 0;
api.LiveChatMessage buildLiveChatMessage() {
  var o = api.LiveChatMessage();
  buildCounterLiveChatMessage++;
  if (buildCounterLiveChatMessage < 3) {
    o.authorDetails = buildLiveChatMessageAuthorDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatMessageSnippet();
  }
  buildCounterLiveChatMessage--;
  return o;
}

void checkLiveChatMessage(api.LiveChatMessage o) {
  buildCounterLiveChatMessage++;
  if (buildCounterLiveChatMessage < 3) {
    checkLiveChatMessageAuthorDetails(o.authorDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveChatMessageSnippet(o.snippet);
  }
  buildCounterLiveChatMessage--;
}

core.int buildCounterLiveChatMessageAuthorDetails = 0;
api.LiveChatMessageAuthorDetails buildLiveChatMessageAuthorDetails() {
  var o = api.LiveChatMessageAuthorDetails();
  buildCounterLiveChatMessageAuthorDetails++;
  if (buildCounterLiveChatMessageAuthorDetails < 3) {
    o.channelId = 'foo';
    o.channelUrl = 'foo';
    o.displayName = 'foo';
    o.isChatModerator = true;
    o.isChatOwner = true;
    o.isChatSponsor = true;
    o.isVerified = true;
    o.profileImageUrl = 'foo';
  }
  buildCounterLiveChatMessageAuthorDetails--;
  return o;
}

void checkLiveChatMessageAuthorDetails(api.LiveChatMessageAuthorDetails o) {
  buildCounterLiveChatMessageAuthorDetails++;
  if (buildCounterLiveChatMessageAuthorDetails < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelUrl, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.isChatModerator, unittest.isTrue);
    unittest.expect(o.isChatOwner, unittest.isTrue);
    unittest.expect(o.isChatSponsor, unittest.isTrue);
    unittest.expect(o.isVerified, unittest.isTrue);
    unittest.expect(o.profileImageUrl, unittest.equals('foo'));
  }
  buildCounterLiveChatMessageAuthorDetails--;
}

core.int buildCounterLiveChatMessageDeletedDetails = 0;
api.LiveChatMessageDeletedDetails buildLiveChatMessageDeletedDetails() {
  var o = api.LiveChatMessageDeletedDetails();
  buildCounterLiveChatMessageDeletedDetails++;
  if (buildCounterLiveChatMessageDeletedDetails < 3) {
    o.deletedMessageId = 'foo';
  }
  buildCounterLiveChatMessageDeletedDetails--;
  return o;
}

void checkLiveChatMessageDeletedDetails(api.LiveChatMessageDeletedDetails o) {
  buildCounterLiveChatMessageDeletedDetails++;
  if (buildCounterLiveChatMessageDeletedDetails < 3) {
    unittest.expect(o.deletedMessageId, unittest.equals('foo'));
  }
  buildCounterLiveChatMessageDeletedDetails--;
}

core.List<api.LiveChatMessage> buildUnnamed2359() {
  var o = <api.LiveChatMessage>[];
  o.add(buildLiveChatMessage());
  o.add(buildLiveChatMessage());
  return o;
}

void checkUnnamed2359(core.List<api.LiveChatMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveChatMessage(o[0]);
  checkLiveChatMessage(o[1]);
}

core.int buildCounterLiveChatMessageListResponse = 0;
api.LiveChatMessageListResponse buildLiveChatMessageListResponse() {
  var o = api.LiveChatMessageListResponse();
  buildCounterLiveChatMessageListResponse++;
  if (buildCounterLiveChatMessageListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2359();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.offlineAt = 'foo';
    o.pageInfo = buildPageInfo();
    o.pollingIntervalMillis = 42;
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveChatMessageListResponse--;
  return o;
}

void checkLiveChatMessageListResponse(api.LiveChatMessageListResponse o) {
  buildCounterLiveChatMessageListResponse++;
  if (buildCounterLiveChatMessageListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2359(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.offlineAt, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.pollingIntervalMillis, unittest.equals(42));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveChatMessageListResponse--;
}

core.int buildCounterLiveChatMessageRetractedDetails = 0;
api.LiveChatMessageRetractedDetails buildLiveChatMessageRetractedDetails() {
  var o = api.LiveChatMessageRetractedDetails();
  buildCounterLiveChatMessageRetractedDetails++;
  if (buildCounterLiveChatMessageRetractedDetails < 3) {
    o.retractedMessageId = 'foo';
  }
  buildCounterLiveChatMessageRetractedDetails--;
  return o;
}

void checkLiveChatMessageRetractedDetails(
    api.LiveChatMessageRetractedDetails o) {
  buildCounterLiveChatMessageRetractedDetails++;
  if (buildCounterLiveChatMessageRetractedDetails < 3) {
    unittest.expect(o.retractedMessageId, unittest.equals('foo'));
  }
  buildCounterLiveChatMessageRetractedDetails--;
}

core.int buildCounterLiveChatMessageSnippet = 0;
api.LiveChatMessageSnippet buildLiveChatMessageSnippet() {
  var o = api.LiveChatMessageSnippet();
  buildCounterLiveChatMessageSnippet++;
  if (buildCounterLiveChatMessageSnippet < 3) {
    o.authorChannelId = 'foo';
    o.displayMessage = 'foo';
    o.fanFundingEventDetails = buildLiveChatFanFundingEventDetails();
    o.hasDisplayContent = true;
    o.liveChatId = 'foo';
    o.messageDeletedDetails = buildLiveChatMessageDeletedDetails();
    o.messageRetractedDetails = buildLiveChatMessageRetractedDetails();
    o.publishedAt = 'foo';
    o.superChatDetails = buildLiveChatSuperChatDetails();
    o.superStickerDetails = buildLiveChatSuperStickerDetails();
    o.textMessageDetails = buildLiveChatTextMessageDetails();
    o.type = 'foo';
    o.userBannedDetails = buildLiveChatUserBannedMessageDetails();
  }
  buildCounterLiveChatMessageSnippet--;
  return o;
}

void checkLiveChatMessageSnippet(api.LiveChatMessageSnippet o) {
  buildCounterLiveChatMessageSnippet++;
  if (buildCounterLiveChatMessageSnippet < 3) {
    unittest.expect(o.authorChannelId, unittest.equals('foo'));
    unittest.expect(o.displayMessage, unittest.equals('foo'));
    checkLiveChatFanFundingEventDetails(o.fanFundingEventDetails);
    unittest.expect(o.hasDisplayContent, unittest.isTrue);
    unittest.expect(o.liveChatId, unittest.equals('foo'));
    checkLiveChatMessageDeletedDetails(o.messageDeletedDetails);
    checkLiveChatMessageRetractedDetails(o.messageRetractedDetails);
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkLiveChatSuperChatDetails(o.superChatDetails);
    checkLiveChatSuperStickerDetails(o.superStickerDetails);
    checkLiveChatTextMessageDetails(o.textMessageDetails);
    unittest.expect(o.type, unittest.equals('foo'));
    checkLiveChatUserBannedMessageDetails(o.userBannedDetails);
  }
  buildCounterLiveChatMessageSnippet--;
}

core.int buildCounterLiveChatModerator = 0;
api.LiveChatModerator buildLiveChatModerator() {
  var o = api.LiveChatModerator();
  buildCounterLiveChatModerator++;
  if (buildCounterLiveChatModerator < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveChatModeratorSnippet();
  }
  buildCounterLiveChatModerator--;
  return o;
}

void checkLiveChatModerator(api.LiveChatModerator o) {
  buildCounterLiveChatModerator++;
  if (buildCounterLiveChatModerator < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveChatModeratorSnippet(o.snippet);
  }
  buildCounterLiveChatModerator--;
}

core.List<api.LiveChatModerator> buildUnnamed2360() {
  var o = <api.LiveChatModerator>[];
  o.add(buildLiveChatModerator());
  o.add(buildLiveChatModerator());
  return o;
}

void checkUnnamed2360(core.List<api.LiveChatModerator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveChatModerator(o[0]);
  checkLiveChatModerator(o[1]);
}

core.int buildCounterLiveChatModeratorListResponse = 0;
api.LiveChatModeratorListResponse buildLiveChatModeratorListResponse() {
  var o = api.LiveChatModeratorListResponse();
  buildCounterLiveChatModeratorListResponse++;
  if (buildCounterLiveChatModeratorListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2360();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveChatModeratorListResponse--;
  return o;
}

void checkLiveChatModeratorListResponse(api.LiveChatModeratorListResponse o) {
  buildCounterLiveChatModeratorListResponse++;
  if (buildCounterLiveChatModeratorListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2360(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveChatModeratorListResponse--;
}

core.int buildCounterLiveChatModeratorSnippet = 0;
api.LiveChatModeratorSnippet buildLiveChatModeratorSnippet() {
  var o = api.LiveChatModeratorSnippet();
  buildCounterLiveChatModeratorSnippet++;
  if (buildCounterLiveChatModeratorSnippet < 3) {
    o.liveChatId = 'foo';
    o.moderatorDetails = buildChannelProfileDetails();
  }
  buildCounterLiveChatModeratorSnippet--;
  return o;
}

void checkLiveChatModeratorSnippet(api.LiveChatModeratorSnippet o) {
  buildCounterLiveChatModeratorSnippet++;
  if (buildCounterLiveChatModeratorSnippet < 3) {
    unittest.expect(o.liveChatId, unittest.equals('foo'));
    checkChannelProfileDetails(o.moderatorDetails);
  }
  buildCounterLiveChatModeratorSnippet--;
}

core.int buildCounterLiveChatSuperChatDetails = 0;
api.LiveChatSuperChatDetails buildLiveChatSuperChatDetails() {
  var o = api.LiveChatSuperChatDetails();
  buildCounterLiveChatSuperChatDetails++;
  if (buildCounterLiveChatSuperChatDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.tier = 42;
    o.userComment = 'foo';
  }
  buildCounterLiveChatSuperChatDetails--;
  return o;
}

void checkLiveChatSuperChatDetails(api.LiveChatSuperChatDetails o) {
  buildCounterLiveChatSuperChatDetails++;
  if (buildCounterLiveChatSuperChatDetails < 3) {
    unittest.expect(o.amountDisplayString, unittest.equals('foo'));
    unittest.expect(o.amountMicros, unittest.equals('foo'));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.tier, unittest.equals(42));
    unittest.expect(o.userComment, unittest.equals('foo'));
  }
  buildCounterLiveChatSuperChatDetails--;
}

core.int buildCounterLiveChatSuperStickerDetails = 0;
api.LiveChatSuperStickerDetails buildLiveChatSuperStickerDetails() {
  var o = api.LiveChatSuperStickerDetails();
  buildCounterLiveChatSuperStickerDetails++;
  if (buildCounterLiveChatSuperStickerDetails < 3) {
    o.amountDisplayString = 'foo';
    o.amountMicros = 'foo';
    o.currency = 'foo';
    o.superStickerMetadata = buildSuperStickerMetadata();
    o.tier = 42;
  }
  buildCounterLiveChatSuperStickerDetails--;
  return o;
}

void checkLiveChatSuperStickerDetails(api.LiveChatSuperStickerDetails o) {
  buildCounterLiveChatSuperStickerDetails++;
  if (buildCounterLiveChatSuperStickerDetails < 3) {
    unittest.expect(o.amountDisplayString, unittest.equals('foo'));
    unittest.expect(o.amountMicros, unittest.equals('foo'));
    unittest.expect(o.currency, unittest.equals('foo'));
    checkSuperStickerMetadata(o.superStickerMetadata);
    unittest.expect(o.tier, unittest.equals(42));
  }
  buildCounterLiveChatSuperStickerDetails--;
}

core.int buildCounterLiveChatTextMessageDetails = 0;
api.LiveChatTextMessageDetails buildLiveChatTextMessageDetails() {
  var o = api.LiveChatTextMessageDetails();
  buildCounterLiveChatTextMessageDetails++;
  if (buildCounterLiveChatTextMessageDetails < 3) {
    o.messageText = 'foo';
  }
  buildCounterLiveChatTextMessageDetails--;
  return o;
}

void checkLiveChatTextMessageDetails(api.LiveChatTextMessageDetails o) {
  buildCounterLiveChatTextMessageDetails++;
  if (buildCounterLiveChatTextMessageDetails < 3) {
    unittest.expect(o.messageText, unittest.equals('foo'));
  }
  buildCounterLiveChatTextMessageDetails--;
}

core.int buildCounterLiveChatUserBannedMessageDetails = 0;
api.LiveChatUserBannedMessageDetails buildLiveChatUserBannedMessageDetails() {
  var o = api.LiveChatUserBannedMessageDetails();
  buildCounterLiveChatUserBannedMessageDetails++;
  if (buildCounterLiveChatUserBannedMessageDetails < 3) {
    o.banDurationSeconds = 'foo';
    o.banType = 'foo';
    o.bannedUserDetails = buildChannelProfileDetails();
  }
  buildCounterLiveChatUserBannedMessageDetails--;
  return o;
}

void checkLiveChatUserBannedMessageDetails(
    api.LiveChatUserBannedMessageDetails o) {
  buildCounterLiveChatUserBannedMessageDetails++;
  if (buildCounterLiveChatUserBannedMessageDetails < 3) {
    unittest.expect(o.banDurationSeconds, unittest.equals('foo'));
    unittest.expect(o.banType, unittest.equals('foo'));
    checkChannelProfileDetails(o.bannedUserDetails);
  }
  buildCounterLiveChatUserBannedMessageDetails--;
}

core.int buildCounterLiveStream = 0;
api.LiveStream buildLiveStream() {
  var o = api.LiveStream();
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    o.cdn = buildCdnSettings();
    o.contentDetails = buildLiveStreamContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildLiveStreamSnippet();
    o.status = buildLiveStreamStatus();
  }
  buildCounterLiveStream--;
  return o;
}

void checkLiveStream(api.LiveStream o) {
  buildCounterLiveStream++;
  if (buildCounterLiveStream < 3) {
    checkCdnSettings(o.cdn);
    checkLiveStreamContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiveStreamSnippet(o.snippet);
    checkLiveStreamStatus(o.status);
  }
  buildCounterLiveStream--;
}

core.int buildCounterLiveStreamConfigurationIssue = 0;
api.LiveStreamConfigurationIssue buildLiveStreamConfigurationIssue() {
  var o = api.LiveStreamConfigurationIssue();
  buildCounterLiveStreamConfigurationIssue++;
  if (buildCounterLiveStreamConfigurationIssue < 3) {
    o.description = 'foo';
    o.reason = 'foo';
    o.severity = 'foo';
    o.type = 'foo';
  }
  buildCounterLiveStreamConfigurationIssue--;
  return o;
}

void checkLiveStreamConfigurationIssue(api.LiveStreamConfigurationIssue o) {
  buildCounterLiveStreamConfigurationIssue++;
  if (buildCounterLiveStreamConfigurationIssue < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLiveStreamConfigurationIssue--;
}

core.int buildCounterLiveStreamContentDetails = 0;
api.LiveStreamContentDetails buildLiveStreamContentDetails() {
  var o = api.LiveStreamContentDetails();
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    o.closedCaptionsIngestionUrl = 'foo';
    o.isReusable = true;
  }
  buildCounterLiveStreamContentDetails--;
  return o;
}

void checkLiveStreamContentDetails(api.LiveStreamContentDetails o) {
  buildCounterLiveStreamContentDetails++;
  if (buildCounterLiveStreamContentDetails < 3) {
    unittest.expect(o.closedCaptionsIngestionUrl, unittest.equals('foo'));
    unittest.expect(o.isReusable, unittest.isTrue);
  }
  buildCounterLiveStreamContentDetails--;
}

core.List<api.LiveStreamConfigurationIssue> buildUnnamed2361() {
  var o = <api.LiveStreamConfigurationIssue>[];
  o.add(buildLiveStreamConfigurationIssue());
  o.add(buildLiveStreamConfigurationIssue());
  return o;
}

void checkUnnamed2361(core.List<api.LiveStreamConfigurationIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveStreamConfigurationIssue(o[0]);
  checkLiveStreamConfigurationIssue(o[1]);
}

core.int buildCounterLiveStreamHealthStatus = 0;
api.LiveStreamHealthStatus buildLiveStreamHealthStatus() {
  var o = api.LiveStreamHealthStatus();
  buildCounterLiveStreamHealthStatus++;
  if (buildCounterLiveStreamHealthStatus < 3) {
    o.configurationIssues = buildUnnamed2361();
    o.lastUpdateTimeSeconds = 'foo';
    o.status = 'foo';
  }
  buildCounterLiveStreamHealthStatus--;
  return o;
}

void checkLiveStreamHealthStatus(api.LiveStreamHealthStatus o) {
  buildCounterLiveStreamHealthStatus++;
  if (buildCounterLiveStreamHealthStatus < 3) {
    checkUnnamed2361(o.configurationIssues);
    unittest.expect(o.lastUpdateTimeSeconds, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiveStreamHealthStatus--;
}

core.List<api.LiveStream> buildUnnamed2362() {
  var o = <api.LiveStream>[];
  o.add(buildLiveStream());
  o.add(buildLiveStream());
  return o;
}

void checkUnnamed2362(core.List<api.LiveStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiveStream(o[0]);
  checkLiveStream(o[1]);
}

core.int buildCounterLiveStreamListResponse = 0;
api.LiveStreamListResponse buildLiveStreamListResponse() {
  var o = api.LiveStreamListResponse();
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2362();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterLiveStreamListResponse--;
  return o;
}

void checkLiveStreamListResponse(api.LiveStreamListResponse o) {
  buildCounterLiveStreamListResponse++;
  if (buildCounterLiveStreamListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2362(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterLiveStreamListResponse--;
}

core.int buildCounterLiveStreamSnippet = 0;
api.LiveStreamSnippet buildLiveStreamSnippet() {
  var o = api.LiveStreamSnippet();
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    o.channelId = 'foo';
    o.description = 'foo';
    o.isDefaultStream = true;
    o.publishedAt = 'foo';
    o.title = 'foo';
  }
  buildCounterLiveStreamSnippet--;
  return o;
}

void checkLiveStreamSnippet(api.LiveStreamSnippet o) {
  buildCounterLiveStreamSnippet++;
  if (buildCounterLiveStreamSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefaultStream, unittest.isTrue);
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLiveStreamSnippet--;
}

core.int buildCounterLiveStreamStatus = 0;
api.LiveStreamStatus buildLiveStreamStatus() {
  var o = api.LiveStreamStatus();
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    o.healthStatus = buildLiveStreamHealthStatus();
    o.streamStatus = 'foo';
  }
  buildCounterLiveStreamStatus--;
  return o;
}

void checkLiveStreamStatus(api.LiveStreamStatus o) {
  buildCounterLiveStreamStatus++;
  if (buildCounterLiveStreamStatus < 3) {
    checkLiveStreamHealthStatus(o.healthStatus);
    unittest.expect(o.streamStatus, unittest.equals('foo'));
  }
  buildCounterLiveStreamStatus--;
}

core.List<api.LocalizedString> buildUnnamed2363() {
  var o = <api.LocalizedString>[];
  o.add(buildLocalizedString());
  o.add(buildLocalizedString());
  return o;
}

void checkUnnamed2363(core.List<api.LocalizedString> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedString(o[0]);
  checkLocalizedString(o[1]);
}

core.int buildCounterLocalizedProperty = 0;
api.LocalizedProperty buildLocalizedProperty() {
  var o = api.LocalizedProperty();
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    o.default_ = 'foo';
    o.defaultLanguage = buildLanguageTag();
    o.localized = buildUnnamed2363();
  }
  buildCounterLocalizedProperty--;
  return o;
}

void checkLocalizedProperty(api.LocalizedProperty o) {
  buildCounterLocalizedProperty++;
  if (buildCounterLocalizedProperty < 3) {
    unittest.expect(o.default_, unittest.equals('foo'));
    checkLanguageTag(o.defaultLanguage);
    checkUnnamed2363(o.localized);
  }
  buildCounterLocalizedProperty--;
}

core.int buildCounterLocalizedString = 0;
api.LocalizedString buildLocalizedString() {
  var o = api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.language = 'foo';
    o.value = 'foo';
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocalizedString--;
}

core.int buildCounterMember = 0;
api.Member buildMember() {
  var o = api.Member();
  buildCounterMember++;
  if (buildCounterMember < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.snippet = buildMemberSnippet();
  }
  buildCounterMember--;
  return o;
}

void checkMember(api.Member o) {
  buildCounterMember++;
  if (buildCounterMember < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkMemberSnippet(o.snippet);
  }
  buildCounterMember--;
}

core.List<api.Member> buildUnnamed2364() {
  var o = <api.Member>[];
  o.add(buildMember());
  o.add(buildMember());
  return o;
}

void checkUnnamed2364(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0]);
  checkMember(o[1]);
}

core.int buildCounterMemberListResponse = 0;
api.MemberListResponse buildMemberListResponse() {
  var o = api.MemberListResponse();
  buildCounterMemberListResponse++;
  if (buildCounterMemberListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2364();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterMemberListResponse--;
  return o;
}

void checkMemberListResponse(api.MemberListResponse o) {
  buildCounterMemberListResponse++;
  if (buildCounterMemberListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2364(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterMemberListResponse--;
}

core.int buildCounterMemberSnippet = 0;
api.MemberSnippet buildMemberSnippet() {
  var o = api.MemberSnippet();
  buildCounterMemberSnippet++;
  if (buildCounterMemberSnippet < 3) {
    o.creatorChannelId = 'foo';
    o.memberDetails = buildChannelProfileDetails();
    o.membershipsDetails = buildMembershipsDetails();
  }
  buildCounterMemberSnippet--;
  return o;
}

void checkMemberSnippet(api.MemberSnippet o) {
  buildCounterMemberSnippet++;
  if (buildCounterMemberSnippet < 3) {
    unittest.expect(o.creatorChannelId, unittest.equals('foo'));
    checkChannelProfileDetails(o.memberDetails);
    checkMembershipsDetails(o.membershipsDetails);
  }
  buildCounterMemberSnippet--;
}

core.List<core.String> buildUnnamed2365() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.MembershipsDurationAtLevel> buildUnnamed2366() {
  var o = <api.MembershipsDurationAtLevel>[];
  o.add(buildMembershipsDurationAtLevel());
  o.add(buildMembershipsDurationAtLevel());
  return o;
}

void checkUnnamed2366(core.List<api.MembershipsDurationAtLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipsDurationAtLevel(o[0]);
  checkMembershipsDurationAtLevel(o[1]);
}

core.int buildCounterMembershipsDetails = 0;
api.MembershipsDetails buildMembershipsDetails() {
  var o = api.MembershipsDetails();
  buildCounterMembershipsDetails++;
  if (buildCounterMembershipsDetails < 3) {
    o.accessibleLevels = buildUnnamed2365();
    o.highestAccessibleLevel = 'foo';
    o.highestAccessibleLevelDisplayName = 'foo';
    o.membershipsDuration = buildMembershipsDuration();
    o.membershipsDurationAtLevels = buildUnnamed2366();
  }
  buildCounterMembershipsDetails--;
  return o;
}

void checkMembershipsDetails(api.MembershipsDetails o) {
  buildCounterMembershipsDetails++;
  if (buildCounterMembershipsDetails < 3) {
    checkUnnamed2365(o.accessibleLevels);
    unittest.expect(o.highestAccessibleLevel, unittest.equals('foo'));
    unittest.expect(
        o.highestAccessibleLevelDisplayName, unittest.equals('foo'));
    checkMembershipsDuration(o.membershipsDuration);
    checkUnnamed2366(o.membershipsDurationAtLevels);
  }
  buildCounterMembershipsDetails--;
}

core.int buildCounterMembershipsDuration = 0;
api.MembershipsDuration buildMembershipsDuration() {
  var o = api.MembershipsDuration();
  buildCounterMembershipsDuration++;
  if (buildCounterMembershipsDuration < 3) {
    o.memberSince = 'foo';
    o.memberTotalDurationMonths = 42;
  }
  buildCounterMembershipsDuration--;
  return o;
}

void checkMembershipsDuration(api.MembershipsDuration o) {
  buildCounterMembershipsDuration++;
  if (buildCounterMembershipsDuration < 3) {
    unittest.expect(o.memberSince, unittest.equals('foo'));
    unittest.expect(o.memberTotalDurationMonths, unittest.equals(42));
  }
  buildCounterMembershipsDuration--;
}

core.int buildCounterMembershipsDurationAtLevel = 0;
api.MembershipsDurationAtLevel buildMembershipsDurationAtLevel() {
  var o = api.MembershipsDurationAtLevel();
  buildCounterMembershipsDurationAtLevel++;
  if (buildCounterMembershipsDurationAtLevel < 3) {
    o.level = 'foo';
    o.memberSince = 'foo';
    o.memberTotalDurationMonths = 42;
  }
  buildCounterMembershipsDurationAtLevel--;
  return o;
}

void checkMembershipsDurationAtLevel(api.MembershipsDurationAtLevel o) {
  buildCounterMembershipsDurationAtLevel++;
  if (buildCounterMembershipsDurationAtLevel < 3) {
    unittest.expect(o.level, unittest.equals('foo'));
    unittest.expect(o.memberSince, unittest.equals('foo'));
    unittest.expect(o.memberTotalDurationMonths, unittest.equals(42));
  }
  buildCounterMembershipsDurationAtLevel--;
}

core.int buildCounterMembershipsLevel = 0;
api.MembershipsLevel buildMembershipsLevel() {
  var o = api.MembershipsLevel();
  buildCounterMembershipsLevel++;
  if (buildCounterMembershipsLevel < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildMembershipsLevelSnippet();
  }
  buildCounterMembershipsLevel--;
  return o;
}

void checkMembershipsLevel(api.MembershipsLevel o) {
  buildCounterMembershipsLevel++;
  if (buildCounterMembershipsLevel < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkMembershipsLevelSnippet(o.snippet);
  }
  buildCounterMembershipsLevel--;
}

core.List<api.MembershipsLevel> buildUnnamed2367() {
  var o = <api.MembershipsLevel>[];
  o.add(buildMembershipsLevel());
  o.add(buildMembershipsLevel());
  return o;
}

void checkUnnamed2367(core.List<api.MembershipsLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipsLevel(o[0]);
  checkMembershipsLevel(o[1]);
}

core.int buildCounterMembershipsLevelListResponse = 0;
api.MembershipsLevelListResponse buildMembershipsLevelListResponse() {
  var o = api.MembershipsLevelListResponse();
  buildCounterMembershipsLevelListResponse++;
  if (buildCounterMembershipsLevelListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2367();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterMembershipsLevelListResponse--;
  return o;
}

void checkMembershipsLevelListResponse(api.MembershipsLevelListResponse o) {
  buildCounterMembershipsLevelListResponse++;
  if (buildCounterMembershipsLevelListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2367(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterMembershipsLevelListResponse--;
}

core.int buildCounterMembershipsLevelSnippet = 0;
api.MembershipsLevelSnippet buildMembershipsLevelSnippet() {
  var o = api.MembershipsLevelSnippet();
  buildCounterMembershipsLevelSnippet++;
  if (buildCounterMembershipsLevelSnippet < 3) {
    o.creatorChannelId = 'foo';
    o.levelDetails = buildLevelDetails();
  }
  buildCounterMembershipsLevelSnippet--;
  return o;
}

void checkMembershipsLevelSnippet(api.MembershipsLevelSnippet o) {
  buildCounterMembershipsLevelSnippet++;
  if (buildCounterMembershipsLevelSnippet < 3) {
    unittest.expect(o.creatorChannelId, unittest.equals('foo'));
    checkLevelDetails(o.levelDetails);
  }
  buildCounterMembershipsLevelSnippet--;
}

core.int buildCounterMonitorStreamInfo = 0;
api.MonitorStreamInfo buildMonitorStreamInfo() {
  var o = api.MonitorStreamInfo();
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    o.broadcastStreamDelayMs = 42;
    o.embedHtml = 'foo';
    o.enableMonitorStream = true;
  }
  buildCounterMonitorStreamInfo--;
  return o;
}

void checkMonitorStreamInfo(api.MonitorStreamInfo o) {
  buildCounterMonitorStreamInfo++;
  if (buildCounterMonitorStreamInfo < 3) {
    unittest.expect(o.broadcastStreamDelayMs, unittest.equals(42));
    unittest.expect(o.embedHtml, unittest.equals('foo'));
    unittest.expect(o.enableMonitorStream, unittest.isTrue);
  }
  buildCounterMonitorStreamInfo--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  var o = api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultsPerPage = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

void checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(o.resultsPerPage, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

core.Map<core.String, api.PlaylistLocalization> buildUnnamed2368() {
  var o = <core.String, api.PlaylistLocalization>{};
  o['x'] = buildPlaylistLocalization();
  o['y'] = buildPlaylistLocalization();
  return o;
}

void checkUnnamed2368(core.Map<core.String, api.PlaylistLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistLocalization(o['x']);
  checkPlaylistLocalization(o['y']);
}

core.int buildCounterPlaylist = 0;
api.Playlist buildPlaylist() {
  var o = api.Playlist();
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    o.contentDetails = buildPlaylistContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizations = buildUnnamed2368();
    o.player = buildPlaylistPlayer();
    o.snippet = buildPlaylistSnippet();
    o.status = buildPlaylistStatus();
  }
  buildCounterPlaylist--;
  return o;
}

void checkPlaylist(api.Playlist o) {
  buildCounterPlaylist++;
  if (buildCounterPlaylist < 3) {
    checkPlaylistContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2368(o.localizations);
    checkPlaylistPlayer(o.player);
    checkPlaylistSnippet(o.snippet);
    checkPlaylistStatus(o.status);
  }
  buildCounterPlaylist--;
}

core.int buildCounterPlaylistContentDetails = 0;
api.PlaylistContentDetails buildPlaylistContentDetails() {
  var o = api.PlaylistContentDetails();
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    o.itemCount = 42;
  }
  buildCounterPlaylistContentDetails--;
  return o;
}

void checkPlaylistContentDetails(api.PlaylistContentDetails o) {
  buildCounterPlaylistContentDetails++;
  if (buildCounterPlaylistContentDetails < 3) {
    unittest.expect(o.itemCount, unittest.equals(42));
  }
  buildCounterPlaylistContentDetails--;
}

core.int buildCounterPlaylistItem = 0;
api.PlaylistItem buildPlaylistItem() {
  var o = api.PlaylistItem();
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    o.contentDetails = buildPlaylistItemContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildPlaylistItemSnippet();
    o.status = buildPlaylistItemStatus();
  }
  buildCounterPlaylistItem--;
  return o;
}

void checkPlaylistItem(api.PlaylistItem o) {
  buildCounterPlaylistItem++;
  if (buildCounterPlaylistItem < 3) {
    checkPlaylistItemContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlaylistItemSnippet(o.snippet);
    checkPlaylistItemStatus(o.status);
  }
  buildCounterPlaylistItem--;
}

core.int buildCounterPlaylistItemContentDetails = 0;
api.PlaylistItemContentDetails buildPlaylistItemContentDetails() {
  var o = api.PlaylistItemContentDetails();
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    o.endAt = 'foo';
    o.note = 'foo';
    o.startAt = 'foo';
    o.videoId = 'foo';
    o.videoPublishedAt = 'foo';
  }
  buildCounterPlaylistItemContentDetails--;
  return o;
}

void checkPlaylistItemContentDetails(api.PlaylistItemContentDetails o) {
  buildCounterPlaylistItemContentDetails++;
  if (buildCounterPlaylistItemContentDetails < 3) {
    unittest.expect(o.endAt, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    unittest.expect(o.startAt, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
    unittest.expect(o.videoPublishedAt, unittest.equals('foo'));
  }
  buildCounterPlaylistItemContentDetails--;
}

core.List<api.PlaylistItem> buildUnnamed2369() {
  var o = <api.PlaylistItem>[];
  o.add(buildPlaylistItem());
  o.add(buildPlaylistItem());
  return o;
}

void checkUnnamed2369(core.List<api.PlaylistItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylistItem(o[0]);
  checkPlaylistItem(o[1]);
}

core.int buildCounterPlaylistItemListResponse = 0;
api.PlaylistItemListResponse buildPlaylistItemListResponse() {
  var o = api.PlaylistItemListResponse();
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2369();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterPlaylistItemListResponse--;
  return o;
}

void checkPlaylistItemListResponse(api.PlaylistItemListResponse o) {
  buildCounterPlaylistItemListResponse++;
  if (buildCounterPlaylistItemListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2369(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterPlaylistItemListResponse--;
}

core.int buildCounterPlaylistItemSnippet = 0;
api.PlaylistItemSnippet buildPlaylistItemSnippet() {
  var o = api.PlaylistItemSnippet();
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.playlistId = 'foo';
    o.position = 42;
    o.publishedAt = 'foo';
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterPlaylistItemSnippet--;
  return o;
}

void checkPlaylistItemSnippet(api.PlaylistItemSnippet o) {
  buildCounterPlaylistItemSnippet++;
  if (buildCounterPlaylistItemSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.position, unittest.equals(42));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistItemSnippet--;
}

core.int buildCounterPlaylistItemStatus = 0;
api.PlaylistItemStatus buildPlaylistItemStatus() {
  var o = api.PlaylistItemStatus();
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    o.privacyStatus = 'foo';
  }
  buildCounterPlaylistItemStatus--;
  return o;
}

void checkPlaylistItemStatus(api.PlaylistItemStatus o) {
  buildCounterPlaylistItemStatus++;
  if (buildCounterPlaylistItemStatus < 3) {
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
  }
  buildCounterPlaylistItemStatus--;
}

core.List<api.Playlist> buildUnnamed2370() {
  var o = <api.Playlist>[];
  o.add(buildPlaylist());
  o.add(buildPlaylist());
  return o;
}

void checkUnnamed2370(core.List<api.Playlist> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaylist(o[0]);
  checkPlaylist(o[1]);
}

core.int buildCounterPlaylistListResponse = 0;
api.PlaylistListResponse buildPlaylistListResponse() {
  var o = api.PlaylistListResponse();
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2370();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterPlaylistListResponse--;
  return o;
}

void checkPlaylistListResponse(api.PlaylistListResponse o) {
  buildCounterPlaylistListResponse++;
  if (buildCounterPlaylistListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2370(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterPlaylistListResponse--;
}

core.int buildCounterPlaylistLocalization = 0;
api.PlaylistLocalization buildPlaylistLocalization() {
  var o = api.PlaylistLocalization();
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterPlaylistLocalization--;
  return o;
}

void checkPlaylistLocalization(api.PlaylistLocalization o) {
  buildCounterPlaylistLocalization++;
  if (buildCounterPlaylistLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistLocalization--;
}

core.int buildCounterPlaylistPlayer = 0;
api.PlaylistPlayer buildPlaylistPlayer() {
  var o = api.PlaylistPlayer();
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    o.embedHtml = 'foo';
  }
  buildCounterPlaylistPlayer--;
  return o;
}

void checkPlaylistPlayer(api.PlaylistPlayer o) {
  buildCounterPlaylistPlayer++;
  if (buildCounterPlaylistPlayer < 3) {
    unittest.expect(o.embedHtml, unittest.equals('foo'));
  }
  buildCounterPlaylistPlayer--;
}

core.List<core.String> buildUnnamed2371() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlaylistSnippet = 0;
api.PlaylistSnippet buildPlaylistSnippet() {
  var o = api.PlaylistSnippet();
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.localized = buildPlaylistLocalization();
    o.publishedAt = 'foo';
    o.tags = buildUnnamed2371();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterPlaylistSnippet--;
  return o;
}

void checkPlaylistSnippet(api.PlaylistSnippet o) {
  buildCounterPlaylistSnippet++;
  if (buildCounterPlaylistSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkPlaylistLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkUnnamed2371(o.tags);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlaylistSnippet--;
}

core.int buildCounterPlaylistStatus = 0;
api.PlaylistStatus buildPlaylistStatus() {
  var o = api.PlaylistStatus();
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    o.privacyStatus = 'foo';
  }
  buildCounterPlaylistStatus--;
  return o;
}

void checkPlaylistStatus(api.PlaylistStatus o) {
  buildCounterPlaylistStatus++;
  if (buildCounterPlaylistStatus < 3) {
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
  }
  buildCounterPlaylistStatus--;
}

core.int buildCounterPropertyValue = 0;
api.PropertyValue buildPropertyValue() {
  var o = api.PropertyValue();
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    o.property = 'foo';
    o.value = 'foo';
  }
  buildCounterPropertyValue--;
  return o;
}

void checkPropertyValue(api.PropertyValue o) {
  buildCounterPropertyValue++;
  if (buildCounterPropertyValue < 3) {
    unittest.expect(o.property, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPropertyValue--;
}

core.int buildCounterRelatedEntity = 0;
api.RelatedEntity buildRelatedEntity() {
  var o = api.RelatedEntity();
  buildCounterRelatedEntity++;
  if (buildCounterRelatedEntity < 3) {
    o.entity = buildEntity();
  }
  buildCounterRelatedEntity--;
  return o;
}

void checkRelatedEntity(api.RelatedEntity o) {
  buildCounterRelatedEntity++;
  if (buildCounterRelatedEntity < 3) {
    checkEntity(o.entity);
  }
  buildCounterRelatedEntity--;
}

core.int buildCounterResourceId = 0;
api.ResourceId buildResourceId() {
  var o = api.ResourceId();
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    o.channelId = 'foo';
    o.kind = 'foo';
    o.playlistId = 'foo';
    o.videoId = 'foo';
  }
  buildCounterResourceId--;
  return o;
}

void checkResourceId(api.ResourceId o) {
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.playlistId, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterResourceId--;
}

core.List<api.SearchResult> buildUnnamed2372() {
  var o = <api.SearchResult>[];
  o.add(buildSearchResult());
  o.add(buildSearchResult());
  return o;
}

void checkUnnamed2372(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchListResponse = 0;
api.SearchListResponse buildSearchListResponse() {
  var o = api.SearchListResponse();
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2372();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.regionCode = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSearchListResponse--;
  return o;
}

void checkSearchListResponse(api.SearchListResponse o) {
  buildCounterSearchListResponse++;
  if (buildCounterSearchListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2372(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSearchListResponse--;
}

core.int buildCounterSearchResult = 0;
api.SearchResult buildSearchResult() {
  var o = api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.etag = 'foo';
    o.id = buildResourceId();
    o.kind = 'foo';
    o.snippet = buildSearchResultSnippet();
  }
  buildCounterSearchResult--;
  return o;
}

void checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkResourceId(o.id);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSearchResultSnippet(o.snippet);
  }
  buildCounterSearchResult--;
}

core.int buildCounterSearchResultSnippet = 0;
api.SearchResultSnippet buildSearchResultSnippet() {
  var o = api.SearchResultSnippet();
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.liveBroadcastContent = 'foo';
    o.publishedAt = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSearchResultSnippet--;
  return o;
}

void checkSearchResultSnippet(api.SearchResultSnippet o) {
  buildCounterSearchResultSnippet++;
  if (buildCounterSearchResultSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastContent, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSearchResultSnippet--;
}

core.int buildCounterSponsor = 0;
api.Sponsor buildSponsor() {
  var o = api.Sponsor();
  buildCounterSponsor++;
  if (buildCounterSponsor < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.snippet = buildSponsorSnippet();
  }
  buildCounterSponsor--;
  return o;
}

void checkSponsor(api.Sponsor o) {
  buildCounterSponsor++;
  if (buildCounterSponsor < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSponsorSnippet(o.snippet);
  }
  buildCounterSponsor--;
}

core.List<api.Sponsor> buildUnnamed2373() {
  var o = <api.Sponsor>[];
  o.add(buildSponsor());
  o.add(buildSponsor());
  return o;
}

void checkUnnamed2373(core.List<api.Sponsor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSponsor(o[0]);
  checkSponsor(o[1]);
}

core.int buildCounterSponsorListResponse = 0;
api.SponsorListResponse buildSponsorListResponse() {
  var o = api.SponsorListResponse();
  buildCounterSponsorListResponse++;
  if (buildCounterSponsorListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2373();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSponsorListResponse--;
  return o;
}

void checkSponsorListResponse(api.SponsorListResponse o) {
  buildCounterSponsorListResponse++;
  if (buildCounterSponsorListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2373(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSponsorListResponse--;
}

core.int buildCounterSponsorSnippet = 0;
api.SponsorSnippet buildSponsorSnippet() {
  var o = api.SponsorSnippet();
  buildCounterSponsorSnippet++;
  if (buildCounterSponsorSnippet < 3) {
    o.channelId = 'foo';
    o.cumulativeDurationMonths = 42;
    o.sponsorDetails = buildChannelProfileDetails();
    o.sponsorSince = 'foo';
  }
  buildCounterSponsorSnippet--;
  return o;
}

void checkSponsorSnippet(api.SponsorSnippet o) {
  buildCounterSponsorSnippet++;
  if (buildCounterSponsorSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.cumulativeDurationMonths, unittest.equals(42));
    checkChannelProfileDetails(o.sponsorDetails);
    unittest.expect(o.sponsorSince, unittest.equals('foo'));
  }
  buildCounterSponsorSnippet--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  var o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.contentDetails = buildSubscriptionContentDetails();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildSubscriptionSnippet();
    o.subscriberSnippet = buildSubscriptionSubscriberSnippet();
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkSubscriptionContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSubscriptionSnippet(o.snippet);
    checkSubscriptionSubscriberSnippet(o.subscriberSnippet);
  }
  buildCounterSubscription--;
}

core.int buildCounterSubscriptionContentDetails = 0;
api.SubscriptionContentDetails buildSubscriptionContentDetails() {
  var o = api.SubscriptionContentDetails();
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    o.activityType = 'foo';
    o.newItemCount = 42;
    o.totalItemCount = 42;
  }
  buildCounterSubscriptionContentDetails--;
  return o;
}

void checkSubscriptionContentDetails(api.SubscriptionContentDetails o) {
  buildCounterSubscriptionContentDetails++;
  if (buildCounterSubscriptionContentDetails < 3) {
    unittest.expect(o.activityType, unittest.equals('foo'));
    unittest.expect(o.newItemCount, unittest.equals(42));
    unittest.expect(o.totalItemCount, unittest.equals(42));
  }
  buildCounterSubscriptionContentDetails--;
}

core.List<api.Subscription> buildUnnamed2374() {
  var o = <api.Subscription>[];
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

void checkUnnamed2374(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptionListResponse = 0;
api.SubscriptionListResponse buildSubscriptionListResponse() {
  var o = api.SubscriptionListResponse();
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2374();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSubscriptionListResponse--;
  return o;
}

void checkSubscriptionListResponse(api.SubscriptionListResponse o) {
  buildCounterSubscriptionListResponse++;
  if (buildCounterSubscriptionListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2374(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSubscriptionListResponse--;
}

core.int buildCounterSubscriptionSnippet = 0;
api.SubscriptionSnippet buildSubscriptionSnippet() {
  var o = api.SubscriptionSnippet();
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.description = 'foo';
    o.publishedAt = 'foo';
    o.resourceId = buildResourceId();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSubscriptionSnippet--;
  return o;
}

void checkSubscriptionSnippet(api.SubscriptionSnippet o) {
  buildCounterSubscriptionSnippet++;
  if (buildCounterSubscriptionSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkResourceId(o.resourceId);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSubscriptionSnippet--;
}

core.int buildCounterSubscriptionSubscriberSnippet = 0;
api.SubscriptionSubscriberSnippet buildSubscriptionSubscriberSnippet() {
  var o = api.SubscriptionSubscriberSnippet();
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    o.channelId = 'foo';
    o.description = 'foo';
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterSubscriptionSubscriberSnippet--;
  return o;
}

void checkSubscriptionSubscriberSnippet(api.SubscriptionSubscriberSnippet o) {
  buildCounterSubscriptionSubscriberSnippet++;
  if (buildCounterSubscriptionSubscriberSnippet < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSubscriptionSubscriberSnippet--;
}

core.int buildCounterSuperChatEvent = 0;
api.SuperChatEvent buildSuperChatEvent() {
  var o = api.SuperChatEvent();
  buildCounterSuperChatEvent++;
  if (buildCounterSuperChatEvent < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildSuperChatEventSnippet();
  }
  buildCounterSuperChatEvent--;
  return o;
}

void checkSuperChatEvent(api.SuperChatEvent o) {
  buildCounterSuperChatEvent++;
  if (buildCounterSuperChatEvent < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSuperChatEventSnippet(o.snippet);
  }
  buildCounterSuperChatEvent--;
}

core.List<api.SuperChatEvent> buildUnnamed2375() {
  var o = <api.SuperChatEvent>[];
  o.add(buildSuperChatEvent());
  o.add(buildSuperChatEvent());
  return o;
}

void checkUnnamed2375(core.List<api.SuperChatEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuperChatEvent(o[0]);
  checkSuperChatEvent(o[1]);
}

core.int buildCounterSuperChatEventListResponse = 0;
api.SuperChatEventListResponse buildSuperChatEventListResponse() {
  var o = api.SuperChatEventListResponse();
  buildCounterSuperChatEventListResponse++;
  if (buildCounterSuperChatEventListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2375();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterSuperChatEventListResponse--;
  return o;
}

void checkSuperChatEventListResponse(api.SuperChatEventListResponse o) {
  buildCounterSuperChatEventListResponse++;
  if (buildCounterSuperChatEventListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2375(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterSuperChatEventListResponse--;
}

core.int buildCounterSuperChatEventSnippet = 0;
api.SuperChatEventSnippet buildSuperChatEventSnippet() {
  var o = api.SuperChatEventSnippet();
  buildCounterSuperChatEventSnippet++;
  if (buildCounterSuperChatEventSnippet < 3) {
    o.amountMicros = 'foo';
    o.channelId = 'foo';
    o.commentText = 'foo';
    o.createdAt = 'foo';
    o.currency = 'foo';
    o.displayString = 'foo';
    o.isSuperStickerEvent = true;
    o.messageType = 42;
    o.superStickerMetadata = buildSuperStickerMetadata();
    o.supporterDetails = buildChannelProfileDetails();
  }
  buildCounterSuperChatEventSnippet--;
  return o;
}

void checkSuperChatEventSnippet(api.SuperChatEventSnippet o) {
  buildCounterSuperChatEventSnippet++;
  if (buildCounterSuperChatEventSnippet < 3) {
    unittest.expect(o.amountMicros, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.commentText, unittest.equals('foo'));
    unittest.expect(o.createdAt, unittest.equals('foo'));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.displayString, unittest.equals('foo'));
    unittest.expect(o.isSuperStickerEvent, unittest.isTrue);
    unittest.expect(o.messageType, unittest.equals(42));
    checkSuperStickerMetadata(o.superStickerMetadata);
    checkChannelProfileDetails(o.supporterDetails);
  }
  buildCounterSuperChatEventSnippet--;
}

core.int buildCounterSuperStickerMetadata = 0;
api.SuperStickerMetadata buildSuperStickerMetadata() {
  var o = api.SuperStickerMetadata();
  buildCounterSuperStickerMetadata++;
  if (buildCounterSuperStickerMetadata < 3) {
    o.altText = 'foo';
    o.altTextLanguage = 'foo';
    o.stickerId = 'foo';
  }
  buildCounterSuperStickerMetadata--;
  return o;
}

void checkSuperStickerMetadata(api.SuperStickerMetadata o) {
  buildCounterSuperStickerMetadata++;
  if (buildCounterSuperStickerMetadata < 3) {
    unittest.expect(o.altText, unittest.equals('foo'));
    unittest.expect(o.altTextLanguage, unittest.equals('foo'));
    unittest.expect(o.stickerId, unittest.equals('foo'));
  }
  buildCounterSuperStickerMetadata--;
}

core.int buildCounterTestItem = 0;
api.TestItem buildTestItem() {
  var o = api.TestItem();
  buildCounterTestItem++;
  if (buildCounterTestItem < 3) {
    o.gaia = 'foo';
    o.id = 'foo';
    o.snippet = buildTestItemTestItemSnippet();
  }
  buildCounterTestItem--;
  return o;
}

void checkTestItem(api.TestItem o) {
  buildCounterTestItem++;
  if (buildCounterTestItem < 3) {
    unittest.expect(o.gaia, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkTestItemTestItemSnippet(o.snippet);
  }
  buildCounterTestItem--;
}

core.int buildCounterTestItemTestItemSnippet = 0;
api.TestItemTestItemSnippet buildTestItemTestItemSnippet() {
  var o = api.TestItemTestItemSnippet();
  buildCounterTestItemTestItemSnippet++;
  if (buildCounterTestItemTestItemSnippet < 3) {}
  buildCounterTestItemTestItemSnippet--;
  return o;
}

void checkTestItemTestItemSnippet(api.TestItemTestItemSnippet o) {
  buildCounterTestItemTestItemSnippet++;
  if (buildCounterTestItemTestItemSnippet < 3) {}
  buildCounterTestItemTestItemSnippet--;
}

core.int buildCounterThirdPartyLink = 0;
api.ThirdPartyLink buildThirdPartyLink() {
  var o = api.ThirdPartyLink();
  buildCounterThirdPartyLink++;
  if (buildCounterThirdPartyLink < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.linkingToken = 'foo';
    o.snippet = buildThirdPartyLinkSnippet();
    o.status = buildThirdPartyLinkStatus();
  }
  buildCounterThirdPartyLink--;
  return o;
}

void checkThirdPartyLink(api.ThirdPartyLink o) {
  buildCounterThirdPartyLink++;
  if (buildCounterThirdPartyLink < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.linkingToken, unittest.equals('foo'));
    checkThirdPartyLinkSnippet(o.snippet);
    checkThirdPartyLinkStatus(o.status);
  }
  buildCounterThirdPartyLink--;
}

core.int buildCounterThirdPartyLinkSnippet = 0;
api.ThirdPartyLinkSnippet buildThirdPartyLinkSnippet() {
  var o = api.ThirdPartyLinkSnippet();
  buildCounterThirdPartyLinkSnippet++;
  if (buildCounterThirdPartyLinkSnippet < 3) {
    o.channelToStoreLink = buildChannelToStoreLinkDetails();
    o.type = 'foo';
  }
  buildCounterThirdPartyLinkSnippet--;
  return o;
}

void checkThirdPartyLinkSnippet(api.ThirdPartyLinkSnippet o) {
  buildCounterThirdPartyLinkSnippet++;
  if (buildCounterThirdPartyLinkSnippet < 3) {
    checkChannelToStoreLinkDetails(o.channelToStoreLink);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterThirdPartyLinkSnippet--;
}

core.int buildCounterThirdPartyLinkStatus = 0;
api.ThirdPartyLinkStatus buildThirdPartyLinkStatus() {
  var o = api.ThirdPartyLinkStatus();
  buildCounterThirdPartyLinkStatus++;
  if (buildCounterThirdPartyLinkStatus < 3) {
    o.linkStatus = 'foo';
  }
  buildCounterThirdPartyLinkStatus--;
  return o;
}

void checkThirdPartyLinkStatus(api.ThirdPartyLinkStatus o) {
  buildCounterThirdPartyLinkStatus++;
  if (buildCounterThirdPartyLinkStatus < 3) {
    unittest.expect(o.linkStatus, unittest.equals('foo'));
  }
  buildCounterThirdPartyLinkStatus--;
}

core.int buildCounterThumbnail = 0;
api.Thumbnail buildThumbnail() {
  var o = api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterThumbnail--;
  return o;
}

void checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterThumbnail--;
}

core.int buildCounterThumbnailDetails = 0;
api.ThumbnailDetails buildThumbnailDetails() {
  var o = api.ThumbnailDetails();
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    o.default_ = buildThumbnail();
    o.high = buildThumbnail();
    o.maxres = buildThumbnail();
    o.medium = buildThumbnail();
    o.standard = buildThumbnail();
  }
  buildCounterThumbnailDetails--;
  return o;
}

void checkThumbnailDetails(api.ThumbnailDetails o) {
  buildCounterThumbnailDetails++;
  if (buildCounterThumbnailDetails < 3) {
    checkThumbnail(o.default_);
    checkThumbnail(o.high);
    checkThumbnail(o.maxres);
    checkThumbnail(o.medium);
    checkThumbnail(o.standard);
  }
  buildCounterThumbnailDetails--;
}

core.List<api.ThumbnailDetails> buildUnnamed2376() {
  var o = <api.ThumbnailDetails>[];
  o.add(buildThumbnailDetails());
  o.add(buildThumbnailDetails());
  return o;
}

void checkUnnamed2376(core.List<api.ThumbnailDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThumbnailDetails(o[0]);
  checkThumbnailDetails(o[1]);
}

core.int buildCounterThumbnailSetResponse = 0;
api.ThumbnailSetResponse buildThumbnailSetResponse() {
  var o = api.ThumbnailSetResponse();
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2376();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterThumbnailSetResponse--;
  return o;
}

void checkThumbnailSetResponse(api.ThumbnailSetResponse o) {
  buildCounterThumbnailSetResponse++;
  if (buildCounterThumbnailSetResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2376(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterThumbnailSetResponse--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  var o = api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {}
  buildCounterTokenPagination--;
  return o;
}

void checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {}
  buildCounterTokenPagination--;
}

core.Map<core.String, api.VideoLocalization> buildUnnamed2377() {
  var o = <core.String, api.VideoLocalization>{};
  o['x'] = buildVideoLocalization();
  o['y'] = buildVideoLocalization();
  return o;
}

void checkUnnamed2377(core.Map<core.String, api.VideoLocalization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoLocalization(o['x']);
  checkVideoLocalization(o['y']);
}

core.int buildCounterVideo = 0;
api.Video buildVideo() {
  var o = api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.ageGating = buildVideoAgeGating();
    o.contentDetails = buildVideoContentDetails();
    o.etag = 'foo';
    o.fileDetails = buildVideoFileDetails();
    o.id = 'foo';
    o.kind = 'foo';
    o.liveStreamingDetails = buildVideoLiveStreamingDetails();
    o.localizations = buildUnnamed2377();
    o.monetizationDetails = buildVideoMonetizationDetails();
    o.player = buildVideoPlayer();
    o.processingDetails = buildVideoProcessingDetails();
    o.projectDetails = buildVideoProjectDetails();
    o.recordingDetails = buildVideoRecordingDetails();
    o.snippet = buildVideoSnippet();
    o.statistics = buildVideoStatistics();
    o.status = buildVideoStatus();
    o.suggestions = buildVideoSuggestions();
    o.topicDetails = buildVideoTopicDetails();
  }
  buildCounterVideo--;
  return o;
}

void checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    checkVideoAgeGating(o.ageGating);
    checkVideoContentDetails(o.contentDetails);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkVideoFileDetails(o.fileDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoLiveStreamingDetails(o.liveStreamingDetails);
    checkUnnamed2377(o.localizations);
    checkVideoMonetizationDetails(o.monetizationDetails);
    checkVideoPlayer(o.player);
    checkVideoProcessingDetails(o.processingDetails);
    checkVideoProjectDetails(o.projectDetails);
    checkVideoRecordingDetails(o.recordingDetails);
    checkVideoSnippet(o.snippet);
    checkVideoStatistics(o.statistics);
    checkVideoStatus(o.status);
    checkVideoSuggestions(o.suggestions);
    checkVideoTopicDetails(o.topicDetails);
  }
  buildCounterVideo--;
}

core.int buildCounterVideoAbuseReport = 0;
api.VideoAbuseReport buildVideoAbuseReport() {
  var o = api.VideoAbuseReport();
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    o.comments = 'foo';
    o.language = 'foo';
    o.reasonId = 'foo';
    o.secondaryReasonId = 'foo';
    o.videoId = 'foo';
  }
  buildCounterVideoAbuseReport--;
  return o;
}

void checkVideoAbuseReport(api.VideoAbuseReport o) {
  buildCounterVideoAbuseReport++;
  if (buildCounterVideoAbuseReport < 3) {
    unittest.expect(o.comments, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.reasonId, unittest.equals('foo'));
    unittest.expect(o.secondaryReasonId, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReport--;
}

core.int buildCounterVideoAbuseReportReason = 0;
api.VideoAbuseReportReason buildVideoAbuseReportReason() {
  var o = api.VideoAbuseReportReason();
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildVideoAbuseReportReasonSnippet();
  }
  buildCounterVideoAbuseReportReason--;
  return o;
}

void checkVideoAbuseReportReason(api.VideoAbuseReportReason o) {
  buildCounterVideoAbuseReportReason++;
  if (buildCounterVideoAbuseReportReason < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoAbuseReportReasonSnippet(o.snippet);
  }
  buildCounterVideoAbuseReportReason--;
}

core.List<api.VideoAbuseReportReason> buildUnnamed2378() {
  var o = <api.VideoAbuseReportReason>[];
  o.add(buildVideoAbuseReportReason());
  o.add(buildVideoAbuseReportReason());
  return o;
}

void checkUnnamed2378(core.List<api.VideoAbuseReportReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportReason(o[0]);
  checkVideoAbuseReportReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonListResponse = 0;
api.VideoAbuseReportReasonListResponse
    buildVideoAbuseReportReasonListResponse() {
  var o = api.VideoAbuseReportReasonListResponse();
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2378();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterVideoAbuseReportReasonListResponse--;
  return o;
}

void checkVideoAbuseReportReasonListResponse(
    api.VideoAbuseReportReasonListResponse o) {
  buildCounterVideoAbuseReportReasonListResponse++;
  if (buildCounterVideoAbuseReportReasonListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2378(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReportReasonListResponse--;
}

core.List<api.VideoAbuseReportSecondaryReason> buildUnnamed2379() {
  var o = <api.VideoAbuseReportSecondaryReason>[];
  o.add(buildVideoAbuseReportSecondaryReason());
  o.add(buildVideoAbuseReportSecondaryReason());
  return o;
}

void checkUnnamed2379(core.List<api.VideoAbuseReportSecondaryReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoAbuseReportSecondaryReason(o[0]);
  checkVideoAbuseReportSecondaryReason(o[1]);
}

core.int buildCounterVideoAbuseReportReasonSnippet = 0;
api.VideoAbuseReportReasonSnippet buildVideoAbuseReportReasonSnippet() {
  var o = api.VideoAbuseReportReasonSnippet();
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    o.label = 'foo';
    o.secondaryReasons = buildUnnamed2379();
  }
  buildCounterVideoAbuseReportReasonSnippet--;
  return o;
}

void checkVideoAbuseReportReasonSnippet(api.VideoAbuseReportReasonSnippet o) {
  buildCounterVideoAbuseReportReasonSnippet++;
  if (buildCounterVideoAbuseReportReasonSnippet < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    checkUnnamed2379(o.secondaryReasons);
  }
  buildCounterVideoAbuseReportReasonSnippet--;
}

core.int buildCounterVideoAbuseReportSecondaryReason = 0;
api.VideoAbuseReportSecondaryReason buildVideoAbuseReportSecondaryReason() {
  var o = api.VideoAbuseReportSecondaryReason();
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    o.id = 'foo';
    o.label = 'foo';
  }
  buildCounterVideoAbuseReportSecondaryReason--;
  return o;
}

void checkVideoAbuseReportSecondaryReason(
    api.VideoAbuseReportSecondaryReason o) {
  buildCounterVideoAbuseReportSecondaryReason++;
  if (buildCounterVideoAbuseReportSecondaryReason < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterVideoAbuseReportSecondaryReason--;
}

core.int buildCounterVideoAgeGating = 0;
api.VideoAgeGating buildVideoAgeGating() {
  var o = api.VideoAgeGating();
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    o.alcoholContent = true;
    o.restricted = true;
    o.videoGameRating = 'foo';
  }
  buildCounterVideoAgeGating--;
  return o;
}

void checkVideoAgeGating(api.VideoAgeGating o) {
  buildCounterVideoAgeGating++;
  if (buildCounterVideoAgeGating < 3) {
    unittest.expect(o.alcoholContent, unittest.isTrue);
    unittest.expect(o.restricted, unittest.isTrue);
    unittest.expect(o.videoGameRating, unittest.equals('foo'));
  }
  buildCounterVideoAgeGating--;
}

core.int buildCounterVideoCategory = 0;
api.VideoCategory buildVideoCategory() {
  var o = api.VideoCategory();
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildVideoCategorySnippet();
  }
  buildCounterVideoCategory--;
  return o;
}

void checkVideoCategory(api.VideoCategory o) {
  buildCounterVideoCategory++;
  if (buildCounterVideoCategory < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoCategorySnippet(o.snippet);
  }
  buildCounterVideoCategory--;
}

core.List<api.VideoCategory> buildUnnamed2380() {
  var o = <api.VideoCategory>[];
  o.add(buildVideoCategory());
  o.add(buildVideoCategory());
  return o;
}

void checkUnnamed2380(core.List<api.VideoCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoCategory(o[0]);
  checkVideoCategory(o[1]);
}

core.int buildCounterVideoCategoryListResponse = 0;
api.VideoCategoryListResponse buildVideoCategoryListResponse() {
  var o = api.VideoCategoryListResponse();
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2380();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterVideoCategoryListResponse--;
  return o;
}

void checkVideoCategoryListResponse(api.VideoCategoryListResponse o) {
  buildCounterVideoCategoryListResponse++;
  if (buildCounterVideoCategoryListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2380(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoCategoryListResponse--;
}

core.int buildCounterVideoCategorySnippet = 0;
api.VideoCategorySnippet buildVideoCategorySnippet() {
  var o = api.VideoCategorySnippet();
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    o.assignable = true;
    o.channelId = 'foo';
    o.title = 'foo';
  }
  buildCounterVideoCategorySnippet--;
  return o;
}

void checkVideoCategorySnippet(api.VideoCategorySnippet o) {
  buildCounterVideoCategorySnippet++;
  if (buildCounterVideoCategorySnippet < 3) {
    unittest.expect(o.assignable, unittest.isTrue);
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoCategorySnippet--;
}

core.int buildCounterVideoContentDetails = 0;
api.VideoContentDetails buildVideoContentDetails() {
  var o = api.VideoContentDetails();
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    o.caption = 'foo';
    o.contentRating = buildContentRating();
    o.countryRestriction = buildAccessPolicy();
    o.definition = 'foo';
    o.dimension = 'foo';
    o.duration = 'foo';
    o.hasCustomThumbnail = true;
    o.licensedContent = true;
    o.projection = 'foo';
    o.regionRestriction = buildVideoContentDetailsRegionRestriction();
  }
  buildCounterVideoContentDetails--;
  return o;
}

void checkVideoContentDetails(api.VideoContentDetails o) {
  buildCounterVideoContentDetails++;
  if (buildCounterVideoContentDetails < 3) {
    unittest.expect(o.caption, unittest.equals('foo'));
    checkContentRating(o.contentRating);
    checkAccessPolicy(o.countryRestriction);
    unittest.expect(o.definition, unittest.equals('foo'));
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.hasCustomThumbnail, unittest.isTrue);
    unittest.expect(o.licensedContent, unittest.isTrue);
    unittest.expect(o.projection, unittest.equals('foo'));
    checkVideoContentDetailsRegionRestriction(o.regionRestriction);
  }
  buildCounterVideoContentDetails--;
}

core.List<core.String> buildUnnamed2381() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2381(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2382() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2382(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoContentDetailsRegionRestriction = 0;
api.VideoContentDetailsRegionRestriction
    buildVideoContentDetailsRegionRestriction() {
  var o = api.VideoContentDetailsRegionRestriction();
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    o.allowed = buildUnnamed2381();
    o.blocked = buildUnnamed2382();
  }
  buildCounterVideoContentDetailsRegionRestriction--;
  return o;
}

void checkVideoContentDetailsRegionRestriction(
    api.VideoContentDetailsRegionRestriction o) {
  buildCounterVideoContentDetailsRegionRestriction++;
  if (buildCounterVideoContentDetailsRegionRestriction < 3) {
    checkUnnamed2381(o.allowed);
    checkUnnamed2382(o.blocked);
  }
  buildCounterVideoContentDetailsRegionRestriction--;
}

core.List<api.VideoFileDetailsAudioStream> buildUnnamed2383() {
  var o = <api.VideoFileDetailsAudioStream>[];
  o.add(buildVideoFileDetailsAudioStream());
  o.add(buildVideoFileDetailsAudioStream());
  return o;
}

void checkUnnamed2383(core.List<api.VideoFileDetailsAudioStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsAudioStream(o[0]);
  checkVideoFileDetailsAudioStream(o[1]);
}

core.List<api.VideoFileDetailsVideoStream> buildUnnamed2384() {
  var o = <api.VideoFileDetailsVideoStream>[];
  o.add(buildVideoFileDetailsVideoStream());
  o.add(buildVideoFileDetailsVideoStream());
  return o;
}

void checkUnnamed2384(core.List<api.VideoFileDetailsVideoStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFileDetailsVideoStream(o[0]);
  checkVideoFileDetailsVideoStream(o[1]);
}

core.int buildCounterVideoFileDetails = 0;
api.VideoFileDetails buildVideoFileDetails() {
  var o = api.VideoFileDetails();
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    o.audioStreams = buildUnnamed2383();
    o.bitrateBps = 'foo';
    o.container = 'foo';
    o.creationTime = 'foo';
    o.durationMs = 'foo';
    o.fileName = 'foo';
    o.fileSize = 'foo';
    o.fileType = 'foo';
    o.videoStreams = buildUnnamed2384();
  }
  buildCounterVideoFileDetails--;
  return o;
}

void checkVideoFileDetails(api.VideoFileDetails o) {
  buildCounterVideoFileDetails++;
  if (buildCounterVideoFileDetails < 3) {
    checkUnnamed2383(o.audioStreams);
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.container, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
    checkUnnamed2384(o.videoStreams);
  }
  buildCounterVideoFileDetails--;
}

core.int buildCounterVideoFileDetailsAudioStream = 0;
api.VideoFileDetailsAudioStream buildVideoFileDetailsAudioStream() {
  var o = api.VideoFileDetailsAudioStream();
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    o.bitrateBps = 'foo';
    o.channelCount = 42;
    o.codec = 'foo';
    o.vendor = 'foo';
  }
  buildCounterVideoFileDetailsAudioStream--;
  return o;
}

void checkVideoFileDetailsAudioStream(api.VideoFileDetailsAudioStream o) {
  buildCounterVideoFileDetailsAudioStream++;
  if (buildCounterVideoFileDetailsAudioStream < 3) {
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.channelCount, unittest.equals(42));
    unittest.expect(o.codec, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
  }
  buildCounterVideoFileDetailsAudioStream--;
}

core.int buildCounterVideoFileDetailsVideoStream = 0;
api.VideoFileDetailsVideoStream buildVideoFileDetailsVideoStream() {
  var o = api.VideoFileDetailsVideoStream();
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    o.aspectRatio = 42.0;
    o.bitrateBps = 'foo';
    o.codec = 'foo';
    o.frameRateFps = 42.0;
    o.heightPixels = 42;
    o.rotation = 'foo';
    o.vendor = 'foo';
    o.widthPixels = 42;
  }
  buildCounterVideoFileDetailsVideoStream--;
  return o;
}

void checkVideoFileDetailsVideoStream(api.VideoFileDetailsVideoStream o) {
  buildCounterVideoFileDetailsVideoStream++;
  if (buildCounterVideoFileDetailsVideoStream < 3) {
    unittest.expect(o.aspectRatio, unittest.equals(42.0));
    unittest.expect(o.bitrateBps, unittest.equals('foo'));
    unittest.expect(o.codec, unittest.equals('foo'));
    unittest.expect(o.frameRateFps, unittest.equals(42.0));
    unittest.expect(o.heightPixels, unittest.equals(42));
    unittest.expect(o.rotation, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
    unittest.expect(o.widthPixels, unittest.equals(42));
  }
  buildCounterVideoFileDetailsVideoStream--;
}

core.List<api.Video> buildUnnamed2385() {
  var o = <api.Video>[];
  o.add(buildVideo());
  o.add(buildVideo());
  return o;
}

void checkUnnamed2385(core.List<api.Video> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideo(o[0]);
  checkVideo(o[1]);
}

core.int buildCounterVideoListResponse = 0;
api.VideoListResponse buildVideoListResponse() {
  var o = api.VideoListResponse();
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2385();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.pageInfo = buildPageInfo();
    o.prevPageToken = 'foo';
    o.tokenPagination = buildTokenPagination();
    o.visitorId = 'foo';
  }
  buildCounterVideoListResponse--;
  return o;
}

void checkVideoListResponse(api.VideoListResponse o) {
  buildCounterVideoListResponse++;
  if (buildCounterVideoListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2385(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoListResponse--;
}

core.int buildCounterVideoLiveStreamingDetails = 0;
api.VideoLiveStreamingDetails buildVideoLiveStreamingDetails() {
  var o = api.VideoLiveStreamingDetails();
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    o.activeLiveChatId = 'foo';
    o.actualEndTime = 'foo';
    o.actualStartTime = 'foo';
    o.concurrentViewers = 'foo';
    o.scheduledEndTime = 'foo';
    o.scheduledStartTime = 'foo';
  }
  buildCounterVideoLiveStreamingDetails--;
  return o;
}

void checkVideoLiveStreamingDetails(api.VideoLiveStreamingDetails o) {
  buildCounterVideoLiveStreamingDetails++;
  if (buildCounterVideoLiveStreamingDetails < 3) {
    unittest.expect(o.activeLiveChatId, unittest.equals('foo'));
    unittest.expect(o.actualEndTime, unittest.equals('foo'));
    unittest.expect(o.actualStartTime, unittest.equals('foo'));
    unittest.expect(o.concurrentViewers, unittest.equals('foo'));
    unittest.expect(o.scheduledEndTime, unittest.equals('foo'));
    unittest.expect(o.scheduledStartTime, unittest.equals('foo'));
  }
  buildCounterVideoLiveStreamingDetails--;
}

core.int buildCounterVideoLocalization = 0;
api.VideoLocalization buildVideoLocalization() {
  var o = api.VideoLocalization();
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterVideoLocalization--;
  return o;
}

void checkVideoLocalization(api.VideoLocalization o) {
  buildCounterVideoLocalization++;
  if (buildCounterVideoLocalization < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoLocalization--;
}

core.int buildCounterVideoMonetizationDetails = 0;
api.VideoMonetizationDetails buildVideoMonetizationDetails() {
  var o = api.VideoMonetizationDetails();
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    o.access = buildAccessPolicy();
  }
  buildCounterVideoMonetizationDetails--;
  return o;
}

void checkVideoMonetizationDetails(api.VideoMonetizationDetails o) {
  buildCounterVideoMonetizationDetails++;
  if (buildCounterVideoMonetizationDetails < 3) {
    checkAccessPolicy(o.access);
  }
  buildCounterVideoMonetizationDetails--;
}

core.int buildCounterVideoPlayer = 0;
api.VideoPlayer buildVideoPlayer() {
  var o = api.VideoPlayer();
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    o.embedHeight = 'foo';
    o.embedHtml = 'foo';
    o.embedWidth = 'foo';
  }
  buildCounterVideoPlayer--;
  return o;
}

void checkVideoPlayer(api.VideoPlayer o) {
  buildCounterVideoPlayer++;
  if (buildCounterVideoPlayer < 3) {
    unittest.expect(o.embedHeight, unittest.equals('foo'));
    unittest.expect(o.embedHtml, unittest.equals('foo'));
    unittest.expect(o.embedWidth, unittest.equals('foo'));
  }
  buildCounterVideoPlayer--;
}

core.int buildCounterVideoProcessingDetails = 0;
api.VideoProcessingDetails buildVideoProcessingDetails() {
  var o = api.VideoProcessingDetails();
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    o.editorSuggestionsAvailability = 'foo';
    o.fileDetailsAvailability = 'foo';
    o.processingFailureReason = 'foo';
    o.processingIssuesAvailability = 'foo';
    o.processingProgress = buildVideoProcessingDetailsProcessingProgress();
    o.processingStatus = 'foo';
    o.tagSuggestionsAvailability = 'foo';
    o.thumbnailsAvailability = 'foo';
  }
  buildCounterVideoProcessingDetails--;
  return o;
}

void checkVideoProcessingDetails(api.VideoProcessingDetails o) {
  buildCounterVideoProcessingDetails++;
  if (buildCounterVideoProcessingDetails < 3) {
    unittest.expect(o.editorSuggestionsAvailability, unittest.equals('foo'));
    unittest.expect(o.fileDetailsAvailability, unittest.equals('foo'));
    unittest.expect(o.processingFailureReason, unittest.equals('foo'));
    unittest.expect(o.processingIssuesAvailability, unittest.equals('foo'));
    checkVideoProcessingDetailsProcessingProgress(o.processingProgress);
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.tagSuggestionsAvailability, unittest.equals('foo'));
    unittest.expect(o.thumbnailsAvailability, unittest.equals('foo'));
  }
  buildCounterVideoProcessingDetails--;
}

core.int buildCounterVideoProcessingDetailsProcessingProgress = 0;
api.VideoProcessingDetailsProcessingProgress
    buildVideoProcessingDetailsProcessingProgress() {
  var o = api.VideoProcessingDetailsProcessingProgress();
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    o.partsProcessed = 'foo';
    o.partsTotal = 'foo';
    o.timeLeftMs = 'foo';
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
  return o;
}

void checkVideoProcessingDetailsProcessingProgress(
    api.VideoProcessingDetailsProcessingProgress o) {
  buildCounterVideoProcessingDetailsProcessingProgress++;
  if (buildCounterVideoProcessingDetailsProcessingProgress < 3) {
    unittest.expect(o.partsProcessed, unittest.equals('foo'));
    unittest.expect(o.partsTotal, unittest.equals('foo'));
    unittest.expect(o.timeLeftMs, unittest.equals('foo'));
  }
  buildCounterVideoProcessingDetailsProcessingProgress--;
}

core.List<core.String> buildUnnamed2386() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2386(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoProjectDetails = 0;
api.VideoProjectDetails buildVideoProjectDetails() {
  var o = api.VideoProjectDetails();
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {
    o.tags = buildUnnamed2386();
  }
  buildCounterVideoProjectDetails--;
  return o;
}

void checkVideoProjectDetails(api.VideoProjectDetails o) {
  buildCounterVideoProjectDetails++;
  if (buildCounterVideoProjectDetails < 3) {
    checkUnnamed2386(o.tags);
  }
  buildCounterVideoProjectDetails--;
}

core.int buildCounterVideoRating = 0;
api.VideoRating buildVideoRating() {
  var o = api.VideoRating();
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    o.rating = 'foo';
    o.videoId = 'foo';
  }
  buildCounterVideoRating--;
  return o;
}

void checkVideoRating(api.VideoRating o) {
  buildCounterVideoRating++;
  if (buildCounterVideoRating < 3) {
    unittest.expect(o.rating, unittest.equals('foo'));
    unittest.expect(o.videoId, unittest.equals('foo'));
  }
  buildCounterVideoRating--;
}

core.List<api.VideoRating> buildUnnamed2387() {
  var o = <api.VideoRating>[];
  o.add(buildVideoRating());
  o.add(buildVideoRating());
  return o;
}

void checkUnnamed2387(core.List<api.VideoRating> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoRating(o[0]);
  checkVideoRating(o[1]);
}

core.int buildCounterVideoRatingListResponse = 0;
api.VideoRatingListResponse buildVideoRatingListResponse() {
  var o = api.VideoRatingListResponse();
  buildCounterVideoRatingListResponse++;
  if (buildCounterVideoRatingListResponse < 3) {
    o.etag = 'foo';
    o.eventId = 'foo';
    o.items = buildUnnamed2387();
    o.kind = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterVideoRatingListResponse--;
  return o;
}

void checkVideoRatingListResponse(api.VideoRatingListResponse o) {
  buildCounterVideoRatingListResponse++;
  if (buildCounterVideoRatingListResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2387(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visitorId, unittest.equals('foo'));
  }
  buildCounterVideoRatingListResponse--;
}

core.int buildCounterVideoRecordingDetails = 0;
api.VideoRecordingDetails buildVideoRecordingDetails() {
  var o = api.VideoRecordingDetails();
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    o.location = buildGeoPoint();
    o.locationDescription = 'foo';
    o.recordingDate = 'foo';
  }
  buildCounterVideoRecordingDetails--;
  return o;
}

void checkVideoRecordingDetails(api.VideoRecordingDetails o) {
  buildCounterVideoRecordingDetails++;
  if (buildCounterVideoRecordingDetails < 3) {
    checkGeoPoint(o.location);
    unittest.expect(o.locationDescription, unittest.equals('foo'));
    unittest.expect(o.recordingDate, unittest.equals('foo'));
  }
  buildCounterVideoRecordingDetails--;
}

core.List<core.String> buildUnnamed2388() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2388(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoSnippet = 0;
api.VideoSnippet buildVideoSnippet() {
  var o = api.VideoSnippet();
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    o.categoryId = 'foo';
    o.channelId = 'foo';
    o.channelTitle = 'foo';
    o.defaultAudioLanguage = 'foo';
    o.defaultLanguage = 'foo';
    o.description = 'foo';
    o.liveBroadcastContent = 'foo';
    o.localized = buildVideoLocalization();
    o.publishedAt = 'foo';
    o.tags = buildUnnamed2388();
    o.thumbnails = buildThumbnailDetails();
    o.title = 'foo';
  }
  buildCounterVideoSnippet--;
  return o;
}

void checkVideoSnippet(api.VideoSnippet o) {
  buildCounterVideoSnippet++;
  if (buildCounterVideoSnippet < 3) {
    unittest.expect(o.categoryId, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.channelTitle, unittest.equals('foo'));
    unittest.expect(o.defaultAudioLanguage, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.liveBroadcastContent, unittest.equals('foo'));
    checkVideoLocalization(o.localized);
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    checkUnnamed2388(o.tags);
    checkThumbnailDetails(o.thumbnails);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterVideoSnippet--;
}

core.int buildCounterVideoStatistics = 0;
api.VideoStatistics buildVideoStatistics() {
  var o = api.VideoStatistics();
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    o.commentCount = 'foo';
    o.dislikeCount = 'foo';
    o.favoriteCount = 'foo';
    o.likeCount = 'foo';
    o.viewCount = 'foo';
  }
  buildCounterVideoStatistics--;
  return o;
}

void checkVideoStatistics(api.VideoStatistics o) {
  buildCounterVideoStatistics++;
  if (buildCounterVideoStatistics < 3) {
    unittest.expect(o.commentCount, unittest.equals('foo'));
    unittest.expect(o.dislikeCount, unittest.equals('foo'));
    unittest.expect(o.favoriteCount, unittest.equals('foo'));
    unittest.expect(o.likeCount, unittest.equals('foo'));
    unittest.expect(o.viewCount, unittest.equals('foo'));
  }
  buildCounterVideoStatistics--;
}

core.int buildCounterVideoStatus = 0;
api.VideoStatus buildVideoStatus() {
  var o = api.VideoStatus();
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    o.embeddable = true;
    o.failureReason = 'foo';
    o.license = 'foo';
    o.madeForKids = true;
    o.privacyStatus = 'foo';
    o.publicStatsViewable = true;
    o.publishAt = 'foo';
    o.rejectionReason = 'foo';
    o.selfDeclaredMadeForKids = true;
    o.uploadStatus = 'foo';
  }
  buildCounterVideoStatus--;
  return o;
}

void checkVideoStatus(api.VideoStatus o) {
  buildCounterVideoStatus++;
  if (buildCounterVideoStatus < 3) {
    unittest.expect(o.embeddable, unittest.isTrue);
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.license, unittest.equals('foo'));
    unittest.expect(o.madeForKids, unittest.isTrue);
    unittest.expect(o.privacyStatus, unittest.equals('foo'));
    unittest.expect(o.publicStatsViewable, unittest.isTrue);
    unittest.expect(o.publishAt, unittest.equals('foo'));
    unittest.expect(o.rejectionReason, unittest.equals('foo'));
    unittest.expect(o.selfDeclaredMadeForKids, unittest.isTrue);
    unittest.expect(o.uploadStatus, unittest.equals('foo'));
  }
  buildCounterVideoStatus--;
}

core.List<core.String> buildUnnamed2389() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2389(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2390() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2390(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2391() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2391(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2392() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2392(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.VideoSuggestionsTagSuggestion> buildUnnamed2393() {
  var o = <api.VideoSuggestionsTagSuggestion>[];
  o.add(buildVideoSuggestionsTagSuggestion());
  o.add(buildVideoSuggestionsTagSuggestion());
  return o;
}

void checkUnnamed2393(core.List<api.VideoSuggestionsTagSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoSuggestionsTagSuggestion(o[0]);
  checkVideoSuggestionsTagSuggestion(o[1]);
}

core.int buildCounterVideoSuggestions = 0;
api.VideoSuggestions buildVideoSuggestions() {
  var o = api.VideoSuggestions();
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    o.editorSuggestions = buildUnnamed2389();
    o.processingErrors = buildUnnamed2390();
    o.processingHints = buildUnnamed2391();
    o.processingWarnings = buildUnnamed2392();
    o.tagSuggestions = buildUnnamed2393();
  }
  buildCounterVideoSuggestions--;
  return o;
}

void checkVideoSuggestions(api.VideoSuggestions o) {
  buildCounterVideoSuggestions++;
  if (buildCounterVideoSuggestions < 3) {
    checkUnnamed2389(o.editorSuggestions);
    checkUnnamed2390(o.processingErrors);
    checkUnnamed2391(o.processingHints);
    checkUnnamed2392(o.processingWarnings);
    checkUnnamed2393(o.tagSuggestions);
  }
  buildCounterVideoSuggestions--;
}

core.List<core.String> buildUnnamed2394() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2394(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoSuggestionsTagSuggestion = 0;
api.VideoSuggestionsTagSuggestion buildVideoSuggestionsTagSuggestion() {
  var o = api.VideoSuggestionsTagSuggestion();
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    o.categoryRestricts = buildUnnamed2394();
    o.tag = 'foo';
  }
  buildCounterVideoSuggestionsTagSuggestion--;
  return o;
}

void checkVideoSuggestionsTagSuggestion(api.VideoSuggestionsTagSuggestion o) {
  buildCounterVideoSuggestionsTagSuggestion++;
  if (buildCounterVideoSuggestionsTagSuggestion < 3) {
    checkUnnamed2394(o.categoryRestricts);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterVideoSuggestionsTagSuggestion--;
}

core.List<core.String> buildUnnamed2395() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2395(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2396() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2396(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2397() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2397(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoTopicDetails = 0;
api.VideoTopicDetails buildVideoTopicDetails() {
  var o = api.VideoTopicDetails();
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    o.relevantTopicIds = buildUnnamed2395();
    o.topicCategories = buildUnnamed2396();
    o.topicIds = buildUnnamed2397();
  }
  buildCounterVideoTopicDetails--;
  return o;
}

void checkVideoTopicDetails(api.VideoTopicDetails o) {
  buildCounterVideoTopicDetails++;
  if (buildCounterVideoTopicDetails < 3) {
    checkUnnamed2395(o.relevantTopicIds);
    checkUnnamed2396(o.topicCategories);
    checkUnnamed2397(o.topicIds);
  }
  buildCounterVideoTopicDetails--;
}

core.int buildCounterWatchSettings = 0;
api.WatchSettings buildWatchSettings() {
  var o = api.WatchSettings();
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    o.backgroundColor = 'foo';
    o.featuredPlaylistId = 'foo';
    o.textColor = 'foo';
  }
  buildCounterWatchSettings--;
  return o;
}

void checkWatchSettings(api.WatchSettings o) {
  buildCounterWatchSettings++;
  if (buildCounterWatchSettings < 3) {
    unittest.expect(o.backgroundColor, unittest.equals('foo'));
    unittest.expect(o.featuredPlaylistId, unittest.equals('foo'));
    unittest.expect(o.textColor, unittest.equals('foo'));
  }
  buildCounterWatchSettings--;
}

core.List<core.String> buildUnnamed2398() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2398(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2399() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2399(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2400() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2400(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2401() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2401(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2402() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2402(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2403() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2403(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2404() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2405() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2406() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2407() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2408() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2409() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2410() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2410(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2411() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2411(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2412() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2413() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2414() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2415() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2415(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2416() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2416(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2417() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2417(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2418() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2418(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2419() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2419(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2420() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2420(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2421() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2421(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2422() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2422(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2423() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2423(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2424() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2424(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2425() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2425(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2426() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2426(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2427() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2428() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2428(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2429() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2430() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2430(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2431() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2431(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2432() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2432(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2433() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2433(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2434() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2434(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2435() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2435(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2436() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2436(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2437() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2437(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2438() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2438(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2439() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2439(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2440() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2440(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2441() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2441(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2442() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2443() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2443(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2444() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2444(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2445() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2445(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2446() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2446(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2447() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2447(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2448() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2449() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2450() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2450(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2451() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2451(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2452() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2452(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2453() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2453(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2454() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2454(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2455() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2456() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2456(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2457() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2457(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2458() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2458(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2459() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2459(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2460() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2460(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2461() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2462() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2462(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2463() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2463(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2464() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2465() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2466() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2466(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2467() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2467(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2468() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2468(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AbuseReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildAbuseReport();
      var od = api.AbuseReport.fromJson(o.toJson());
      checkAbuseReport(od);
    });
  });

  unittest.group('obj-schema-AbuseType', () {
    unittest.test('to-json--from-json', () {
      var o = buildAbuseType();
      var od = api.AbuseType.fromJson(o.toJson());
      checkAbuseType(od);
    });
  });

  unittest.group('obj-schema-AccessPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessPolicy();
      var od = api.AccessPolicy.fromJson(o.toJson());
      checkAccessPolicy(od);
    });
  });

  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivity();
      var od = api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetails();
      var od = api.ActivityContentDetails.fromJson(o.toJson());
      checkActivityContentDetails(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsBulletin', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsBulletin();
      var od = api.ActivityContentDetailsBulletin.fromJson(o.toJson());
      checkActivityContentDetailsBulletin(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsChannelItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsChannelItem();
      var od = api.ActivityContentDetailsChannelItem.fromJson(o.toJson());
      checkActivityContentDetailsChannelItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsComment', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsComment();
      var od = api.ActivityContentDetailsComment.fromJson(o.toJson());
      checkActivityContentDetailsComment(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsFavorite', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsFavorite();
      var od = api.ActivityContentDetailsFavorite.fromJson(o.toJson());
      checkActivityContentDetailsFavorite(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsLike', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsLike();
      var od = api.ActivityContentDetailsLike.fromJson(o.toJson());
      checkActivityContentDetailsLike(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsPlaylistItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsPlaylistItem();
      var od = api.ActivityContentDetailsPlaylistItem.fromJson(o.toJson());
      checkActivityContentDetailsPlaylistItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsPromotedItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsPromotedItem();
      var od = api.ActivityContentDetailsPromotedItem.fromJson(o.toJson());
      checkActivityContentDetailsPromotedItem(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsRecommendation', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsRecommendation();
      var od = api.ActivityContentDetailsRecommendation.fromJson(o.toJson());
      checkActivityContentDetailsRecommendation(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsSocial', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsSocial();
      var od = api.ActivityContentDetailsSocial.fromJson(o.toJson());
      checkActivityContentDetailsSocial(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsSubscription', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsSubscription();
      var od = api.ActivityContentDetailsSubscription.fromJson(o.toJson());
      checkActivityContentDetailsSubscription(od);
    });
  });

  unittest.group('obj-schema-ActivityContentDetailsUpload', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityContentDetailsUpload();
      var od = api.ActivityContentDetailsUpload.fromJson(o.toJson());
      checkActivityContentDetailsUpload(od);
    });
  });

  unittest.group('obj-schema-ActivityListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityListResponse();
      var od = api.ActivityListResponse.fromJson(o.toJson());
      checkActivityListResponse(od);
    });
  });

  unittest.group('obj-schema-ActivitySnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivitySnippet();
      var od = api.ActivitySnippet.fromJson(o.toJson());
      checkActivitySnippet(od);
    });
  });

  unittest.group('obj-schema-Caption', () {
    unittest.test('to-json--from-json', () {
      var o = buildCaption();
      var od = api.Caption.fromJson(o.toJson());
      checkCaption(od);
    });
  });

  unittest.group('obj-schema-CaptionListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCaptionListResponse();
      var od = api.CaptionListResponse.fromJson(o.toJson());
      checkCaptionListResponse(od);
    });
  });

  unittest.group('obj-schema-CaptionSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildCaptionSnippet();
      var od = api.CaptionSnippet.fromJson(o.toJson());
      checkCaptionSnippet(od);
    });
  });

  unittest.group('obj-schema-CdnSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildCdnSettings();
      var od = api.CdnSettings.fromJson(o.toJson());
      checkCdnSettings(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChannelAuditDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelAuditDetails();
      var od = api.ChannelAuditDetails.fromJson(o.toJson());
      checkChannelAuditDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelBannerResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelBannerResource();
      var od = api.ChannelBannerResource.fromJson(o.toJson());
      checkChannelBannerResource(od);
    });
  });

  unittest.group('obj-schema-ChannelBrandingSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelBrandingSettings();
      var od = api.ChannelBrandingSettings.fromJson(o.toJson());
      checkChannelBrandingSettings(od);
    });
  });

  unittest.group('obj-schema-ChannelContentDetailsRelatedPlaylists', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelContentDetailsRelatedPlaylists();
      var od = api.ChannelContentDetailsRelatedPlaylists.fromJson(o.toJson());
      checkChannelContentDetailsRelatedPlaylists(od);
    });
  });

  unittest.group('obj-schema-ChannelContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelContentDetails();
      var od = api.ChannelContentDetails.fromJson(o.toJson());
      checkChannelContentDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelContentOwnerDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelContentOwnerDetails();
      var od = api.ChannelContentOwnerDetails.fromJson(o.toJson());
      checkChannelContentOwnerDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelConversionPing', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelConversionPing();
      var od = api.ChannelConversionPing.fromJson(o.toJson());
      checkChannelConversionPing(od);
    });
  });

  unittest.group('obj-schema-ChannelConversionPings', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelConversionPings();
      var od = api.ChannelConversionPings.fromJson(o.toJson());
      checkChannelConversionPings(od);
    });
  });

  unittest.group('obj-schema-ChannelListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelListResponse();
      var od = api.ChannelListResponse.fromJson(o.toJson());
      checkChannelListResponse(od);
    });
  });

  unittest.group('obj-schema-ChannelLocalization', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelLocalization();
      var od = api.ChannelLocalization.fromJson(o.toJson());
      checkChannelLocalization(od);
    });
  });

  unittest.group('obj-schema-ChannelProfileDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelProfileDetails();
      var od = api.ChannelProfileDetails.fromJson(o.toJson());
      checkChannelProfileDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelSection', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSection();
      var od = api.ChannelSection.fromJson(o.toJson());
      checkChannelSection(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSectionContentDetails();
      var od = api.ChannelSectionContentDetails.fromJson(o.toJson());
      checkChannelSectionContentDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSectionListResponse();
      var od = api.ChannelSectionListResponse.fromJson(o.toJson());
      checkChannelSectionListResponse(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionLocalization', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSectionLocalization();
      var od = api.ChannelSectionLocalization.fromJson(o.toJson());
      checkChannelSectionLocalization(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSectionSnippet();
      var od = api.ChannelSectionSnippet.fromJson(o.toJson());
      checkChannelSectionSnippet(od);
    });
  });

  unittest.group('obj-schema-ChannelSectionTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSectionTargeting();
      var od = api.ChannelSectionTargeting.fromJson(o.toJson());
      checkChannelSectionTargeting(od);
    });
  });

  unittest.group('obj-schema-ChannelSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSettings();
      var od = api.ChannelSettings.fromJson(o.toJson());
      checkChannelSettings(od);
    });
  });

  unittest.group('obj-schema-ChannelSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelSnippet();
      var od = api.ChannelSnippet.fromJson(o.toJson());
      checkChannelSnippet(od);
    });
  });

  unittest.group('obj-schema-ChannelStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelStatistics();
      var od = api.ChannelStatistics.fromJson(o.toJson());
      checkChannelStatistics(od);
    });
  });

  unittest.group('obj-schema-ChannelStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelStatus();
      var od = api.ChannelStatus.fromJson(o.toJson());
      checkChannelStatus(od);
    });
  });

  unittest.group('obj-schema-ChannelToStoreLinkDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelToStoreLinkDetails();
      var od = api.ChannelToStoreLinkDetails.fromJson(o.toJson());
      checkChannelToStoreLinkDetails(od);
    });
  });

  unittest.group('obj-schema-ChannelTopicDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelTopicDetails();
      var od = api.ChannelTopicDetails.fromJson(o.toJson());
      checkChannelTopicDetails(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () {
      var o = buildComment();
      var od = api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CommentListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentListResponse();
      var od = api.CommentListResponse.fromJson(o.toJson());
      checkCommentListResponse(od);
    });
  });

  unittest.group('obj-schema-CommentSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentSnippet();
      var od = api.CommentSnippet.fromJson(o.toJson());
      checkCommentSnippet(od);
    });
  });

  unittest.group('obj-schema-CommentSnippetAuthorChannelId', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentSnippetAuthorChannelId();
      var od = api.CommentSnippetAuthorChannelId.fromJson(o.toJson());
      checkCommentSnippetAuthorChannelId(od);
    });
  });

  unittest.group('obj-schema-CommentThread', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentThread();
      var od = api.CommentThread.fromJson(o.toJson());
      checkCommentThread(od);
    });
  });

  unittest.group('obj-schema-CommentThreadListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentThreadListResponse();
      var od = api.CommentThreadListResponse.fromJson(o.toJson());
      checkCommentThreadListResponse(od);
    });
  });

  unittest.group('obj-schema-CommentThreadReplies', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentThreadReplies();
      var od = api.CommentThreadReplies.fromJson(o.toJson());
      checkCommentThreadReplies(od);
    });
  });

  unittest.group('obj-schema-CommentThreadSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommentThreadSnippet();
      var od = api.CommentThreadSnippet.fromJson(o.toJson());
      checkCommentThreadSnippet(od);
    });
  });

  unittest.group('obj-schema-ContentRating', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentRating();
      var od = api.ContentRating.fromJson(o.toJson());
      checkContentRating(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntity();
      var od = api.Entity.fromJson(o.toJson());
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-GeoPoint', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoPoint();
      var od = api.GeoPoint.fromJson(o.toJson());
      checkGeoPoint(od);
    });
  });

  unittest.group('obj-schema-I18nLanguage', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nLanguage();
      var od = api.I18nLanguage.fromJson(o.toJson());
      checkI18nLanguage(od);
    });
  });

  unittest.group('obj-schema-I18nLanguageListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nLanguageListResponse();
      var od = api.I18nLanguageListResponse.fromJson(o.toJson());
      checkI18nLanguageListResponse(od);
    });
  });

  unittest.group('obj-schema-I18nLanguageSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nLanguageSnippet();
      var od = api.I18nLanguageSnippet.fromJson(o.toJson());
      checkI18nLanguageSnippet(od);
    });
  });

  unittest.group('obj-schema-I18nRegion', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nRegion();
      var od = api.I18nRegion.fromJson(o.toJson());
      checkI18nRegion(od);
    });
  });

  unittest.group('obj-schema-I18nRegionListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nRegionListResponse();
      var od = api.I18nRegionListResponse.fromJson(o.toJson());
      checkI18nRegionListResponse(od);
    });
  });

  unittest.group('obj-schema-I18nRegionSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildI18nRegionSnippet();
      var od = api.I18nRegionSnippet.fromJson(o.toJson());
      checkI18nRegionSnippet(od);
    });
  });

  unittest.group('obj-schema-ImageSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildImageSettings();
      var od = api.ImageSettings.fromJson(o.toJson());
      checkImageSettings(od);
    });
  });

  unittest.group('obj-schema-IngestionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildIngestionInfo();
      var od = api.IngestionInfo.fromJson(o.toJson());
      checkIngestionInfo(od);
    });
  });

  unittest.group('obj-schema-InvideoBranding', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvideoBranding();
      var od = api.InvideoBranding.fromJson(o.toJson());
      checkInvideoBranding(od);
    });
  });

  unittest.group('obj-schema-InvideoPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvideoPosition();
      var od = api.InvideoPosition.fromJson(o.toJson());
      checkInvideoPosition(od);
    });
  });

  unittest.group('obj-schema-InvideoTiming', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvideoTiming();
      var od = api.InvideoTiming.fromJson(o.toJson());
      checkInvideoTiming(od);
    });
  });

  unittest.group('obj-schema-LanguageTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageTag();
      var od = api.LanguageTag.fromJson(o.toJson());
      checkLanguageTag(od);
    });
  });

  unittest.group('obj-schema-LevelDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLevelDetails();
      var od = api.LevelDetails.fromJson(o.toJson());
      checkLevelDetails(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcast', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcast();
      var od = api.LiveBroadcast.fromJson(o.toJson());
      checkLiveBroadcast(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcastContentDetails();
      var od = api.LiveBroadcastContentDetails.fromJson(o.toJson());
      checkLiveBroadcastContentDetails(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcastListResponse();
      var od = api.LiveBroadcastListResponse.fromJson(o.toJson());
      checkLiveBroadcastListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcastSnippet();
      var od = api.LiveBroadcastSnippet.fromJson(o.toJson());
      checkLiveBroadcastSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcastStatistics();
      var od = api.LiveBroadcastStatistics.fromJson(o.toJson());
      checkLiveBroadcastStatistics(od);
    });
  });

  unittest.group('obj-schema-LiveBroadcastStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveBroadcastStatus();
      var od = api.LiveBroadcastStatus.fromJson(o.toJson());
      checkLiveBroadcastStatus(od);
    });
  });

  unittest.group('obj-schema-LiveChatBan', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatBan();
      var od = api.LiveChatBan.fromJson(o.toJson());
      checkLiveChatBan(od);
    });
  });

  unittest.group('obj-schema-LiveChatBanSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatBanSnippet();
      var od = api.LiveChatBanSnippet.fromJson(o.toJson());
      checkLiveChatBanSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatFanFundingEventDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatFanFundingEventDetails();
      var od = api.LiveChatFanFundingEventDetails.fromJson(o.toJson());
      checkLiveChatFanFundingEventDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessage();
      var od = api.LiveChatMessage.fromJson(o.toJson());
      checkLiveChatMessage(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageAuthorDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessageAuthorDetails();
      var od = api.LiveChatMessageAuthorDetails.fromJson(o.toJson());
      checkLiveChatMessageAuthorDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageDeletedDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessageDeletedDetails();
      var od = api.LiveChatMessageDeletedDetails.fromJson(o.toJson());
      checkLiveChatMessageDeletedDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessageListResponse();
      var od = api.LiveChatMessageListResponse.fromJson(o.toJson());
      checkLiveChatMessageListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageRetractedDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessageRetractedDetails();
      var od = api.LiveChatMessageRetractedDetails.fromJson(o.toJson());
      checkLiveChatMessageRetractedDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatMessageSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatMessageSnippet();
      var od = api.LiveChatMessageSnippet.fromJson(o.toJson());
      checkLiveChatMessageSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatModerator', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatModerator();
      var od = api.LiveChatModerator.fromJson(o.toJson());
      checkLiveChatModerator(od);
    });
  });

  unittest.group('obj-schema-LiveChatModeratorListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatModeratorListResponse();
      var od = api.LiveChatModeratorListResponse.fromJson(o.toJson());
      checkLiveChatModeratorListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveChatModeratorSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatModeratorSnippet();
      var od = api.LiveChatModeratorSnippet.fromJson(o.toJson());
      checkLiveChatModeratorSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveChatSuperChatDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatSuperChatDetails();
      var od = api.LiveChatSuperChatDetails.fromJson(o.toJson());
      checkLiveChatSuperChatDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatSuperStickerDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatSuperStickerDetails();
      var od = api.LiveChatSuperStickerDetails.fromJson(o.toJson());
      checkLiveChatSuperStickerDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatTextMessageDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatTextMessageDetails();
      var od = api.LiveChatTextMessageDetails.fromJson(o.toJson());
      checkLiveChatTextMessageDetails(od);
    });
  });

  unittest.group('obj-schema-LiveChatUserBannedMessageDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveChatUserBannedMessageDetails();
      var od = api.LiveChatUserBannedMessageDetails.fromJson(o.toJson());
      checkLiveChatUserBannedMessageDetails(od);
    });
  });

  unittest.group('obj-schema-LiveStream', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStream();
      var od = api.LiveStream.fromJson(o.toJson());
      checkLiveStream(od);
    });
  });

  unittest.group('obj-schema-LiveStreamConfigurationIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamConfigurationIssue();
      var od = api.LiveStreamConfigurationIssue.fromJson(o.toJson());
      checkLiveStreamConfigurationIssue(od);
    });
  });

  unittest.group('obj-schema-LiveStreamContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamContentDetails();
      var od = api.LiveStreamContentDetails.fromJson(o.toJson());
      checkLiveStreamContentDetails(od);
    });
  });

  unittest.group('obj-schema-LiveStreamHealthStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamHealthStatus();
      var od = api.LiveStreamHealthStatus.fromJson(o.toJson());
      checkLiveStreamHealthStatus(od);
    });
  });

  unittest.group('obj-schema-LiveStreamListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamListResponse();
      var od = api.LiveStreamListResponse.fromJson(o.toJson());
      checkLiveStreamListResponse(od);
    });
  });

  unittest.group('obj-schema-LiveStreamSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamSnippet();
      var od = api.LiveStreamSnippet.fromJson(o.toJson());
      checkLiveStreamSnippet(od);
    });
  });

  unittest.group('obj-schema-LiveStreamStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiveStreamStatus();
      var od = api.LiveStreamStatus.fromJson(o.toJson());
      checkLiveStreamStatus(od);
    });
  });

  unittest.group('obj-schema-LocalizedProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedProperty();
      var od = api.LocalizedProperty.fromJson(o.toJson());
      checkLocalizedProperty(od);
    });
  });

  unittest.group('obj-schema-LocalizedString', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedString();
      var od = api.LocalizedString.fromJson(o.toJson());
      checkLocalizedString(od);
    });
  });

  unittest.group('obj-schema-Member', () {
    unittest.test('to-json--from-json', () {
      var o = buildMember();
      var od = api.Member.fromJson(o.toJson());
      checkMember(od);
    });
  });

  unittest.group('obj-schema-MemberListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMemberListResponse();
      var od = api.MemberListResponse.fromJson(o.toJson());
      checkMemberListResponse(od);
    });
  });

  unittest.group('obj-schema-MemberSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildMemberSnippet();
      var od = api.MemberSnippet.fromJson(o.toJson());
      checkMemberSnippet(od);
    });
  });

  unittest.group('obj-schema-MembershipsDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsDetails();
      var od = api.MembershipsDetails.fromJson(o.toJson());
      checkMembershipsDetails(od);
    });
  });

  unittest.group('obj-schema-MembershipsDuration', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsDuration();
      var od = api.MembershipsDuration.fromJson(o.toJson());
      checkMembershipsDuration(od);
    });
  });

  unittest.group('obj-schema-MembershipsDurationAtLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsDurationAtLevel();
      var od = api.MembershipsDurationAtLevel.fromJson(o.toJson());
      checkMembershipsDurationAtLevel(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsLevel();
      var od = api.MembershipsLevel.fromJson(o.toJson());
      checkMembershipsLevel(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevelListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsLevelListResponse();
      var od = api.MembershipsLevelListResponse.fromJson(o.toJson());
      checkMembershipsLevelListResponse(od);
    });
  });

  unittest.group('obj-schema-MembershipsLevelSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembershipsLevelSnippet();
      var od = api.MembershipsLevelSnippet.fromJson(o.toJson());
      checkMembershipsLevelSnippet(od);
    });
  });

  unittest.group('obj-schema-MonitorStreamInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitorStreamInfo();
      var od = api.MonitorStreamInfo.fromJson(o.toJson());
      checkMonitorStreamInfo(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageInfo();
      var od = api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-Playlist', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylist();
      var od = api.Playlist.fromJson(o.toJson());
      checkPlaylist(od);
    });
  });

  unittest.group('obj-schema-PlaylistContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistContentDetails();
      var od = api.PlaylistContentDetails.fromJson(o.toJson());
      checkPlaylistContentDetails(od);
    });
  });

  unittest.group('obj-schema-PlaylistItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistItem();
      var od = api.PlaylistItem.fromJson(o.toJson());
      checkPlaylistItem(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistItemContentDetails();
      var od = api.PlaylistItemContentDetails.fromJson(o.toJson());
      checkPlaylistItemContentDetails(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistItemListResponse();
      var od = api.PlaylistItemListResponse.fromJson(o.toJson());
      checkPlaylistItemListResponse(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistItemSnippet();
      var od = api.PlaylistItemSnippet.fromJson(o.toJson());
      checkPlaylistItemSnippet(od);
    });
  });

  unittest.group('obj-schema-PlaylistItemStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistItemStatus();
      var od = api.PlaylistItemStatus.fromJson(o.toJson());
      checkPlaylistItemStatus(od);
    });
  });

  unittest.group('obj-schema-PlaylistListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistListResponse();
      var od = api.PlaylistListResponse.fromJson(o.toJson());
      checkPlaylistListResponse(od);
    });
  });

  unittest.group('obj-schema-PlaylistLocalization', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistLocalization();
      var od = api.PlaylistLocalization.fromJson(o.toJson());
      checkPlaylistLocalization(od);
    });
  });

  unittest.group('obj-schema-PlaylistPlayer', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistPlayer();
      var od = api.PlaylistPlayer.fromJson(o.toJson());
      checkPlaylistPlayer(od);
    });
  });

  unittest.group('obj-schema-PlaylistSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistSnippet();
      var od = api.PlaylistSnippet.fromJson(o.toJson());
      checkPlaylistSnippet(od);
    });
  });

  unittest.group('obj-schema-PlaylistStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlaylistStatus();
      var od = api.PlaylistStatus.fromJson(o.toJson());
      checkPlaylistStatus(od);
    });
  });

  unittest.group('obj-schema-PropertyValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildPropertyValue();
      var od = api.PropertyValue.fromJson(o.toJson());
      checkPropertyValue(od);
    });
  });

  unittest.group('obj-schema-RelatedEntity', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelatedEntity();
      var od = api.RelatedEntity.fromJson(o.toJson());
      checkRelatedEntity(od);
    });
  });

  unittest.group('obj-schema-ResourceId', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceId();
      var od = api.ResourceId.fromJson(o.toJson());
      checkResourceId(od);
    });
  });

  unittest.group('obj-schema-SearchListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchListResponse();
      var od = api.SearchListResponse.fromJson(o.toJson());
      checkSearchListResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchResult();
      var od = api.SearchResult.fromJson(o.toJson());
      checkSearchResult(od);
    });
  });

  unittest.group('obj-schema-SearchResultSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchResultSnippet();
      var od = api.SearchResultSnippet.fromJson(o.toJson());
      checkSearchResultSnippet(od);
    });
  });

  unittest.group('obj-schema-Sponsor', () {
    unittest.test('to-json--from-json', () {
      var o = buildSponsor();
      var od = api.Sponsor.fromJson(o.toJson());
      checkSponsor(od);
    });
  });

  unittest.group('obj-schema-SponsorListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSponsorListResponse();
      var od = api.SponsorListResponse.fromJson(o.toJson());
      checkSponsorListResponse(od);
    });
  });

  unittest.group('obj-schema-SponsorSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSponsorSnippet();
      var od = api.SponsorSnippet.fromJson(o.toJson());
      checkSponsorSnippet(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscription();
      var od = api.Subscription.fromJson(o.toJson());
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-SubscriptionContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionContentDetails();
      var od = api.SubscriptionContentDetails.fromJson(o.toJson());
      checkSubscriptionContentDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionListResponse();
      var od = api.SubscriptionListResponse.fromJson(o.toJson());
      checkSubscriptionListResponse(od);
    });
  });

  unittest.group('obj-schema-SubscriptionSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionSnippet();
      var od = api.SubscriptionSnippet.fromJson(o.toJson());
      checkSubscriptionSnippet(od);
    });
  });

  unittest.group('obj-schema-SubscriptionSubscriberSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionSubscriberSnippet();
      var od = api.SubscriptionSubscriberSnippet.fromJson(o.toJson());
      checkSubscriptionSubscriberSnippet(od);
    });
  });

  unittest.group('obj-schema-SuperChatEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuperChatEvent();
      var od = api.SuperChatEvent.fromJson(o.toJson());
      checkSuperChatEvent(od);
    });
  });

  unittest.group('obj-schema-SuperChatEventListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuperChatEventListResponse();
      var od = api.SuperChatEventListResponse.fromJson(o.toJson());
      checkSuperChatEventListResponse(od);
    });
  });

  unittest.group('obj-schema-SuperChatEventSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuperChatEventSnippet();
      var od = api.SuperChatEventSnippet.fromJson(o.toJson());
      checkSuperChatEventSnippet(od);
    });
  });

  unittest.group('obj-schema-SuperStickerMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuperStickerMetadata();
      var od = api.SuperStickerMetadata.fromJson(o.toJson());
      checkSuperStickerMetadata(od);
    });
  });

  unittest.group('obj-schema-TestItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestItem();
      var od = api.TestItem.fromJson(o.toJson());
      checkTestItem(od);
    });
  });

  unittest.group('obj-schema-TestItemTestItemSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestItemTestItemSnippet();
      var od = api.TestItemTestItemSnippet.fromJson(o.toJson());
      checkTestItemTestItemSnippet(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyLink();
      var od = api.ThirdPartyLink.fromJson(o.toJson());
      checkThirdPartyLink(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLinkSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyLinkSnippet();
      var od = api.ThirdPartyLinkSnippet.fromJson(o.toJson());
      checkThirdPartyLinkSnippet(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyLinkStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyLinkStatus();
      var od = api.ThirdPartyLinkStatus.fromJson(o.toJson());
      checkThirdPartyLinkStatus(od);
    });
  });

  unittest.group('obj-schema-Thumbnail', () {
    unittest.test('to-json--from-json', () {
      var o = buildThumbnail();
      var od = api.Thumbnail.fromJson(o.toJson());
      checkThumbnail(od);
    });
  });

  unittest.group('obj-schema-ThumbnailDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildThumbnailDetails();
      var od = api.ThumbnailDetails.fromJson(o.toJson());
      checkThumbnailDetails(od);
    });
  });

  unittest.group('obj-schema-ThumbnailSetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildThumbnailSetResponse();
      var od = api.ThumbnailSetResponse.fromJson(o.toJson());
      checkThumbnailSetResponse(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () {
      var o = buildTokenPagination();
      var od = api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-Video', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideo();
      var od = api.Video.fromJson(o.toJson());
      checkVideo(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAbuseReport();
      var od = api.VideoAbuseReport.fromJson(o.toJson());
      checkVideoAbuseReport(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAbuseReportReason();
      var od = api.VideoAbuseReportReason.fromJson(o.toJson());
      checkVideoAbuseReportReason(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReasonListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAbuseReportReasonListResponse();
      var od = api.VideoAbuseReportReasonListResponse.fromJson(o.toJson());
      checkVideoAbuseReportReasonListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportReasonSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAbuseReportReasonSnippet();
      var od = api.VideoAbuseReportReasonSnippet.fromJson(o.toJson());
      checkVideoAbuseReportReasonSnippet(od);
    });
  });

  unittest.group('obj-schema-VideoAbuseReportSecondaryReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAbuseReportSecondaryReason();
      var od = api.VideoAbuseReportSecondaryReason.fromJson(o.toJson());
      checkVideoAbuseReportSecondaryReason(od);
    });
  });

  unittest.group('obj-schema-VideoAgeGating', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoAgeGating();
      var od = api.VideoAgeGating.fromJson(o.toJson());
      checkVideoAgeGating(od);
    });
  });

  unittest.group('obj-schema-VideoCategory', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoCategory();
      var od = api.VideoCategory.fromJson(o.toJson());
      checkVideoCategory(od);
    });
  });

  unittest.group('obj-schema-VideoCategoryListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoCategoryListResponse();
      var od = api.VideoCategoryListResponse.fromJson(o.toJson());
      checkVideoCategoryListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoCategorySnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoCategorySnippet();
      var od = api.VideoCategorySnippet.fromJson(o.toJson());
      checkVideoCategorySnippet(od);
    });
  });

  unittest.group('obj-schema-VideoContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoContentDetails();
      var od = api.VideoContentDetails.fromJson(o.toJson());
      checkVideoContentDetails(od);
    });
  });

  unittest.group('obj-schema-VideoContentDetailsRegionRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoContentDetailsRegionRestriction();
      var od = api.VideoContentDetailsRegionRestriction.fromJson(o.toJson());
      checkVideoContentDetailsRegionRestriction(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoFileDetails();
      var od = api.VideoFileDetails.fromJson(o.toJson());
      checkVideoFileDetails(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetailsAudioStream', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoFileDetailsAudioStream();
      var od = api.VideoFileDetailsAudioStream.fromJson(o.toJson());
      checkVideoFileDetailsAudioStream(od);
    });
  });

  unittest.group('obj-schema-VideoFileDetailsVideoStream', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoFileDetailsVideoStream();
      var od = api.VideoFileDetailsVideoStream.fromJson(o.toJson());
      checkVideoFileDetailsVideoStream(od);
    });
  });

  unittest.group('obj-schema-VideoListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoListResponse();
      var od = api.VideoListResponse.fromJson(o.toJson());
      checkVideoListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoLiveStreamingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoLiveStreamingDetails();
      var od = api.VideoLiveStreamingDetails.fromJson(o.toJson());
      checkVideoLiveStreamingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoLocalization', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoLocalization();
      var od = api.VideoLocalization.fromJson(o.toJson());
      checkVideoLocalization(od);
    });
  });

  unittest.group('obj-schema-VideoMonetizationDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoMonetizationDetails();
      var od = api.VideoMonetizationDetails.fromJson(o.toJson());
      checkVideoMonetizationDetails(od);
    });
  });

  unittest.group('obj-schema-VideoPlayer', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoPlayer();
      var od = api.VideoPlayer.fromJson(o.toJson());
      checkVideoPlayer(od);
    });
  });

  unittest.group('obj-schema-VideoProcessingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoProcessingDetails();
      var od = api.VideoProcessingDetails.fromJson(o.toJson());
      checkVideoProcessingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoProcessingDetailsProcessingProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoProcessingDetailsProcessingProgress();
      var od =
          api.VideoProcessingDetailsProcessingProgress.fromJson(o.toJson());
      checkVideoProcessingDetailsProcessingProgress(od);
    });
  });

  unittest.group('obj-schema-VideoProjectDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoProjectDetails();
      var od = api.VideoProjectDetails.fromJson(o.toJson());
      checkVideoProjectDetails(od);
    });
  });

  unittest.group('obj-schema-VideoRating', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoRating();
      var od = api.VideoRating.fromJson(o.toJson());
      checkVideoRating(od);
    });
  });

  unittest.group('obj-schema-VideoRatingListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoRatingListResponse();
      var od = api.VideoRatingListResponse.fromJson(o.toJson());
      checkVideoRatingListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoRecordingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoRecordingDetails();
      var od = api.VideoRecordingDetails.fromJson(o.toJson());
      checkVideoRecordingDetails(od);
    });
  });

  unittest.group('obj-schema-VideoSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoSnippet();
      var od = api.VideoSnippet.fromJson(o.toJson());
      checkVideoSnippet(od);
    });
  });

  unittest.group('obj-schema-VideoStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoStatistics();
      var od = api.VideoStatistics.fromJson(o.toJson());
      checkVideoStatistics(od);
    });
  });

  unittest.group('obj-schema-VideoStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoStatus();
      var od = api.VideoStatus.fromJson(o.toJson());
      checkVideoStatus(od);
    });
  });

  unittest.group('obj-schema-VideoSuggestions', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoSuggestions();
      var od = api.VideoSuggestions.fromJson(o.toJson());
      checkVideoSuggestions(od);
    });
  });

  unittest.group('obj-schema-VideoSuggestionsTagSuggestion', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoSuggestionsTagSuggestion();
      var od = api.VideoSuggestionsTagSuggestion.fromJson(o.toJson());
      checkVideoSuggestionsTagSuggestion(od);
    });
  });

  unittest.group('obj-schema-VideoTopicDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoTopicDetails();
      var od = api.VideoTopicDetails.fromJson(o.toJson());
      checkVideoTopicDetails(od);
    });
  });

  unittest.group('obj-schema-WatchSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildWatchSettings();
      var od = api.WatchSettings.fromJson(o.toJson());
      checkWatchSettings(od);
    });
  });

  unittest.group('resource-AbuseReportsResourceApi', () {
    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AbuseReportsResourceApi res = api.YoutubeApi(mock).abuseReports;
      var arg_request = buildAbuseReport();
      var arg_part = buildUnnamed2398();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AbuseReport.fromJson(json);
        checkAbuseReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("youtube/v3/abuseReports"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAbuseReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAbuseReport(response);
      })));
    });
  });

  unittest.group('resource-ActivitiesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ActivitiesResourceApi res = api.YoutubeApi(mock).activities;
      var arg_part = buildUnnamed2399();
      var arg_publishedAfter = 'foo';
      var arg_mine = true;
      var arg_channelId = 'foo';
      var arg_maxResults = 42;
      var arg_publishedBefore = 'foo';
      var arg_regionCode = 'foo';
      var arg_home = true;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("youtube/v3/activities"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["publishedAfter"].first,
            unittest.equals(arg_publishedAfter));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["publishedBefore"].first,
            unittest.equals(arg_publishedBefore));
        unittest.expect(
            queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["home"].first, unittest.equals("$arg_home"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildActivityListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              publishedAfter: arg_publishedAfter,
              mine: arg_mine,
              channelId: arg_channelId,
              maxResults: arg_maxResults,
              publishedBefore: arg_publishedBefore,
              regionCode: arg_regionCode,
              home: arg_home,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkActivityListResponse(response);
      })));
    });
  });

  unittest.group('resource-CaptionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CaptionsResourceApi res = api.YoutubeApi(mock).captions;
      var arg_id = 'foo';
      var arg_onBehalfOf = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/captions"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(
            queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOf: arg_onBehalfOf,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--download', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.CaptionsResourceApi res = api.YoutubeApi(mock).captions;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOf = 'foo';
      var arg_tlang = 'foo';
      var arg_tfmt = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("youtube/v3/captions/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["tlang"].first, unittest.equals(arg_tlang));
        unittest.expect(queryMap["tfmt"].first, unittest.equals(arg_tfmt));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .download(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOf: arg_onBehalfOf,
              tlang: arg_tlang,
              tfmt: arg_tfmt,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.CaptionsResourceApi res = api.YoutubeApi(mock).captions;
      var arg_request = buildCaption();
      var arg_part = buildUnnamed2400();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOf = 'foo';
      var arg_sync = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Caption.fromJson(json);
        checkCaption(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/captions"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["sync"].first, unittest.equals("$arg_sync"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCaption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOf: arg_onBehalfOf,
              sync: arg_sync,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCaption(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CaptionsResourceApi res = api.YoutubeApi(mock).captions;
      var arg_videoId = 'foo';
      var arg_part = buildUnnamed2401();
      var arg_onBehalfOf = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_id = buildUnnamed2402();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/captions"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCaptionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_videoId, arg_part,
              onBehalfOf: arg_onBehalfOf,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              id: arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCaptionListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.CaptionsResourceApi res = api.YoutubeApi(mock).captions;
      var arg_request = buildCaption();
      var arg_part = buildUnnamed2403();
      var arg_sync = true;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOf = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Caption.fromJson(json);
        checkCaption(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/captions"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["sync"].first, unittest.equals("$arg_sync"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["onBehalfOf"].first, unittest.equals(arg_onBehalfOf));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCaption());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              sync: arg_sync,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOf: arg_onBehalfOf,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCaption(response);
      })));
    });
  });

  unittest.group('resource-ChannelBannersResourceApi', () {
    unittest.test('method--insert', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.ChannelBannersResourceApi res = api.YoutubeApi(mock).channelBanners;
      var arg_request = buildChannelBannerResource();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_channelId = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChannelBannerResource.fromJson(json);
        checkChannelBannerResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("youtube/v3/channelBanners/insert"));
        pathOffset += 32;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannelBannerResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              channelId: arg_channelId,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannelBannerResource(response);
      })));
    });
  });

  unittest.group('resource-ChannelSectionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ChannelSectionsResourceApi res = api.YoutubeApi(mock).channelSections;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/channelSections"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ChannelSectionsResourceApi res = api.YoutubeApi(mock).channelSections;
      var arg_request = buildChannelSection();
      var arg_part = buildUnnamed2404();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChannelSection.fromJson(json);
        checkChannelSection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/channelSections"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannelSection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannelSection(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ChannelSectionsResourceApi res = api.YoutubeApi(mock).channelSections;
      var arg_part = buildUnnamed2405();
      var arg_id = buildUnnamed2406();
      var arg_mine = true;
      var arg_channelId = 'foo';
      var arg_hl = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/channelSections"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannelSectionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              id: arg_id,
              mine: arg_mine,
              channelId: arg_channelId,
              hl: arg_hl,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannelSectionListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ChannelSectionsResourceApi res = api.YoutubeApi(mock).channelSections;
      var arg_request = buildChannelSection();
      var arg_part = buildUnnamed2407();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChannelSection.fromJson(json);
        checkChannelSection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/channelSections"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannelSection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannelSection(response);
      })));
    });
  });

  unittest.group('resource-ChannelsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ChannelsResourceApi res = api.YoutubeApi(mock).channels;
      var arg_part = buildUnnamed2408();
      var arg_id = buildUnnamed2409();
      var arg_categoryId = 'foo';
      var arg_hl = 'foo';
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_forUsername = 'foo';
      var arg_managedByMe = true;
      var arg_pageToken = 'foo';
      var arg_mine = true;
      var arg_mySubscribers = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/channels"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(
            queryMap["categoryId"].first, unittest.equals(arg_categoryId));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["forUsername"].first, unittest.equals(arg_forUsername));
        unittest.expect(
            queryMap["managedByMe"].first, unittest.equals("$arg_managedByMe"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["mySubscribers"].first,
            unittest.equals("$arg_mySubscribers"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannelListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              id: arg_id,
              categoryId: arg_categoryId,
              hl: arg_hl,
              maxResults: arg_maxResults,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              forUsername: arg_forUsername,
              managedByMe: arg_managedByMe,
              pageToken: arg_pageToken,
              mine: arg_mine,
              mySubscribers: arg_mySubscribers,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannelListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ChannelsResourceApi res = api.YoutubeApi(mock).channels;
      var arg_request = buildChannel();
      var arg_part = buildUnnamed2410();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/channels"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response);
      })));
    });
  });

  unittest.group('resource-CommentThreadsResourceApi', () {
    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CommentThreadsResourceApi res = api.YoutubeApi(mock).commentThreads;
      var arg_request = buildCommentThread();
      var arg_part = buildUnnamed2411();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommentThread.fromJson(json);
        checkCommentThread(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/commentThreads"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentThread(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CommentThreadsResourceApi res = api.YoutubeApi(mock).commentThreads;
      var arg_part = buildUnnamed2412();
      var arg_order = 'foo';
      var arg_videoId = 'foo';
      var arg_maxResults = 42;
      var arg_id = buildUnnamed2413();
      var arg_moderationStatus = 'foo';
      var arg_channelId = 'foo';
      var arg_pageToken = 'foo';
      var arg_searchTerms = 'foo';
      var arg_allThreadsRelatedToChannelId = 'foo';
      var arg_textFormat = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/commentThreads"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(
            queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["moderationStatus"].first,
            unittest.equals(arg_moderationStatus));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["searchTerms"].first, unittest.equals(arg_searchTerms));
        unittest.expect(queryMap["allThreadsRelatedToChannelId"].first,
            unittest.equals(arg_allThreadsRelatedToChannelId));
        unittest.expect(
            queryMap["textFormat"].first, unittest.equals(arg_textFormat));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentThreadListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              order: arg_order,
              videoId: arg_videoId,
              maxResults: arg_maxResults,
              id: arg_id,
              moderationStatus: arg_moderationStatus,
              channelId: arg_channelId,
              pageToken: arg_pageToken,
              searchTerms: arg_searchTerms,
              allThreadsRelatedToChannelId: arg_allThreadsRelatedToChannelId,
              textFormat: arg_textFormat,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentThreadListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CommentThreadsResourceApi res = api.YoutubeApi(mock).commentThreads;
      var arg_request = buildCommentThread();
      var arg_part = buildUnnamed2414();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommentThread.fromJson(json);
        checkCommentThread(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/commentThreads"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentThread(response);
      })));
    });
  });

  unittest.group('resource-CommentsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/comments"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_request = buildComment();
      var arg_part = buildUnnamed2415();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/comments"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_part = buildUnnamed2416();
      var arg_id = buildUnnamed2417();
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_textFormat = 'foo';
      var arg_parentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/comments"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["textFormat"].first, unittest.equals(arg_textFormat));
        unittest.expect(
            queryMap["parentId"].first, unittest.equals(arg_parentId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCommentListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              id: arg_id,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              textFormat: arg_textFormat,
              parentId: arg_parentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentListResponse(response);
      })));
    });

    unittest.test('method--markAsSpam', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_id = buildUnnamed2418();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("youtube/v3/comments/markAsSpam"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAsSpam(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--setModerationStatus', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_id = buildUnnamed2419();
      var arg_moderationStatus = 'foo';
      var arg_banAuthor = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 39),
            unittest.equals("youtube/v3/comments/setModerationStatus"));
        pathOffset += 39;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["moderationStatus"].first,
            unittest.equals(arg_moderationStatus));
        unittest.expect(
            queryMap["banAuthor"].first, unittest.equals("$arg_banAuthor"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setModerationStatus(arg_id, arg_moderationStatus,
              banAuthor: arg_banAuthor, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CommentsResourceApi res = api.YoutubeApi(mock).comments;
      var arg_request = buildComment();
      var arg_part = buildUnnamed2420();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/comments"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });
  });

  unittest.group('resource-I18nLanguagesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.I18nLanguagesResourceApi res = api.YoutubeApi(mock).i18nLanguages;
      var arg_part = buildUnnamed2421();
      var arg_hl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/i18nLanguages"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildI18nLanguageListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part, hl: arg_hl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkI18nLanguageListResponse(response);
      })));
    });
  });

  unittest.group('resource-I18nRegionsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.I18nRegionsResourceApi res = api.YoutubeApi(mock).i18nRegions;
      var arg_part = buildUnnamed2422();
      var arg_hl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/i18nRegions"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildI18nRegionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part, hl: arg_hl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkI18nRegionListResponse(response);
      })));
    });
  });

  unittest.group('resource-LiveBroadcastsResourceApi', () {
    unittest.test('method--bind', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = 'foo';
      var arg_part = buildUnnamed2423();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_streamId = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("youtube/v3/liveBroadcasts/bind"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["streamId"].first, unittest.equals(arg_streamId));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bind(arg_id, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              streamId: arg_streamId,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test('method--control', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = 'foo';
      var arg_part = buildUnnamed2424();
      var arg_displaySlate = true;
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_walltime = 'foo';
      var arg_offsetTimeMs = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("youtube/v3/liveBroadcasts/control"));
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["displaySlate"].first,
            unittest.equals("$arg_displaySlate"));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(
            queryMap["walltime"].first, unittest.equals(arg_walltime));
        unittest.expect(
            queryMap["offsetTimeMs"].first, unittest.equals(arg_offsetTimeMs));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .control(arg_id, arg_part,
              displaySlate: arg_displaySlate,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              walltime: arg_walltime,
              offsetTimeMs: arg_offsetTimeMs,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/liveBroadcasts"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_request = buildLiveBroadcast();
      var arg_part = buildUnnamed2425();
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveBroadcast.fromJson(json);
        checkLiveBroadcast(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/liveBroadcasts"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_part = buildUnnamed2426();
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_broadcastType = 'foo';
      var arg_broadcastStatus = 'foo';
      var arg_pageToken = 'foo';
      var arg_mine = true;
      var arg_id = buildUnnamed2427();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/liveBroadcasts"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["broadcastType"].first,
            unittest.equals(arg_broadcastType));
        unittest.expect(queryMap["broadcastStatus"].first,
            unittest.equals(arg_broadcastStatus));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcastListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              maxResults: arg_maxResults,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              broadcastType: arg_broadcastType,
              broadcastStatus: arg_broadcastStatus,
              pageToken: arg_pageToken,
              mine: arg_mine,
              id: arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcastListResponse(response);
      })));
    });

    unittest.test('method--transition', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_id = 'foo';
      var arg_broadcastStatus = 'foo';
      var arg_part = buildUnnamed2428();
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 36),
            unittest.equals("youtube/v3/liveBroadcasts/transition"));
        pathOffset += 36;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["broadcastStatus"].first,
            unittest.equals(arg_broadcastStatus));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .transition(arg_id, arg_broadcastStatus, arg_part,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcast(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.LiveBroadcastsResourceApi res = api.YoutubeApi(mock).liveBroadcasts;
      var arg_request = buildLiveBroadcast();
      var arg_part = buildUnnamed2429();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveBroadcast.fromJson(json);
        checkLiveBroadcast(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/liveBroadcasts"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveBroadcast());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveBroadcast(response);
      })));
    });
  });

  unittest.group('resource-LiveChatBansResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.LiveChatBansResourceApi res = api.YoutubeApi(mock).liveChatBans;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/liveChat/bans"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LiveChatBansResourceApi res = api.YoutubeApi(mock).liveChatBans;
      var arg_request = buildLiveChatBan();
      var arg_part = buildUnnamed2430();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveChatBan.fromJson(json);
        checkLiveChatBan(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/liveChat/bans"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveChatBan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveChatBan(response);
      })));
    });
  });

  unittest.group('resource-LiveChatMessagesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.LiveChatMessagesResourceApi res =
          api.YoutubeApi(mock).liveChatMessages;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("youtube/v3/liveChat/messages"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LiveChatMessagesResourceApi res =
          api.YoutubeApi(mock).liveChatMessages;
      var arg_request = buildLiveChatMessage();
      var arg_part = buildUnnamed2431();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveChatMessage.fromJson(json);
        checkLiveChatMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("youtube/v3/liveChat/messages"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveChatMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveChatMessage(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LiveChatMessagesResourceApi res =
          api.YoutubeApi(mock).liveChatMessages;
      var arg_liveChatId = 'foo';
      var arg_part = buildUnnamed2432();
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_profileImageSize = 42;
      var arg_hl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("youtube/v3/liveChat/messages"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["liveChatId"].first, unittest.equals(arg_liveChatId));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["profileImageSize"].first),
            unittest.equals(arg_profileImageSize));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveChatMessageListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_liveChatId, arg_part,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              profileImageSize: arg_profileImageSize,
              hl: arg_hl,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveChatMessageListResponse(response);
      })));
    });
  });

  unittest.group('resource-LiveChatModeratorsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.LiveChatModeratorsResourceApi res =
          api.YoutubeApi(mock).liveChatModerators;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("youtube/v3/liveChat/moderators"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LiveChatModeratorsResourceApi res =
          api.YoutubeApi(mock).liveChatModerators;
      var arg_request = buildLiveChatModerator();
      var arg_part = buildUnnamed2433();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveChatModerator.fromJson(json);
        checkLiveChatModerator(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("youtube/v3/liveChat/moderators"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveChatModerator());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveChatModerator(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LiveChatModeratorsResourceApi res =
          api.YoutubeApi(mock).liveChatModerators;
      var arg_liveChatId = 'foo';
      var arg_part = buildUnnamed2434();
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("youtube/v3/liveChat/moderators"));
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["liveChatId"].first, unittest.equals(arg_liveChatId));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveChatModeratorListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_liveChatId, arg_part,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveChatModeratorListResponse(response);
      })));
    });
  });

  unittest.group('resource-LiveStreamsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.LiveStreamsResourceApi res = api.YoutubeApi(mock).liveStreams;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/liveStreams"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LiveStreamsResourceApi res = api.YoutubeApi(mock).liveStreams;
      var arg_request = buildLiveStream();
      var arg_part = buildUnnamed2435();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveStream.fromJson(json);
        checkLiveStream(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/liveStreams"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveStream(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LiveStreamsResourceApi res = api.YoutubeApi(mock).liveStreams;
      var arg_part = buildUnnamed2436();
      var arg_id = buildUnnamed2437();
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_mine = true;
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/liveStreams"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveStreamListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              id: arg_id,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              mine: arg_mine,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveStreamListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.LiveStreamsResourceApi res = api.YoutubeApi(mock).liveStreams;
      var arg_request = buildLiveStream();
      var arg_part = buildUnnamed2438();
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiveStream.fromJson(json);
        checkLiveStream(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/liveStreams"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiveStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiveStream(response);
      })));
    });
  });

  unittest.group('resource-MembersResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.MembersResourceApi res = api.YoutubeApi(mock).members;
      var arg_part = buildUnnamed2439();
      var arg_filterByMemberChannelId = 'foo';
      var arg_pageToken = 'foo';
      var arg_mode = 'foo';
      var arg_maxResults = 42;
      var arg_hasAccessToLevel = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("youtube/v3/members"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["filterByMemberChannelId"].first,
            unittest.equals(arg_filterByMemberChannelId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["mode"].first, unittest.equals(arg_mode));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["hasAccessToLevel"].first,
            unittest.equals(arg_hasAccessToLevel));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMemberListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              filterByMemberChannelId: arg_filterByMemberChannelId,
              pageToken: arg_pageToken,
              mode: arg_mode,
              maxResults: arg_maxResults,
              hasAccessToLevel: arg_hasAccessToLevel,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMemberListResponse(response);
      })));
    });
  });

  unittest.group('resource-MembershipsLevelsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.MembershipsLevelsResourceApi res =
          api.YoutubeApi(mock).membershipsLevels;
      var arg_part = buildUnnamed2440();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("youtube/v3/membershipsLevels"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMembershipsLevelListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembershipsLevelListResponse(response);
      })));
    });
  });

  unittest.group('resource-PlaylistItemsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PlaylistItemsResourceApi res = api.YoutubeApi(mock).playlistItems;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/playlistItems"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PlaylistItemsResourceApi res = api.YoutubeApi(mock).playlistItems;
      var arg_request = buildPlaylistItem();
      var arg_part = buildUnnamed2441();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlaylistItem.fromJson(json);
        checkPlaylistItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/playlistItems"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylistItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylistItem(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlaylistItemsResourceApi res = api.YoutubeApi(mock).playlistItems;
      var arg_part = buildUnnamed2442();
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_playlistId = 'foo';
      var arg_pageToken = 'foo';
      var arg_videoId = 'foo';
      var arg_id = buildUnnamed2443();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/playlistItems"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["playlistId"].first, unittest.equals(arg_playlistId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylistItemListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              maxResults: arg_maxResults,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              playlistId: arg_playlistId,
              pageToken: arg_pageToken,
              videoId: arg_videoId,
              id: arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylistItemListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PlaylistItemsResourceApi res = api.YoutubeApi(mock).playlistItems;
      var arg_request = buildPlaylistItem();
      var arg_part = buildUnnamed2444();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlaylistItem.fromJson(json);
        checkPlaylistItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/playlistItems"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylistItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylistItem(response);
      })));
    });
  });

  unittest.group('resource-PlaylistsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PlaylistsResourceApi res = api.YoutubeApi(mock).playlists;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("youtube/v3/playlists"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PlaylistsResourceApi res = api.YoutubeApi(mock).playlists;
      var arg_request = buildPlaylist();
      var arg_part = buildUnnamed2445();
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Playlist.fromJson(json);
        checkPlaylist(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("youtube/v3/playlists"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylist());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylist(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlaylistsResourceApi res = api.YoutubeApi(mock).playlists;
      var arg_part = buildUnnamed2446();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_maxResults = 42;
      var arg_hl = 'foo';
      var arg_id = buildUnnamed2447();
      var arg_mine = true;
      var arg_channelId = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("youtube/v3/playlists"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylistListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              maxResults: arg_maxResults,
              hl: arg_hl,
              id: arg_id,
              mine: arg_mine,
              channelId: arg_channelId,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylistListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PlaylistsResourceApi res = api.YoutubeApi(mock).playlists;
      var arg_request = buildPlaylist();
      var arg_part = buildUnnamed2448();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Playlist.fromJson(json);
        checkPlaylist(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("youtube/v3/playlists"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlaylist());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlaylist(response);
      })));
    });
  });

  unittest.group('resource-SearchResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SearchResourceApi res = api.YoutubeApi(mock).search;
      var arg_part = buildUnnamed2449();
      var arg_videoType = 'foo';
      var arg_videoDimension = 'foo';
      var arg_forDeveloper = true;
      var arg_videoCategoryId = 'foo';
      var arg_forContentOwner = true;
      var arg_videoLicense = 'foo';
      var arg_regionCode = 'foo';
      var arg_videoSyndicated = 'foo';
      var arg_eventType = 'foo';
      var arg_forMine = true;
      var arg_publishedBefore = 'foo';
      var arg_safeSearch = 'foo';
      var arg_q = 'foo';
      var arg_location = 'foo';
      var arg_relatedToVideoId = 'foo';
      var arg_locationRadius = 'foo';
      var arg_order = 'foo';
      var arg_videoDuration = 'foo';
      var arg_videoDefinition = 'foo';
      var arg_channelType = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_channelId = 'foo';
      var arg_relevanceLanguage = 'foo';
      var arg_publishedAfter = 'foo';
      var arg_type = buildUnnamed2450();
      var arg_videoCaption = 'foo';
      var arg_pageToken = 'foo';
      var arg_topicId = 'foo';
      var arg_maxResults = 42;
      var arg_videoEmbeddable = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("youtube/v3/search"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["videoType"].first, unittest.equals(arg_videoType));
        unittest.expect(queryMap["videoDimension"].first,
            unittest.equals(arg_videoDimension));
        unittest.expect(queryMap["forDeveloper"].first,
            unittest.equals("$arg_forDeveloper"));
        unittest.expect(queryMap["videoCategoryId"].first,
            unittest.equals(arg_videoCategoryId));
        unittest.expect(queryMap["forContentOwner"].first,
            unittest.equals("$arg_forContentOwner"));
        unittest.expect(
            queryMap["videoLicense"].first, unittest.equals(arg_videoLicense));
        unittest.expect(
            queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["videoSyndicated"].first,
            unittest.equals(arg_videoSyndicated));
        unittest.expect(
            queryMap["eventType"].first, unittest.equals(arg_eventType));
        unittest.expect(
            queryMap["forMine"].first, unittest.equals("$arg_forMine"));
        unittest.expect(queryMap["publishedBefore"].first,
            unittest.equals(arg_publishedBefore));
        unittest.expect(
            queryMap["safeSearch"].first, unittest.equals(arg_safeSearch));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["relatedToVideoId"].first,
            unittest.equals(arg_relatedToVideoId));
        unittest.expect(queryMap["locationRadius"].first,
            unittest.equals(arg_locationRadius));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(queryMap["videoDuration"].first,
            unittest.equals(arg_videoDuration));
        unittest.expect(queryMap["videoDefinition"].first,
            unittest.equals(arg_videoDefinition));
        unittest.expect(
            queryMap["channelType"].first, unittest.equals(arg_channelType));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["relevanceLanguage"].first,
            unittest.equals(arg_relevanceLanguage));
        unittest.expect(queryMap["publishedAfter"].first,
            unittest.equals(arg_publishedAfter));
        unittest.expect(queryMap["type"], unittest.equals(arg_type));
        unittest.expect(
            queryMap["videoCaption"].first, unittest.equals(arg_videoCaption));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["topicId"].first, unittest.equals(arg_topicId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["videoEmbeddable"].first,
            unittest.equals(arg_videoEmbeddable));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              videoType: arg_videoType,
              videoDimension: arg_videoDimension,
              forDeveloper: arg_forDeveloper,
              videoCategoryId: arg_videoCategoryId,
              forContentOwner: arg_forContentOwner,
              videoLicense: arg_videoLicense,
              regionCode: arg_regionCode,
              videoSyndicated: arg_videoSyndicated,
              eventType: arg_eventType,
              forMine: arg_forMine,
              publishedBefore: arg_publishedBefore,
              safeSearch: arg_safeSearch,
              q: arg_q,
              location: arg_location,
              relatedToVideoId: arg_relatedToVideoId,
              locationRadius: arg_locationRadius,
              order: arg_order,
              videoDuration: arg_videoDuration,
              videoDefinition: arg_videoDefinition,
              channelType: arg_channelType,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              channelId: arg_channelId,
              relevanceLanguage: arg_relevanceLanguage,
              publishedAfter: arg_publishedAfter,
              type: arg_type,
              videoCaption: arg_videoCaption,
              pageToken: arg_pageToken,
              topicId: arg_topicId,
              maxResults: arg_maxResults,
              videoEmbeddable: arg_videoEmbeddable,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchListResponse(response);
      })));
    });
  });

  unittest.group('resource-SponsorsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SponsorsResourceApi res = api.YoutubeApi(mock).sponsors;
      var arg_part = buildUnnamed2451();
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("youtube/v3/sponsors"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSponsorListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSponsorListResponse(response);
      })));
    });
  });

  unittest.group('resource-SubscriptionsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.SubscriptionsResourceApi res = api.YoutubeApi(mock).subscriptions;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/subscriptions"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.SubscriptionsResourceApi res = api.YoutubeApi(mock).subscriptions;
      var arg_request = buildSubscription();
      var arg_part = buildUnnamed2452();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subscription.fromJson(json);
        checkSubscription(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/subscriptions"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SubscriptionsResourceApi res = api.YoutubeApi(mock).subscriptions;
      var arg_part = buildUnnamed2453();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_mine = true;
      var arg_channelId = 'foo';
      var arg_forChannelId = 'foo';
      var arg_maxResults = 42;
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_order = 'foo';
      var arg_id = buildUnnamed2454();
      var arg_myRecentSubscribers = true;
      var arg_mySubscribers = true;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("youtube/v3/subscriptions"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(
            queryMap["forChannelId"].first, unittest.equals(arg_forChannelId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["myRecentSubscribers"].first,
            unittest.equals("$arg_myRecentSubscribers"));
        unittest.expect(queryMap["mySubscribers"].first,
            unittest.equals("$arg_mySubscribers"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscriptionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              mine: arg_mine,
              channelId: arg_channelId,
              forChannelId: arg_forChannelId,
              maxResults: arg_maxResults,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              order: arg_order,
              id: arg_id,
              myRecentSubscribers: arg_myRecentSubscribers,
              mySubscribers: arg_mySubscribers,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionListResponse(response);
      })));
    });
  });

  unittest.group('resource-SuperChatEventsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SuperChatEventsResourceApi res = api.YoutubeApi(mock).superChatEvents;
      var arg_part = buildUnnamed2455();
      var arg_hl = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/superChatEvents"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSuperChatEventListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              hl: arg_hl,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSuperChatEventListResponse(response);
      })));
    });
  });

  unittest.group('resource-TestsResourceApi', () {
    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.TestsResourceApi res = api.YoutubeApi(mock).tests;
      var arg_request = buildTestItem();
      var arg_part = buildUnnamed2456();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestItem.fromJson(json);
        checkTestItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("youtube/v3/tests"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestItem(response);
      })));
    });
  });

  unittest.group('resource-ThirdPartyLinksResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ThirdPartyLinksResourceApi res = api.YoutubeApi(mock).thirdPartyLinks;
      var arg_linkingToken = 'foo';
      var arg_type = 'foo';
      var arg_part = buildUnnamed2457();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/thirdPartyLinks"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["linkingToken"].first, unittest.equals(arg_linkingToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_linkingToken, arg_type,
              part: arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ThirdPartyLinksResourceApi res = api.YoutubeApi(mock).thirdPartyLinks;
      var arg_request = buildThirdPartyLink();
      var arg_part = buildUnnamed2458();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ThirdPartyLink.fromJson(json);
        checkThirdPartyLink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/thirdPartyLinks"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkThirdPartyLink(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ThirdPartyLinksResourceApi res = api.YoutubeApi(mock).thirdPartyLinks;
      var arg_part = buildUnnamed2459();
      var arg_type = 'foo';
      var arg_linkingToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/thirdPartyLinks"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(
            queryMap["linkingToken"].first, unittest.equals(arg_linkingToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              type: arg_type,
              linkingToken: arg_linkingToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkThirdPartyLink(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ThirdPartyLinksResourceApi res = api.YoutubeApi(mock).thirdPartyLinks;
      var arg_request = buildThirdPartyLink();
      var arg_part = buildUnnamed2460();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ThirdPartyLink.fromJson(json);
        checkThirdPartyLink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/thirdPartyLinks"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildThirdPartyLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkThirdPartyLink(response);
      })));
    });
  });

  unittest.group('resource-ThumbnailsResourceApi', () {
    unittest.test('method--set', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.ThumbnailsResourceApi res = api.YoutubeApi(mock).thumbnails;
      var arg_videoId = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/thumbnails/set"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["videoId"].first, unittest.equals(arg_videoId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildThumbnailSetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_videoId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkThumbnailSetResponse(response);
      })));
    });
  });

  unittest.group('resource-VideoAbuseReportReasonsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.VideoAbuseReportReasonsResourceApi res =
          api.YoutubeApi(mock).videoAbuseReportReasons;
      var arg_part = buildUnnamed2461();
      var arg_hl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 34),
            unittest.equals("youtube/v3/videoAbuseReportReasons"));
        pathOffset += 34;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildVideoAbuseReportReasonListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part, hl: arg_hl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoAbuseReportReasonListResponse(response);
      })));
    });
  });

  unittest.group('resource-VideoCategoriesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.VideoCategoriesResourceApi res = api.YoutubeApi(mock).videoCategories;
      var arg_part = buildUnnamed2462();
      var arg_regionCode = 'foo';
      var arg_id = buildUnnamed2463();
      var arg_hl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("youtube/v3/videoCategories"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVideoCategoryListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              regionCode: arg_regionCode,
              id: arg_id,
              hl: arg_hl,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoCategoryListResponse(response);
      })));
    });
  });

  unittest.group('resource-VideosResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("youtube/v3/videos"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--getRating', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_id = buildUnnamed2464();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("youtube/v3/videos/getRating"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVideoRatingListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRating(arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoRatingListResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_request = buildVideo();
      var arg_part = buildUnnamed2465();
      var arg_autoLevels = true;
      var arg_onBehalfOfContentOwnerChannel = 'foo';
      var arg_stabilize = true;
      var arg_notifySubscribers = true;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Video.fromJson(json);
        checkVideo(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("youtube/v3/videos"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(
            queryMap["autoLevels"].first, unittest.equals("$arg_autoLevels"));
        unittest.expect(queryMap["onBehalfOfContentOwnerChannel"].first,
            unittest.equals(arg_onBehalfOfContentOwnerChannel));
        unittest.expect(
            queryMap["stabilize"].first, unittest.equals("$arg_stabilize"));
        unittest.expect(queryMap["notifySubscribers"].first,
            unittest.equals("$arg_notifySubscribers"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVideo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_part,
              autoLevels: arg_autoLevels,
              onBehalfOfContentOwnerChannel: arg_onBehalfOfContentOwnerChannel,
              stabilize: arg_stabilize,
              notifySubscribers: arg_notifySubscribers,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideo(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_part = buildUnnamed2466();
      var arg_maxWidth = 42;
      var arg_chart = 'foo';
      var arg_maxHeight = 42;
      var arg_myRating = 'foo';
      var arg_regionCode = 'foo';
      var arg_id = buildUnnamed2467();
      var arg_pageToken = 'foo';
      var arg_locale = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_videoCategoryId = 'foo';
      var arg_hl = 'foo';
      var arg_maxResults = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("youtube/v3/videos"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(core.int.parse(queryMap["maxWidth"].first),
            unittest.equals(arg_maxWidth));
        unittest.expect(queryMap["chart"].first, unittest.equals(arg_chart));
        unittest.expect(core.int.parse(queryMap["maxHeight"].first),
            unittest.equals(arg_maxHeight));
        unittest.expect(
            queryMap["myRating"].first, unittest.equals(arg_myRating));
        unittest.expect(
            queryMap["regionCode"].first, unittest.equals(arg_regionCode));
        unittest.expect(queryMap["id"], unittest.equals(arg_id));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["videoCategoryId"].first,
            unittest.equals(arg_videoCategoryId));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVideoListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_part,
              maxWidth: arg_maxWidth,
              chart: arg_chart,
              maxHeight: arg_maxHeight,
              myRating: arg_myRating,
              regionCode: arg_regionCode,
              id: arg_id,
              pageToken: arg_pageToken,
              locale: arg_locale,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              videoCategoryId: arg_videoCategoryId,
              hl: arg_hl,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoListResponse(response);
      })));
    });

    unittest.test('method--rate', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_id = 'foo';
      var arg_rating = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("youtube/v3/videos/rate"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["rating"].first, unittest.equals(arg_rating));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rate(arg_id, arg_rating, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--reportAbuse', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_request = buildVideoAbuseReport();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.VideoAbuseReport.fromJson(json);
        checkVideoAbuseReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("youtube/v3/videos/reportAbuse"));
        pathOffset += 29;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportAbuse(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.VideosResourceApi res = api.YoutubeApi(mock).videos;
      var arg_request = buildVideo();
      var arg_part = buildUnnamed2468();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Video.fromJson(json);
        checkVideo(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("youtube/v3/videos"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["part"], unittest.equals(arg_part));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVideo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_part,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideo(response);
      })));
    });
  });

  unittest.group('resource-WatermarksResourceApi', () {
    unittest.test('method--set', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.WatermarksResourceApi res = api.YoutubeApi(mock).watermarks;
      var arg_request = buildInvideoBranding();
      var arg_channelId = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InvideoBranding.fromJson(json);
        checkInvideoBranding(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("youtube/v3/watermarks/set"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, arg_channelId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--unset', () {
      var mock = HttpServerMock();
      api.WatermarksResourceApi res = api.YoutubeApi(mock).watermarks;
      var arg_channelId = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("youtube/v3/watermarks/unset"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["channelId"].first, unittest.equals(arg_channelId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unset(arg_channelId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });
}
