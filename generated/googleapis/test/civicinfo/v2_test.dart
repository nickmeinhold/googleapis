library googleapis.civicinfo.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/civicinfo/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2601() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed2601(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterAdministrationRegion = 0;
buildAdministrationRegion() {
  var o = new api.AdministrationRegion();
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    o.electionAdministrationBody = buildAdministrativeBody();
    o.id = "foo";
    o.localJurisdiction = buildAdministrationRegion();
    o.name = "foo";
    o.sources = buildUnnamed2601();
  }
  buildCounterAdministrationRegion--;
  return o;
}

checkAdministrationRegion(api.AdministrationRegion o) {
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    checkAdministrativeBody(o.electionAdministrationBody);
    unittest.expect(o.id, unittest.equals('foo'));
    checkAdministrationRegion(o.localJurisdiction);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2601(o.sources);
  }
  buildCounterAdministrationRegion--;
}

buildUnnamed2602() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2602(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2603() {
  var o = new core.List<api.ElectionOfficial>();
  o.add(buildElectionOfficial());
  o.add(buildElectionOfficial());
  return o;
}

checkUnnamed2603(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0]);
  checkElectionOfficial(o[1]);
}

buildUnnamed2604() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdministrativeBody = 0;
buildAdministrativeBody() {
  var o = new api.AdministrativeBody();
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    o.absenteeVotingInfoUrl = "foo";
    o.addressLines = buildUnnamed2602();
    o.ballotInfoUrl = "foo";
    o.correspondenceAddress = buildSimpleAddressType();
    o.electionInfoUrl = "foo";
    o.electionOfficials = buildUnnamed2603();
    o.electionRegistrationConfirmationUrl = "foo";
    o.electionRegistrationUrl = "foo";
    o.electionRulesUrl = "foo";
    o.hoursOfOperation = "foo";
    o.name = "foo";
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed2604();
    o.votingLocationFinderUrl = "foo";
  }
  buildCounterAdministrativeBody--;
  return o;
}

checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(o.absenteeVotingInfoUrl, unittest.equals('foo'));
    checkUnnamed2602(o.addressLines);
    unittest.expect(o.ballotInfoUrl, unittest.equals('foo'));
    checkSimpleAddressType(o.correspondenceAddress);
    unittest.expect(o.electionInfoUrl, unittest.equals('foo'));
    checkUnnamed2603(o.electionOfficials);
    unittest.expect(
        o.electionRegistrationConfirmationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRegistrationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRulesUrl, unittest.equals('foo'));
    unittest.expect(o.hoursOfOperation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkSimpleAddressType(o.physicalAddress);
    checkUnnamed2604(o.voterServices);
    unittest.expect(o.votingLocationFinderUrl, unittest.equals('foo'));
  }
  buildCounterAdministrativeBody--;
}

buildUnnamed2605() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed2605(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterCandidate = 0;
buildCandidate() {
  var o = new api.Candidate();
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    o.candidateUrl = "foo";
    o.channels = buildUnnamed2605();
    o.email = "foo";
    o.name = "foo";
    o.orderOnBallot = "foo";
    o.party = "foo";
    o.phone = "foo";
    o.photoUrl = "foo";
  }
  buildCounterCandidate--;
  return o;
}

checkCandidate(api.Candidate o) {
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    unittest.expect(o.candidateUrl, unittest.equals('foo'));
    checkUnnamed2605(o.channels);
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orderOnBallot, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    unittest.expect(o.phone, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
  }
  buildCounterCandidate--;
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

buildUnnamed2606() {
  var o = new core.List<api.Candidate>();
  o.add(buildCandidate());
  o.add(buildCandidate());
  return o;
}

checkUnnamed2606(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0]);
  checkCandidate(o[1]);
}

buildUnnamed2607() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2608() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2608(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2609() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2609(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2610() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed2610(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterContest = 0;
buildContest() {
  var o = new api.Contest();
  buildCounterContest++;
  if (buildCounterContest < 3) {
    o.ballotPlacement = "foo";
    o.candidates = buildUnnamed2606();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = "foo";
    o.id = "foo";
    o.level = buildUnnamed2607();
    o.numberElected = "foo";
    o.numberVotingFor = "foo";
    o.office = "foo";
    o.primaryParty = "foo";
    o.referendumBallotResponses = buildUnnamed2608();
    o.referendumBrief = "foo";
    o.referendumConStatement = "foo";
    o.referendumEffectOfAbstain = "foo";
    o.referendumPassageThreshold = "foo";
    o.referendumProStatement = "foo";
    o.referendumSubtitle = "foo";
    o.referendumText = "foo";
    o.referendumTitle = "foo";
    o.referendumUrl = "foo";
    o.roles = buildUnnamed2609();
    o.sources = buildUnnamed2610();
    o.special = "foo";
    o.type = "foo";
  }
  buildCounterContest--;
  return o;
}

checkContest(api.Contest o) {
  buildCounterContest++;
  if (buildCounterContest < 3) {
    unittest.expect(o.ballotPlacement, unittest.equals('foo'));
    checkUnnamed2606(o.candidates);
    checkElectoralDistrict(o.district);
    unittest.expect(o.electorateSpecifications, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2607(o.level);
    unittest.expect(o.numberElected, unittest.equals('foo'));
    unittest.expect(o.numberVotingFor, unittest.equals('foo'));
    unittest.expect(o.office, unittest.equals('foo'));
    unittest.expect(o.primaryParty, unittest.equals('foo'));
    checkUnnamed2608(o.referendumBallotResponses);
    unittest.expect(o.referendumBrief, unittest.equals('foo'));
    unittest.expect(o.referendumConStatement, unittest.equals('foo'));
    unittest.expect(o.referendumEffectOfAbstain, unittest.equals('foo'));
    unittest.expect(o.referendumPassageThreshold, unittest.equals('foo'));
    unittest.expect(o.referendumProStatement, unittest.equals('foo'));
    unittest.expect(o.referendumSubtitle, unittest.equals('foo'));
    unittest.expect(o.referendumText, unittest.equals('foo'));
    unittest.expect(o.referendumTitle, unittest.equals('foo'));
    unittest.expect(o.referendumUrl, unittest.equals('foo'));
    checkUnnamed2609(o.roles);
    checkUnnamed2610(o.sources);
    unittest.expect(o.special, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContest--;
}

core.int buildCounterContextParams = 0;
buildContextParams() {
  var o = new api.ContextParams();
  buildCounterContextParams++;
  if (buildCounterContextParams < 3) {
    o.clientProfile = "foo";
  }
  buildCounterContextParams--;
  return o;
}

checkContextParams(api.ContextParams o) {
  buildCounterContextParams++;
  if (buildCounterContextParams < 3) {
    unittest.expect(o.clientProfile, unittest.equals('foo'));
  }
  buildCounterContextParams--;
}

core.int buildCounterDivisionRepresentativeInfoRequest = 0;
buildDivisionRepresentativeInfoRequest() {
  var o = new api.DivisionRepresentativeInfoRequest();
  buildCounterDivisionRepresentativeInfoRequest++;
  if (buildCounterDivisionRepresentativeInfoRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterDivisionRepresentativeInfoRequest--;
  return o;
}

checkDivisionRepresentativeInfoRequest(
    api.DivisionRepresentativeInfoRequest o) {
  buildCounterDivisionRepresentativeInfoRequest++;
  if (buildCounterDivisionRepresentativeInfoRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterDivisionRepresentativeInfoRequest--;
}

core.int buildCounterDivisionSearchRequest = 0;
buildDivisionSearchRequest() {
  var o = new api.DivisionSearchRequest();
  buildCounterDivisionSearchRequest++;
  if (buildCounterDivisionSearchRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterDivisionSearchRequest--;
  return o;
}

checkDivisionSearchRequest(api.DivisionSearchRequest o) {
  buildCounterDivisionSearchRequest++;
  if (buildCounterDivisionSearchRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterDivisionSearchRequest--;
}

buildUnnamed2611() {
  var o = new core.List<api.DivisionSearchResult>();
  o.add(buildDivisionSearchResult());
  o.add(buildDivisionSearchResult());
  return o;
}

checkUnnamed2611(core.List<api.DivisionSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDivisionSearchResult(o[0]);
  checkDivisionSearchResult(o[1]);
}

core.int buildCounterDivisionSearchResponse = 0;
buildDivisionSearchResponse() {
  var o = new api.DivisionSearchResponse();
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    o.kind = "foo";
    o.results = buildUnnamed2611();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2611(o.results);
  }
  buildCounterDivisionSearchResponse--;
}

buildUnnamed2612() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2612(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDivisionSearchResult = 0;
buildDivisionSearchResult() {
  var o = new api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed2612();
    o.name = "foo";
    o.ocdId = "foo";
  }
  buildCounterDivisionSearchResult--;
  return o;
}

checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed2612(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ocdId, unittest.equals('foo'));
  }
  buildCounterDivisionSearchResult--;
}

core.int buildCounterElection = 0;
buildElection() {
  var o = new api.Election();
  buildCounterElection++;
  if (buildCounterElection < 3) {
    o.electionDay = "foo";
    o.id = "foo";
    o.name = "foo";
    o.ocdDivisionId = "foo";
  }
  buildCounterElection--;
  return o;
}

checkElection(api.Election o) {
  buildCounterElection++;
  if (buildCounterElection < 3) {
    unittest.expect(o.electionDay, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ocdDivisionId, unittest.equals('foo'));
  }
  buildCounterElection--;
}

core.int buildCounterElectionOfficial = 0;
buildElectionOfficial() {
  var o = new api.ElectionOfficial();
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    o.emailAddress = "foo";
    o.faxNumber = "foo";
    o.name = "foo";
    o.officePhoneNumber = "foo";
    o.title = "foo";
  }
  buildCounterElectionOfficial--;
  return o;
}

checkElectionOfficial(api.ElectionOfficial o) {
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.faxNumber, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.officePhoneNumber, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterElectionOfficial--;
}

core.int buildCounterElectionsQueryRequest = 0;
buildElectionsQueryRequest() {
  var o = new api.ElectionsQueryRequest();
  buildCounterElectionsQueryRequest++;
  if (buildCounterElectionsQueryRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterElectionsQueryRequest--;
  return o;
}

checkElectionsQueryRequest(api.ElectionsQueryRequest o) {
  buildCounterElectionsQueryRequest++;
  if (buildCounterElectionsQueryRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterElectionsQueryRequest--;
}

buildUnnamed2613() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed2613(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

core.int buildCounterElectionsQueryResponse = 0;
buildElectionsQueryResponse() {
  var o = new api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed2613();
    o.kind = "foo";
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed2613(o.elections);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterElectionsQueryResponse--;
}

core.int buildCounterElectoralDistrict = 0;
buildElectoralDistrict() {
  var o = new api.ElectoralDistrict();
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    o.id = "foo";
    o.kgForeignKey = "foo";
    o.name = "foo";
    o.scope = "foo";
  }
  buildCounterElectoralDistrict--;
  return o;
}

checkElectoralDistrict(api.ElectoralDistrict o) {
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kgForeignKey, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterElectoralDistrict--;
}

buildUnnamed2614() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2614(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2615() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2615(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGeographicDivision = 0;
buildGeographicDivision() {
  var o = new api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed2614();
    o.name = "foo";
    o.officeIndices = buildUnnamed2615();
  }
  buildCounterGeographicDivision--;
  return o;
}

checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed2614(o.alsoKnownAs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2615(o.officeIndices);
  }
  buildCounterGeographicDivision--;
}

buildUnnamed2616() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2616(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2617() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2617(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed2618() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2619() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed2619(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterOffice = 0;
buildOffice() {
  var o = new api.Office();
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    o.divisionId = "foo";
    o.levels = buildUnnamed2616();
    o.name = "foo";
    o.officialIndices = buildUnnamed2617();
    o.roles = buildUnnamed2618();
    o.sources = buildUnnamed2619();
  }
  buildCounterOffice--;
  return o;
}

checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(o.divisionId, unittest.equals('foo'));
    checkUnnamed2616(o.levels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2617(o.officialIndices);
    checkUnnamed2618(o.roles);
    checkUnnamed2619(o.sources);
  }
  buildCounterOffice--;
}

buildUnnamed2620() {
  var o = new core.List<api.SimpleAddressType>();
  o.add(buildSimpleAddressType());
  o.add(buildSimpleAddressType());
  return o;
}

checkUnnamed2620(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0]);
  checkSimpleAddressType(o[1]);
}

buildUnnamed2621() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed2621(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

buildUnnamed2622() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2623() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2624() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2624(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOfficial = 0;
buildOfficial() {
  var o = new api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed2620();
    o.channels = buildUnnamed2621();
    o.emails = buildUnnamed2622();
    o.name = "foo";
    o.party = "foo";
    o.phones = buildUnnamed2623();
    o.photoUrl = "foo";
    o.urls = buildUnnamed2624();
  }
  buildCounterOfficial--;
  return o;
}

checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed2620(o.address);
    checkUnnamed2621(o.channels);
    checkUnnamed2622(o.emails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    checkUnnamed2623(o.phones);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed2624(o.urls);
  }
  buildCounterOfficial--;
}

buildUnnamed2625() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed2625(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterPollingLocation = 0;
buildPollingLocation() {
  var o = new api.PollingLocation();
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    o.address = buildSimpleAddressType();
    o.endDate = "foo";
    o.id = "foo";
    o.name = "foo";
    o.notes = "foo";
    o.pollingHours = "foo";
    o.sources = buildUnnamed2625();
    o.startDate = "foo";
    o.voterServices = "foo";
  }
  buildCounterPollingLocation--;
  return o;
}

checkPollingLocation(api.PollingLocation o) {
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    checkSimpleAddressType(o.address);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.pollingHours, unittest.equals('foo'));
    checkUnnamed2625(o.sources);
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.voterServices, unittest.equals('foo'));
  }
  buildCounterPollingLocation--;
}

buildUnnamed2626() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2626(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
buildPostalAddress() {
  var o = new api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed2626();
    o.administrativeAreaName = "foo";
    o.countryName = "foo";
    o.countryNameCode = "foo";
    o.dependentLocalityName = "foo";
    o.dependentThoroughfareLeadingType = "foo";
    o.dependentThoroughfareName = "foo";
    o.dependentThoroughfarePostDirection = "foo";
    o.dependentThoroughfarePreDirection = "foo";
    o.dependentThoroughfareTrailingType = "foo";
    o.dependentThoroughfaresConnector = "foo";
    o.dependentThoroughfaresIndicator = "foo";
    o.dependentThoroughfaresType = "foo";
    o.firmName = "foo";
    o.isDisputed = true;
    o.languageCode = "foo";
    o.localityName = "foo";
    o.postBoxNumber = "foo";
    o.postalCodeNumber = "foo";
    o.postalCodeNumberExtension = "foo";
    o.premiseName = "foo";
    o.recipientName = "foo";
    o.sortingCode = "foo";
    o.subAdministrativeAreaName = "foo";
    o.subPremiseName = "foo";
    o.thoroughfareLeadingType = "foo";
    o.thoroughfareName = "foo";
    o.thoroughfareNumber = "foo";
    o.thoroughfarePostDirection = "foo";
    o.thoroughfarePreDirection = "foo";
    o.thoroughfareTrailingType = "foo";
  }
  buildCounterPostalAddress--;
  return o;
}

checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed2626(o.addressLines);
    unittest.expect(o.administrativeAreaName, unittest.equals('foo'));
    unittest.expect(o.countryName, unittest.equals('foo'));
    unittest.expect(o.countryNameCode, unittest.equals('foo'));
    unittest.expect(o.dependentLocalityName, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfareLeadingType, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfareName, unittest.equals('foo'));
    unittest.expect(
        o.dependentThoroughfarePostDirection, unittest.equals('foo'));
    unittest.expect(
        o.dependentThoroughfarePreDirection, unittest.equals('foo'));
    unittest.expect(
        o.dependentThoroughfareTrailingType, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfaresConnector, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfaresIndicator, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfaresType, unittest.equals('foo'));
    unittest.expect(o.firmName, unittest.equals('foo'));
    unittest.expect(o.isDisputed, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.localityName, unittest.equals('foo'));
    unittest.expect(o.postBoxNumber, unittest.equals('foo'));
    unittest.expect(o.postalCodeNumber, unittest.equals('foo'));
    unittest.expect(o.postalCodeNumberExtension, unittest.equals('foo'));
    unittest.expect(o.premiseName, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.subAdministrativeAreaName, unittest.equals('foo'));
    unittest.expect(o.subPremiseName, unittest.equals('foo'));
    unittest.expect(o.thoroughfareLeadingType, unittest.equals('foo'));
    unittest.expect(o.thoroughfareName, unittest.equals('foo'));
    unittest.expect(o.thoroughfareNumber, unittest.equals('foo'));
    unittest.expect(o.thoroughfarePostDirection, unittest.equals('foo'));
    unittest.expect(o.thoroughfarePreDirection, unittest.equals('foo'));
    unittest.expect(o.thoroughfareTrailingType, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

buildUnnamed2627() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed2627(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed2628() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed2628(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed2629() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed2629(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoData = 0;
buildRepresentativeInfoData() {
  var o = new api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed2627();
    o.offices = buildUnnamed2628();
    o.officials = buildUnnamed2629();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed2627(o.divisions);
    checkUnnamed2628(o.offices);
    checkUnnamed2629(o.officials);
  }
  buildCounterRepresentativeInfoData--;
}

core.int buildCounterRepresentativeInfoRequest = 0;
buildRepresentativeInfoRequest() {
  var o = new api.RepresentativeInfoRequest();
  buildCounterRepresentativeInfoRequest++;
  if (buildCounterRepresentativeInfoRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterRepresentativeInfoRequest--;
  return o;
}

checkRepresentativeInfoRequest(api.RepresentativeInfoRequest o) {
  buildCounterRepresentativeInfoRequest++;
  if (buildCounterRepresentativeInfoRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterRepresentativeInfoRequest--;
}

buildUnnamed2630() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed2630(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed2631() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed2631(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed2632() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed2632(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoResponse = 0;
buildRepresentativeInfoResponse() {
  var o = new api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed2630();
    o.kind = "foo";
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed2631();
    o.officials = buildUnnamed2632();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed2630(o.divisions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed2631(o.offices);
    checkUnnamed2632(o.officials);
  }
  buildCounterRepresentativeInfoResponse--;
}

core.int buildCounterSimpleAddressType = 0;
buildSimpleAddressType() {
  var o = new api.SimpleAddressType();
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    o.city = "foo";
    o.line1 = "foo";
    o.line2 = "foo";
    o.line3 = "foo";
    o.locationName = "foo";
    o.state = "foo";
    o.zip = "foo";
  }
  buildCounterSimpleAddressType--;
  return o;
}

checkSimpleAddressType(api.SimpleAddressType o) {
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.line1, unittest.equals('foo'));
    unittest.expect(o.line2, unittest.equals('foo'));
    unittest.expect(o.line3, unittest.equals('foo'));
    unittest.expect(o.locationName, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.zip, unittest.equals('foo'));
  }
  buildCounterSimpleAddressType--;
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.name = "foo";
    o.official = true;
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.official, unittest.isTrue);
  }
  buildCounterSource--;
}

core.int buildCounterVoterInfoRequest = 0;
buildVoterInfoRequest() {
  var o = new api.VoterInfoRequest();
  buildCounterVoterInfoRequest++;
  if (buildCounterVoterInfoRequest < 3) {
    o.contextParams = buildContextParams();
    o.voterInfoSegmentResult = buildVoterInfoSegmentResult();
  }
  buildCounterVoterInfoRequest--;
  return o;
}

checkVoterInfoRequest(api.VoterInfoRequest o) {
  buildCounterVoterInfoRequest++;
  if (buildCounterVoterInfoRequest < 3) {
    checkContextParams(o.contextParams);
    checkVoterInfoSegmentResult(o.voterInfoSegmentResult);
  }
  buildCounterVoterInfoRequest--;
}

buildUnnamed2633() {
  var o = new core.List<api.Contest>();
  o.add(buildContest());
  o.add(buildContest());
  return o;
}

checkUnnamed2633(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0]);
  checkContest(o[1]);
}

buildUnnamed2634() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed2634(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed2635() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed2635(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed2636() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed2636(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

buildUnnamed2637() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed2637(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed2638() {
  var o = new core.List<api.AdministrationRegion>();
  o.add(buildAdministrationRegion());
  o.add(buildAdministrationRegion());
  return o;
}

checkUnnamed2638(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0]);
  checkAdministrationRegion(o[1]);
}

core.int buildCounterVoterInfoResponse = 0;
buildVoterInfoResponse() {
  var o = new api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed2633();
    o.dropOffLocations = buildUnnamed2634();
    o.earlyVoteSites = buildUnnamed2635();
    o.election = buildElection();
    o.kind = "foo";
    o.mailOnly = true;
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed2636();
    o.pollingLocations = buildUnnamed2637();
    o.precinctId = "foo";
    o.state = buildUnnamed2638();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed2633(o.contests);
    checkUnnamed2634(o.dropOffLocations);
    checkUnnamed2635(o.earlyVoteSites);
    checkElection(o.election);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mailOnly, unittest.isTrue);
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed2636(o.otherElections);
    checkUnnamed2637(o.pollingLocations);
    unittest.expect(o.precinctId, unittest.equals('foo'));
    checkUnnamed2638(o.state);
  }
  buildCounterVoterInfoResponse--;
}

core.int buildCounterVoterInfoSegmentResult = 0;
buildVoterInfoSegmentResult() {
  var o = new api.VoterInfoSegmentResult();
  buildCounterVoterInfoSegmentResult++;
  if (buildCounterVoterInfoSegmentResult < 3) {
    o.generatedMillis = "foo";
    o.postalAddress = buildPostalAddress();
    o.request = buildVoterInfoRequest();
    o.response = buildVoterInfoResponse();
  }
  buildCounterVoterInfoSegmentResult--;
  return o;
}

checkVoterInfoSegmentResult(api.VoterInfoSegmentResult o) {
  buildCounterVoterInfoSegmentResult++;
  if (buildCounterVoterInfoSegmentResult < 3) {
    unittest.expect(o.generatedMillis, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    checkVoterInfoRequest(o.request);
    checkVoterInfoResponse(o.response);
  }
  buildCounterVoterInfoSegmentResult--;
}

buildUnnamed2639() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2639(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2640() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2640(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2641() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2641(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2642() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2642(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AdministrationRegion", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrationRegion();
      var od = new api.AdministrationRegion.fromJson(o.toJson());
      checkAdministrationRegion(od);
    });
  });

  unittest.group("obj-schema-AdministrativeBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrativeBody();
      var od = new api.AdministrativeBody.fromJson(o.toJson());
      checkAdministrativeBody(od);
    });
  });

  unittest.group("obj-schema-Candidate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandidate();
      var od = new api.Candidate.fromJson(o.toJson());
      checkCandidate(od);
    });
  });

  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group("obj-schema-Contest", () {
    unittest.test("to-json--from-json", () {
      var o = buildContest();
      var od = new api.Contest.fromJson(o.toJson());
      checkContest(od);
    });
  });

  unittest.group("obj-schema-ContextParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildContextParams();
      var od = new api.ContextParams.fromJson(o.toJson());
      checkContextParams(od);
    });
  });

  unittest.group("obj-schema-DivisionRepresentativeInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionRepresentativeInfoRequest();
      var od = new api.DivisionRepresentativeInfoRequest.fromJson(o.toJson());
      checkDivisionRepresentativeInfoRequest(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchRequest();
      var od = new api.DivisionSearchRequest.fromJson(o.toJson());
      checkDivisionSearchRequest(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchResponse();
      var od = new api.DivisionSearchResponse.fromJson(o.toJson());
      checkDivisionSearchResponse(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchResult();
      var od = new api.DivisionSearchResult.fromJson(o.toJson());
      checkDivisionSearchResult(od);
    });
  });

  unittest.group("obj-schema-Election", () {
    unittest.test("to-json--from-json", () {
      var o = buildElection();
      var od = new api.Election.fromJson(o.toJson());
      checkElection(od);
    });
  });

  unittest.group("obj-schema-ElectionOfficial", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionOfficial();
      var od = new api.ElectionOfficial.fromJson(o.toJson());
      checkElectionOfficial(od);
    });
  });

  unittest.group("obj-schema-ElectionsQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionsQueryRequest();
      var od = new api.ElectionsQueryRequest.fromJson(o.toJson());
      checkElectionsQueryRequest(od);
    });
  });

  unittest.group("obj-schema-ElectionsQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionsQueryResponse();
      var od = new api.ElectionsQueryResponse.fromJson(o.toJson());
      checkElectionsQueryResponse(od);
    });
  });

  unittest.group("obj-schema-ElectoralDistrict", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectoralDistrict();
      var od = new api.ElectoralDistrict.fromJson(o.toJson());
      checkElectoralDistrict(od);
    });
  });

  unittest.group("obj-schema-GeographicDivision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeographicDivision();
      var od = new api.GeographicDivision.fromJson(o.toJson());
      checkGeographicDivision(od);
    });
  });

  unittest.group("obj-schema-Office", () {
    unittest.test("to-json--from-json", () {
      var o = buildOffice();
      var od = new api.Office.fromJson(o.toJson());
      checkOffice(od);
    });
  });

  unittest.group("obj-schema-Official", () {
    unittest.test("to-json--from-json", () {
      var o = buildOfficial();
      var od = new api.Official.fromJson(o.toJson());
      checkOfficial(od);
    });
  });

  unittest.group("obj-schema-PollingLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPollingLocation();
      var od = new api.PollingLocation.fromJson(o.toJson());
      checkPollingLocation(od);
    });
  });

  unittest.group("obj-schema-PostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalAddress();
      var od = new api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoData();
      var od = new api.RepresentativeInfoData.fromJson(o.toJson());
      checkRepresentativeInfoData(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoRequest();
      var od = new api.RepresentativeInfoRequest.fromJson(o.toJson());
      checkRepresentativeInfoRequest(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoResponse();
      var od = new api.RepresentativeInfoResponse.fromJson(o.toJson());
      checkRepresentativeInfoResponse(od);
    });
  });

  unittest.group("obj-schema-SimpleAddressType", () {
    unittest.test("to-json--from-json", () {
      var o = buildSimpleAddressType();
      var od = new api.SimpleAddressType.fromJson(o.toJson());
      checkSimpleAddressType(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-VoterInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoRequest();
      var od = new api.VoterInfoRequest.fromJson(o.toJson());
      checkVoterInfoRequest(od);
    });
  });

  unittest.group("obj-schema-VoterInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoResponse();
      var od = new api.VoterInfoResponse.fromJson(o.toJson());
      checkVoterInfoResponse(od);
    });
  });

  unittest.group("obj-schema-VoterInfoSegmentResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoSegmentResult();
      var od = new api.VoterInfoSegmentResult.fromJson(o.toJson());
      checkVoterInfoSegmentResult(od);
    });
  });

  unittest.group("resource-DivisionsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.DivisionsResourceApi res = new api.CivicinfoApi(mock).divisions;
      var arg_request = buildDivisionSearchRequest();
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DivisionSearchRequest.fromJson(json);
        checkDivisionSearchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("divisions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDivisionSearchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DivisionSearchResponse response) {
        checkDivisionSearchResponse(response);
      })));
    });
  });

  unittest.group("resource-ElectionsResourceApi", () {
    unittest.test("method--electionQuery", () {
      var mock = new HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      var arg_request = buildElectionsQueryRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ElectionsQueryRequest.fromJson(json);
        checkElectionsQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("elections"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildElectionsQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .electionQuery(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ElectionsQueryResponse response) {
        checkElectionsQueryResponse(response);
      })));
    });

    unittest.test("method--voterInfoQuery", () {
      var mock = new HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      var arg_request = buildVoterInfoRequest();
      var arg_address = "foo";
      var arg_electionId = "foo";
      var arg_officialOnly = true;
      var arg_returnAllAvailableData = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.VoterInfoRequest.fromJson(json);
        checkVoterInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("voterinfo"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(
            queryMap["electionId"].first, unittest.equals(arg_electionId));
        unittest.expect(queryMap["officialOnly"].first,
            unittest.equals("$arg_officialOnly"));
        unittest.expect(queryMap["returnAllAvailableData"].first,
            unittest.equals("$arg_returnAllAvailableData"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVoterInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .voterInfoQuery(arg_request, arg_address,
              electionId: arg_electionId,
              officialOnly: arg_officialOnly,
              returnAllAvailableData: arg_returnAllAvailableData,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.VoterInfoResponse response) {
        checkVoterInfoResponse(response);
      })));
    });
  });

  unittest.group("resource-RepresentativesResourceApi", () {
    unittest.test("method--representativeInfoByAddress", () {
      var mock = new HttpServerMock();
      api.RepresentativesResourceApi res =
          new api.CivicinfoApi(mock).representatives;
      var arg_request = buildRepresentativeInfoRequest();
      var arg_address = "foo";
      var arg_includeOffices = true;
      var arg_levels = buildUnnamed2639();
      var arg_roles = buildUnnamed2640();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RepresentativeInfoRequest.fromJson(json);
        checkRepresentativeInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("representatives"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["includeOffices"].first,
            unittest.equals("$arg_includeOffices"));
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRepresentativeInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByAddress(arg_request,
              address: arg_address,
              includeOffices: arg_includeOffices,
              levels: arg_levels,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.RepresentativeInfoResponse response) {
        checkRepresentativeInfoResponse(response);
      })));
    });

    unittest.test("method--representativeInfoByDivision", () {
      var mock = new HttpServerMock();
      api.RepresentativesResourceApi res =
          new api.CivicinfoApi(mock).representatives;
      var arg_request = buildDivisionRepresentativeInfoRequest();
      var arg_ocdId = "foo";
      var arg_levels = buildUnnamed2641();
      var arg_recursive = true;
      var arg_roles = buildUnnamed2642();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DivisionRepresentativeInfoRequest.fromJson(json);
        checkDivisionRepresentativeInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("representatives/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_ocdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(
            queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRepresentativeInfoData());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByDivision(arg_request, arg_ocdId,
              levels: arg_levels,
              recursive: arg_recursive,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.RepresentativeInfoData response) {
        checkRepresentativeInfoData(response);
      })));
    });
  });
}
