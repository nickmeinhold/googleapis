// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Natural Language API - v1beta1
///
/// Provides natural language understanding technologies, such as sentiment
/// analysis, entity recognition, entity sentiment analysis, and other text
/// annotations, to developers.
///
/// For more information, see <https://cloud.google.com/natural-language/>
library googleapis_beta.language.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides natural language understanding technologies, such as sentiment
/// analysis, entity recognition, entity sentiment analysis, and other text
/// annotations, to developers.
class LanguageApi {
  /// Apply machine learning models to reveal the structure and meaning of text
  static const cloudLanguageScope =
      'https://www.googleapis.com/auth/cloud-language';

  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DocumentsResourceApi get documents => DocumentsResourceApi(_requester);

  LanguageApi(http.Client client,
      {core.String rootUrl = 'https://language.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class DocumentsResourceApi {
  final commons.ApiRequester _requester;

  DocumentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Finds named entities (currently proper names and common nouns) in the text
  /// along with entity types, salience, mentions for each entity, and other
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeEntitiesResponse> analyzeEntities(
    AnalyzeEntitiesRequest request, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/documents:analyzeEntities';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AnalyzeEntitiesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Analyzes the sentiment of the provided text.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeSentimentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeSentimentResponse> analyzeSentiment(
    AnalyzeSentimentRequest request, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/documents:analyzeSentiment';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AnalyzeSentimentResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Analyzes the syntax of the text and provides sentence boundaries and
  /// tokenization along with part of speech tags, dependency trees, and other
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeSyntaxResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeSyntaxResponse> analyzeSyntax(
    AnalyzeSyntaxRequest request, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/documents:analyzeSyntax';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AnalyzeSyntaxResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// A convenience method that provides all the features that analyzeSentiment,
  /// analyzeEntities, and analyzeSyntax provide in one call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnnotateTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnnotateTextResponse> annotateText(
    AnnotateTextRequest request, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/documents:annotateText';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AnnotateTextResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// The entity analysis request message.
class AnalyzeEntitiesRequest {
  /// Input document.
  Document document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and Javascript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String encodingType;

  AnalyzeEntitiesRequest();

  AnalyzeEntitiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('document')) {
      document = Document.fromJson(
          _json['document'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('encodingType')) {
      encodingType = _json['encodingType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (document != null) {
      _json['document'] = document.toJson();
    }
    if (encodingType != null) {
      _json['encodingType'] = encodingType;
    }
    return _json;
  }
}

/// The entity analysis response message.
class AnalyzeEntitiesResponse {
  /// The recognized entities in the input document.
  core.List<Entity> entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  /// See Document.language field for more details.
  core.String language;

  AnalyzeEntitiesResponse();

  AnalyzeEntitiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<Entity>((value) =>
              Entity.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (language != null) {
      _json['language'] = language;
    }
    return _json;
  }
}

/// The sentiment analysis request message.
class AnalyzeSentimentRequest {
  /// Input document.
  Document document;

  /// The encoding type used by the API to calculate sentence offsets for the
  /// sentence sentiment.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and Javascript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String encodingType;

  AnalyzeSentimentRequest();

  AnalyzeSentimentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('document')) {
      document = Document.fromJson(
          _json['document'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('encodingType')) {
      encodingType = _json['encodingType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (document != null) {
      _json['document'] = document.toJson();
    }
    if (encodingType != null) {
      _json['encodingType'] = encodingType;
    }
    return _json;
  }
}

/// The sentiment analysis response message.
class AnalyzeSentimentResponse {
  /// The overall sentiment of the input document.
  Sentiment documentSentiment;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  /// See Document.language field for more details.
  core.String language;

  /// The sentiment for all the sentences in the document.
  core.List<Sentence> sentences;

  AnalyzeSentimentResponse();

  AnalyzeSentimentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('documentSentiment')) {
      documentSentiment = Sentiment.fromJson(
          _json['documentSentiment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('sentences')) {
      sentences = (_json['sentences'] as core.List)
          .map<Sentence>((value) =>
              Sentence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (documentSentiment != null) {
      _json['documentSentiment'] = documentSentiment.toJson();
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (sentences != null) {
      _json['sentences'] = sentences.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The syntax analysis request message.
class AnalyzeSyntaxRequest {
  /// Input document.
  Document document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and Javascript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String encodingType;

  AnalyzeSyntaxRequest();

  AnalyzeSyntaxRequest.fromJson(core.Map _json) {
    if (_json.containsKey('document')) {
      document = Document.fromJson(
          _json['document'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('encodingType')) {
      encodingType = _json['encodingType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (document != null) {
      _json['document'] = document.toJson();
    }
    if (encodingType != null) {
      _json['encodingType'] = encodingType;
    }
    return _json;
  }
}

/// The syntax analysis response message.
class AnalyzeSyntaxResponse {
  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  /// See Document.language field for more details.
  core.String language;

  /// Sentences in the input document.
  core.List<Sentence> sentences;

  /// Tokens, along with their syntactic information, in the input document.
  core.List<Token> tokens;

  AnalyzeSyntaxResponse();

  AnalyzeSyntaxResponse.fromJson(core.Map _json) {
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('sentences')) {
      sentences = (_json['sentences'] as core.List)
          .map<Sentence>((value) =>
              Sentence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tokens')) {
      tokens = (_json['tokens'] as core.List)
          .map<Token>((value) =>
              Token.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (language != null) {
      _json['language'] = language;
    }
    if (sentences != null) {
      _json['sentences'] = sentences.map((value) => value.toJson()).toList();
    }
    if (tokens != null) {
      _json['tokens'] = tokens.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The request message for the text annotation API, which can perform multiple
/// analysis types (sentiment, entities, and syntax) in one call.
class AnnotateTextRequest {
  /// Input document.
  Document document;

  /// The encoding type used by the API to calculate offsets.
  /// Possible string values are:
  /// - "NONE" : If `EncodingType` is not specified, encoding-dependent
  /// information (such as `begin_offset`) will be set at `-1`.
  /// - "UTF8" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-8 encoding of the input. C++ and Go are
  /// examples of languages that use this encoding natively.
  /// - "UTF16" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-16 encoding of the input. Java and Javascript
  /// are examples of languages that use this encoding natively.
  /// - "UTF32" : Encoding-dependent information (such as `begin_offset`) is
  /// calculated based on the UTF-32 encoding of the input. Python is an example
  /// of a language that uses this encoding natively.
  core.String encodingType;

  /// The enabled features.
  Features features;

  AnnotateTextRequest();

  AnnotateTextRequest.fromJson(core.Map _json) {
    if (_json.containsKey('document')) {
      document = Document.fromJson(
          _json['document'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('encodingType')) {
      encodingType = _json['encodingType'] as core.String;
    }
    if (_json.containsKey('features')) {
      features = Features.fromJson(
          _json['features'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (document != null) {
      _json['document'] = document.toJson();
    }
    if (encodingType != null) {
      _json['encodingType'] = encodingType;
    }
    if (features != null) {
      _json['features'] = features.toJson();
    }
    return _json;
  }
}

/// The text annotations response message.
class AnnotateTextResponse {
  /// The overall sentiment for the document. Populated if the user enables
  /// AnnotateTextRequest.Features.extract_document_sentiment.
  Sentiment documentSentiment;

  /// Entities, along with their semantic information, in the input document.
  /// Populated if the user enables
  /// AnnotateTextRequest.Features.extract_entities.
  core.List<Entity> entities;

  /// The language of the text, which will be the same as the language specified
  /// in the request or, if not specified, the automatically-detected language.
  /// See Document.language field for more details.
  core.String language;

  /// Sentences in the input document. Populated if the user enables
  /// AnnotateTextRequest.Features.extract_syntax.
  core.List<Sentence> sentences;

  /// Tokens, along with their syntactic information, in the input document.
  /// Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
  core.List<Token> tokens;

  AnnotateTextResponse();

  AnnotateTextResponse.fromJson(core.Map _json) {
    if (_json.containsKey('documentSentiment')) {
      documentSentiment = Sentiment.fromJson(
          _json['documentSentiment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<Entity>((value) =>
              Entity.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('sentences')) {
      sentences = (_json['sentences'] as core.List)
          .map<Sentence>((value) =>
              Sentence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tokens')) {
      tokens = (_json['tokens'] as core.List)
          .map<Token>((value) =>
              Token.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (documentSentiment != null) {
      _json['documentSentiment'] = documentSentiment.toJson();
    }
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (sentences != null) {
      _json['sentences'] = sentences.map((value) => value.toJson()).toList();
    }
    if (tokens != null) {
      _json['tokens'] = tokens.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents dependency parse tree information for a token.
class DependencyEdge {
  /// Represents the head of this token in the dependency tree. This is the
  /// index of the token which has an arc going to this token. The index is the
  /// position of the token in the array of tokens returned by the API method.
  /// If this token is a root token, then the `head_token_index` is its own
  /// index.
  core.int headTokenIndex;

  /// The parse label for the token.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "ABBREV" : Abbreviation modifier
  /// - "ACOMP" : Adjectival complement
  /// - "ADVCL" : Adverbial clause modifier
  /// - "ADVMOD" : Adverbial modifier
  /// - "AMOD" : Adjectival modifier of an NP
  /// - "APPOS" : Appositional modifier of an NP
  /// - "ATTR" : Attribute dependent of a copular verb
  /// - "AUX" : Auxiliary (non-main) verb
  /// - "AUXPASS" : Passive auxiliary
  /// - "CC" : Coordinating conjunction
  /// - "CCOMP" : Clausal complement of a verb or adjective
  /// - "CONJ" : Conjunct
  /// - "CSUBJ" : Clausal subject
  /// - "CSUBJPASS" : Clausal passive subject
  /// - "DEP" : Dependency (unable to determine)
  /// - "DET" : Determiner
  /// - "DISCOURSE" : Discourse
  /// - "DOBJ" : Direct object
  /// - "EXPL" : Expletive
  /// - "GOESWITH" : Goes with (part of a word in a text not well edited)
  /// - "IOBJ" : Indirect object
  /// - "MARK" : Marker (word introducing a subordinate clause)
  /// - "MWE" : Multi-word expression
  /// - "MWV" : Multi-word verbal expression
  /// - "NEG" : Negation modifier
  /// - "NN" : Noun compound modifier
  /// - "NPADVMOD" : Noun phrase used as an adverbial modifier
  /// - "NSUBJ" : Nominal subject
  /// - "NSUBJPASS" : Passive nominal subject
  /// - "NUM" : Numeric modifier of a noun
  /// - "NUMBER" : Element of compound number
  /// - "P" : Punctuation mark
  /// - "PARATAXIS" : Parataxis relation
  /// - "PARTMOD" : Participial modifier
  /// - "PCOMP" : The complement of a preposition is a clause
  /// - "POBJ" : Object of a preposition
  /// - "POSS" : Possession modifier
  /// - "POSTNEG" : Postverbal negative particle
  /// - "PRECOMP" : Predicate complement
  /// - "PRECONJ" : Preconjunt
  /// - "PREDET" : Predeterminer
  /// - "PREF" : Prefix
  /// - "PREP" : Prepositional modifier
  /// - "PRONL" : The relationship between a verb and verbal morpheme
  /// - "PRT" : Particle
  /// - "PS" : Associative or possessive marker
  /// - "QUANTMOD" : Quantifier phrase modifier
  /// - "RCMOD" : Relative clause modifier
  /// - "RCMODREL" : Complementizer in relative clause
  /// - "RDROP" : Ellipsis without a preceding predicate
  /// - "REF" : Referent
  /// - "REMNANT" : Remnant
  /// - "REPARANDUM" : Reparandum
  /// - "ROOT" : Root
  /// - "SNUM" : Suffix specifying a unit of number
  /// - "SUFF" : Suffix
  /// - "TMOD" : Temporal modifier
  /// - "TOPIC" : Topic marker
  /// - "VMOD" : Clause headed by an infinite form of the verb that modifies a
  /// noun
  /// - "VOCATIVE" : Vocative
  /// - "XCOMP" : Open clausal complement
  /// - "SUFFIX" : Name suffix
  /// - "TITLE" : Name title
  /// - "ADVPHMOD" : Adverbial phrase modifier
  /// - "AUXCAUS" : Causative auxiliary
  /// - "AUXVV" : Helper auxiliary
  /// - "DTMOD" : Rentaishi (Prenominal modifier)
  /// - "FOREIGN" : Foreign words
  /// - "KW" : Keyword
  /// - "LIST" : List for chains of comparable items
  /// - "NOMC" : Nominalized clause
  /// - "NOMCSUBJ" : Nominalized clausal subject
  /// - "NOMCSUBJPASS" : Nominalized clausal passive
  /// - "NUMC" : Compound of numeric modifier
  /// - "COP" : Copula
  /// - "DISLOCATED" : Dislocated relation (for fronted/topicalized elements)
  /// - "ASP" : Aspect marker
  /// - "GMOD" : Genitive modifier
  /// - "GOBJ" : Genitive object
  /// - "INFMOD" : Infinitival modifier
  /// - "MES" : Measure
  /// - "NCOMP" : Nominal complement of a noun
  core.String label;

  DependencyEdge();

  DependencyEdge.fromJson(core.Map _json) {
    if (_json.containsKey('headTokenIndex')) {
      headTokenIndex = _json['headTokenIndex'] as core.int;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (headTokenIndex != null) {
      _json['headTokenIndex'] = headTokenIndex;
    }
    if (label != null) {
      _json['label'] = label;
    }
    return _json;
  }
}

/// ################################################################ #
/// Represents the input to API methods.
class Document {
  /// The content of the input in string format. Cloud audit logging exempt
  /// since it is based on user data.
  core.String content;

  /// The Google Cloud Storage URI where the file content is located. This URI
  /// must be of the form: gs://bucket_name/object_name. For more details, see
  /// https://cloud.google.com/storage/docs/reference-uris. NOTE: Cloud Storage
  /// object versioning is not supported.
  core.String gcsContentUri;

  /// The language of the document (if not specified, the language is
  /// automatically detected). Both ISO and BCP-47 language codes are accepted.
  /// [Language
  /// Support](https://cloud.google.com/natural-language/docs/languages) lists
  /// currently supported languages for each API method. If the language (either
  /// specified by the caller or automatically detected) is not supported by the
  /// called API method, an `INVALID_ARGUMENT` error is returned.
  core.String language;

  /// Required. If the type is not set or is `TYPE_UNSPECIFIED`, returns an
  /// `INVALID_ARGUMENT` error.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The content type is not specified.
  /// - "PLAIN_TEXT" : Plain text
  /// - "HTML" : HTML
  core.String type;

  Document();

  Document.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('gcsContentUri')) {
      gcsContentUri = _json['gcsContentUri'] as core.String;
    }
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (gcsContentUri != null) {
      _json['gcsContentUri'] = gcsContentUri;
    }
    if (language != null) {
      _json['language'] = language;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Represents a phrase in the text that is a known entity, such as a person, an
/// organization, or location. The API associates information, such as salience
/// and mentions, with entities.
class Entity {
  /// The mentions of this entity in the input document. The API currently
  /// supports proper noun mentions.
  core.List<EntityMention> mentions;

  /// Metadata associated with the entity. Currently, Wikipedia URLs and
  /// Knowledge Graph MIDs are provided, if available. The associated keys are
  /// "wikipedia_url" and "mid", respectively.
  core.Map<core.String, core.String> metadata;

  /// The representative name for the entity.
  core.String name;

  /// The salience score associated with the entity in the [0, 1.0] range. The
  /// salience score for an entity provides information about the importance or
  /// centrality of that entity to the entire document text. Scores closer to 0
  /// are less salient, while scores closer to 1.0 are highly salient.
  core.double salience;

  /// The entity type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "PERSON" : Person
  /// - "LOCATION" : Location
  /// - "ORGANIZATION" : Organization
  /// - "EVENT" : Event
  /// - "WORK_OF_ART" : Work of art
  /// - "CONSUMER_GOOD" : Consumer goods
  /// - "OTHER" : Other types
  core.String type;

  Entity();

  Entity.fromJson(core.Map _json) {
    if (_json.containsKey('mentions')) {
      mentions = (_json['mentions'] as core.List)
          .map<EntityMention>((value) => EntityMention.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('salience')) {
      salience = (_json['salience'] as core.num).toDouble();
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (mentions != null) {
      _json['mentions'] = mentions.map((value) => value.toJson()).toList();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (salience != null) {
      _json['salience'] = salience;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Represents a mention for an entity in the text. Currently, proper noun
/// mentions are supported.
class EntityMention {
  /// The mention text.
  TextSpan text;

  /// The type of the entity mention.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Unknown
  /// - "PROPER" : Proper name
  /// - "COMMON" : Common noun (or noun compound)
  core.String type;

  EntityMention();

  EntityMention.fromJson(core.Map _json) {
    if (_json.containsKey('text')) {
      text = TextSpan.fromJson(
          _json['text'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (text != null) {
      _json['text'] = text.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// All available features for sentiment, syntax, and semantic analysis. Setting
/// each one to true will enable that specific analysis for the input.
class Features {
  /// Extract document-level sentiment.
  core.bool extractDocumentSentiment;

  /// Extract entities.
  core.bool extractEntities;

  /// Extract syntax information.
  core.bool extractSyntax;

  Features();

  Features.fromJson(core.Map _json) {
    if (_json.containsKey('extractDocumentSentiment')) {
      extractDocumentSentiment = _json['extractDocumentSentiment'] as core.bool;
    }
    if (_json.containsKey('extractEntities')) {
      extractEntities = _json['extractEntities'] as core.bool;
    }
    if (_json.containsKey('extractSyntax')) {
      extractSyntax = _json['extractSyntax'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (extractDocumentSentiment != null) {
      _json['extractDocumentSentiment'] = extractDocumentSentiment;
    }
    if (extractEntities != null) {
      _json['extractEntities'] = extractEntities;
    }
    if (extractSyntax != null) {
      _json['extractSyntax'] = extractSyntax;
    }
    return _json;
  }
}

/// Represents part of speech information for a token.
class PartOfSpeech {
  /// The grammatical aspect.
  /// Possible string values are:
  /// - "ASPECT_UNKNOWN" : Aspect is not applicable in the analyzed language or
  /// is not predicted.
  /// - "PERFECTIVE" : Perfective
  /// - "IMPERFECTIVE" : Imperfective
  /// - "PROGRESSIVE" : Progressive
  core.String aspect;

  /// The grammatical case.
  /// Possible string values are:
  /// - "CASE_UNKNOWN" : Case is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ACCUSATIVE" : Accusative
  /// - "ADVERBIAL" : Adverbial
  /// - "COMPLEMENTIVE" : Complementive
  /// - "DATIVE" : Dative
  /// - "GENITIVE" : Genitive
  /// - "INSTRUMENTAL" : Instrumental
  /// - "LOCATIVE" : Locative
  /// - "NOMINATIVE" : Nominative
  /// - "OBLIQUE" : Oblique
  /// - "PARTITIVE" : Partitive
  /// - "PREPOSITIONAL" : Prepositional
  /// - "REFLEXIVE_CASE" : Reflexive
  /// - "RELATIVE_CASE" : Relative
  /// - "VOCATIVE" : Vocative
  core.String case_;

  /// The grammatical form.
  /// Possible string values are:
  /// - "FORM_UNKNOWN" : Form is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ADNOMIAL" : Adnomial
  /// - "AUXILIARY" : Auxiliary
  /// - "COMPLEMENTIZER" : Complementizer
  /// - "FINAL_ENDING" : Final ending
  /// - "GERUND" : Gerund
  /// - "REALIS" : Realis
  /// - "IRREALIS" : Irrealis
  /// - "SHORT" : Short form
  /// - "LONG" : Long form
  /// - "ORDER" : Order form
  /// - "SPECIFIC" : Specific form
  core.String form;

  /// The grammatical gender.
  /// Possible string values are:
  /// - "GENDER_UNKNOWN" : Gender is not applicable in the analyzed language or
  /// is not predicted.
  /// - "FEMININE" : Feminine
  /// - "MASCULINE" : Masculine
  /// - "NEUTER" : Neuter
  core.String gender;

  /// The grammatical mood.
  /// Possible string values are:
  /// - "MOOD_UNKNOWN" : Mood is not applicable in the analyzed language or is
  /// not predicted.
  /// - "CONDITIONAL_MOOD" : Conditional
  /// - "IMPERATIVE" : Imperative
  /// - "INDICATIVE" : Indicative
  /// - "INTERROGATIVE" : Interrogative
  /// - "JUSSIVE" : Jussive
  /// - "SUBJUNCTIVE" : Subjunctive
  core.String mood;

  /// The grammatical number.
  /// Possible string values are:
  /// - "NUMBER_UNKNOWN" : Number is not applicable in the analyzed language or
  /// is not predicted.
  /// - "SINGULAR" : Singular
  /// - "PLURAL" : Plural
  /// - "DUAL" : Dual
  core.String number;

  /// The grammatical person.
  /// Possible string values are:
  /// - "PERSON_UNKNOWN" : Person is not applicable in the analyzed language or
  /// is not predicted.
  /// - "FIRST" : First
  /// - "SECOND" : Second
  /// - "THIRD" : Third
  /// - "REFLEXIVE_PERSON" : Reflexive
  core.String person;

  /// The grammatical properness.
  /// Possible string values are:
  /// - "PROPER_UNKNOWN" : Proper is not applicable in the analyzed language or
  /// is not predicted.
  /// - "PROPER" : Proper
  /// - "NOT_PROPER" : Not proper
  core.String proper;

  /// The grammatical reciprocity.
  /// Possible string values are:
  /// - "RECIPROCITY_UNKNOWN" : Reciprocity is not applicable in the analyzed
  /// language or is not predicted.
  /// - "RECIPROCAL" : Reciprocal
  /// - "NON_RECIPROCAL" : Non-reciprocal
  core.String reciprocity;

  /// The part of speech tag.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown
  /// - "ADJ" : Adjective
  /// - "ADP" : Adposition (preposition and postposition)
  /// - "ADV" : Adverb
  /// - "CONJ" : Conjunction
  /// - "DET" : Determiner
  /// - "NOUN" : Noun (common and proper)
  /// - "NUM" : Cardinal number
  /// - "PRON" : Pronoun
  /// - "PRT" : Particle or other function word
  /// - "PUNCT" : Punctuation
  /// - "VERB" : Verb (all tenses and modes)
  /// - "X" : Other: foreign words, typos, abbreviations
  /// - "AFFIX" : Affix
  core.String tag;

  /// The grammatical tense.
  /// Possible string values are:
  /// - "TENSE_UNKNOWN" : Tense is not applicable in the analyzed language or is
  /// not predicted.
  /// - "CONDITIONAL_TENSE" : Conditional
  /// - "FUTURE" : Future
  /// - "PAST" : Past
  /// - "PRESENT" : Present
  /// - "IMPERFECT" : Imperfect
  /// - "PLUPERFECT" : Pluperfect
  core.String tense;

  /// The grammatical voice.
  /// Possible string values are:
  /// - "VOICE_UNKNOWN" : Voice is not applicable in the analyzed language or is
  /// not predicted.
  /// - "ACTIVE" : Active
  /// - "CAUSATIVE" : Causative
  /// - "PASSIVE" : Passive
  core.String voice;

  PartOfSpeech();

  PartOfSpeech.fromJson(core.Map _json) {
    if (_json.containsKey('aspect')) {
      aspect = _json['aspect'] as core.String;
    }
    if (_json.containsKey('case')) {
      case_ = _json['case'] as core.String;
    }
    if (_json.containsKey('form')) {
      form = _json['form'] as core.String;
    }
    if (_json.containsKey('gender')) {
      gender = _json['gender'] as core.String;
    }
    if (_json.containsKey('mood')) {
      mood = _json['mood'] as core.String;
    }
    if (_json.containsKey('number')) {
      number = _json['number'] as core.String;
    }
    if (_json.containsKey('person')) {
      person = _json['person'] as core.String;
    }
    if (_json.containsKey('proper')) {
      proper = _json['proper'] as core.String;
    }
    if (_json.containsKey('reciprocity')) {
      reciprocity = _json['reciprocity'] as core.String;
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
    if (_json.containsKey('tense')) {
      tense = _json['tense'] as core.String;
    }
    if (_json.containsKey('voice')) {
      voice = _json['voice'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aspect != null) {
      _json['aspect'] = aspect;
    }
    if (case_ != null) {
      _json['case'] = case_;
    }
    if (form != null) {
      _json['form'] = form;
    }
    if (gender != null) {
      _json['gender'] = gender;
    }
    if (mood != null) {
      _json['mood'] = mood;
    }
    if (number != null) {
      _json['number'] = number;
    }
    if (person != null) {
      _json['person'] = person;
    }
    if (proper != null) {
      _json['proper'] = proper;
    }
    if (reciprocity != null) {
      _json['reciprocity'] = reciprocity;
    }
    if (tag != null) {
      _json['tag'] = tag;
    }
    if (tense != null) {
      _json['tense'] = tense;
    }
    if (voice != null) {
      _json['voice'] = voice;
    }
    return _json;
  }
}

/// Represents a sentence in the input document.
class Sentence {
  /// For calls to AnalyzeSentiment or if
  /// AnnotateTextRequest.Features.extract_document_sentiment is set to true,
  /// this field will contain the sentiment for the sentence.
  Sentiment sentiment;

  /// The sentence text.
  TextSpan text;

  Sentence();

  Sentence.fromJson(core.Map _json) {
    if (_json.containsKey('sentiment')) {
      sentiment = Sentiment.fromJson(
          _json['sentiment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = TextSpan.fromJson(
          _json['text'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sentiment != null) {
      _json['sentiment'] = sentiment.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}

/// Represents the feeling associated with the entire text or entities in the
/// text.
class Sentiment {
  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute magnitude of sentiment regardless of score (positive or
  /// negative).
  core.double magnitude;

  /// DEPRECATED FIELD - This field is being deprecated in favor of score.
  /// Please refer to our documentation at
  /// https://cloud.google.com/natural-language/docs for more information.
  core.double polarity;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double score;

  Sentiment();

  Sentiment.fromJson(core.Map _json) {
    if (_json.containsKey('magnitude')) {
      magnitude = (_json['magnitude'] as core.num).toDouble();
    }
    if (_json.containsKey('polarity')) {
      polarity = (_json['polarity'] as core.num).toDouble();
    }
    if (_json.containsKey('score')) {
      score = (_json['score'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (magnitude != null) {
      _json['magnitude'] = magnitude;
    }
    if (polarity != null) {
      _json['polarity'] = polarity;
    }
    if (score != null) {
      _json['score'] = score;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Represents an output piece of text.
class TextSpan {
  /// The API calculates the beginning offset of the content in the original
  /// document according to the EncodingType specified in the API request.
  core.int beginOffset;

  /// The content of the output text.
  core.String content;

  TextSpan();

  TextSpan.fromJson(core.Map _json) {
    if (_json.containsKey('beginOffset')) {
      beginOffset = _json['beginOffset'] as core.int;
    }
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (beginOffset != null) {
      _json['beginOffset'] = beginOffset;
    }
    if (content != null) {
      _json['content'] = content;
    }
    return _json;
  }
}

/// Represents the smallest syntactic building block of the text.
class Token {
  /// Dependency tree parse for this token.
  DependencyEdge dependencyEdge;

  /// [Lemma](https://en.wikipedia.org/wiki/Lemma_%28morphology%29) of the
  /// token.
  core.String lemma;

  /// Parts of speech tag for this token.
  PartOfSpeech partOfSpeech;

  /// The token text.
  TextSpan text;

  Token();

  Token.fromJson(core.Map _json) {
    if (_json.containsKey('dependencyEdge')) {
      dependencyEdge = DependencyEdge.fromJson(
          _json['dependencyEdge'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lemma')) {
      lemma = _json['lemma'] as core.String;
    }
    if (_json.containsKey('partOfSpeech')) {
      partOfSpeech = PartOfSpeech.fromJson(
          _json['partOfSpeech'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = TextSpan.fromJson(
          _json['text'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dependencyEdge != null) {
      _json['dependencyEdge'] = dependencyEdge.toJson();
    }
    if (lemma != null) {
      _json['lemma'] = lemma;
    }
    if (partOfSpeech != null) {
      _json['partOfSpeech'] = partOfSpeech.toJson();
    }
    if (text != null) {
      _json['text'] = text.toJson();
    }
    return _json;
  }
}
