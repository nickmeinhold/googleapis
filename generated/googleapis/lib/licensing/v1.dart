// This is a generated file (see the discoveryapis_generator project).

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

library googleapis.licensing.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client licensing/v1';

/// The Google Enterprise License Manager API's allows you to license apps for
/// all the users of a domain managed by you.
class LicensingApi {
  /// View and manage G Suite licenses for your domain
  static const AppsLicensingScope =
      'https://www.googleapis.com/auth/apps.licensing';

  final commons.ApiRequester _requester;

  LicenseAssignmentsResourceApi get licenseAssignments =>
      LicenseAssignmentsResourceApi(_requester);

  LicensingApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class LicenseAssignmentsResourceApi {
  final commons.ApiRequester _requester;

  LicenseAssignmentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Revoke a license.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// userId is subject to change, do not use a userId value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the userId is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/user/' +
        commons.Escaper.ecapeVariable('$userId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Get a specific user's license by product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// userId is subject to change, do not use a userId value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the userId is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> get(
    core.String productId,
    core.String skuId,
    core.String userId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/user/' +
        commons.Escaper.ecapeVariable('$userId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignment.fromJson(data));
  }

  /// Assign a license.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> insert(
    LicenseAssignmentInsert request,
    core.String productId,
    core.String skuId, {
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
    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/user';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignment.fromJson(data));
  }

  /// List all users assigned licenses for a specific product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [customerId] - Customer's customerId. A previous version of this API
  /// accepted the primary domain name as a value for this field. If the
  /// customer is suspended, the server returns an error.
  ///
  /// [pageToken] - Token to fetch the next page of data. The maxResults query
  /// string is related to the pageToken since maxResults determines how many
  /// entries are returned on each page. This is an optional query string. If
  /// not specified, the server returns the first page.
  ///
  /// [maxResults] - The maxResults query string determines how many entries are
  /// returned on each page of a large response. This is an optional parameter.
  /// The value must be a positive number.
  /// Value must be between "1" and "1000".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignmentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignmentList> listForProduct(
    core.String productId,
    core.String customerId, {
    core.String pageToken,
    core.int maxResults,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (customerId == null) {
      throw core.ArgumentError('Parameter customerId is required.');
    }
    _queryParams['customerId'] = [customerId];
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/users';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignmentList.fromJson(data));
  }

  /// List all users assigned licenses for a specific product SKU.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [customerId] - Customer's customerId. A previous version of this API
  /// accepted the primary domain name as a value for this field. If the
  /// customer is suspended, the server returns an error.
  ///
  /// [pageToken] - Token to fetch the next page of data. The maxResults query
  /// string is related to the pageToken since maxResults determines how many
  /// entries are returned on each page. This is an optional query string. If
  /// not specified, the server returns the first page.
  ///
  /// [maxResults] - The maxResults query string determines how many entries are
  /// returned on each page of a large response. This is an optional parameter.
  /// The value must be a positive number.
  /// Value must be between "1" and "1000".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignmentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignmentList> listForProductAndSku(
    core.String productId,
    core.String skuId,
    core.String customerId, {
    core.String pageToken,
    core.int maxResults,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if (customerId == null) {
      throw core.ArgumentError('Parameter customerId is required.');
    }
    _queryParams['customerId'] = [customerId];
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/users';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignmentList.fromJson(data));
  }

  /// Patch a Licensing info via Apiary Patch Orchestration
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// userId is subject to change, do not use a userId value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the userId is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> patch(
    LicenseAssignment request,
    core.String productId,
    core.String skuId,
    core.String userId, {
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
    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/user/' +
        commons.Escaper.ecapeVariable('$userId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignment.fromJson(data));
  }

  /// Reassign a user's product SKU with a different SKU in the same product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [productId] - A product's unique identifier. For more information about
  /// products in this version of the API, see Products and SKUs.
  ///
  /// [skuId] - A product SKU's unique identifier. For more information about
  /// available SKUs in this version of the API, see Products and SKUs.
  ///
  /// [userId] - The user's current primary email address. If the user's email
  /// address changes, use the new email address in your API requests. Since a
  /// userId is subject to change, do not use a userId value as a key for
  /// persistent data. This key could break if the current user's email address
  /// changes. If the userId is suspended, the license status changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LicenseAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LicenseAssignment> update(
    LicenseAssignment request,
    core.String productId,
    core.String skuId,
    core.String userId, {
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
    if (productId == null) {
      throw core.ArgumentError('Parameter productId is required.');
    }
    if (skuId == null) {
      throw core.ArgumentError('Parameter skuId is required.');
    }
    if (userId == null) {
      throw core.ArgumentError('Parameter userId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'apps/licensing/v1/product/' +
        commons.Escaper.ecapeVariable('$productId') +
        '/sku/' +
        commons.Escaper.ecapeVariable('$skuId') +
        '/user/' +
        commons.Escaper.ecapeVariable('$userId');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LicenseAssignment.fromJson(data));
  }
}

/// Representation of a license assignment.
class LicenseAssignment {
  /// ETag of the resource.
  core.String etags;

  /// Identifies the resource as a LicenseAssignment.
  core.String kind;

  /// A product's unique identifier. For more information about products in this
  /// version of the API, see Product and SKU IDs.
  core.String productId;

  /// Display Name of the product.
  core.String productName;

  /// Link to this page.
  core.String selfLink;

  /// A product SKU's unique identifier. For more information about available
  /// SKUs in this version of the API, see Products and SKUs.
  core.String skuId;

  /// Display Name of the sku of the product.
  core.String skuName;

  /// The user's current primary email address. If the user's email address
  /// changes, use the new email address in your API requests. Since a userId is
  /// subject to change, do not use a userId value as a key for persistent data.
  /// This key could break if the current user's email address changes. If the
  /// userId is suspended, the license status changes.
  core.String userId;

  LicenseAssignment();

  LicenseAssignment.fromJson(core.Map _json) {
    if (_json.containsKey('etags')) {
      etags = _json['etags'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'];
    }
    if (_json.containsKey('productName')) {
      productName = _json['productName'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('skuId')) {
      skuId = _json['skuId'];
    }
    if (_json.containsKey('skuName')) {
      skuName = _json['skuName'];
    }
    if (_json.containsKey('userId')) {
      userId = _json['userId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etags != null) {
      _json['etags'] = etags;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (productId != null) {
      _json['productId'] = productId;
    }
    if (productName != null) {
      _json['productName'] = productName;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (skuId != null) {
      _json['skuId'] = skuId;
    }
    if (skuName != null) {
      _json['skuName'] = skuName;
    }
    if (userId != null) {
      _json['userId'] = userId;
    }
    return _json;
  }
}

/// Representation of a license assignment.
class LicenseAssignmentInsert {
  /// Email id of the user
  core.String userId;

  LicenseAssignmentInsert();

  LicenseAssignmentInsert.fromJson(core.Map _json) {
    if (_json.containsKey('userId')) {
      userId = _json['userId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (userId != null) {
      _json['userId'] = userId;
    }
    return _json;
  }
}

class LicenseAssignmentList {
  /// ETag of the resource.
  core.String etag;

  /// The LicenseAssignments in this page of results.
  core.List<LicenseAssignment> items;

  /// Identifies the resource as a collection of LicenseAssignments.
  core.String kind;

  /// The token that you must submit in a subsequent request to retrieve
  /// additional license results matching your query parameters. The maxResults
  /// query string is related to the nextPageToken since maxResults determines
  /// how many entries are returned on each next page.
  core.String nextPageToken;

  LicenseAssignmentList();

  LicenseAssignmentList.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<LicenseAssignment>((value) => LicenseAssignment.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}
