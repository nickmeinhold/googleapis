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

/// App Engine Admin API - v1beta
///
/// Provisions and manages developers' App Engine applications.
///
/// For more information, see
/// <https://cloud.google.com/appengine/docs/admin-api/>
///
/// Create an instance of [AppengineApi] to access these resources:
///
/// - [AppsResource]
///   - [AppsAuthorizedCertificatesResource]
///   - [AppsAuthorizedDomainsResource]
///   - [AppsDomainMappingsResource]
///   - [AppsFirewallResource]
///     - [AppsFirewallIngressRulesResource]
///   - [AppsLocationsResource]
///   - [AppsOperationsResource]
///   - [AppsServicesResource]
///     - [AppsServicesVersionsResource]
///       - [AppsServicesVersionsInstancesResource]
library appengine.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provisions and manages developers' App Engine applications.
class AppengineApi {
  /// View and manage your applications deployed on Google App Engine
  static const appengineAdminScope =
      'https://www.googleapis.com/auth/appengine.admin';

  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  AppsResource get apps => AppsResource(_requester);

  AppengineApi(http.Client client,
      {core.String rootUrl = 'https://appengine.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedCertificatesResource get authorizedCertificates =>
      AppsAuthorizedCertificatesResource(_requester);
  AppsAuthorizedDomainsResource get authorizedDomains =>
      AppsAuthorizedDomainsResource(_requester);
  AppsDomainMappingsResource get domainMappings =>
      AppsDomainMappingsResource(_requester);
  AppsFirewallResource get firewall => AppsFirewallResource(_requester);
  AppsLocationsResource get locations => AppsLocationsResource(_requester);
  AppsOperationsResource get operations => AppsOperationsResource(_requester);
  AppsServicesResource get services => AppsServicesResource(_requester);

  AppsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an App Engine application for a Google Cloud Platform project.
  ///
  /// Required fields: id - The ID of the target Cloud Platform project.
  /// location - The region (https://cloud.google.com/appengine/docs/locations)
  /// where you want the App Engine application located.For more information
  /// about App Engine applications, see Managing Projects, Applications, and
  /// Billing
  /// (https://cloud.google.com/appengine/docs/standard/python/console/).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Application request, {
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

    _url = 'v1beta/apps';

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
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets information about an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Application resource to get.
  /// Example: apps/myapp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(
    core.String appsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' + commons.Escaper.ecapeVariable('$appsId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Application.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified Application resource.
  ///
  /// You can update the following fields: auth_domain - Google authentication
  /// domain for controlling user access to the application.
  /// default_cookie_expiration - Cookie expiration policy for the application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Application resource to update.
  /// Example: apps/myapp.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Application request,
    core.String appsId, {
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' + commons.Escaper.ecapeVariable('$appsId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Recreates the required App Engine features for the specified App Engine
  /// application, for example a Cloud Storage bucket or App Engine service
  /// account.
  ///
  /// Use this method if you receive an error message about a missing feature,
  /// for example, Error retrieving the App Engine service account. If you have
  /// deleted your App Engine service account, this will not be able to recreate
  /// it. Instead, you should attempt to use the IAM undelete API if possible at
  /// https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts/undelete?apix_params=%7B"name"%3A"projects%2F-%2FserviceAccounts%2Funique_id"%2C"resource"%3A%7B%7D%7D
  /// . If the deletion was recent, the numeric ID can be found in the Cloud
  /// Console Activity Log.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the application to repair. Example:
  /// apps/myapp
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> repair(
    RepairApplicationRequest request,
    core.String appsId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1beta/apps/' + commons.Escaper.ecapeVariable('$appsId') + ':repair';

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
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsAuthorizedCertificatesResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedCertificatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Uploads the specified SSL certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> create(
    AuthorizedCertificate request,
    core.String appsId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedCertificates';

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
      (data) => AuthorizedCertificate.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to delete. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (authorizedCertificatesId == null) {
      throw core.ArgumentError(
          'Parameter authorizedCertificatesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.Escaper.ecapeVariable('$authorizedCertificatesId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [view] - Controls the set of fields returned in the GET response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> get(
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (authorizedCertificatesId == null) {
      throw core.ArgumentError(
          'Parameter authorizedCertificatesId is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.Escaper.ecapeVariable('$authorizedCertificatesId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AuthorizedCertificate.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists all SSL certificates the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [view] - Controls the set of fields returned in the LIST response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedCertificatesResponse> list(
    core.String appsId, {
    core.int pageSize,
    core.String pageToken,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedCertificates';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListAuthorizedCertificatesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified SSL certificate.
  ///
  /// To renew a certificate and maintain its existing domain mappings, update
  /// certificate_data with a new certificate. The new certificate must be
  /// applicable to the same domains as the original certificate. The
  /// certificate display_name may also be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  /// Updates are only supported on the certificate_raw_data and display_name
  /// fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> patch(
    AuthorizedCertificate request,
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (authorizedCertificatesId == null) {
      throw core.ArgumentError(
          'Parameter authorizedCertificatesId is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.Escaper.ecapeVariable('$authorizedCertificatesId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => AuthorizedCertificate.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsAuthorizedDomainsResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedDomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all domains the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
    core.String appsId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/authorizedDomains';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListAuthorizedDomainsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsDomainMappingsResource {
  final commons.ApiRequester _requester;

  AppsDomainMappingsResource(commons.ApiRequester client) : _requester = client;

  /// Maps a domain to an application.
  ///
  /// A user must be authorized to administer a domain in order to map it to an
  /// application. For a list of available authorized domains, see
  /// AuthorizedDomains.ListAuthorizedDomains.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [overrideStrategy] - Whether the domain creation should override any
  /// existing mappings for this domain. By default, overrides are rejected.
  /// Possible string values are:
  /// - "UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY" : Strategy unspecified. Defaults
  /// to STRICT.
  /// - "STRICT" : Overrides not allowed. If a mapping already exists for the
  /// specified domain, the request will return an ALREADY_EXISTS (409).
  /// - "OVERRIDE" : Overrides allowed. If a mapping already exists for the
  /// specified domain, the request will overwrite it. Note that this might stop
  /// another Google product from serving. For example, if the domain is mapped
  /// to another App Engine application, that app will no longer serve from that
  /// domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    DomainMapping request,
    core.String appsId, {
    core.String overrideStrategy,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (overrideStrategy != null) {
      _queryParams['overrideStrategy'] = [overrideStrategy];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/domainMappings';

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
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the specified domain mapping.
  ///
  /// A user must be authorized to administer the associated domain in order to
  /// delete a DomainMapping resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to delete. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String appsId,
    core.String domainMappingsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (domainMappingsId == null) {
      throw core.ArgumentError('Parameter domainMappingsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/domainMappings/' +
        commons.Escaper.ecapeVariable('$domainMappingsId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the specified domain mapping.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> get(
    core.String appsId,
    core.String domainMappingsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (domainMappingsId == null) {
      throw core.ArgumentError('Parameter domainMappingsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/domainMappings/' +
        commons.Escaper.ecapeVariable('$domainMappingsId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          DomainMapping.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the domain mappings on an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainMappingsResponse> list(
    core.String appsId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/domainMappings';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListDomainMappingsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified domain mapping.
  ///
  /// To map an SSL certificate to a domain mapping, update certificate_id to
  /// point to an AuthorizedCertificate resource. A user must be authorized to
  /// administer the associated domain in order to update a DomainMapping
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    DomainMapping request,
    core.String appsId,
    core.String domainMappingsId, {
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (domainMappingsId == null) {
      throw core.ArgumentError('Parameter domainMappingsId is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/domainMappings/' +
        commons.Escaper.ecapeVariable('$domainMappingsId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsFirewallResource {
  final commons.ApiRequester _requester;

  AppsFirewallIngressRulesResource get ingressRules =>
      AppsFirewallIngressRulesResource(_requester);

  AppsFirewallResource(commons.ApiRequester client) : _requester = client;
}

class AppsFirewallIngressRulesResource {
  final commons.ApiRequester _requester;

  AppsFirewallIngressRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Replaces the entire firewall ruleset in one bulk operation.
  ///
  /// This overrides and replaces the rules of an existing firewall with the new
  /// rules.If the final rule does not match traffic with the '*' wildcard IP
  /// range, then an "allow all" rule is explicitly added to the end of the
  /// list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall collection to set.
  /// Example: apps/myapp/firewall/ingressRules.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateIngressRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateIngressRulesResponse> batchUpdate(
    BatchUpdateIngressRulesRequest request,
    core.String appsId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules:batchUpdate';

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
      (data) => BatchUpdateIngressRulesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a firewall rule for the application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Firewall collection in
  /// which to create a new rule. Example: apps/myapp/firewall/ingressRules.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> create(
    FirewallRule request,
    core.String appsId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules';

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
      (data) =>
          FirewallRule.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the specified firewall rule.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to delete.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String appsId,
    core.String ingressRulesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (ingressRulesId == null) {
      throw core.ArgumentError('Parameter ingressRulesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.Escaper.ecapeVariable('$ingressRulesId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the specified firewall rule.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to retrieve.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> get(
    core.String appsId,
    core.String ingressRulesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (ingressRulesId == null) {
      throw core.ArgumentError('Parameter ingressRulesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.Escaper.ecapeVariable('$ingressRulesId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          FirewallRule.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the firewall rules of an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the Firewall collection to retrieve.
  /// Example: apps/myapp/firewall/ingressRules.
  ///
  /// [matchingAddress] - A valid IP Address. If set, only rules matching this
  /// address will be returned. The first returned rule will be the rule that
  /// fires on requests from this IP.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIngressRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIngressRulesResponse> list(
    core.String appsId, {
    core.String matchingAddress,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (matchingAddress != null) {
      _queryParams['matchingAddress'] = [matchingAddress];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListIngressRulesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified firewall rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to update.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> patch(
    FirewallRule request,
    core.String appsId,
    core.String ingressRulesId, {
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (ingressRulesId == null) {
      throw core.ArgumentError('Parameter ingressRulesId is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.Escaper.ecapeVariable('$ingressRulesId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          FirewallRule.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsLocationsResource {
  final commons.ApiRequester _requester;

  AppsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Resource name for the location.
  ///
  /// [locationsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String appsId,
    core.String locationsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (locationsId == null) {
      throw core.ArgumentError('Parameter locationsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/locations/' +
        commons.Escaper.ecapeVariable('$locationsId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Location.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The resource that owns the locations
  /// collection, if applicable.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String appsId, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/locations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListLocationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsOperationsResource {
  final commons.ApiRequester _requester;

  AppsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The name of the operation resource.
  ///
  /// [operationsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String appsId,
    core.String operationsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (operationsId == null) {
      throw core.ArgumentError('Parameter operationsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operationsId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The name of the operation's parent resource.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String appsId, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListOperationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsServicesResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsResource get versions =>
      AppsServicesVersionsResource(_requester);

  AppsServicesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified service and all enclosed versions.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String appsId,
    core.String servicesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the current configuration of the specified service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(
    core.String appsId,
    core.String servicesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Service.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists all the services in the application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String appsId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1beta/apps/' + commons.Escaper.ecapeVariable('$appsId') + '/services';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListServicesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the configuration of the specified service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [migrateTraffic] - Set to true to gradually shift traffic to one or more
  /// versions that you specify. By default, traffic is shifted immediately. For
  /// gradual traffic migration, the target versions must be located within
  /// instances that are configured for both warmup requests
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#InboundServiceType)
  /// and automatic scaling
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#AutomaticScaling).
  /// You must specify the shardBy
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services#ShardBy)
  /// field in the Service resource. Gradual traffic migration is not supported
  /// in the App Engine flexible environment. For examples, see Migrating and
  /// Splitting Traffic
  /// (https://cloud.google.com/appengine/docs/admin-api/migrating-splitting-traffic).
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Service request,
    core.String appsId,
    core.String servicesId, {
    core.bool migrateTraffic,
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (migrateTraffic != null) {
      _queryParams['migrateTraffic'] = ['${migrateTraffic}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsServicesVersionsResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsInstancesResource get instances =>
      AppsServicesVersionsInstancesResource(_requester);

  AppsServicesVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deploys code and resource files to a new version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent resource to create this
  /// version under. Example: apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Version request,
    core.String appsId,
    core.String servicesId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions';

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
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes an existing Version resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the specified Version resource.
  ///
  /// By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW
  /// parameter to get the full resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [view] - Controls the set of fields returned in the Get response.
  /// Possible string values are:
  /// - "BASIC" : Basic version information including scaling and inbound
  /// services, but not detailed deployment information.
  /// - "FULL" : The information from BASIC, plus detailed information about the
  /// deployment. This format is required when creating resources, but is not
  /// returned in Get or List by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> get(
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the versions of a service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Service resource. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [view] - Controls the set of fields returned in the List response.
  /// Possible string values are:
  /// - "BASIC" : Basic version information including scaling and inbound
  /// services, but not detailed deployment information.
  /// - "FULL" : The information from BASIC, plus detailed information about the
  /// deployment. This format is required when creating resources, but is not
  /// returned in Get or List by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String appsId,
    core.String servicesId, {
    core.int pageSize,
    core.String pageToken,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified Version resource.
  ///
  /// You can specify the following fields depending on the App Engine
  /// environment and type of scaling that the version resource uses:Standard
  /// environment instance_class
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.instance_class)automatic
  /// scaling in the standard environment: automatic_scaling.min_idle_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.max_idle_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automaticScaling.standard_scheduler_settings.max_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.min_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.target_cpu_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.target_throughput_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StandardSchedulerSettings)basic
  /// scaling or manual scaling in the standard environment: serving_status
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.serving_status)
  /// manual_scaling.instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#manualscaling)Flexible
  /// environment serving_status
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.serving_status)automatic
  /// scaling in the flexible environment: automatic_scaling.min_total_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.max_total_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.cool_down_period_sec
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.cpu_utilization.target_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#Version.FIELDS.automatic_scaling)manual
  /// scaling in the flexible environment: manual_scaling.instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#manualscaling)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/services/default/versions/1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Version request,
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.String updateMask,
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class AppsServicesVersionsInstancesResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Enables debugging on a VM instance.
  ///
  /// This allows you to use the SSH command to connect to the virtual machine
  /// where the instance lives. While in "debug mode", the instance continues to
  /// serve live traffic. You should delete the instance when you are done
  /// debugging and then allow the system to take over and determine if another
  /// instance should be started.Only applicable for instances in App Engine
  /// flexible environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> debug(
    DebugInstanceRequest request,
    core.String appsId,
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
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
    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (instancesId == null) {
      throw core.ArgumentError('Parameter instancesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instancesId') +
        ':debug';

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
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Stops a running instance.The instance might be automatically recreated
  /// based on the scaling settings of the version.
  ///
  /// For more information, see "How Instances are Managed" (standard
  /// environment
  /// (https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed)
  /// | flexible environment
  /// (https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).To
  /// ensure that instances are not re-created and avoid getting billed, you can
  /// stop all instances within the target version by changing the serving
  /// status of the version to STOPPED with the apps.services.versions.patch
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch)
  /// method.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String appsId,
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (instancesId == null) {
      throw core.ArgumentError('Parameter instancesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instancesId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets instance information.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
    core.String appsId,
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (instancesId == null) {
      throw core.ArgumentError('Parameter instancesId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instancesId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Instance.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the instances of a version.Tip: To aggregate details about instances
  /// over time, see the Stackdriver Monitoring API
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Version resource. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (appsId == null) {
      throw core.ArgumentError('Parameter appsId is required.');
    }
    if (servicesId == null) {
      throw core.ArgumentError('Parameter servicesId is required.');
    }
    if (versionsId == null) {
      throw core.ArgumentError('Parameter versionsId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta/apps/' +
        commons.Escaper.ecapeVariable('$appsId') +
        '/services/' +
        commons.Escaper.ecapeVariable('$servicesId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionsId') +
        '/instances';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListInstancesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Google Cloud Endpoints
/// (https://cloud.google.com/appengine/docs/python/endpoints/) configuration
/// for API handlers.
class ApiConfigHandler {
  /// Action to take when users access resources that require authentication.
  ///
  /// Defaults to redirect.
  /// Possible string values are:
  /// - "AUTH_FAIL_ACTION_UNSPECIFIED" : Not specified.
  /// AUTH_FAIL_ACTION_REDIRECT is assumed.
  /// - "AUTH_FAIL_ACTION_REDIRECT" : Redirects user to "accounts.google.com".
  /// The user is redirected back to the application URL after signing in or
  /// creating an account.
  /// - "AUTH_FAIL_ACTION_UNAUTHORIZED" : Rejects request with a 401 HTTP status
  /// code and an error message.
  core.String authFailAction;

  /// Level of login required to access this resource.
  ///
  /// Defaults to optional.
  /// Possible string values are:
  /// - "LOGIN_UNSPECIFIED" : Not specified. LOGIN_OPTIONAL is assumed.
  /// - "LOGIN_OPTIONAL" : Does not require that the user is signed in.
  /// - "LOGIN_ADMIN" : If the user is not signed in, the auth_fail_action is
  /// taken. In addition, if the user is not an administrator for the
  /// application, they are given an error message regardless of
  /// auth_fail_action. If the user is an administrator, the handler proceeds.
  /// - "LOGIN_REQUIRED" : If the user has signed in, the handler proceeds
  /// normally. Otherwise, the auth_fail_action is taken.
  core.String login;

  /// Path to the script from the application root directory.
  core.String script;

  /// Security (HTTPS) enforcement for this URL.
  /// Possible string values are:
  /// - "SECURE_UNSPECIFIED" : Not specified.
  /// - "SECURE_DEFAULT" : Both HTTP and HTTPS requests with URLs that match the
  /// handler succeed without redirects. The application can examine the request
  /// to determine which protocol was used, and respond accordingly.
  /// - "SECURE_NEVER" : Requests for a URL that match this handler that use
  /// HTTPS are automatically redirected to the HTTP equivalent URL.
  /// - "SECURE_OPTIONAL" : Both HTTP and HTTPS requests with URLs that match
  /// the handler succeed without redirects. The application can examine the
  /// request to determine which protocol was used and respond accordingly.
  /// - "SECURE_ALWAYS" : Requests for a URL that match this handler that do not
  /// use HTTPS are automatically redirected to the HTTPS URL with the same
  /// path. Query parameters are reserved for the redirect.
  core.String securityLevel;

  /// URL to serve the endpoint at.
  core.String url;

  ApiConfigHandler();

  ApiConfigHandler.fromJson(core.Map _json) {
    if (_json.containsKey('authFailAction')) {
      authFailAction = _json['authFailAction'] as core.String;
    }
    if (_json.containsKey('login')) {
      login = _json['login'] as core.String;
    }
    if (_json.containsKey('script')) {
      script = _json['script'] as core.String;
    }
    if (_json.containsKey('securityLevel')) {
      securityLevel = _json['securityLevel'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authFailAction != null) {
      _json['authFailAction'] = authFailAction;
    }
    if (login != null) {
      _json['login'] = login;
    }
    if (script != null) {
      _json['script'] = script;
    }
    if (securityLevel != null) {
      _json['securityLevel'] = securityLevel;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandler {
  /// Path to the script from the application root directory.
  core.String scriptPath;

  ApiEndpointHandler();

  ApiEndpointHandler.fromJson(core.Map _json) {
    if (_json.containsKey('scriptPath')) {
      scriptPath = _json['scriptPath'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (scriptPath != null) {
      _json['scriptPath'] = scriptPath;
    }
    return _json;
  }
}

/// An Application resource contains the top-level configuration of an App
/// Engine application.
class Application {
  /// Google Apps authentication domain that controls which users can access
  /// this application.Defaults to open access for any Google Account.
  core.String authDomain;

  /// Google Cloud Storage bucket that can be used for storing files associated
  /// with this application.
  ///
  /// This bucket is associated with the application and can be used by the
  /// gcloud deployment commands.@OutputOnly
  core.String codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated
  /// with this application.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Database type is unspecified.
  /// - "CLOUD_DATASTORE" : Cloud Datastore
  /// - "CLOUD_FIRESTORE" : Cloud Firestore Native
  /// - "CLOUD_DATASTORE_COMPATIBILITY" : Cloud Firestore in Datastore Mode
  core.String databaseType;

  /// Google Cloud Storage bucket that can be used by this application to store
  /// content.@OutputOnly
  core.String defaultBucket;

  /// Cookie expiration policy for this application.
  core.String defaultCookieExpiration;

  /// Hostname used to reach this application, as resolved by App
  /// Engine.@OutputOnly
  core.String defaultHostname;

  /// HTTP path dispatch rules for requests to the application that do not
  /// explicitly target a service or version.
  ///
  /// Rules are order-dependent. Up to 20 dispatch rules can be supported.
  core.List<UrlDispatchRule> dispatchRules;

  /// The feature specific settings to be used in the application.
  FeatureSettings featureSettings;

  /// The Google Container Registry domain used for storing managed build docker
  /// images for this application.
  core.String gcrDomain;
  IdentityAwareProxy iap;

  /// Identifier of the Application resource.
  ///
  /// This identifier is equivalent to the project ID of the Google Cloud
  /// Platform project where you want to deploy your application. Example:
  /// myapp.
  core.String id;

  /// Location from which this application runs.
  ///
  /// Application instances run out of the data centers in the specified
  /// location, which is also where all of the application's end user content is
  /// stored.Defaults to us-central.View the list of supported locations
  /// (https://cloud.google.com/appengine/docs/locations).
  core.String locationId;

  /// Full path to the Application resource in the API.
  ///
  /// Example: apps/myapp.@OutputOnly
  core.String name;

  /// Serving status of this application.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Serving status is unspecified.
  /// - "SERVING" : Application is serving.
  /// - "USER_DISABLED" : Application has been disabled by the user.
  /// - "SYSTEM_DISABLED" : Application has been disabled by the system.
  core.String servingStatus;

  Application();

  Application.fromJson(core.Map _json) {
    if (_json.containsKey('authDomain')) {
      authDomain = _json['authDomain'] as core.String;
    }
    if (_json.containsKey('codeBucket')) {
      codeBucket = _json['codeBucket'] as core.String;
    }
    if (_json.containsKey('databaseType')) {
      databaseType = _json['databaseType'] as core.String;
    }
    if (_json.containsKey('defaultBucket')) {
      defaultBucket = _json['defaultBucket'] as core.String;
    }
    if (_json.containsKey('defaultCookieExpiration')) {
      defaultCookieExpiration = _json['defaultCookieExpiration'] as core.String;
    }
    if (_json.containsKey('defaultHostname')) {
      defaultHostname = _json['defaultHostname'] as core.String;
    }
    if (_json.containsKey('dispatchRules')) {
      dispatchRules = (_json['dispatchRules'] as core.List)
          .map<UrlDispatchRule>((value) => UrlDispatchRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('featureSettings')) {
      featureSettings = FeatureSettings.fromJson(
          _json['featureSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gcrDomain')) {
      gcrDomain = _json['gcrDomain'] as core.String;
    }
    if (_json.containsKey('iap')) {
      iap = IdentityAwareProxy.fromJson(
          _json['iap'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('servingStatus')) {
      servingStatus = _json['servingStatus'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authDomain != null) {
      _json['authDomain'] = authDomain;
    }
    if (codeBucket != null) {
      _json['codeBucket'] = codeBucket;
    }
    if (databaseType != null) {
      _json['databaseType'] = databaseType;
    }
    if (defaultBucket != null) {
      _json['defaultBucket'] = defaultBucket;
    }
    if (defaultCookieExpiration != null) {
      _json['defaultCookieExpiration'] = defaultCookieExpiration;
    }
    if (defaultHostname != null) {
      _json['defaultHostname'] = defaultHostname;
    }
    if (dispatchRules != null) {
      _json['dispatchRules'] =
          dispatchRules.map((value) => value.toJson()).toList();
    }
    if (featureSettings != null) {
      _json['featureSettings'] = featureSettings.toJson();
    }
    if (gcrDomain != null) {
      _json['gcrDomain'] = gcrDomain;
    }
    if (iap != null) {
      _json['iap'] = iap.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (servingStatus != null) {
      _json['servingStatus'] = servingStatus;
    }
    return _json;
  }
}

/// An SSL certificate that a user has been authorized to administer.
///
/// A user is authorized to administer any certificate that applies to one of
/// their authorized domains.
class AuthorizedCertificate {
  /// The SSL certificate serving the AuthorizedCertificate resource.
  ///
  /// This must be obtained independently from a certificate authority.
  CertificateRawData certificateRawData;

  /// The user-specified display name of the certificate.
  ///
  /// This is not guaranteed to be unique. Example: My Certificate.
  core.String displayName;

  /// Aggregate count of the domain mappings with this certificate mapped.
  ///
  /// This count includes domain mappings on applications for which the user
  /// does not have VIEWER permissions.Only returned by GET or LIST requests
  /// when specifically requested by the view=FULL_CERTIFICATE
  /// option.@OutputOnly
  core.int domainMappingsCount;

  /// Topmost applicable domains of this certificate.
  ///
  /// This certificate applies to these domains and their subdomains. Example:
  /// example.com.@OutputOnly
  core.List<core.String> domainNames;

  /// The time when this certificate expires.
  ///
  /// To update the renewal time on this certificate, upload an SSL certificate
  /// with a different expiration time using
  /// AuthorizedCertificates.UpdateAuthorizedCertificate.@OutputOnly
  core.String expireTime;

  /// Relative name of the certificate.
  ///
  /// This is a unique value autogenerated on AuthorizedCertificate resource
  /// creation. Example: 12345.@OutputOnly
  core.String id;

  /// Only applicable if this certificate is managed by App Engine.
  ///
  /// Managed certificates are tied to the lifecycle of a DomainMapping and
  /// cannot be updated or deleted via the AuthorizedCertificates API. If this
  /// certificate is manually administered by the user, this field will be
  /// empty.@OutputOnly
  ManagedCertificate managedCertificate;

  /// Full path to the AuthorizedCertificate resource in the API.
  ///
  /// Example: apps/myapp/authorizedCertificates/12345.@OutputOnly
  core.String name;

  /// The full paths to user visible Domain Mapping resources that have this
  /// certificate mapped.
  ///
  /// Example: apps/myapp/domainMappings/example.com.This may not represent the
  /// full list of mapped domain mappings if the user does not have VIEWER
  /// permissions on all of the applications that have this certificate mapped.
  /// See domain_mappings_count for a complete count.Only returned by GET or
  /// LIST requests when specifically requested by the view=FULL_CERTIFICATE
  /// option.@OutputOnly
  core.List<core.String> visibleDomainMappings;

  AuthorizedCertificate();

  AuthorizedCertificate.fromJson(core.Map _json) {
    if (_json.containsKey('certificateRawData')) {
      certificateRawData = CertificateRawData.fromJson(
          _json['certificateRawData'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('domainMappingsCount')) {
      domainMappingsCount = _json['domainMappingsCount'] as core.int;
    }
    if (_json.containsKey('domainNames')) {
      domainNames = (_json['domainNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('managedCertificate')) {
      managedCertificate = ManagedCertificate.fromJson(
          _json['managedCertificate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('visibleDomainMappings')) {
      visibleDomainMappings = (_json['visibleDomainMappings'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certificateRawData != null) {
      _json['certificateRawData'] = certificateRawData.toJson();
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (domainMappingsCount != null) {
      _json['domainMappingsCount'] = domainMappingsCount;
    }
    if (domainNames != null) {
      _json['domainNames'] = domainNames;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (managedCertificate != null) {
      _json['managedCertificate'] = managedCertificate.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (visibleDomainMappings != null) {
      _json['visibleDomainMappings'] = visibleDomainMappings;
    }
    return _json;
  }
}

/// A domain that a user has been authorized to administer.
///
/// To authorize use of a domain, verify ownership via Webmaster Central
/// (https://www.google.com/webmasters/verification/home).
class AuthorizedDomain {
  /// Fully qualified domain name of the domain authorized for use.
  ///
  /// Example: example.com.
  core.String id;

  /// Full path to the AuthorizedDomain resource in the API.
  ///
  /// Example: apps/myapp/authorizedDomains/example.com.@OutputOnly
  core.String name;

  AuthorizedDomain();

  AuthorizedDomain.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Automatic scaling is based on request rate, response latencies, and other
/// application metrics.
class AutomaticScaling {
  /// The time period that the Autoscaler
  /// (https://cloud.google.com/compute/docs/autoscaler/) should wait before it
  /// starts collecting information from a new instance.
  ///
  /// This prevents the autoscaler from collecting information when the instance
  /// is initializing, during which the collected usage would not be reliable.
  /// Only applicable in the App Engine flexible environment.
  core.String coolDownPeriod;

  /// Target scaling by CPU usage.
  CpuUtilization cpuUtilization;

  /// Target scaling by user-provided metrics.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.List<CustomMetric> customMetrics;

  /// Target scaling by disk usage.
  DiskUtilization diskUtilization;

  /// Number of concurrent requests an automatic scaling instance can accept
  /// before the scheduler spawns a new instance.Defaults to a runtime-specific
  /// value.
  core.int maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this
  /// version.
  core.int maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue
  /// before starting a new instance to handle it.
  core.String maxPendingLatency;

  /// Maximum number of instances that should be started to handle requests for
  /// this version.
  core.int maxTotalInstances;

  /// Minimum number of idle instances that should be maintained for this
  /// version.
  ///
  /// Only applicable for the default version of a service.
  core.int minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before
  /// starting a new instance to handle it.
  core.String minPendingLatency;

  /// Minimum number of running instances that should be maintained for this
  /// version.
  core.int minTotalInstances;

  /// Target scaling by network usage.
  NetworkUtilization networkUtilization;

  /// Target scaling by request utilization.
  RequestUtilization requestUtilization;

  /// Scheduler settings for standard environment.
  StandardSchedulerSettings standardSchedulerSettings;

  AutomaticScaling();

  AutomaticScaling.fromJson(core.Map _json) {
    if (_json.containsKey('coolDownPeriod')) {
      coolDownPeriod = _json['coolDownPeriod'] as core.String;
    }
    if (_json.containsKey('cpuUtilization')) {
      cpuUtilization = CpuUtilization.fromJson(
          _json['cpuUtilization'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customMetrics')) {
      customMetrics = (_json['customMetrics'] as core.List)
          .map<CustomMetric>((value) => CustomMetric.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('diskUtilization')) {
      diskUtilization = DiskUtilization.fromJson(
          _json['diskUtilization'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maxConcurrentRequests')) {
      maxConcurrentRequests = _json['maxConcurrentRequests'] as core.int;
    }
    if (_json.containsKey('maxIdleInstances')) {
      maxIdleInstances = _json['maxIdleInstances'] as core.int;
    }
    if (_json.containsKey('maxPendingLatency')) {
      maxPendingLatency = _json['maxPendingLatency'] as core.String;
    }
    if (_json.containsKey('maxTotalInstances')) {
      maxTotalInstances = _json['maxTotalInstances'] as core.int;
    }
    if (_json.containsKey('minIdleInstances')) {
      minIdleInstances = _json['minIdleInstances'] as core.int;
    }
    if (_json.containsKey('minPendingLatency')) {
      minPendingLatency = _json['minPendingLatency'] as core.String;
    }
    if (_json.containsKey('minTotalInstances')) {
      minTotalInstances = _json['minTotalInstances'] as core.int;
    }
    if (_json.containsKey('networkUtilization')) {
      networkUtilization = NetworkUtilization.fromJson(
          _json['networkUtilization'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestUtilization')) {
      requestUtilization = RequestUtilization.fromJson(
          _json['requestUtilization'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('standardSchedulerSettings')) {
      standardSchedulerSettings = StandardSchedulerSettings.fromJson(
          _json['standardSchedulerSettings']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (coolDownPeriod != null) {
      _json['coolDownPeriod'] = coolDownPeriod;
    }
    if (cpuUtilization != null) {
      _json['cpuUtilization'] = cpuUtilization.toJson();
    }
    if (customMetrics != null) {
      _json['customMetrics'] =
          customMetrics.map((value) => value.toJson()).toList();
    }
    if (diskUtilization != null) {
      _json['diskUtilization'] = diskUtilization.toJson();
    }
    if (maxConcurrentRequests != null) {
      _json['maxConcurrentRequests'] = maxConcurrentRequests;
    }
    if (maxIdleInstances != null) {
      _json['maxIdleInstances'] = maxIdleInstances;
    }
    if (maxPendingLatency != null) {
      _json['maxPendingLatency'] = maxPendingLatency;
    }
    if (maxTotalInstances != null) {
      _json['maxTotalInstances'] = maxTotalInstances;
    }
    if (minIdleInstances != null) {
      _json['minIdleInstances'] = minIdleInstances;
    }
    if (minPendingLatency != null) {
      _json['minPendingLatency'] = minPendingLatency;
    }
    if (minTotalInstances != null) {
      _json['minTotalInstances'] = minTotalInstances;
    }
    if (networkUtilization != null) {
      _json['networkUtilization'] = networkUtilization.toJson();
    }
    if (requestUtilization != null) {
      _json['requestUtilization'] = requestUtilization.toJson();
    }
    if (standardSchedulerSettings != null) {
      _json['standardSchedulerSettings'] = standardSchedulerSettings.toJson();
    }
    return _json;
  }
}

/// A service with basic scaling will create an instance when the application
/// receives a request.
///
/// The instance will be turned down when the app becomes idle. Basic scaling is
/// ideal for work that is intermittent or driven by user activity.
class BasicScaling {
  /// Duration of time after the last request that an instance must wait before
  /// the instance is shut down.
  core.String idleTimeout;

  /// Maximum number of instances to create for this version.
  core.int maxInstances;

  BasicScaling();

  BasicScaling.fromJson(core.Map _json) {
    if (_json.containsKey('idleTimeout')) {
      idleTimeout = _json['idleTimeout'] as core.String;
    }
    if (_json.containsKey('maxInstances')) {
      maxInstances = _json['maxInstances'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (idleTimeout != null) {
      _json['idleTimeout'] = idleTimeout;
    }
    if (maxInstances != null) {
      _json['maxInstances'] = maxInstances;
    }
    return _json;
  }
}

/// Request message for Firewall.BatchUpdateIngressRules.
class BatchUpdateIngressRulesRequest {
  /// A list of FirewallRules to replace the existing set.
  core.List<FirewallRule> ingressRules;

  BatchUpdateIngressRulesRequest();

  BatchUpdateIngressRulesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('ingressRules')) {
      ingressRules = (_json['ingressRules'] as core.List)
          .map<FirewallRule>((value) => FirewallRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ingressRules != null) {
      _json['ingressRules'] =
          ingressRules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for Firewall.UpdateAllIngressRules.
class BatchUpdateIngressRulesResponse {
  /// The full list of ingress FirewallRules for this application.
  core.List<FirewallRule> ingressRules;

  BatchUpdateIngressRulesResponse();

  BatchUpdateIngressRulesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('ingressRules')) {
      ingressRules = (_json['ingressRules'] as core.List)
          .map<FirewallRule>((value) => FirewallRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ingressRules != null) {
      _json['ingressRules'] =
          ingressRules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Google Cloud Build information.
class BuildInfo {
  /// The Google Cloud Build id.
  ///
  /// Example: "f966068f-08b2-42c8-bdfe-74137dff2bf9"
  core.String cloudBuildId;

  BuildInfo();

  BuildInfo.fromJson(core.Map _json) {
    if (_json.containsKey('cloudBuildId')) {
      cloudBuildId = _json['cloudBuildId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudBuildId != null) {
      _json['cloudBuildId'] = cloudBuildId;
    }
    return _json;
  }
}

/// An SSL certificate obtained from a certificate authority.
class CertificateRawData {
  /// Unencrypted PEM encoded RSA private key.
  ///
  /// This field is set once on certificate creation and then encrypted. The key
  /// size must be 2048 bits or fewer. Must include the header and footer.
  /// Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY-----
  /// @InputOnly
  core.String privateKey;

  /// PEM encoded x.509 public key certificate.
  ///
  /// This field is set once on certificate creation. Must include the header
  /// and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  core.String publicCertificate;

  CertificateRawData();

  CertificateRawData.fromJson(core.Map _json) {
    if (_json.containsKey('privateKey')) {
      privateKey = _json['privateKey'] as core.String;
    }
    if (_json.containsKey('publicCertificate')) {
      publicCertificate = _json['publicCertificate'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (privateKey != null) {
      _json['privateKey'] = privateKey;
    }
    if (publicCertificate != null) {
      _json['publicCertificate'] = publicCertificate;
    }
    return _json;
  }
}

/// Options for the build operations performed as a part of the version
/// deployment.
///
/// Only applicable for App Engine flexible environment when creating a version
/// using source code directly.
class CloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime
  /// configuration details.Required for flexible environment builds.See
  /// https://cloud.google.com/appengine/docs/standard/python/config/appref for
  /// more details.
  core.String appYamlPath;

  /// The Cloud Build timeout used as part of any dependent builds performed by
  /// version creation.
  ///
  /// Defaults to 10 minutes.
  core.String cloudBuildTimeout;

  CloudBuildOptions();

  CloudBuildOptions.fromJson(core.Map _json) {
    if (_json.containsKey('appYamlPath')) {
      appYamlPath = _json['appYamlPath'] as core.String;
    }
    if (_json.containsKey('cloudBuildTimeout')) {
      cloudBuildTimeout = _json['cloudBuildTimeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appYamlPath != null) {
      _json['appYamlPath'] = appYamlPath;
    }
    if (cloudBuildTimeout != null) {
      _json['cloudBuildTimeout'] = cloudBuildTimeout;
    }
    return _json;
  }
}

/// Docker image that is used to create a container and start a VM instance for
/// the version that you deploy.
///
/// Only applicable for instances running in the App Engine flexible
/// environment.
class ContainerInfo {
  /// URI to the hosted container image in Google Container Registry.
  ///
  /// The URI must be fully qualified and include a tag or digest. Examples:
  /// "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  core.String image;

  ContainerInfo();

  ContainerInfo.fromJson(core.Map _json) {
    if (_json.containsKey('image')) {
      image = _json['image'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (image != null) {
      _json['image'] = image;
    }
    return _json;
  }
}

/// Target scaling by CPU usage.
class CpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  core.String aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling.
  ///
  /// Must be between 0 and 1.
  core.double targetUtilization;

  CpuUtilization();

  CpuUtilization.fromJson(core.Map _json) {
    if (_json.containsKey('aggregationWindowLength')) {
      aggregationWindowLength = _json['aggregationWindowLength'] as core.String;
    }
    if (_json.containsKey('targetUtilization')) {
      targetUtilization = (_json['targetUtilization'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aggregationWindowLength != null) {
      _json['aggregationWindowLength'] = aggregationWindowLength;
    }
    if (targetUtilization != null) {
      _json['targetUtilization'] = targetUtilization;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation during a
/// google.appengine.v1.CreateVersionRequest.
class CreateVersionMetadataV1 {
  /// The Cloud Build ID if one was created as part of the version create.
  ///
  /// @OutputOnly
  core.String cloudBuildId;

  CreateVersionMetadataV1();

  CreateVersionMetadataV1.fromJson(core.Map _json) {
    if (_json.containsKey('cloudBuildId')) {
      cloudBuildId = _json['cloudBuildId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudBuildId != null) {
      _json['cloudBuildId'] = cloudBuildId;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation during a
/// google.appengine.v1alpha.CreateVersionRequest.
class CreateVersionMetadataV1Alpha {
  /// The Cloud Build ID if one was created as part of the version create.
  ///
  /// @OutputOnly
  core.String cloudBuildId;

  CreateVersionMetadataV1Alpha();

  CreateVersionMetadataV1Alpha.fromJson(core.Map _json) {
    if (_json.containsKey('cloudBuildId')) {
      cloudBuildId = _json['cloudBuildId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudBuildId != null) {
      _json['cloudBuildId'] = cloudBuildId;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation during a
/// google.appengine.v1beta.CreateVersionRequest.
class CreateVersionMetadataV1Beta {
  /// The Cloud Build ID if one was created as part of the version create.
  ///
  /// @OutputOnly
  core.String cloudBuildId;

  CreateVersionMetadataV1Beta();

  CreateVersionMetadataV1Beta.fromJson(core.Map _json) {
    if (_json.containsKey('cloudBuildId')) {
      cloudBuildId = _json['cloudBuildId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudBuildId != null) {
      _json['cloudBuildId'] = cloudBuildId;
    }
    return _json;
  }
}

/// Allows autoscaling based on Stackdriver metrics.
class CustomMetric {
  /// Allows filtering on the metric's fields.
  core.String filter;

  /// The name of the metric.
  core.String metricName;

  /// May be used instead of target_utilization when an instance can handle a
  /// specific amount of work/resources and the metric value is equal to the
  /// current amount of work remaining.
  ///
  /// The autoscaler will try to keep the number of instances equal to the
  /// metric value divided by single_instance_assignment.
  core.double singleInstanceAssignment;

  /// The type of the metric.
  ///
  /// Must be a string representing a Stackdriver metric type e.g. GAGUE,
  /// DELTA_PER_SECOND, etc.
  core.String targetType;

  /// The target value for the metric.
  core.double targetUtilization;

  CustomMetric();

  CustomMetric.fromJson(core.Map _json) {
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('metricName')) {
      metricName = _json['metricName'] as core.String;
    }
    if (_json.containsKey('singleInstanceAssignment')) {
      singleInstanceAssignment =
          (_json['singleInstanceAssignment'] as core.num).toDouble();
    }
    if (_json.containsKey('targetType')) {
      targetType = _json['targetType'] as core.String;
    }
    if (_json.containsKey('targetUtilization')) {
      targetUtilization = (_json['targetUtilization'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (metricName != null) {
      _json['metricName'] = metricName;
    }
    if (singleInstanceAssignment != null) {
      _json['singleInstanceAssignment'] = singleInstanceAssignment;
    }
    if (targetType != null) {
      _json['targetType'] = targetType;
    }
    if (targetUtilization != null) {
      _json['targetUtilization'] = targetUtilization;
    }
    return _json;
  }
}

/// Request message for Instances.DebugInstance.
class DebugInstanceRequest {
  /// Public SSH key to add to the instance.
  ///
  /// Examples: \[USERNAME\]:ssh-rsa \[KEY_VALUE\] \[USERNAME\]
  /// \[USERNAME\]:ssh-rsa \[KEY_VALUE\] google-ssh
  /// {"userName":"\[USERNAME\]","expireOn":"\[EXPIRE_TIME\]"}For more
  /// information, see Adding and Removing SSH Keys
  /// (https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys).
  core.String sshKey;

  DebugInstanceRequest();

  DebugInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('sshKey')) {
      sshKey = _json['sshKey'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sshKey != null) {
      _json['sshKey'] = sshKey;
    }
    return _json;
  }
}

/// Code and application artifacts used to deploy a version to App Engine.
class Deployment {
  /// Google Cloud Build build information.
  ///
  /// Only applicable for instances running in the App Engine flexible
  /// environment.
  BuildInfo build;

  /// Options for any Google Cloud Build builds created as a part of this
  /// deployment.These options will only be used if a new build is created, such
  /// as when deploying to the App Engine flexible environment using files or
  /// zip.
  CloudBuildOptions cloudBuildOptions;

  /// The Docker image for the container that runs the version.
  ///
  /// Only applicable for instances running in the App Engine flexible
  /// environment.
  ContainerInfo container;

  /// Manifest of the files stored in Google Cloud Storage that are included as
  /// part of this version.
  ///
  /// All files must be readable using the credentials supplied with this call.
  core.Map<core.String, FileInfo> files;

  /// The zip file for this deployment, if this is a zip deployment.
  ZipInfo zip;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey('build')) {
      build = BuildInfo.fromJson(
          _json['build'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('cloudBuildOptions')) {
      cloudBuildOptions = CloudBuildOptions.fromJson(
          _json['cloudBuildOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('container')) {
      container = ContainerInfo.fromJson(
          _json['container'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('files')) {
      files = (_json['files'] as core.Map).cast<core.String, core.Map>().map(
            (key, item) => core.MapEntry(
              key,
              FileInfo.fromJson(item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
    if (_json.containsKey('zip')) {
      zip =
          ZipInfo.fromJson(_json['zip'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (build != null) {
      _json['build'] = build.toJson();
    }
    if (cloudBuildOptions != null) {
      _json['cloudBuildOptions'] = cloudBuildOptions.toJson();
    }
    if (container != null) {
      _json['container'] = container.toJson();
    }
    if (files != null) {
      _json['files'] =
          files.map((key, item) => core.MapEntry(key, item.toJson()));
    }
    if (zip != null) {
      _json['zip'] = zip.toJson();
    }
    return _json;
  }
}

/// Target scaling by disk usage.
///
/// Only applicable in the App Engine flexible environment.
class DiskUtilization {
  /// Target bytes read per second.
  core.int targetReadBytesPerSecond;

  /// Target ops read per seconds.
  core.int targetReadOpsPerSecond;

  /// Target bytes written per second.
  core.int targetWriteBytesPerSecond;

  /// Target ops written per second.
  core.int targetWriteOpsPerSecond;

  DiskUtilization();

  DiskUtilization.fromJson(core.Map _json) {
    if (_json.containsKey('targetReadBytesPerSecond')) {
      targetReadBytesPerSecond = _json['targetReadBytesPerSecond'] as core.int;
    }
    if (_json.containsKey('targetReadOpsPerSecond')) {
      targetReadOpsPerSecond = _json['targetReadOpsPerSecond'] as core.int;
    }
    if (_json.containsKey('targetWriteBytesPerSecond')) {
      targetWriteBytesPerSecond =
          _json['targetWriteBytesPerSecond'] as core.int;
    }
    if (_json.containsKey('targetWriteOpsPerSecond')) {
      targetWriteOpsPerSecond = _json['targetWriteOpsPerSecond'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (targetReadBytesPerSecond != null) {
      _json['targetReadBytesPerSecond'] = targetReadBytesPerSecond;
    }
    if (targetReadOpsPerSecond != null) {
      _json['targetReadOpsPerSecond'] = targetReadOpsPerSecond;
    }
    if (targetWriteBytesPerSecond != null) {
      _json['targetWriteBytesPerSecond'] = targetWriteBytesPerSecond;
    }
    if (targetWriteOpsPerSecond != null) {
      _json['targetWriteOpsPerSecond'] = targetWriteOpsPerSecond;
    }
    return _json;
  }
}

/// A domain serving an App Engine application.
class DomainMapping {
  /// Relative name of the domain serving the application.
  ///
  /// Example: example.com.
  core.String id;

  /// Full path to the DomainMapping resource in the API.
  ///
  /// Example: apps/myapp/domainMapping/example.com.@OutputOnly
  core.String name;

  /// The resource records required to configure this domain mapping.
  ///
  /// These records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.@OutputOnly
  core.List<ResourceRecord> resourceRecords;

  /// SSL configuration for this domain.
  ///
  /// If unconfigured, this domain will not serve with SSL.
  SslSettings sslSettings;

  DomainMapping();

  DomainMapping.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('resourceRecords')) {
      resourceRecords = (_json['resourceRecords'] as core.List)
          .map<ResourceRecord>((value) => ResourceRecord.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sslSettings')) {
      sslSettings = SslSettings.fromJson(
          _json['sslSettings'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (resourceRecords != null) {
      _json['resourceRecords'] =
          resourceRecords.map((value) => value.toJson()).toList();
    }
    if (sslSettings != null) {
      _json['sslSettings'] = sslSettings.toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for Empty is empty JSON
/// object {}.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Cloud Endpoints (https://cloud.google.com/endpoints) configuration.
///
/// The Endpoints API Service provides tooling for serving Open API and gRPC
/// endpoints via an NGINX proxy. Only valid for App Engine Flexible environment
/// deployments.The fields here refer to the name and configuration ID of a
/// "service" resource in the Service Management API
/// (https://cloud.google.com/service-management/overview).
class EndpointsApiService {
  /// Endpoints service configuration ID as specified by the Service Management
  /// API.
  ///
  /// For example "2016-09-19r1".By default, the rollout strategy for Endpoints
  /// is RolloutStrategy.FIXED. This means that Endpoints starts up with a
  /// particular configuration ID. When a new configuration is rolled out,
  /// Endpoints must be given the new configuration ID. The config_id field is
  /// used to give the configuration ID and is required in this case.Endpoints
  /// also has a rollout strategy called RolloutStrategy.MANAGED. When using
  /// this, Endpoints fetches the latest configuration and does not need the
  /// configuration ID. In this case, config_id must be omitted.
  core.String configId;

  /// Enable or disable trace sampling.
  ///
  /// By default, this is set to false for enabled.
  core.bool disableTraceSampling;

  /// Endpoints service name which is the name of the "service" resource in the
  /// Service Management API.
  ///
  /// For example "myapi.endpoints.myproject.cloud.goog"
  core.String name;

  /// Endpoints rollout strategy.
  ///
  /// If FIXED, config_id must be specified. If MANAGED, config_id must be
  /// omitted.
  /// Possible string values are:
  /// - "UNSPECIFIED_ROLLOUT_STRATEGY" : Not specified. Defaults to FIXED.
  /// - "FIXED" : Endpoints service configuration ID will be fixed to the
  /// configuration ID specified by config_id.
  /// - "MANAGED" : Endpoints service configuration ID will be updated with each
  /// rollout.
  core.String rolloutStrategy;

  EndpointsApiService();

  EndpointsApiService.fromJson(core.Map _json) {
    if (_json.containsKey('configId')) {
      configId = _json['configId'] as core.String;
    }
    if (_json.containsKey('disableTraceSampling')) {
      disableTraceSampling = _json['disableTraceSampling'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('rolloutStrategy')) {
      rolloutStrategy = _json['rolloutStrategy'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (configId != null) {
      _json['configId'] = configId;
    }
    if (disableTraceSampling != null) {
      _json['disableTraceSampling'] = disableTraceSampling;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (rolloutStrategy != null) {
      _json['rolloutStrategy'] = rolloutStrategy;
    }
    return _json;
  }
}

/// The entrypoint for the application.
class Entrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  core.String shell;

  Entrypoint();

  Entrypoint.fromJson(core.Map _json) {
    if (_json.containsKey('shell')) {
      shell = _json['shell'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (shell != null) {
      _json['shell'] = shell;
    }
    return _json;
  }
}

/// Custom static error page to be served when an error occurs.
class ErrorHandler {
  /// Error condition this handler applies to.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : Not specified. ERROR_CODE_DEFAULT is assumed.
  /// - "ERROR_CODE_DEFAULT" : All other error types.
  /// - "ERROR_CODE_OVER_QUOTA" : Application has exceeded a resource quota.
  /// - "ERROR_CODE_DOS_API_DENIAL" : Client blocked by the application's Denial
  /// of Service protection configuration.
  /// - "ERROR_CODE_TIMEOUT" : Deadline reached before the application responds.
  core.String errorCode;

  /// MIME type of file.
  ///
  /// Defaults to text/html.
  core.String mimeType;

  /// Static file content to be served for this error.
  core.String staticFile;

  ErrorHandler();

  ErrorHandler.fromJson(core.Map _json) {
    if (_json.containsKey('errorCode')) {
      errorCode = _json['errorCode'] as core.String;
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('staticFile')) {
      staticFile = _json['staticFile'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errorCode != null) {
      _json['errorCode'] = errorCode;
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (staticFile != null) {
      _json['staticFile'] = staticFile;
    }
    return _json;
  }
}

/// The feature specific settings to be used in the application.
///
/// These define behaviors that are user configurable.
class FeatureSettings {
  /// Boolean value indicating if split health checks should be used instead of
  /// the legacy health checks.
  ///
  /// At an app.yaml level, this means defaulting to 'readiness_check' and
  /// 'liveness_check' values instead of 'health_check' ones. Once the legacy
  /// 'health_check' behavior is deprecated, and this value is always true, this
  /// setting can be removed.
  core.bool splitHealthChecks;

  /// If true, use Container-Optimized OS
  /// (https://cloud.google.com/container-optimized-os/) base image for VMs,
  /// rather than a base Debian image.
  core.bool useContainerOptimizedOs;

  FeatureSettings();

  FeatureSettings.fromJson(core.Map _json) {
    if (_json.containsKey('splitHealthChecks')) {
      splitHealthChecks = _json['splitHealthChecks'] as core.bool;
    }
    if (_json.containsKey('useContainerOptimizedOs')) {
      useContainerOptimizedOs = _json['useContainerOptimizedOs'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (splitHealthChecks != null) {
      _json['splitHealthChecks'] = splitHealthChecks;
    }
    if (useContainerOptimizedOs != null) {
      _json['useContainerOptimizedOs'] = useContainerOptimizedOs;
    }
    return _json;
  }
}

/// Single source file that is part of the version to be deployed.
///
/// Each source file that is deployed must be specified separately.
class FileInfo {
  /// The MIME type of the file.Defaults to the value from Google Cloud Storage.
  core.String mimeType;

  /// The SHA1 hash of the file, in hex.
  core.String sha1Sum;

  /// URL source to use to fetch this file.
  ///
  /// Must be a URL to a resource in Google Cloud Storage in the form
  /// 'http(s)://storage.googleapis.com//'.
  core.String sourceUrl;

  FileInfo();

  FileInfo.fromJson(core.Map _json) {
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('sha1Sum')) {
      sha1Sum = _json['sha1Sum'] as core.String;
    }
    if (_json.containsKey('sourceUrl')) {
      sourceUrl = _json['sourceUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (sha1Sum != null) {
      _json['sha1Sum'] = sha1Sum;
    }
    if (sourceUrl != null) {
      _json['sourceUrl'] = sourceUrl;
    }
    return _json;
  }
}

/// A single firewall rule that is evaluated against incoming traffic and
/// provides an action to take on matched requests.
class FirewallRule {
  /// The action to take on matched requests.
  /// Possible string values are:
  /// - "UNSPECIFIED_ACTION"
  /// - "ALLOW" : Matching requests are allowed.
  /// - "DENY" : Matching requests are denied.
  core.String action;

  /// An optional string description of this rule.
  ///
  /// This field has a maximum length of 100 characters.
  core.String description;

  /// A positive integer between 1, Int32.MaxValue-1 that defines the order of
  /// rule evaluation.
  ///
  /// Rules with the lowest priority are evaluated first.A default rule at
  /// priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous
  /// rule matches. Only the action of this rule can be modified by the user.
  core.int priority;

  /// IP address or range, defined using CIDR notation, of requests that this
  /// rule applies to.
  ///
  /// You can use the wildcard character "*" to match all IPs equivalent to
  /// "0/0" and "::/0" together. Examples: 192.168.1.1 or 192.168.0.0/16 or
  /// 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will
  /// be silently performed on addresses which are not properly truncated. For
  /// example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24.
  /// Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as
  /// 2001:db8::/32.
  core.String sourceRange;

  FirewallRule();

  FirewallRule.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('priority')) {
      priority = _json['priority'] as core.int;
    }
    if (_json.containsKey('sourceRange')) {
      sourceRange = _json['sourceRange'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (priority != null) {
      _json['priority'] = priority;
    }
    if (sourceRange != null) {
      _json['sourceRange'] = sourceRange;
    }
    return _json;
  }
}

/// Health checking configuration for VM instances.
///
/// Unhealthy instances are killed and replaced with new instances. Only
/// applicable for instances in App Engine flexible environment.
class HealthCheck {
  /// Interval between health checks.
  core.String checkInterval;

  /// Whether to explicitly disable health checks for this instance.
  core.bool disableHealthCheck;

  /// Number of consecutive successful health checks required before receiving
  /// traffic.
  core.int healthyThreshold;

  /// Host header to send when performing an HTTP health check.
  ///
  /// Example: "myapp.appspot.com"
  core.String host;

  /// Number of consecutive failed health checks required before an instance is
  /// restarted.
  core.int restartThreshold;

  /// Time before the health check is considered failed.
  core.String timeout;

  /// Number of consecutive failed health checks required before removing
  /// traffic.
  core.int unhealthyThreshold;

  HealthCheck();

  HealthCheck.fromJson(core.Map _json) {
    if (_json.containsKey('checkInterval')) {
      checkInterval = _json['checkInterval'] as core.String;
    }
    if (_json.containsKey('disableHealthCheck')) {
      disableHealthCheck = _json['disableHealthCheck'] as core.bool;
    }
    if (_json.containsKey('healthyThreshold')) {
      healthyThreshold = _json['healthyThreshold'] as core.int;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('restartThreshold')) {
      restartThreshold = _json['restartThreshold'] as core.int;
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
    if (_json.containsKey('unhealthyThreshold')) {
      unhealthyThreshold = _json['unhealthyThreshold'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (checkInterval != null) {
      _json['checkInterval'] = checkInterval;
    }
    if (disableHealthCheck != null) {
      _json['disableHealthCheck'] = disableHealthCheck;
    }
    if (healthyThreshold != null) {
      _json['healthyThreshold'] = healthyThreshold;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (restartThreshold != null) {
      _json['restartThreshold'] = restartThreshold;
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    if (unhealthyThreshold != null) {
      _json['unhealthyThreshold'] = unhealthyThreshold;
    }
    return _json;
  }
}

/// Identity-Aware Proxy
class IdentityAwareProxy {
  /// Whether the serving infrastructure will authenticate and authorize all
  /// incoming requests.If true, the oauth2_client_id and oauth2_client_secret
  /// fields must be non-empty.
  core.bool enabled;

  /// OAuth2 client ID to use for the authentication flow.
  core.String oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow.For security
  /// reasons, this value cannot be retrieved via the API.
  ///
  /// Instead, the SHA-256 hash of the value is returned in the
  /// oauth2_client_secret_sha256 field.@InputOnly
  core.String oauth2ClientSecret;

  /// Hex-encoded SHA-256 hash of the client secret.@OutputOnly
  core.String oauth2ClientSecretSha256;

  IdentityAwareProxy();

  IdentityAwareProxy.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('oauth2ClientId')) {
      oauth2ClientId = _json['oauth2ClientId'] as core.String;
    }
    if (_json.containsKey('oauth2ClientSecret')) {
      oauth2ClientSecret = _json['oauth2ClientSecret'] as core.String;
    }
    if (_json.containsKey('oauth2ClientSecretSha256')) {
      oauth2ClientSecretSha256 =
          _json['oauth2ClientSecretSha256'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (oauth2ClientId != null) {
      _json['oauth2ClientId'] = oauth2ClientId;
    }
    if (oauth2ClientSecret != null) {
      _json['oauth2ClientSecret'] = oauth2ClientSecret;
    }
    if (oauth2ClientSecretSha256 != null) {
      _json['oauth2ClientSecretSha256'] = oauth2ClientSecretSha256;
    }
    return _json;
  }
}

/// An Instance resource is the computing unit that App Engine uses to
/// automatically scale an application.
class Instance {
  /// App Engine release this instance is running on.
  ///
  /// Output only.
  core.String appEngineRelease;

  /// Availability of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "RESIDENT"
  /// - "DYNAMIC"
  core.String availability;

  /// Average latency (ms) over the last minute.
  ///
  /// Output only.
  core.int averageLatency;

  /// Number of errors since this instance was started.
  ///
  /// Output only.
  core.int errors;

  /// Relative name of the instance within the version.
  ///
  /// Example: instance-1.
  ///
  /// Output only.
  core.String id;

  /// Total memory in use (bytes).
  ///
  /// Output only.
  core.String memoryUsage;

  /// Full path to the Instance resource in the API.
  ///
  /// Example: apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// Output only.
  core.String name;

  /// Average queries per second (QPS) over the last minute.
  ///
  /// Output only.
  core.double qps;

  /// Number of requests since this instance was started.
  ///
  /// Output only.
  core.int requests;

  /// Time that this instance was started.@OutputOnly
  ///
  /// Output only.
  core.String startTime;

  /// Whether this instance is in debug mode.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.bool vmDebugEnabled;

  /// Virtual machine ID of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String vmId;

  /// The IP address of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String vmIp;

  /// The liveness health check of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : There is no liveness health check for the
  /// instance. Only applicable for instances in App Engine standard
  /// environment.
  /// - "UNKNOWN" : The health checking system is aware of the instance but its
  /// health is not known at the moment.
  /// - "HEALTHY" : The instance is reachable i.e. a connection to the
  /// application health checking endpoint can be established, and conforms to
  /// the requirements defined by the health check.
  /// - "UNHEALTHY" : The instance is reachable, but does not conform to the
  /// requirements defined by the health check.
  /// - "DRAINING" : The instance is being drained. The existing connections to
  /// the instance have time to complete, but the new ones are being refused.
  /// - "TIMEOUT" : The instance is unreachable i.e. a connection to the
  /// application health checking endpoint cannot be established, or the server
  /// does not respond within the specified timeout.
  core.String vmLiveness;

  /// Name of the virtual machine where this instance lives.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String vmName;

  /// Status of the virtual machine where this instance lives.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String vmStatus;

  /// Zone where the virtual machine is located.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String vmZoneName;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey('appEngineRelease')) {
      appEngineRelease = _json['appEngineRelease'] as core.String;
    }
    if (_json.containsKey('availability')) {
      availability = _json['availability'] as core.String;
    }
    if (_json.containsKey('averageLatency')) {
      averageLatency = _json['averageLatency'] as core.int;
    }
    if (_json.containsKey('errors')) {
      errors = _json['errors'] as core.int;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('memoryUsage')) {
      memoryUsage = _json['memoryUsage'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('qps')) {
      qps = (_json['qps'] as core.num).toDouble();
    }
    if (_json.containsKey('requests')) {
      requests = _json['requests'] as core.int;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('vmDebugEnabled')) {
      vmDebugEnabled = _json['vmDebugEnabled'] as core.bool;
    }
    if (_json.containsKey('vmId')) {
      vmId = _json['vmId'] as core.String;
    }
    if (_json.containsKey('vmIp')) {
      vmIp = _json['vmIp'] as core.String;
    }
    if (_json.containsKey('vmLiveness')) {
      vmLiveness = _json['vmLiveness'] as core.String;
    }
    if (_json.containsKey('vmName')) {
      vmName = _json['vmName'] as core.String;
    }
    if (_json.containsKey('vmStatus')) {
      vmStatus = _json['vmStatus'] as core.String;
    }
    if (_json.containsKey('vmZoneName')) {
      vmZoneName = _json['vmZoneName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appEngineRelease != null) {
      _json['appEngineRelease'] = appEngineRelease;
    }
    if (availability != null) {
      _json['availability'] = availability;
    }
    if (averageLatency != null) {
      _json['averageLatency'] = averageLatency;
    }
    if (errors != null) {
      _json['errors'] = errors;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (memoryUsage != null) {
      _json['memoryUsage'] = memoryUsage;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (qps != null) {
      _json['qps'] = qps;
    }
    if (requests != null) {
      _json['requests'] = requests;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (vmDebugEnabled != null) {
      _json['vmDebugEnabled'] = vmDebugEnabled;
    }
    if (vmId != null) {
      _json['vmId'] = vmId;
    }
    if (vmIp != null) {
      _json['vmIp'] = vmIp;
    }
    if (vmLiveness != null) {
      _json['vmLiveness'] = vmLiveness;
    }
    if (vmName != null) {
      _json['vmName'] = vmName;
    }
    if (vmStatus != null) {
      _json['vmStatus'] = vmStatus;
    }
    if (vmZoneName != null) {
      _json['vmZoneName'] = vmZoneName;
    }
    return _json;
  }
}

/// Third-party Python runtime library that is required by the application.
class Library {
  /// Name of the library.
  ///
  /// Example: "django".
  core.String name;

  /// Version of the library to select, or "latest".
  core.String version;

  Library();

  Library.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Response message for AuthorizedCertificates.ListAuthorizedCertificates.
class ListAuthorizedCertificatesResponse {
  /// The SSL certificates the user is authorized to administer.
  core.List<AuthorizedCertificate> certificates;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListAuthorizedCertificatesResponse();

  ListAuthorizedCertificatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('certificates')) {
      certificates = (_json['certificates'] as core.List)
          .map<AuthorizedCertificate>((value) => AuthorizedCertificate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certificates != null) {
      _json['certificates'] =
          certificates.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for AuthorizedDomains.ListAuthorizedDomains.
class ListAuthorizedDomainsResponse {
  /// The authorized domains belonging to the user.
  core.List<AuthorizedDomain> domains;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListAuthorizedDomainsResponse();

  ListAuthorizedDomainsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('domains')) {
      domains = (_json['domains'] as core.List)
          .map<AuthorizedDomain>((value) => AuthorizedDomain.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domains != null) {
      _json['domains'] = domains.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for DomainMappings.ListDomainMappings.
class ListDomainMappingsResponse {
  /// The domain mappings for the application.
  core.List<DomainMapping> domainMappings;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListDomainMappingsResponse();

  ListDomainMappingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('domainMappings')) {
      domainMappings = (_json['domainMappings'] as core.List)
          .map<DomainMapping>((value) => DomainMapping.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domainMappings != null) {
      _json['domainMappings'] =
          domainMappings.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for Firewall.ListIngressRules.
class ListIngressRulesResponse {
  /// The ingress FirewallRules for this application.
  core.List<FirewallRule> ingressRules;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListIngressRulesResponse();

  ListIngressRulesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('ingressRules')) {
      ingressRules = (_json['ingressRules'] as core.List)
          .map<FirewallRule>((value) => FirewallRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ingressRules != null) {
      _json['ingressRules'] =
          ingressRules.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for Instances.ListInstances.
class ListInstancesResponse {
  /// The instances belonging to the requested version.
  core.List<Instance> instances;

  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<Instance>((value) =>
              Instance.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for Services.ListServices.
class ListServicesResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// The services belonging to the requested application.
  core.List<Service> services;

  ListServicesResponse();

  ListServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('services')) {
      services = (_json['services'] as core.List)
          .map<Service>((value) =>
              Service.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (services != null) {
      _json['services'] = services.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for Versions.ListVersions.
class ListVersionsResponse {
  /// Continuation token for fetching the next page of results.
  core.String nextPageToken;

  /// The versions belonging to the requested service.
  core.List<Version> versions;

  ListVersionsResponse();

  ListVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('versions')) {
      versions = (_json['versions'] as core.List)
          .map<Version>((value) =>
              Version.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (versions != null) {
      _json['versions'] = versions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Health checking configuration for VM instances.
///
/// Unhealthy instances are killed and replaced with new instances.
class LivenessCheck {
  /// Interval between health checks.
  core.String checkInterval;

  /// Number of consecutive failed checks required before considering the VM
  /// unhealthy.
  core.int failureThreshold;

  /// Host header to send when performing a HTTP Liveness check.
  ///
  /// Example: "myapp.appspot.com"
  core.String host;

  /// The initial delay before starting to execute the checks.
  core.String initialDelay;

  /// The request path.
  core.String path;

  /// Number of consecutive successful checks required before considering the VM
  /// healthy.
  core.int successThreshold;

  /// Time before the check is considered failed.
  core.String timeout;

  LivenessCheck();

  LivenessCheck.fromJson(core.Map _json) {
    if (_json.containsKey('checkInterval')) {
      checkInterval = _json['checkInterval'] as core.String;
    }
    if (_json.containsKey('failureThreshold')) {
      failureThreshold = _json['failureThreshold'] as core.int;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('initialDelay')) {
      initialDelay = _json['initialDelay'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('successThreshold')) {
      successThreshold = _json['successThreshold'] as core.int;
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (checkInterval != null) {
      _json['checkInterval'] = checkInterval;
    }
    if (failureThreshold != null) {
      _json['failureThreshold'] = failureThreshold;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (initialDelay != null) {
      _json['initialDelay'] = initialDelay;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (successThreshold != null) {
      _json['successThreshold'] = successThreshold;
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: "us-east1".
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: "projects/example-project/locations/us-east1"
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Metadata for the given google.cloud.location.Location.
class LocationMetadata {
  /// App Engine flexible environment is available in the given
  /// location.@OutputOnly
  core.bool flexibleEnvironmentAvailable;

  /// App Engine standard environment is available in the given
  /// location.@OutputOnly
  core.bool standardEnvironmentAvailable;

  LocationMetadata();

  LocationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('flexibleEnvironmentAvailable')) {
      flexibleEnvironmentAvailable =
          _json['flexibleEnvironmentAvailable'] as core.bool;
    }
    if (_json.containsKey('standardEnvironmentAvailable')) {
      standardEnvironmentAvailable =
          _json['standardEnvironmentAvailable'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (flexibleEnvironmentAvailable != null) {
      _json['flexibleEnvironmentAvailable'] = flexibleEnvironmentAvailable;
    }
    if (standardEnvironmentAvailable != null) {
      _json['standardEnvironmentAvailable'] = standardEnvironmentAvailable;
    }
    return _json;
  }
}

/// A certificate managed by App Engine.
class ManagedCertificate {
  /// Time at which the certificate was last renewed.
  ///
  /// The renewal process is fully managed. Certificate renewal will
  /// automatically occur before the certificate expires. Renewal errors can be
  /// tracked via ManagementStatus.@OutputOnly
  core.String lastRenewalTime;

  /// Status of certificate management.
  ///
  /// Refers to the most recent certificate acquisition or renewal
  /// attempt.@OutputOnly
  /// Possible string values are:
  /// - "MANAGEMENT_STATUS_UNSPECIFIED"
  /// - "OK" : Certificate was successfully obtained and inserted into the
  /// serving system.
  /// - "PENDING" : Certificate is under active attempts to acquire or renew.
  /// - "FAILED_RETRYING_NOT_VISIBLE" : Most recent renewal failed due to an
  /// invalid DNS setup and will be retried. Renewal attempts will continue to
  /// fail until the certificate domain's DNS configuration is fixed. The last
  /// successfully provisioned certificate may still be serving.
  /// - "FAILED_PERMANENT" : All renewal attempts have been exhausted, likely
  /// due to an invalid DNS setup.
  /// - "FAILED_RETRYING_CAA_FORBIDDEN" : Most recent renewal failed due to an
  /// explicit CAA record that does not include one of the in-use CAs (Google CA
  /// and Let's Encrypt). Renewals will continue to fail until the CAA is
  /// reconfigured. The last successfully provisioned certificate may still be
  /// serving.
  /// - "FAILED_RETRYING_CAA_CHECKING" : Most recent renewal failed due to a CAA
  /// retrieval failure. This means that the domain's DNS provider does not
  /// properly handle CAA records, failing requests for CAA records when no CAA
  /// records are defined. Renewals will continue to fail until the DNS provider
  /// is changed or a CAA record is added for the given domain. The last
  /// successfully provisioned certificate may still be serving.
  core.String status;

  ManagedCertificate();

  ManagedCertificate.fromJson(core.Map _json) {
    if (_json.containsKey('lastRenewalTime')) {
      lastRenewalTime = _json['lastRenewalTime'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lastRenewalTime != null) {
      _json['lastRenewalTime'] = lastRenewalTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// A service with manual scaling runs continuously, allowing you to perform
/// complex initialization and rely on the state of its memory over time.
class ManualScaling {
  /// Number of instances to assign to the service at the start.
  ///
  /// This number can later be altered by using the Modules API
  /// (https://cloud.google.com/appengine/docs/python/modules/functions)
  /// set_num_instances() function.
  core.int instances;

  ManualScaling();

  ManualScaling.fromJson(core.Map _json) {
    if (_json.containsKey('instances')) {
      instances = _json['instances'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instances != null) {
      _json['instances'] = instances;
    }
    return _json;
  }
}

/// Extra network settings.
///
/// Only applicable in the App Engine flexible environment.
class Network {
  /// List of ports, or port pairs, to forward from the virtual machine to the
  /// application container.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.List<core.String> forwardedPorts;

  /// Tag to apply to the instance during creation.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.String instanceTag;

  /// Google Compute Engine network where the virtual machines are created.
  ///
  /// Specify the short name, not the resource path.Defaults to default.
  core.String name;

  /// Enable session affinity.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.bool sessionAffinity;

  /// Google Cloud Platform sub-network where the virtual machines are created.
  ///
  /// Specify the short name, not the resource path.If a subnetwork name is
  /// specified, a network name will also be required unless it is for the
  /// default network. If the network that the instance is being created in is a
  /// Legacy network, then the IP address is allocated from the IPv4Range. If
  /// the network that the instance is being created in is an auto Subnet Mode
  /// Network, then only network name should be specified (not the
  /// subnetwork_name) and the IP address is created from the IPCidrRange of the
  /// subnetwork that exists in that zone for that network. If the network that
  /// the instance is being created in is a custom Subnet Mode Network, then the
  /// subnetwork_name must be specified and the IP address is created from the
  /// IPCidrRange of the subnetwork.If specified, the subnetwork must exist in
  /// the same region as the App Engine flexible environment application.
  core.String subnetworkName;

  Network();

  Network.fromJson(core.Map _json) {
    if (_json.containsKey('forwardedPorts')) {
      forwardedPorts = (_json['forwardedPorts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('instanceTag')) {
      instanceTag = _json['instanceTag'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sessionAffinity')) {
      sessionAffinity = _json['sessionAffinity'] as core.bool;
    }
    if (_json.containsKey('subnetworkName')) {
      subnetworkName = _json['subnetworkName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (forwardedPorts != null) {
      _json['forwardedPorts'] = forwardedPorts;
    }
    if (instanceTag != null) {
      _json['instanceTag'] = instanceTag;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sessionAffinity != null) {
      _json['sessionAffinity'] = sessionAffinity;
    }
    if (subnetworkName != null) {
      _json['subnetworkName'] = subnetworkName;
    }
    return _json;
  }
}

/// A NetworkSettings resource is a container for ingress settings for a version
/// or service.
class NetworkSettings {
  /// The ingress settings for version or service.
  /// Possible string values are:
  /// - "INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED" : Unspecified
  /// - "INGRESS_TRAFFIC_ALLOWED_ALL" : Allow HTTP traffic from public and
  /// private sources.
  /// - "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY" : Allow HTTP traffic from only
  /// private VPC sources.
  /// - "INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB" : Allow HTTP traffic from
  /// private VPC sources and through load balancers.
  core.String ingressTrafficAllowed;

  NetworkSettings();

  NetworkSettings.fromJson(core.Map _json) {
    if (_json.containsKey('ingressTrafficAllowed')) {
      ingressTrafficAllowed = _json['ingressTrafficAllowed'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ingressTrafficAllowed != null) {
      _json['ingressTrafficAllowed'] = ingressTrafficAllowed;
    }
    return _json;
  }
}

/// Target scaling by network usage.
///
/// Only applicable in the App Engine flexible environment.
class NetworkUtilization {
  /// Target bytes received per second.
  core.int targetReceivedBytesPerSecond;

  /// Target packets received per second.
  core.int targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  core.int targetSentBytesPerSecond;

  /// Target packets sent per second.
  core.int targetSentPacketsPerSecond;

  NetworkUtilization();

  NetworkUtilization.fromJson(core.Map _json) {
    if (_json.containsKey('targetReceivedBytesPerSecond')) {
      targetReceivedBytesPerSecond =
          _json['targetReceivedBytesPerSecond'] as core.int;
    }
    if (_json.containsKey('targetReceivedPacketsPerSecond')) {
      targetReceivedPacketsPerSecond =
          _json['targetReceivedPacketsPerSecond'] as core.int;
    }
    if (_json.containsKey('targetSentBytesPerSecond')) {
      targetSentBytesPerSecond = _json['targetSentBytesPerSecond'] as core.int;
    }
    if (_json.containsKey('targetSentPacketsPerSecond')) {
      targetSentPacketsPerSecond =
          _json['targetSentPacketsPerSecond'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (targetReceivedBytesPerSecond != null) {
      _json['targetReceivedBytesPerSecond'] = targetReceivedBytesPerSecond;
    }
    if (targetReceivedPacketsPerSecond != null) {
      _json['targetReceivedPacketsPerSecond'] = targetReceivedPacketsPerSecond;
    }
    if (targetSentBytesPerSecond != null) {
      _json['targetSentBytesPerSecond'] = targetSentBytesPerSecond;
    }
    if (targetSentPacketsPerSecond != null) {
      _json['targetSentPacketsPerSecond'] = targetSentPacketsPerSecond;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation.
class OperationMetadataV1 {
  CreateVersionMetadataV1 createVersionMetadata;

  /// Time that this operation completed.@OutputOnly
  core.String endTime;

  /// Ephemeral message that may change every time the operation is polled.
  ///
  /// @OutputOnly
  core.String ephemeralMessage;

  /// Time that this operation was created.@OutputOnly
  core.String insertTime;

  /// API method that initiated this operation.
  ///
  /// Example: google.appengine.v1.Versions.CreateVersion.@OutputOnly
  core.String method;

  /// Name of the resource that this operation is acting on.
  ///
  /// Example: apps/myapp/services/default.@OutputOnly
  core.String target;

  /// User who requested this operation.@OutputOnly
  core.String user;

  /// Durable messages that persist on every operation poll.
  ///
  /// @OutputOnly
  core.List<core.String> warning;

  OperationMetadataV1();

  OperationMetadataV1.fromJson(core.Map _json) {
    if (_json.containsKey('createVersionMetadata')) {
      createVersionMetadata = CreateVersionMetadataV1.fromJson(
          _json['createVersionMetadata']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('ephemeralMessage')) {
      ephemeralMessage = _json['ephemeralMessage'] as core.String;
    }
    if (_json.containsKey('insertTime')) {
      insertTime = _json['insertTime'] as core.String;
    }
    if (_json.containsKey('method')) {
      method = _json['method'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('user')) {
      user = _json['user'] as core.String;
    }
    if (_json.containsKey('warning')) {
      warning = (_json['warning'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createVersionMetadata != null) {
      _json['createVersionMetadata'] = createVersionMetadata.toJson();
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (ephemeralMessage != null) {
      _json['ephemeralMessage'] = ephemeralMessage;
    }
    if (insertTime != null) {
      _json['insertTime'] = insertTime;
    }
    if (method != null) {
      _json['method'] = method;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (user != null) {
      _json['user'] = user;
    }
    if (warning != null) {
      _json['warning'] = warning;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation.
class OperationMetadataV1Alpha {
  CreateVersionMetadataV1Alpha createVersionMetadata;

  /// Time that this operation completed.@OutputOnly
  core.String endTime;

  /// Ephemeral message that may change every time the operation is polled.
  ///
  /// @OutputOnly
  core.String ephemeralMessage;

  /// Time that this operation was created.@OutputOnly
  core.String insertTime;

  /// API method that initiated this operation.
  ///
  /// Example: google.appengine.v1alpha.Versions.CreateVersion.@OutputOnly
  core.String method;

  /// Name of the resource that this operation is acting on.
  ///
  /// Example: apps/myapp/services/default.@OutputOnly
  core.String target;

  /// User who requested this operation.@OutputOnly
  core.String user;

  /// Durable messages that persist on every operation poll.
  ///
  /// @OutputOnly
  core.List<core.String> warning;

  OperationMetadataV1Alpha();

  OperationMetadataV1Alpha.fromJson(core.Map _json) {
    if (_json.containsKey('createVersionMetadata')) {
      createVersionMetadata = CreateVersionMetadataV1Alpha.fromJson(
          _json['createVersionMetadata']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('ephemeralMessage')) {
      ephemeralMessage = _json['ephemeralMessage'] as core.String;
    }
    if (_json.containsKey('insertTime')) {
      insertTime = _json['insertTime'] as core.String;
    }
    if (_json.containsKey('method')) {
      method = _json['method'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('user')) {
      user = _json['user'] as core.String;
    }
    if (_json.containsKey('warning')) {
      warning = (_json['warning'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createVersionMetadata != null) {
      _json['createVersionMetadata'] = createVersionMetadata.toJson();
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (ephemeralMessage != null) {
      _json['ephemeralMessage'] = ephemeralMessage;
    }
    if (insertTime != null) {
      _json['insertTime'] = insertTime;
    }
    if (method != null) {
      _json['method'] = method;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (user != null) {
      _json['user'] = user;
    }
    if (warning != null) {
      _json['warning'] = warning;
    }
    return _json;
  }
}

/// Metadata for the given google.longrunning.Operation.
class OperationMetadataV1Beta {
  CreateVersionMetadataV1Beta createVersionMetadata;

  /// Time that this operation completed.@OutputOnly
  core.String endTime;

  /// Ephemeral message that may change every time the operation is polled.
  ///
  /// @OutputOnly
  core.String ephemeralMessage;

  /// Time that this operation was created.@OutputOnly
  core.String insertTime;

  /// API method that initiated this operation.
  ///
  /// Example: google.appengine.v1beta.Versions.CreateVersion.@OutputOnly
  core.String method;

  /// Name of the resource that this operation is acting on.
  ///
  /// Example: apps/myapp/services/default.@OutputOnly
  core.String target;

  /// User who requested this operation.@OutputOnly
  core.String user;

  /// Durable messages that persist on every operation poll.
  ///
  /// @OutputOnly
  core.List<core.String> warning;

  OperationMetadataV1Beta();

  OperationMetadataV1Beta.fromJson(core.Map _json) {
    if (_json.containsKey('createVersionMetadata')) {
      createVersionMetadata = CreateVersionMetadataV1Beta.fromJson(
          _json['createVersionMetadata']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('ephemeralMessage')) {
      ephemeralMessage = _json['ephemeralMessage'] as core.String;
    }
    if (_json.containsKey('insertTime')) {
      insertTime = _json['insertTime'] as core.String;
    }
    if (_json.containsKey('method')) {
      method = _json['method'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('user')) {
      user = _json['user'] as core.String;
    }
    if (_json.containsKey('warning')) {
      warning = (_json['warning'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createVersionMetadata != null) {
      _json['createVersionMetadata'] = createVersionMetadata.toJson();
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (ephemeralMessage != null) {
      _json['ephemeralMessage'] = ephemeralMessage;
    }
    if (insertTime != null) {
      _json['insertTime'] = insertTime;
    }
    if (method != null) {
      _json['method'] = method;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (user != null) {
      _json['user'] = user;
    }
    if (warning != null) {
      _json['warning'] = warning;
    }
    return _json;
  }
}

/// Readiness checking configuration for VM instances.
///
/// Unhealthy instances are removed from traffic rotation.
class ReadinessCheck {
  /// A maximum time limit on application initialization, measured from moment
  /// the application successfully replies to a healthcheck until it is ready to
  /// serve traffic.
  core.String appStartTimeout;

  /// Interval between health checks.
  core.String checkInterval;

  /// Number of consecutive failed checks required before removing traffic.
  core.int failureThreshold;

  /// Host header to send when performing a HTTP Readiness check.
  ///
  /// Example: "myapp.appspot.com"
  core.String host;

  /// The request path.
  core.String path;

  /// Number of consecutive successful checks required before receiving traffic.
  core.int successThreshold;

  /// Time before the check is considered failed.
  core.String timeout;

  ReadinessCheck();

  ReadinessCheck.fromJson(core.Map _json) {
    if (_json.containsKey('appStartTimeout')) {
      appStartTimeout = _json['appStartTimeout'] as core.String;
    }
    if (_json.containsKey('checkInterval')) {
      checkInterval = _json['checkInterval'] as core.String;
    }
    if (_json.containsKey('failureThreshold')) {
      failureThreshold = _json['failureThreshold'] as core.int;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('successThreshold')) {
      successThreshold = _json['successThreshold'] as core.int;
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appStartTimeout != null) {
      _json['appStartTimeout'] = appStartTimeout;
    }
    if (checkInterval != null) {
      _json['checkInterval'] = checkInterval;
    }
    if (failureThreshold != null) {
      _json['failureThreshold'] = failureThreshold;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (successThreshold != null) {
      _json['successThreshold'] = successThreshold;
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    return _json;
  }
}

/// Request message for 'Applications.RepairApplication'.
class RepairApplicationRequest {
  RepairApplicationRequest();

  RepairApplicationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Target scaling by request utilization.
///
/// Only applicable in the App Engine flexible environment.
class RequestUtilization {
  /// Target number of concurrent requests.
  core.int targetConcurrentRequests;

  /// Target requests per second.
  core.int targetRequestCountPerSecond;

  RequestUtilization();

  RequestUtilization.fromJson(core.Map _json) {
    if (_json.containsKey('targetConcurrentRequests')) {
      targetConcurrentRequests = _json['targetConcurrentRequests'] as core.int;
    }
    if (_json.containsKey('targetRequestCountPerSecond')) {
      targetRequestCountPerSecond =
          _json['targetRequestCountPerSecond'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (targetConcurrentRequests != null) {
      _json['targetConcurrentRequests'] = targetConcurrentRequests;
    }
    if (targetRequestCountPerSecond != null) {
      _json['targetRequestCountPerSecond'] = targetRequestCountPerSecond;
    }
    return _json;
  }
}

/// A DNS resource record.
class ResourceRecord {
  /// Relative name of the object affected by this record.
  ///
  /// Only applicable for CNAME records. Example: 'www'.
  core.String name;

  /// Data for this record.
  ///
  /// Values vary by record type, as defined in RFC 1035 (section 5) and RFC
  /// 1034 (section 3.6.1).
  core.String rrdata;

  /// Resource record type.
  ///
  /// Example: AAAA.
  /// Possible string values are:
  /// - "A" : An A resource record. Data is an IPv4 address.
  /// - "AAAA" : An AAAA resource record. Data is an IPv6 address.
  /// - "CNAME" : A CNAME resource record. Data is a domain name to be aliased.
  core.String type;

  ResourceRecord();

  ResourceRecord.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('rrdata')) {
      rrdata = _json['rrdata'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (rrdata != null) {
      _json['rrdata'] = rrdata;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Machine resources for a version.
class Resources {
  /// Number of CPU cores needed.
  core.double cpu;

  /// Disk size (GB) needed.
  core.double diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS.
  ///
  /// Only should be used by Cloud Composer to encrypt the vm disk
  core.String kmsKeyReference;

  /// Memory (GB) needed.
  core.double memoryGb;

  /// User specified volumes.
  core.List<Volume> volumes;

  Resources();

  Resources.fromJson(core.Map _json) {
    if (_json.containsKey('cpu')) {
      cpu = (_json['cpu'] as core.num).toDouble();
    }
    if (_json.containsKey('diskGb')) {
      diskGb = (_json['diskGb'] as core.num).toDouble();
    }
    if (_json.containsKey('kmsKeyReference')) {
      kmsKeyReference = _json['kmsKeyReference'] as core.String;
    }
    if (_json.containsKey('memoryGb')) {
      memoryGb = (_json['memoryGb'] as core.num).toDouble();
    }
    if (_json.containsKey('volumes')) {
      volumes = (_json['volumes'] as core.List)
          .map<Volume>((value) =>
              Volume.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpu != null) {
      _json['cpu'] = cpu;
    }
    if (diskGb != null) {
      _json['diskGb'] = diskGb;
    }
    if (kmsKeyReference != null) {
      _json['kmsKeyReference'] = kmsKeyReference;
    }
    if (memoryGb != null) {
      _json['memoryGb'] = memoryGb;
    }
    if (volumes != null) {
      _json['volumes'] = volumes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandler {
  /// Path to the script from the application root directory.
  core.String scriptPath;

  ScriptHandler();

  ScriptHandler.fromJson(core.Map _json) {
    if (_json.containsKey('scriptPath')) {
      scriptPath = _json['scriptPath'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (scriptPath != null) {
      _json['scriptPath'] = scriptPath;
    }
    return _json;
  }
}

/// A Service resource is a logical component of an application that can share
/// state and communicate in a secure fashion with other services.
///
/// For example, an application that handles customer requests might include
/// separate services to handle tasks such as backend data analysis or API
/// requests from mobile devices. Each service has a collection of versions that
/// define a specific set of code used to implement the functionality of that
/// service.
class Service {
  /// Relative name of the service within the application.
  ///
  /// Example: default.@OutputOnly
  core.String id;

  /// Full path to the Service resource in the API.
  ///
  /// Example: apps/myapp/services/default.@OutputOnly
  core.String name;

  /// Ingress settings for this service.
  ///
  /// Will apply to all versions.
  NetworkSettings networkSettings;

  /// Mapping that defines fractional HTTP traffic diversion to different
  /// versions within the service.
  TrafficSplit split;

  Service();

  Service.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('networkSettings')) {
      networkSettings = NetworkSettings.fromJson(
          _json['networkSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('split')) {
      split = TrafficSplit.fromJson(
          _json['split'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networkSettings != null) {
      _json['networkSettings'] = networkSettings.toJson();
    }
    if (split != null) {
      _json['split'] = split.toJson();
    }
    return _json;
  }
}

/// SSL configuration for a DomainMapping resource.
class SslSettings {
  /// ID of the AuthorizedCertificate resource configuring SSL for the
  /// application.
  ///
  /// Clearing this field will remove SSL support.By default, a managed
  /// certificate is automatically created for every domain mapping. To omit SSL
  /// support or to configure SSL manually, specify SslManagementType.MANUAL on
  /// a CREATE or UPDATE request. You must be authorized to administer the
  /// AuthorizedCertificate resource to manually map it to a DomainMapping
  /// resource. Example: 12345.
  core.String certificateId;

  /// ID of the managed AuthorizedCertificate resource currently being
  /// provisioned, if applicable.
  ///
  /// Until the new managed certificate has been successfully provisioned, the
  /// previous SSL state will be preserved. Once the provisioning process
  /// completes, the certificate_id field will reflect the new managed
  /// certificate and this field will be left empty. To remove SSL support while
  /// there is still a pending managed certificate, clear the certificate_id
  /// field with an UpdateDomainMappingRequest.@OutputOnly
  core.String pendingManagedCertificateId;

  /// SSL management type for this domain.
  ///
  /// If AUTOMATIC, a managed certificate is automatically provisioned. If
  /// MANUAL, certificate_id must be manually specified in order to configure
  /// SSL for this domain.
  /// Possible string values are:
  /// - "AUTOMATIC" : SSL support for this domain is configured automatically.
  /// The mapped SSL certificate will be automatically renewed.
  /// - "MANUAL" : SSL support for this domain is configured manually by the
  /// user. Either the domain has no SSL support or a user-obtained SSL
  /// certificate has been explictly mapped to this domain.
  core.String sslManagementType;

  SslSettings();

  SslSettings.fromJson(core.Map _json) {
    if (_json.containsKey('certificateId')) {
      certificateId = _json['certificateId'] as core.String;
    }
    if (_json.containsKey('pendingManagedCertificateId')) {
      pendingManagedCertificateId =
          _json['pendingManagedCertificateId'] as core.String;
    }
    if (_json.containsKey('sslManagementType')) {
      sslManagementType = _json['sslManagementType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certificateId != null) {
      _json['certificateId'] = certificateId;
    }
    if (pendingManagedCertificateId != null) {
      _json['pendingManagedCertificateId'] = pendingManagedCertificateId;
    }
    if (sslManagementType != null) {
      _json['sslManagementType'] = sslManagementType;
    }
    return _json;
  }
}

/// Scheduler settings for standard environment.
class StandardSchedulerSettings {
  /// Maximum number of instances to run for this version.
  ///
  /// Set to zero to disable max_instances configuration.
  core.int maxInstances;

  /// Minimum number of instances to run for this version.
  ///
  /// Set to zero to disable min_instances configuration.
  core.int minInstances;

  /// Target CPU utilization ratio to maintain when scaling.
  core.double targetCpuUtilization;

  /// Target throughput utilization ratio to maintain when scaling
  core.double targetThroughputUtilization;

  StandardSchedulerSettings();

  StandardSchedulerSettings.fromJson(core.Map _json) {
    if (_json.containsKey('maxInstances')) {
      maxInstances = _json['maxInstances'] as core.int;
    }
    if (_json.containsKey('minInstances')) {
      minInstances = _json['minInstances'] as core.int;
    }
    if (_json.containsKey('targetCpuUtilization')) {
      targetCpuUtilization =
          (_json['targetCpuUtilization'] as core.num).toDouble();
    }
    if (_json.containsKey('targetThroughputUtilization')) {
      targetThroughputUtilization =
          (_json['targetThroughputUtilization'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (maxInstances != null) {
      _json['maxInstances'] = maxInstances;
    }
    if (minInstances != null) {
      _json['minInstances'] = minInstances;
    }
    if (targetCpuUtilization != null) {
      _json['targetCpuUtilization'] = targetCpuUtilization;
    }
    if (targetThroughputUtilization != null) {
      _json['targetThroughputUtilization'] = targetThroughputUtilization;
    }
    return _json;
  }
}

/// Files served directly to the user for a given URL, such as images, CSS
/// stylesheets, or JavaScript source files.
///
/// Static file handlers describe which files in the application directory are
/// static files, and which URLs serve them.
class StaticFilesHandler {
  /// Whether files should also be uploaded as code data.
  ///
  /// By default, files declared in static file handlers are uploaded as static
  /// data and are only served to end users; they cannot be read by the
  /// application. If enabled, uploads are charged against both your code and
  /// static data storage resource quotas.
  core.bool applicationReadable;

  /// Time a static file served by this handler should be cached by web proxies
  /// and browsers.
  core.String expiration;

  /// HTTP headers to use for all responses from these URLs.
  core.Map<core.String, core.String> httpHeaders;

  /// MIME type used to serve all files served by this handler.Defaults to
  /// file-specific MIME types, which are derived from each file's filename
  /// extension.
  core.String mimeType;

  /// Path to the static files matched by the URL pattern, from the application
  /// root directory.
  ///
  /// The path can refer to text matched in groupings in the URL pattern.
  core.String path;

  /// Whether this handler should match the request if the file referenced by
  /// the handler does not exist.
  core.bool requireMatchingFile;

  /// Regular expression that matches the file paths for all files that should
  /// be referenced by this handler.
  core.String uploadPathRegex;

  StaticFilesHandler();

  StaticFilesHandler.fromJson(core.Map _json) {
    if (_json.containsKey('applicationReadable')) {
      applicationReadable = _json['applicationReadable'] as core.bool;
    }
    if (_json.containsKey('expiration')) {
      expiration = _json['expiration'] as core.String;
    }
    if (_json.containsKey('httpHeaders')) {
      httpHeaders = (_json['httpHeaders'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('requireMatchingFile')) {
      requireMatchingFile = _json['requireMatchingFile'] as core.bool;
    }
    if (_json.containsKey('uploadPathRegex')) {
      uploadPathRegex = _json['uploadPathRegex'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (applicationReadable != null) {
      _json['applicationReadable'] = applicationReadable;
    }
    if (expiration != null) {
      _json['expiration'] = expiration;
    }
    if (httpHeaders != null) {
      _json['httpHeaders'] = httpHeaders;
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (requireMatchingFile != null) {
      _json['requireMatchingFile'] = requireMatchingFile;
    }
    if (uploadPathRegex != null) {
      _json['uploadPathRegex'] = uploadPathRegex;
    }
    return _json;
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
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

/// Traffic routing configuration for versions within a single service.
///
/// Traffic splits define how traffic directed to the service is assigned to
/// versions.
class TrafficSplit {
  /// Mapping from version IDs within the service to fractional (0.000, 1\]
  /// allocations of traffic for that version.
  ///
  /// Each version can be specified only once, but some versions in the service
  /// may not have any traffic allocation. Services that have traffic allocated
  /// cannot be deleted until either the service is deleted or their traffic
  /// allocation is removed. Allocations must sum to 1. Up to two decimal place
  /// precision is supported for IP-based splits and up to three decimal places
  /// is supported for cookie-based splits.
  core.Map<core.String, core.double> allocations;

  /// Mechanism used to determine which version a request is sent to.
  ///
  /// The traffic selection algorithm will be stable for either type until
  /// allocations are changed.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Diversion method unspecified.
  /// - "COOKIE" : Diversion based on a specially named cookie, "GOOGAPPUID."
  /// The cookie must be set by the application itself or no diversion will
  /// occur.
  /// - "IP" : Diversion based on applying the modulus operation to a
  /// fingerprint of the IP address.
  /// - "RANDOM" : Diversion based on weighted random assignment. An incoming
  /// request is randomly routed to a version in the traffic split, with
  /// probability proportional to the version's traffic share.
  core.String shardBy;

  TrafficSplit();

  TrafficSplit.fromJson(core.Map _json) {
    if (_json.containsKey('allocations')) {
      allocations =
          (_json['allocations'] as core.Map).cast<core.String, core.num>().map(
                (key, item) => core.MapEntry(
                  key,
                  (item as core.num).toDouble(),
                ),
              );
    }
    if (_json.containsKey('shardBy')) {
      shardBy = _json['shardBy'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (allocations != null) {
      _json['allocations'] = allocations;
    }
    if (shardBy != null) {
      _json['shardBy'] = shardBy;
    }
    return _json;
  }
}

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRule {
  /// Domain name to match against.
  ///
  /// The wildcard "*" is supported if specified before a period: "*.".Defaults
  /// to matching all domains: "*".
  core.String domain;

  /// Pathname within the host.
  ///
  /// Must start with a "/". A single "*" can be included at the end of the
  /// path.The sum of the lengths of the domain and path may not exceed 100
  /// characters.
  core.String path;

  /// Resource ID of a service in this application that should serve the matched
  /// request.
  ///
  /// The service must already exist. Example: default.
  core.String service;

  UrlDispatchRule();

  UrlDispatchRule.fromJson(core.Map _json) {
    if (_json.containsKey('domain')) {
      domain = _json['domain'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domain != null) {
      _json['domain'] = domain;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// URL pattern and description of how the URL should be handled.
///
/// App Engine can handle URLs by executing application code or by serving
/// static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMap {
  /// Uses API Endpoints to handle requests.
  ApiEndpointHandler apiEndpoint;

  /// Action to take when users access resources that require authentication.
  ///
  /// Defaults to redirect.
  /// Possible string values are:
  /// - "AUTH_FAIL_ACTION_UNSPECIFIED" : Not specified.
  /// AUTH_FAIL_ACTION_REDIRECT is assumed.
  /// - "AUTH_FAIL_ACTION_REDIRECT" : Redirects user to "accounts.google.com".
  /// The user is redirected back to the application URL after signing in or
  /// creating an account.
  /// - "AUTH_FAIL_ACTION_UNAUTHORIZED" : Rejects request with a 401 HTTP status
  /// code and an error message.
  core.String authFailAction;

  /// Level of login required to access this resource.
  ///
  /// Not supported for Node.js in the App Engine standard environment.
  /// Possible string values are:
  /// - "LOGIN_UNSPECIFIED" : Not specified. LOGIN_OPTIONAL is assumed.
  /// - "LOGIN_OPTIONAL" : Does not require that the user is signed in.
  /// - "LOGIN_ADMIN" : If the user is not signed in, the auth_fail_action is
  /// taken. In addition, if the user is not an administrator for the
  /// application, they are given an error message regardless of
  /// auth_fail_action. If the user is an administrator, the handler proceeds.
  /// - "LOGIN_REQUIRED" : If the user has signed in, the handler proceeds
  /// normally. Otherwise, the auth_fail_action is taken.
  core.String login;

  /// 30x code to use when performing redirects for the secure field.
  ///
  /// Defaults to 302.
  /// Possible string values are:
  /// - "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED" : Not specified. 302 is
  /// assumed.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_301" : 301 Moved Permanently code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_302" : 302 Moved Temporarily code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_303" : 303 See Other code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_307" : 307 Temporary Redirect code.
  core.String redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern.
  ///
  /// Only the auto value is supported for Node.js in the App Engine standard
  /// environment, for example "script": "auto".
  ScriptHandler script;

  /// Security (HTTPS) enforcement for this URL.
  /// Possible string values are:
  /// - "SECURE_UNSPECIFIED" : Not specified.
  /// - "SECURE_DEFAULT" : Both HTTP and HTTPS requests with URLs that match the
  /// handler succeed without redirects. The application can examine the request
  /// to determine which protocol was used, and respond accordingly.
  /// - "SECURE_NEVER" : Requests for a URL that match this handler that use
  /// HTTPS are automatically redirected to the HTTP equivalent URL.
  /// - "SECURE_OPTIONAL" : Both HTTP and HTTPS requests with URLs that match
  /// the handler succeed without redirects. The application can examine the
  /// request to determine which protocol was used and respond accordingly.
  /// - "SECURE_ALWAYS" : Requests for a URL that match this handler that do not
  /// use HTTPS are automatically redirected to the HTTPS URL with the same
  /// path. Query parameters are reserved for the redirect.
  core.String securityLevel;

  /// Returns the contents of a file, such as an image, as the response.
  StaticFilesHandler staticFiles;

  /// URL prefix.
  ///
  /// Uses regular expression syntax, which means regexp special characters must
  /// be escaped, but should not contain groupings. All URLs that begin with
  /// this prefix are handled by this handler, using the portion of the URL
  /// after the prefix as part of the file path.
  core.String urlRegex;

  UrlMap();

  UrlMap.fromJson(core.Map _json) {
    if (_json.containsKey('apiEndpoint')) {
      apiEndpoint = ApiEndpointHandler.fromJson(
          _json['apiEndpoint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('authFailAction')) {
      authFailAction = _json['authFailAction'] as core.String;
    }
    if (_json.containsKey('login')) {
      login = _json['login'] as core.String;
    }
    if (_json.containsKey('redirectHttpResponseCode')) {
      redirectHttpResponseCode =
          _json['redirectHttpResponseCode'] as core.String;
    }
    if (_json.containsKey('script')) {
      script = ScriptHandler.fromJson(
          _json['script'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('securityLevel')) {
      securityLevel = _json['securityLevel'] as core.String;
    }
    if (_json.containsKey('staticFiles')) {
      staticFiles = StaticFilesHandler.fromJson(
          _json['staticFiles'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('urlRegex')) {
      urlRegex = _json['urlRegex'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiEndpoint != null) {
      _json['apiEndpoint'] = apiEndpoint.toJson();
    }
    if (authFailAction != null) {
      _json['authFailAction'] = authFailAction;
    }
    if (login != null) {
      _json['login'] = login;
    }
    if (redirectHttpResponseCode != null) {
      _json['redirectHttpResponseCode'] = redirectHttpResponseCode;
    }
    if (script != null) {
      _json['script'] = script.toJson();
    }
    if (securityLevel != null) {
      _json['securityLevel'] = securityLevel;
    }
    if (staticFiles != null) {
      _json['staticFiles'] = staticFiles.toJson();
    }
    if (urlRegex != null) {
      _json['urlRegex'] = urlRegex;
    }
    return _json;
  }
}

/// A Version resource is a specific set of source code and configuration files
/// that are deployed into a service.
class Version {
  /// Serving configuration for Google Cloud Endpoints
  /// (https://cloud.google.com/appengine/docs/python/endpoints/).Only returned
  /// in GET requests if view=FULL is set.
  ApiConfigHandler apiConfig;

  /// Automatic scaling is based on request rate, response latencies, and other
  /// application metrics.
  ///
  /// Instances are dynamically created and destroyed as needed in order to
  /// handle traffic.
  AutomaticScaling automaticScaling;

  /// A service with basic scaling will create an instance when the application
  /// receives a request.
  ///
  /// The instance will be turned down when the app becomes idle. Basic scaling
  /// is ideal for work that is intermittent or driven by user activity.
  BasicScaling basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime
  /// features.
  core.Map<core.String, core.String> betaSettings;

  /// Environment variables available to the build environment.Only returned in
  /// GET requests if view=FULL is set.
  core.Map<core.String, core.String> buildEnvVariables;

  /// Time that this version was created.@OutputOnly
  core.String createTime;

  /// Email address of the user who created this version.@OutputOnly
  core.String createdBy;

  /// Duration that static files should be cached by web proxies and browsers.
  ///
  /// Only applicable if the corresponding StaticFilesHandler
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1beta/apps.services.versions#StaticFilesHandler)
  /// does not specify its own expiration time.Only returned in GET requests if
  /// view=FULL is set.
  core.String defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in
  /// GET requests if view=FULL is set.
  Deployment deployment;

  /// Total size in bytes of all the files that are included in this version and
  /// currently hosted on the App Engine disk.@OutputOnly
  core.String diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud
  /// Endpoints Extensible Service Proxy will be provided to serve the API
  /// implemented by the app.
  EndpointsApiService endpointsApiService;

  /// The entrypoint for the application.
  Entrypoint entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  core.String env;

  /// Environment variables available to the application.Only returned in GET
  /// requests if view=FULL is set.
  core.Map<core.String, core.String> envVariables;

  /// Custom static error pages.
  ///
  /// Limited to 10KB per page.Only returned in GET requests if view=FULL is
  /// set.
  core.List<ErrorHandler> errorHandlers;

  /// An ordered list of URL-matching patterns that should be applied to
  /// incoming requests.
  ///
  /// The first matching URL handles the request and other request handlers are
  /// not attempted.Only returned in GET requests if view=FULL is set.
  core.List<UrlMap> handlers;

  /// Configures health checking for instances.
  ///
  /// Unhealthy instances are stopped and replaced with new instances. Only
  /// applicable in the App Engine flexible environment.Only returned in GET
  /// requests if view=FULL is set.
  HealthCheck healthCheck;

  /// Relative name of the version within the service.
  ///
  /// Example: v1. Version names can contain only lowercase letters, numbers, or
  /// hyphens. Reserved names: "default", "latest", and any name with the prefix
  /// "ah-".
  core.String id;

  /// Before an application can receive email or XMPP messages, the application
  /// must be configured to enable the service.
  core.List<core.String> inboundServices;

  /// Instance class that is used to run this version.
  ///
  /// Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or
  /// BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and
  /// B1 for ManualScaling or BasicScaling.
  core.String instanceClass;

  /// Configuration for third-party Python runtime libraries that are required
  /// by the application.Only returned in GET requests if view=FULL is set.
  core.List<Library> libraries;

  /// Configures liveness health checking for instances.
  ///
  /// Unhealthy instances are stopped and replaced with new instancesOnly
  /// returned in GET requests if view=FULL is set.
  LivenessCheck livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform
  /// complex initialization and rely on the state of its memory over time.
  ///
  /// Manually scaled versions are sometimes referred to as "backends".
  ManualScaling manualScaling;

  /// Full path to the Version resource in the API.
  ///
  /// Example: apps/myapp/services/default/versions/v1.@OutputOnly
  core.String name;

  /// Extra network settings.
  ///
  /// Only applicable in the App Engine flexible environment.
  Network network;

  /// Files that match this pattern will not be built into this version.
  ///
  /// Only applicable for Go runtimes.Only returned in GET requests if view=FULL
  /// is set.
  core.String nobuildFilesRegex;

  /// Configures readiness health checking for instances.
  ///
  /// Unhealthy instances are not put into the backend traffic rotation.Only
  /// returned in GET requests if view=FULL is set.
  ReadinessCheck readinessCheck;

  /// Machine resources for this version.
  ///
  /// Only applicable in the App Engine flexible environment.
  Resources resources;

  /// Desired runtime.
  ///
  /// Example: python27.
  core.String runtime;

  /// The version of the API in the given runtime environment.
  ///
  /// Please see the app.yaml reference for valid values at
  /// https://cloud.google.com/appengine/docs/standard//config/appref
  core.String runtimeApiVersion;

  /// The channel of the runtime to use.
  ///
  /// Only available for some runtimes. Defaults to the default channel.
  core.String runtimeChannel;

  /// The path or name of the app's main executable.
  core.String runtimeMainExecutablePath;

  /// Current serving status of this version.
  ///
  /// Only the versions with a SERVING status create instances and can be
  /// billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to
  /// SERVING.
  /// Possible string values are:
  /// - "SERVING_STATUS_UNSPECIFIED" : Not specified.
  /// - "SERVING" : Currently serving. Instances are created according to the
  /// scaling settings of the version.
  /// - "STOPPED" : Disabled. No instances will be created and the scaling
  /// settings are ignored until the state of the version changes to SERVING.
  core.String servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  core.bool threadsafe;

  /// Serving URL for this version.
  ///
  /// Example:
  /// "https://myversion-dot-myservice-dot-myapp.appspot.com"@OutputOnly
  core.String versionUrl;

  /// Whether to deploy this version in a container on a virtual machine.
  core.bool vm;

  /// Enables VPC connectivity for standard apps.
  VpcAccessConnector vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the
  /// App Engine flexible environment.
  ///
  /// Deprecated.
  core.List<core.String> zones;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey('apiConfig')) {
      apiConfig = ApiConfigHandler.fromJson(
          _json['apiConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('automaticScaling')) {
      automaticScaling = AutomaticScaling.fromJson(
          _json['automaticScaling'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('basicScaling')) {
      basicScaling = BasicScaling.fromJson(
          _json['basicScaling'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('betaSettings')) {
      betaSettings = (_json['betaSettings'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('buildEnvVariables')) {
      buildEnvVariables = (_json['buildEnvVariables'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('createdBy')) {
      createdBy = _json['createdBy'] as core.String;
    }
    if (_json.containsKey('defaultExpiration')) {
      defaultExpiration = _json['defaultExpiration'] as core.String;
    }
    if (_json.containsKey('deployment')) {
      deployment = Deployment.fromJson(
          _json['deployment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('diskUsageBytes')) {
      diskUsageBytes = _json['diskUsageBytes'] as core.String;
    }
    if (_json.containsKey('endpointsApiService')) {
      endpointsApiService = EndpointsApiService.fromJson(
          _json['endpointsApiService'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('entrypoint')) {
      entrypoint = Entrypoint.fromJson(
          _json['entrypoint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('env')) {
      env = _json['env'] as core.String;
    }
    if (_json.containsKey('envVariables')) {
      envVariables = (_json['envVariables'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('errorHandlers')) {
      errorHandlers = (_json['errorHandlers'] as core.List)
          .map<ErrorHandler>((value) => ErrorHandler.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('handlers')) {
      handlers = (_json['handlers'] as core.List)
          .map<UrlMap>((value) =>
              UrlMap.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('healthCheck')) {
      healthCheck = HealthCheck.fromJson(
          _json['healthCheck'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('inboundServices')) {
      inboundServices = (_json['inboundServices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('instanceClass')) {
      instanceClass = _json['instanceClass'] as core.String;
    }
    if (_json.containsKey('libraries')) {
      libraries = (_json['libraries'] as core.List)
          .map<Library>((value) =>
              Library.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('livenessCheck')) {
      livenessCheck = LivenessCheck.fromJson(
          _json['livenessCheck'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('manualScaling')) {
      manualScaling = ManualScaling.fromJson(
          _json['manualScaling'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('network')) {
      network = Network.fromJson(
          _json['network'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nobuildFilesRegex')) {
      nobuildFilesRegex = _json['nobuildFilesRegex'] as core.String;
    }
    if (_json.containsKey('readinessCheck')) {
      readinessCheck = ReadinessCheck.fromJson(
          _json['readinessCheck'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resources')) {
      resources = Resources.fromJson(
          _json['resources'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('runtime')) {
      runtime = _json['runtime'] as core.String;
    }
    if (_json.containsKey('runtimeApiVersion')) {
      runtimeApiVersion = _json['runtimeApiVersion'] as core.String;
    }
    if (_json.containsKey('runtimeChannel')) {
      runtimeChannel = _json['runtimeChannel'] as core.String;
    }
    if (_json.containsKey('runtimeMainExecutablePath')) {
      runtimeMainExecutablePath =
          _json['runtimeMainExecutablePath'] as core.String;
    }
    if (_json.containsKey('servingStatus')) {
      servingStatus = _json['servingStatus'] as core.String;
    }
    if (_json.containsKey('threadsafe')) {
      threadsafe = _json['threadsafe'] as core.bool;
    }
    if (_json.containsKey('versionUrl')) {
      versionUrl = _json['versionUrl'] as core.String;
    }
    if (_json.containsKey('vm')) {
      vm = _json['vm'] as core.bool;
    }
    if (_json.containsKey('vpcAccessConnector')) {
      vpcAccessConnector = VpcAccessConnector.fromJson(
          _json['vpcAccessConnector'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zones')) {
      zones = (_json['zones'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiConfig != null) {
      _json['apiConfig'] = apiConfig.toJson();
    }
    if (automaticScaling != null) {
      _json['automaticScaling'] = automaticScaling.toJson();
    }
    if (basicScaling != null) {
      _json['basicScaling'] = basicScaling.toJson();
    }
    if (betaSettings != null) {
      _json['betaSettings'] = betaSettings;
    }
    if (buildEnvVariables != null) {
      _json['buildEnvVariables'] = buildEnvVariables;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (createdBy != null) {
      _json['createdBy'] = createdBy;
    }
    if (defaultExpiration != null) {
      _json['defaultExpiration'] = defaultExpiration;
    }
    if (deployment != null) {
      _json['deployment'] = deployment.toJson();
    }
    if (diskUsageBytes != null) {
      _json['diskUsageBytes'] = diskUsageBytes;
    }
    if (endpointsApiService != null) {
      _json['endpointsApiService'] = endpointsApiService.toJson();
    }
    if (entrypoint != null) {
      _json['entrypoint'] = entrypoint.toJson();
    }
    if (env != null) {
      _json['env'] = env;
    }
    if (envVariables != null) {
      _json['envVariables'] = envVariables;
    }
    if (errorHandlers != null) {
      _json['errorHandlers'] =
          errorHandlers.map((value) => value.toJson()).toList();
    }
    if (handlers != null) {
      _json['handlers'] = handlers.map((value) => value.toJson()).toList();
    }
    if (healthCheck != null) {
      _json['healthCheck'] = healthCheck.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (inboundServices != null) {
      _json['inboundServices'] = inboundServices;
    }
    if (instanceClass != null) {
      _json['instanceClass'] = instanceClass;
    }
    if (libraries != null) {
      _json['libraries'] = libraries.map((value) => value.toJson()).toList();
    }
    if (livenessCheck != null) {
      _json['livenessCheck'] = livenessCheck.toJson();
    }
    if (manualScaling != null) {
      _json['manualScaling'] = manualScaling.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (network != null) {
      _json['network'] = network.toJson();
    }
    if (nobuildFilesRegex != null) {
      _json['nobuildFilesRegex'] = nobuildFilesRegex;
    }
    if (readinessCheck != null) {
      _json['readinessCheck'] = readinessCheck.toJson();
    }
    if (resources != null) {
      _json['resources'] = resources.toJson();
    }
    if (runtime != null) {
      _json['runtime'] = runtime;
    }
    if (runtimeApiVersion != null) {
      _json['runtimeApiVersion'] = runtimeApiVersion;
    }
    if (runtimeChannel != null) {
      _json['runtimeChannel'] = runtimeChannel;
    }
    if (runtimeMainExecutablePath != null) {
      _json['runtimeMainExecutablePath'] = runtimeMainExecutablePath;
    }
    if (servingStatus != null) {
      _json['servingStatus'] = servingStatus;
    }
    if (threadsafe != null) {
      _json['threadsafe'] = threadsafe;
    }
    if (versionUrl != null) {
      _json['versionUrl'] = versionUrl;
    }
    if (vm != null) {
      _json['vm'] = vm;
    }
    if (vpcAccessConnector != null) {
      _json['vpcAccessConnector'] = vpcAccessConnector.toJson();
    }
    if (zones != null) {
      _json['zones'] = zones;
    }
    return _json;
  }
}

/// Volumes mounted within the app container.
///
/// Only applicable in the App Engine flexible environment.
class Volume {
  /// Unique name for the volume.
  core.String name;

  /// Volume size in gigabytes.
  core.double sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  core.String volumeType;

  Volume();

  Volume.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sizeGb')) {
      sizeGb = (_json['sizeGb'] as core.num).toDouble();
    }
    if (_json.containsKey('volumeType')) {
      volumeType = _json['volumeType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (sizeGb != null) {
      _json['sizeGb'] = sizeGb;
    }
    if (volumeType != null) {
      _json['volumeType'] = volumeType;
    }
    return _json;
  }
}

/// VPC access connector specification.
class VpcAccessConnector {
  /// Full Serverless VPC Access Connector name e.g.
  /// /projects/my-project/locations/us-central1/connectors/c1.
  core.String name;

  VpcAccessConnector();

  VpcAccessConnector.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// The zip file information for a zip deployment.
class ZipInfo {
  /// An estimate of the number of files in a zip for a zip deployment.
  ///
  /// If set, must be greater than or equal to the actual number of files. Used
  /// for optimizing performance; if not provided, deployment may be slow.
  core.int filesCount;

  /// URL of the zip file to deploy from.
  ///
  /// Must be a URL to a resource in Google Cloud Storage in the form
  /// 'http(s)://storage.googleapis.com//'.
  core.String sourceUrl;

  ZipInfo();

  ZipInfo.fromJson(core.Map _json) {
    if (_json.containsKey('filesCount')) {
      filesCount = _json['filesCount'] as core.int;
    }
    if (_json.containsKey('sourceUrl')) {
      sourceUrl = _json['sourceUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (filesCount != null) {
      _json['filesCount'] = filesCount;
    }
    if (sourceUrl != null) {
      _json['sourceUrl'] = sourceUrl;
    }
    return _json;
  }
}
