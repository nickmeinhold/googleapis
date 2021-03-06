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

/// Identity and Access Management (IAM) API - v1
///
/// Manages identity and access control for Google Cloud Platform resources,
/// including the creation of service accounts, which you can use to
/// authenticate to Google and make API calls. *Note:* This API is tied to the
/// IAM service account credentials API ( iamcredentials.googleapis.com).
/// Enabling or disabling this API will also enable or disable the IAM service
/// account credentials API.
///
/// For more information, see <https://cloud.google.com/iam/>
///
/// Create an instance of [IamApi] to access these resources:
///
/// - [IamPoliciesResource]
/// - [OrganizationsResource]
///   - [OrganizationsRolesResource]
/// - [PermissionsResource]
/// - [ProjectsResource]
///   - [ProjectsRolesResource]
///   - [ProjectsServiceAccountsResource]
///     - [ProjectsServiceAccountsKeysResource]
/// - [RolesResource]
library iam.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages identity and access control for Google Cloud Platform resources,
/// including the creation of service accounts, which you can use to
/// authenticate to Google and make API calls.
///
/// *Note:* This API is tied to the IAM service account credentials API (
/// iamcredentials.googleapis.com). Enabling or disabling this API will also
/// enable or disable the IAM service account credentials API.
class IamApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  IamPoliciesResource get iamPolicies => IamPoliciesResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  PermissionsResource get permissions => PermissionsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  RolesResource get roles => RolesResource(_requester);

  IamApi(http.Client client,
      {core.String rootUrl = 'https://iam.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class IamPoliciesResource {
  final commons.ApiRequester _requester;

  IamPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Lints, or validates, an IAM policy.
  ///
  /// Currently checks the google.iam.v1.Binding.condition field, which contains
  /// a condition expression for a role binding. Successful calls to this method
  /// always return an HTTP `200 OK` status code, even if the linter detects an
  /// issue in the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LintPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LintPolicyResponse> lintPolicy(
    LintPolicyRequest request, {
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

    _url = 'v1/iamPolicies:lintPolicy';

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
      (data) => LintPolicyResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns a list of services that allow you to opt into audit logs that are
  /// not generated by default.
  ///
  /// To learn more about audit logs, see the [Logging
  /// documentation](https://cloud.google.com/logging/docs/audit).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryAuditableServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryAuditableServicesResponse> queryAuditableServices(
    QueryAuditableServicesRequest request, {
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

    _url = 'v1/iamPolicies:queryAuditableServices';

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
      (data) => QueryAuditableServicesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsRolesResource get roles =>
      OrganizationsRolesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsRolesResource {
  final commons.ApiRequester _requester;

  OrganizationsRolesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `parent` value format is described below: *
  /// [`projects.roles.create()`](/iam/reference/rest/v1/projects.roles/create):
  /// `projects/{PROJECT_ID}`. This method creates project-level [custom
  /// roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// [`organizations.roles.create()`](/iam/reference/rest/v1/organizations.roles/create):
  /// `organizations/{ORGANIZATION_ID}`. This method creates organization-level
  /// [custom roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(
    CreateRoleRequest request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a custom Role.
  ///
  /// When you delete a custom role, the following changes occur immediately: *
  /// You cannot bind a member to the custom role in an IAM Policy. * Existing
  /// bindings to the custom role are not changed, but they have no effect. * By
  /// default, the response from ListRoles does not include the custom role. You
  /// have 7 days to undelete the custom role. After 7 days, the following
  /// changes occur: * The custom role is permanently deleted and cannot be
  /// recovered. * If an IAM policy contains a binding to the custom role, the
  /// binding is permanently removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.delete()`](/iam/reference/rest/v1/projects.roles/delete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method deletes only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.delete()`](/iam/reference/rest/v1/organizations.roles/delete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// deletes only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(
    core.String name, {
    core.String etag,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (etag != null) {
      _queryParams['etag'] = [etag];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`roles.get()`](/iam/reference/rest/v1/roles/get): `roles/{ROLE_NAME}`.
  /// This method returns results from all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// [`projects.roles.get()`](/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.get()`](/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `parent` value format is described below: *
  /// [`roles.list()`](/iam/reference/rest/v1/roles/list): An empty string. This
  /// method doesn't require a resource; it simply returns all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// [`projects.roles.list()`](/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level [custom
  /// roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// [`organizations.roles.list()`](/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level [custom roles](/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.bool showDeleted,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

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
      (data) => ListRolesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the definition of a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.patch()`](/iam/reference/rest/v1/projects.roles/patch):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method updates only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.patch()`](/iam/reference/rest/v1/organizations.roles/patch):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// updates only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(
    Role request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Undeletes a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.undelete()`](/iam/reference/rest/v1/projects.roles/undelete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method undeletes only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.undelete()`](/iam/reference/rest/v1/organizations.roles/undelete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// undeletes only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^organizations/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(
    UndeleteRoleRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class PermissionsResource {
  final commons.ApiRequester _requester;

  PermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Lists every permission that you can test on a resource.
  ///
  /// A permission is testable if you can check whether a member has that
  /// permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryTestablePermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryTestablePermissionsResponse> queryTestablePermissions(
    QueryTestablePermissionsRequest request, {
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

    _url = 'v1/permissions:queryTestablePermissions';

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
      (data) => QueryTestablePermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsRolesResource get roles => ProjectsRolesResource(_requester);
  ProjectsServiceAccountsResource get serviceAccounts =>
      ProjectsServiceAccountsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsRolesResource {
  final commons.ApiRequester _requester;

  ProjectsRolesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `parent` value format is described below: *
  /// [`projects.roles.create()`](/iam/reference/rest/v1/projects.roles/create):
  /// `projects/{PROJECT_ID}`. This method creates project-level [custom
  /// roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// [`organizations.roles.create()`](/iam/reference/rest/v1/organizations.roles/create):
  /// `organizations/{ORGANIZATION_ID}`. This method creates organization-level
  /// [custom roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(
    CreateRoleRequest request,
    core.String parent, {
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
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a custom Role.
  ///
  /// When you delete a custom role, the following changes occur immediately: *
  /// You cannot bind a member to the custom role in an IAM Policy. * Existing
  /// bindings to the custom role are not changed, but they have no effect. * By
  /// default, the response from ListRoles does not include the custom role. You
  /// have 7 days to undelete the custom role. After 7 days, the following
  /// changes occur: * The custom role is permanently deleted and cannot be
  /// recovered. * If an IAM policy contains a binding to the custom role, the
  /// binding is permanently removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.delete()`](/iam/reference/rest/v1/projects.roles/delete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method deletes only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.delete()`](/iam/reference/rest/v1/organizations.roles/delete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// deletes only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(
    core.String name, {
    core.String etag,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (etag != null) {
      _queryParams['etag'] = [etag];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`roles.get()`](/iam/reference/rest/v1/roles/get): `roles/{ROLE_NAME}`.
  /// This method returns results from all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// [`projects.roles.get()`](/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.get()`](/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `parent` value format is described below: *
  /// [`roles.list()`](/iam/reference/rest/v1/roles/list): An empty string. This
  /// method doesn't require a resource; it simply returns all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// [`projects.roles.list()`](/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level [custom
  /// roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// [`organizations.roles.list()`](/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level [custom roles](/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.bool showDeleted,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/roles';

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
      (data) => ListRolesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the definition of a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.patch()`](/iam/reference/rest/v1/projects.roles/patch):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method updates only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.patch()`](/iam/reference/rest/v1/organizations.roles/patch):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// updates only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(
    Role request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Undeletes a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`projects`](/iam/reference/rest/v1/projects.roles) or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`projects.roles.undelete()`](/iam/reference/rest/v1/projects.roles/undelete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method undeletes only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.undelete()`](/iam/reference/rest/v1/organizations.roles/undelete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// undeletes only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^projects/[^/]+/roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(
    UndeleteRoleRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsServiceAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResource get keys =>
      ProjectsServiceAccountsKeysResource(_requester);

  ProjectsServiceAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service accounts, such as `projects/my-project-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> create(
    CreateServiceAccountRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serviceAccounts';

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
          ServiceAccount.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a ServiceAccount.
  ///
  /// **Warning:** After you delete a service account, you might not be able to
  /// undelete it. If you know that you need to re-enable the service account in
  /// the future, use DisableServiceAccount instead. If you delete a service
  /// account, IAM permanently removes the service account 30 days later. Google
  /// Cloud cannot recover the service account after it is permanently removed,
  /// even if you file a support request. To help avoid unplanned outages, we
  /// recommend that you disable the service account before you delete it. Use
  /// DisableServiceAccount to disable the service account, then wait at least
  /// 24 hours and watch for unintended consequences. If there are no unintended
  /// consequences, you can delete the service account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account in the
  /// following format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using
  /// `-` as a wildcard for the `PROJECT_ID` will infer the project from the
  /// account. The `ACCOUNT` value can be the `email` address or the `unique_id`
  /// of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Disables a ServiceAccount immediately.
  ///
  /// If an application uses the service account to authenticate, that
  /// application can no longer call Google APIs or access Google Cloud
  /// resources. Existing access tokens for the service account are rejected,
  /// and requests for new access tokens will fail. To re-enable the service
  /// account, use EnableServiceAccount. After you re-enable the service
  /// account, its existing access tokens will be accepted, and you can request
  /// new access tokens. To help avoid unplanned outages, we recommend that you
  /// disable the service account before you delete it. Use this method to
  /// disable the service account, then wait at least 24 hours and watch for
  /// unintended consequences. If there are no unintended consequences, you can
  /// delete the service account with DeleteServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using `-` as a wildcard
  /// for the `PROJECT_ID` will infer the project from the account. The
  /// `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
  async.Future<Empty> disable(
    DisableServiceAccountRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':disable';

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
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Enables a ServiceAccount that was disabled by DisableServiceAccount.
  ///
  /// If the service account is already enabled, then this method has no effect.
  /// If the service account was disabled by other means—for example, if Google
  /// disabled the service account because it was compromised—you cannot use
  /// this method to enable the service account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using `-` as a wildcard
  /// for the `PROJECT_ID` will infer the project from the account. The
  /// `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
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
  async.Future<Empty> enable(
    EnableServiceAccountRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':enable';

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
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a ServiceAccount.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account in the
  /// following format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using
  /// `-` as a wildcard for the `PROJECT_ID` will infer the project from the
  /// account. The `ACCOUNT` value can be the `email` address or the `unique_id`
  /// of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
          ServiceAccount.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the IAM policy that is attached to a ServiceAccount.
  ///
  /// This IAM policy specifies which members have access to the service
  /// account. This method does not tell you whether the service account has
  /// been granted any roles on other resources. To check whether a service
  /// account has role grants on a resource, use the `getIamPolicy` method for
  /// that resource. For example, to view the role grants for a project, call
  /// the Resource Manager API's
  /// [`projects.getIamPolicy`](https://cloud.google.com/resource-manager/reference/rest/v1/projects/getIamPolicy)
  /// method.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

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
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists every ServiceAccount that belongs to a specific project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service accounts, such as `projects/my-project-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional limit on the number of service accounts to include
  /// in the response. Further accounts can subsequently be obtained by
  /// including the ListServiceAccountsResponse.next_page_token in a subsequent
  /// request. The default is 20, and the maximum is 100.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListServiceAccountsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountsResponse> list(
    core.String name, {
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

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/serviceAccounts';

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
      (data) => ListServiceAccountsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Patches a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to get the service account
  /// `projects/-/serviceAccounts/fake@example.com`, which does not exist, the
  /// response contains an HTTP `403 Forbidden` error instead of a `404 Not
  /// Found` error.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> patch(
    PatchServiceAccountRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
          ServiceAccount.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the IAM policy that is attached to a ServiceAccount.
  ///
  /// Use this method to grant or revoke access to the service account. For
  /// example, you could grant a member the ability to impersonate the service
  /// account. This method does not enable the service account to access other
  /// resources. To grant roles to a service account on a resource, follow these
  /// steps: 1. Call the resource's `getIamPolicy` method to get its current IAM
  /// policy. 2. Edit the policy so that it binds the service account to an IAM
  /// role for the resource. 3. Call the resource's `setIamPolicy` method to
  /// update its IAM policy. For detailed instructions, see [Granting roles to a
  /// service account for specific
  /// resources](https://cloud.google.com/iam/help/service-accounts/granting-access-to-service-accounts).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

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
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// **Note:** This method is deprecated and will stop working on July 1, 2021.
  ///
  /// Use the
  /// [`signBlob`](https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signBlob)
  /// method in the IAM Service Account Credentials API instead. If you
  /// currently use this method, see the [migration
  /// guide](https://cloud.google.com/iam/help/credentials/migrate-api) for
  /// instructions. Signs a blob using the system-managed private key for a
  /// ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Deprecated. [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api). The
  /// resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using `-` as a wildcard
  /// for the `PROJECT_ID` will infer the project from the account. The
  /// `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignBlobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignBlobResponse> signBlob(
    SignBlobRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signBlob';

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
      (data) => SignBlobResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// **Note:** This method is deprecated and will stop working on July 1, 2021.
  ///
  /// Use the
  /// [`signJwt`](https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signJwt)
  /// method in the IAM Service Account Credentials API instead. If you
  /// currently use this method, see the [migration
  /// guide](https://cloud.google.com/iam/help/credentials/migrate-api) for
  /// instructions. Signs a JSON Web Token (JWT) using the system-managed
  /// private key for a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Deprecated. [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api). The
  /// resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using `-` as a wildcard
  /// for the `PROJECT_ID` will infer the project from the account. The
  /// `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignJwtResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignJwtResponse> signJwt(
    SignJwtRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signJwt';

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
          SignJwtResponse.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Tests whether the caller has the specified permissions on a
  /// ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

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
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Restores a deleted ServiceAccount.
  ///
  /// **Important:** It is not always possible to restore a deleted service
  /// account. Use this method only as a last resort. After you delete a service
  /// account, IAM permanently removes the service account 30 days later. There
  /// is no way to restore a deleted service account that has been permanently
  /// removed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_UNIQUE_ID}`. Using `-` as
  /// a wildcard for the `PROJECT_ID` will infer the project from the account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UndeleteServiceAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UndeleteServiceAccountResponse> undelete(
    UndeleteServiceAccountRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

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
      (data) => UndeleteServiceAccountResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// **Note:** We are in the process of deprecating this method.
  ///
  /// Use PatchServiceAccount instead. Updates a ServiceAccount. You can update
  /// only the `display_name` and `description` fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to get the service account
  /// `projects/-/serviceAccounts/fake@example.com`, which does not exist, the
  /// response contains an HTTP `403 Forbidden` error instead of a `404 Not
  /// Found` error.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> update(
    ServiceAccount request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          ServiceAccount.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsServiceAccountsKeysResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccountKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account in the
  /// following format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using
  /// `-` as a wildcard for the `PROJECT_ID` will infer the project from the
  /// account. The `ACCOUNT` value can be the `email` address or the `unique_id`
  /// of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> create(
    CreateServiceAccountKeyRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

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
      (data) => ServiceAccountKey.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a ServiceAccountKey.
  ///
  /// Deleting a service account key does not revoke short-lived credentials
  /// that have been issued based on the service account key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key in the
  /// following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`. Using `-` as
  /// a wildcard for the `PROJECT_ID` will infer the project from the account.
  /// The `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern
  /// "^projects/[^/]+/serviceAccounts/[^/]+/keys/[^/]+$".
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
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets a ServiceAccountKey.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key in the
  /// following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`. Using `-` as
  /// a wildcard for the `PROJECT_ID` will infer the project from the account.
  /// The `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern
  /// "^projects/[^/]+/serviceAccounts/[^/]+/keys/[^/]+$".
  ///
  /// [publicKeyType] - The output format of the public key requested. X509_PEM
  /// is the default output format.
  /// Possible string values are:
  /// - "TYPE_NONE" : Unspecified. Returns nothing here.
  /// - "TYPE_X509_PEM_FILE" : X509 PEM format.
  /// - "TYPE_RAW_PUBLIC_KEY" : Raw public key.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> get(
    core.String name, {
    core.String publicKeyType,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (publicKeyType != null) {
      _queryParams['publicKeyType'] = [publicKeyType];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => ServiceAccountKey.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists every ServiceAccountKey for a service account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account in the
  /// following format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using
  /// `-` as a wildcard for the `PROJECT_ID`, will infer the project from the
  /// account. The `ACCOUNT` value can be the `email` address or the `unique_id`
  /// of the service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [keyTypes] - Filters the types of keys the user wants to include in the
  /// list response. Duplicate key types are not allowed. If no key type is
  /// provided, all keys are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountKeysResponse> list(
    core.String name, {
    core.List<core.String> keyTypes,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (keyTypes != null) {
      _queryParams['keyTypes'] = keyTypes;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

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
      (data) => ListServiceAccountKeysResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a ServiceAccountKey, using a public key that you provide.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account in the following format:
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. Using `-` as a wildcard
  /// for the `PROJECT_ID` will infer the project from the account. The
  /// `ACCOUNT` value can be the `email` address or the `unique_id` of the
  /// service account.
  /// Value must have pattern "^projects/[^/]+/serviceAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> upload(
    UploadServiceAccountKeyRequest request,
    core.String name, {
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys:upload';

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
      (data) => ServiceAccountKey.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class RolesResource {
  final commons.ApiRequester _requester;

  RolesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `name` value format is described below: *
  /// [`roles.get()`](/iam/reference/rest/v1/roles/get): `roles/{ROLE_NAME}`.
  /// This method returns results from all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// [`projects.roles.get()`](/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](/iam/docs/understanding-custom-roles) that have been
  /// created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// [`organizations.roles.get()`](/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only [custom roles](/iam/docs/understanding-custom-roles) that
  /// have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern "^roles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
      (data) => Role.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely [`roles`](/iam/reference/rest/v1/roles),
  /// [`projects`](/iam/reference/rest/v1/projects.roles), or
  /// [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
  /// resource type's `parent` value format is described below: *
  /// [`roles.list()`](/iam/reference/rest/v1/roles/list): An empty string. This
  /// method doesn't require a resource; it simply returns all [predefined
  /// roles](/iam/docs/understanding-roles#predefined_roles) in Cloud IAM.
  /// Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// [`projects.roles.list()`](/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level [custom
  /// roles](/iam/docs/understanding-custom-roles). Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// [`organizations.roles.list()`](/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level [custom roles](/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list({
    core.int pageSize,
    core.String pageToken,
    core.String parent,
    core.bool showDeleted,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (parent != null) {
      _queryParams['parent'] = [parent];
    }
    if (showDeleted != null) {
      _queryParams['showDeleted'] = ['${showDeleted}'];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/roles';

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
      (data) => ListRolesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists roles that can be granted on a Google Cloud resource.
  ///
  /// A role is grantable if the IAM policy for the resource can contain
  /// bindings to the role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryGrantableRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryGrantableRolesResponse> queryGrantableRoles(
    QueryGrantableRolesRequest request, {
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

    _url = 'v1/roles:queryGrantableRoles';

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
      (data) => QueryGrantableRolesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Audit log information specific to Cloud IAM admin APIs.
///
/// This message is serialized as an `Any` type in the `ServiceData` message of
/// an `AuditLog` message.
class AdminAuditData {
  /// The permission_delta when when creating or updating a Role.
  PermissionDelta permissionDelta;

  AdminAuditData();

  AdminAuditData.fromJson(core.Map _json) {
    if (_json.containsKey('permissionDelta')) {
      permissionDelta = PermissionDelta.fromJson(
          _json['permissionDelta'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissionDelta != null) {
      _json['permissionDelta'] = permissionDelta.toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For
/// sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Audit log information specific to Cloud IAM.
///
/// This message is serialized as an `Any` type in the `ServiceData` message of
/// an `AuditLog` message.
class AuditData {
  /// Policy delta between the original policy and the newly set policy.
  PolicyDelta policyDelta;

  AuditData();

  AuditData.fromJson(core.Map _json) {
    if (_json.containsKey('policyDelta')) {
      policyDelta = PolicyDelta.fromJson(
          _json['policyDelta'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policyDelta != null) {
      _json['policyDelta'] = policyDelta.toJson();
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": [ { "log_type": "DATA_READ",
/// "exempted_members": [ "user:jose@example.com" ] }, { "log_type":
/// "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// Contains information about an auditable service.
class AuditableService {
  /// Public name of the service.
  ///
  /// For example, the service name for Cloud IAM is 'iam.googleapis.com'.
  core.String name;

  AuditableService();

  AuditableService.fromJson(core.Map _json) {
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

/// Associates `members` with a `role`.
class Binding {
  /// A client-specified ID for this binding.
  ///
  /// Expected to be globally unique to support the internal bindings-by-ID API.
  core.String bindingId;

  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('bindingId')) {
      bindingId = _json['bindingId'] as core.String;
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindingId != null) {
      _json['bindingId'] = bindingId;
    }
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// One delta entry for Binding.
///
/// Each individual change (only one member in each entry) to a binding will be
/// a separate entry.
class BindingDelta {
  /// The action that was performed on a Binding.
  ///
  /// Required
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Unspecified.
  /// - "ADD" : Addition of a Binding.
  /// - "REMOVE" : Removal of a Binding.
  core.String action;

  /// The condition that is associated with this binding.
  Expr condition;

  /// A single identity requesting access for a Cloud Platform resource.
  ///
  /// Follows the same format of Binding.members. Required
  core.String member;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. Required
  core.String role;

  BindingDelta();

  BindingDelta.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('member')) {
      member = _json['member'] as core.String;
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (action != null) {
      _json['action'] = action;
    }
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (member != null) {
      _json['member'] = member;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// The request to create a new role.
class CreateRoleRequest {
  /// The Role resource to create.
  Role role;

  /// The role ID to use for this role.
  ///
  /// A role ID may contain alphanumeric characters, underscores (`_`), and
  /// periods (`.`). It must contain a minimum of 3 characters and a maximum of
  /// 64 characters.
  core.String roleId;

  CreateRoleRequest();

  CreateRoleRequest.fromJson(core.Map _json) {
    if (_json.containsKey('role')) {
      role =
          Role.fromJson(_json['role'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('roleId')) {
      roleId = _json['roleId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (role != null) {
      _json['role'] = role.toJson();
    }
    if (roleId != null) {
      _json['roleId'] = roleId;
    }
    return _json;
  }
}

/// The service account key create request.
class CreateServiceAccountKeyRequest {
  /// Which type of key and algorithm to use for the key.
  ///
  /// The default is currently a 2K RSA key. However this may change in the
  /// future.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String keyAlgorithm;

  /// The output format of the private key.
  ///
  /// The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google
  /// Credentials File format.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format. The password for the PKCS12 file is
  /// `notasecret`. For more information, see
  /// https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String privateKeyType;

  CreateServiceAccountKeyRequest();

  CreateServiceAccountKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('keyAlgorithm')) {
      keyAlgorithm = _json['keyAlgorithm'] as core.String;
    }
    if (_json.containsKey('privateKeyType')) {
      privateKeyType = _json['privateKeyType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyAlgorithm != null) {
      _json['keyAlgorithm'] = keyAlgorithm;
    }
    if (privateKeyType != null) {
      _json['privateKeyType'] = privateKeyType;
    }
    return _json;
  }
}

/// The service account create request.
class CreateServiceAccountRequest {
  /// The account id that is used to generate the service account email address
  /// and a stable unique id.
  ///
  /// It is unique within a project, must be 6-30 characters long, and match the
  /// regular expression `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  ///
  /// Required.
  core.String accountId;

  /// The ServiceAccount resource to create.
  ///
  /// Currently, only the following values are user assignable: `display_name`
  /// and `description`.
  ServiceAccount serviceAccount;

  CreateServiceAccountRequest();

  CreateServiceAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = ServiceAccount.fromJson(
          _json['serviceAccount'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accountId != null) {
      _json['accountId'] = accountId;
    }
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount.toJson();
    }
    return _json;
  }
}

/// The service account disable request.
class DisableServiceAccountRequest {
  DisableServiceAccountRequest();

  DisableServiceAccountRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
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

/// The service account enable request.
class EnableServiceAccountRequest {
  EnableServiceAccountRequest();

  EnableServiceAccountRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// The request to lint a Cloud IAM policy object.
class LintPolicyRequest {
  /// google.iam.v1.Binding.condition object to be linted.
  Expr condition;

  /// The full resource name of the policy this lint request is about.
  ///
  /// The name follows the Google Cloud Platform (GCP) resource format. For
  /// example, a GCP project with ID `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`. The resource
  /// name is not used to read the policy instance from the Cloud IAM database.
  /// The candidate policy for lint has to be provided in the same request
  /// object.
  core.String fullResourceName;

  LintPolicyRequest();

  LintPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fullResourceName')) {
      fullResourceName = _json['fullResourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (fullResourceName != null) {
      _json['fullResourceName'] = fullResourceName;
    }
    return _json;
  }
}

/// The response of a lint operation.
///
/// An empty response indicates the operation was able to fully execute and no
/// lint issue was found.
class LintPolicyResponse {
  /// List of lint results sorted by `severity` in descending order.
  core.List<LintResult> lintResults;

  LintPolicyResponse();

  LintPolicyResponse.fromJson(core.Map _json) {
    if (_json.containsKey('lintResults')) {
      lintResults = (_json['lintResults'] as core.List)
          .map<LintResult>((value) =>
              LintResult.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lintResults != null) {
      _json['lintResults'] =
          lintResults.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Structured response of a single validation unit.
class LintResult {
  /// Human readable debug message associated with the issue.
  core.String debugMessage;

  /// The name of the field for which this lint result is about.
  ///
  /// For nested messages `field_name` consists of names of the embedded fields
  /// separated by period character. The top-level qualifier is the input object
  /// to lint in the request. For example, the `field_name` value
  /// `condition.expression` identifies a lint result for the `expression` field
  /// of the provided condition.
  core.String fieldName;

  /// The validation unit level.
  /// Possible string values are:
  /// - "LEVEL_UNSPECIFIED" : Level is unspecified.
  /// - "CONDITION" : A validation unit which operates on an individual
  /// condition within a binding.
  core.String level;

  /// 0-based character position of problematic construct within the object
  /// identified by `field_name`.
  ///
  /// Currently, this is populated only for condition expression.
  core.int locationOffset;

  /// The validation unit severity.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity is unspecified.
  /// - "ERROR" : A validation unit returns an error only for critical issues.
  /// If an attempt is made to set the problematic policy without rectifying the
  /// critical issue, it causes the `setPolicy` operation to fail.
  /// - "WARNING" : Any issue which is severe enough but does not cause an
  /// error. For example, suspicious constructs in the input object will not
  /// necessarily fail `setPolicy`, but there is a high likelihood that they
  /// won't behave as expected during policy evaluation in `checkPolicy`. This
  /// includes the following common scenarios: - Unsatisfiable condition:
  /// Expired timestamp in date/time condition. - Ineffective condition:
  /// Condition on a pair which is granted unconditionally in another binding of
  /// the same policy.
  /// - "NOTICE" : Reserved for the issues that are not severe as
  /// `ERROR`/`WARNING`, but need special handling. For instance, messages about
  /// skipped validation units are issued as `NOTICE`.
  /// - "INFO" : Any informative statement which is not severe enough to raise
  /// `ERROR`/`WARNING`/`NOTICE`, like auto-correction recommendations on the
  /// input content. Note that current version of the linter does not utilize
  /// `INFO`.
  /// - "DEPRECATED" : Deprecated severity level.
  core.String severity;

  /// The validation unit name, for instance
  /// "lintValidationUnits/ConditionComplexityCheck".
  core.String validationUnitName;

  LintResult();

  LintResult.fromJson(core.Map _json) {
    if (_json.containsKey('debugMessage')) {
      debugMessage = _json['debugMessage'] as core.String;
    }
    if (_json.containsKey('fieldName')) {
      fieldName = _json['fieldName'] as core.String;
    }
    if (_json.containsKey('level')) {
      level = _json['level'] as core.String;
    }
    if (_json.containsKey('locationOffset')) {
      locationOffset = _json['locationOffset'] as core.int;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('validationUnitName')) {
      validationUnitName = _json['validationUnitName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (debugMessage != null) {
      _json['debugMessage'] = debugMessage;
    }
    if (fieldName != null) {
      _json['fieldName'] = fieldName;
    }
    if (level != null) {
      _json['level'] = level;
    }
    if (locationOffset != null) {
      _json['locationOffset'] = locationOffset;
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (validationUnitName != null) {
      _json['validationUnitName'] = validationUnitName;
    }
    return _json;
  }
}

/// The response containing the roles defined under a resource.
class ListRolesResponse {
  /// To retrieve the next page of results, set `ListRolesRequest.page_token` to
  /// this value.
  core.String nextPageToken;

  /// The Roles defined on this resource.
  core.List<Role> roles;

  ListRolesResponse();

  ListRolesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('roles')) {
      roles = (_json['roles'] as core.List)
          .map<Role>((value) =>
              Role.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (roles != null) {
      _json['roles'] = roles.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The service account keys list response.
class ListServiceAccountKeysResponse {
  /// The public keys for the service account.
  core.List<ServiceAccountKey> keys;

  ListServiceAccountKeysResponse();

  ListServiceAccountKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey('keys')) {
      keys = (_json['keys'] as core.List)
          .map<ServiceAccountKey>((value) => ServiceAccountKey.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keys != null) {
      _json['keys'] = keys.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The service account list response.
class ListServiceAccountsResponse {
  /// The list of matching service accounts.
  core.List<ServiceAccount> accounts;

  /// To retrieve the next page of results, set
  /// ListServiceAccountsRequest.page_token to this value.
  core.String nextPageToken;

  ListServiceAccountsResponse();

  ListServiceAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('accounts')) {
      accounts = (_json['accounts'] as core.List)
          .map<ServiceAccount>((value) => ServiceAccount.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accounts != null) {
      _json['accounts'] = accounts.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The request for PatchServiceAccount.
///
/// You can patch only the `display_name` and `description` fields. You must use
/// the `update_mask` field to specify which of these fields you want to patch.
/// Only the fields specified in the request are guaranteed to be returned in
/// the response. Other fields may be empty in the response.
class PatchServiceAccountRequest {
  ServiceAccount serviceAccount;
  core.String updateMask;

  PatchServiceAccountRequest();

  PatchServiceAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = ServiceAccount.fromJson(
          _json['serviceAccount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// A permission which can be included by a role.
class Permission {
  /// The service API associated with the permission is not enabled.
  core.bool apiDisabled;

  /// The current custom role support level.
  /// Possible string values are:
  /// - "SUPPORTED" : Permission is fully supported for custom role use.
  /// - "TESTING" : Permission is being tested to check custom role
  /// compatibility.
  /// - "NOT_SUPPORTED" : Permission is not supported for custom role use.
  core.String customRolesSupportLevel;

  /// A brief description of what this Permission is used for.
  ///
  /// This permission can ONLY be used in predefined roles.
  core.String description;

  /// The name of this Permission.
  core.String name;
  core.bool onlyInPredefinedRoles;

  /// The preferred name for this permission.
  ///
  /// If present, then this permission is an alias of, and equivalent to, the
  /// listed primary_permission.
  core.String primaryPermission;

  /// The current launch stage of the permission.
  /// Possible string values are:
  /// - "ALPHA" : The permission is currently in an alpha phase.
  /// - "BETA" : The permission is currently in a beta phase.
  /// - "GA" : The permission is generally available.
  /// - "DEPRECATED" : The permission is being deprecated.
  core.String stage;

  /// The title of this Permission.
  core.String title;

  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey('apiDisabled')) {
      apiDisabled = _json['apiDisabled'] as core.bool;
    }
    if (_json.containsKey('customRolesSupportLevel')) {
      customRolesSupportLevel = _json['customRolesSupportLevel'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('onlyInPredefinedRoles')) {
      onlyInPredefinedRoles = _json['onlyInPredefinedRoles'] as core.bool;
    }
    if (_json.containsKey('primaryPermission')) {
      primaryPermission = _json['primaryPermission'] as core.String;
    }
    if (_json.containsKey('stage')) {
      stage = _json['stage'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiDisabled != null) {
      _json['apiDisabled'] = apiDisabled;
    }
    if (customRolesSupportLevel != null) {
      _json['customRolesSupportLevel'] = customRolesSupportLevel;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (onlyInPredefinedRoles != null) {
      _json['onlyInPredefinedRoles'] = onlyInPredefinedRoles;
    }
    if (primaryPermission != null) {
      _json['primaryPermission'] = primaryPermission;
    }
    if (stage != null) {
      _json['stage'] = stage;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A PermissionDelta message to record the added_permissions and
/// removed_permissions inside a role.
class PermissionDelta {
  /// Added permissions.
  core.List<core.String> addedPermissions;

  /// Removed permissions.
  core.List<core.String> removedPermissions;

  PermissionDelta();

  PermissionDelta.fromJson(core.Map _json) {
    if (_json.containsKey('addedPermissions')) {
      addedPermissions = (_json['addedPermissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('removedPermissions')) {
      removedPermissions = (_json['removedPermissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addedPermissions != null) {
      _json['addedPermissions'] = addedPermissions;
    }
    if (removedPermissions != null) {
      _json['removedPermissions'] = removedPermissions;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// The difference delta between two policies.
class PolicyDelta {
  /// The delta for Bindings between two policies.
  core.List<BindingDelta> bindingDeltas;

  PolicyDelta();

  PolicyDelta.fromJson(core.Map _json) {
    if (_json.containsKey('bindingDeltas')) {
      bindingDeltas = (_json['bindingDeltas'] as core.List)
          .map<BindingDelta>((value) => BindingDelta.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindingDeltas != null) {
      _json['bindingDeltas'] =
          bindingDeltas.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A request to get the list of auditable services for a resource.
class QueryAuditableServicesRequest {
  /// The full resource name to query from the list of auditable services.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String fullResourceName;

  QueryAuditableServicesRequest();

  QueryAuditableServicesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fullResourceName')) {
      fullResourceName = _json['fullResourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fullResourceName != null) {
      _json['fullResourceName'] = fullResourceName;
    }
    return _json;
  }
}

/// A response containing a list of auditable services for a resource.
class QueryAuditableServicesResponse {
  /// The auditable services for a resource.
  core.List<AuditableService> services;

  QueryAuditableServicesResponse();

  QueryAuditableServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('services')) {
      services = (_json['services'] as core.List)
          .map<AuditableService>((value) => AuditableService.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (services != null) {
      _json['services'] = services.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The grantable role query request.
class QueryGrantableRolesRequest {
  /// The full resource name to query from the list of grantable roles.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String fullResourceName;

  /// Optional limit on the number of roles to include in the response.
  ///
  /// The default is 300, and the maximum is 1,000.
  core.int pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryGrantableRolesResponse.
  core.String pageToken;

  ///
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  core.String view;

  QueryGrantableRolesRequest();

  QueryGrantableRolesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fullResourceName')) {
      fullResourceName = _json['fullResourceName'] as core.String;
    }
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
    if (_json.containsKey('view')) {
      view = _json['view'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fullResourceName != null) {
      _json['fullResourceName'] = fullResourceName;
    }
    if (pageSize != null) {
      _json['pageSize'] = pageSize;
    }
    if (pageToken != null) {
      _json['pageToken'] = pageToken;
    }
    if (view != null) {
      _json['view'] = view;
    }
    return _json;
  }
}

/// The grantable role query response.
class QueryGrantableRolesResponse {
  /// To retrieve the next page of results, set
  /// `QueryGrantableRolesRequest.page_token` to this value.
  core.String nextPageToken;

  /// The list of matching roles.
  core.List<Role> roles;

  QueryGrantableRolesResponse();

  QueryGrantableRolesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('roles')) {
      roles = (_json['roles'] as core.List)
          .map<Role>((value) =>
              Role.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (roles != null) {
      _json['roles'] = roles.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A request to get permissions which can be tested on a resource.
class QueryTestablePermissionsRequest {
  /// The full resource name to query from the list of testable permissions.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String fullResourceName;

  /// Optional limit on the number of permissions to include in the response.
  ///
  /// The default is 100, and the maximum is 1,000.
  core.int pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryTestablePermissionsRequest.
  core.String pageToken;

  QueryTestablePermissionsRequest();

  QueryTestablePermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fullResourceName')) {
      fullResourceName = _json['fullResourceName'] as core.String;
    }
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fullResourceName != null) {
      _json['fullResourceName'] = fullResourceName;
    }
    if (pageSize != null) {
      _json['pageSize'] = pageSize;
    }
    if (pageToken != null) {
      _json['pageToken'] = pageToken;
    }
    return _json;
  }
}

/// The response containing permissions which can be tested on a resource.
class QueryTestablePermissionsResponse {
  /// To retrieve the next page of results, set
  /// `QueryTestableRolesRequest.page_token` to this value.
  core.String nextPageToken;

  /// The Permissions testable on the requested resource.
  core.List<Permission> permissions;

  QueryTestablePermissionsResponse();

  QueryTestablePermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<Permission>((value) =>
              Permission.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (permissions != null) {
      _json['permissions'] =
          permissions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A role in the Identity and Access Management API.
class Role {
  /// The current deleted state of the role.
  ///
  /// This field is read only. It will be ignored in calls to CreateRole and
  /// UpdateRole.
  core.bool deleted;

  /// A human-readable description for the role.
  ///
  /// Optional.
  core.String description;

  /// Used to perform a consistent read-modify-write.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The names of the permissions this role grants when bound in an IAM policy.
  core.List<core.String> includedPermissions;

  /// The name of the role.
  ///
  /// When Role is used in CreateRole, the role name must not be set. When Role
  /// is used in output and other input such as UpdateRole, the role name is the
  /// complete path, e.g., roles/logging.viewer for predefined roles and
  /// organizations/{ORGANIZATION_ID}/roles/logging.viewer for custom roles.
  core.String name;

  /// The current launch stage of the role.
  ///
  /// If the `ALPHA` launch stage has been selected for a role, the `stage`
  /// field will not be included in the returned definition for the role.
  /// Possible string values are:
  /// - "ALPHA" : The user has indicated this role is currently in an Alpha
  /// phase. If this launch stage is selected, the `stage` field will not be
  /// included when requesting the definition for a given role.
  /// - "BETA" : The user has indicated this role is currently in a Beta phase.
  /// - "GA" : The user has indicated this role is generally available.
  /// - "DEPRECATED" : The user has indicated this role is being deprecated.
  /// - "DISABLED" : This role is disabled and will not contribute permissions
  /// to any members it is granted to in policies.
  /// - "EAP" : The user has indicated this role is currently in an EAP phase.
  core.String stage;

  /// A human-readable title for the role.
  ///
  /// Typically this is limited to 100 UTF-8 bytes.
  ///
  /// Optional.
  core.String title;

  Role();

  Role.fromJson(core.Map _json) {
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('includedPermissions')) {
      includedPermissions = (_json['includedPermissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('stage')) {
      stage = _json['stage'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deleted != null) {
      _json['deleted'] = deleted;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (includedPermissions != null) {
      _json['includedPermissions'] = includedPermissions;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (stage != null) {
      _json['stage'] = stage;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// An IAM service account.
///
/// A service account is an account for an application or a virtual machine (VM)
/// instance, not a person. You can use a service account to call Google APIs.
/// To learn more, read the [overview of service
/// accounts](https://cloud.google.com/iam/help/service-accounts/overview). When
/// you create a service account, you specify the project ID that owns the
/// service account, as well as a name that must be unique within the project.
/// IAM uses these values to create an email address that identifies the service
/// account.
class ServiceAccount {
  /// A user-specified, human-readable description of the service account.
  ///
  /// The maximum length is 256 UTF-8 bytes.
  ///
  /// Optional.
  core.String description;

  /// Whether the service account is disabled.
  ///
  /// Output only.
  core.bool disabled;

  /// A user-specified, human-readable name for the service account.
  ///
  /// The maximum length is 100 UTF-8 bytes.
  ///
  /// Optional.
  core.String displayName;

  /// The email address of the service account.
  ///
  /// Output only.
  core.String email;

  /// Do not use.
  ///
  /// Deprecated.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resource name of the service account.
  ///
  /// Use one of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to get the service account
  /// `projects/-/serviceAccounts/fake@example.com`, which does not exist, the
  /// response contains an HTTP `403 Forbidden` error instead of a `404 Not
  /// Found` error.
  core.String name;

  /// The OAuth 2.0 client ID for the service account.
  ///
  /// Output only.
  core.String oauth2ClientId;

  /// The ID of the project that owns the service account.
  ///
  /// Output only.
  core.String projectId;

  /// The unique, stable numeric ID for the service account.
  ///
  /// Each service account retains its unique ID even if you delete the service
  /// account. For example, if you delete a service account, then create a new
  /// service account with the same name, the new service account has a
  /// different unique ID than the deleted service account.
  ///
  /// Output only.
  core.String uniqueId;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'] as core.bool;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('oauth2ClientId')) {
      oauth2ClientId = _json['oauth2ClientId'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('uniqueId')) {
      uniqueId = _json['uniqueId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (email != null) {
      _json['email'] = email;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (oauth2ClientId != null) {
      _json['oauth2ClientId'] = oauth2ClientId;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (uniqueId != null) {
      _json['uniqueId'] = uniqueId;
    }
    return _json;
  }
}

/// Represents a service account key.
///
/// A service account has two sets of key-pairs: user-managed, and
/// system-managed. User-managed key-pairs can be created and deleted by users.
/// Users are responsible for rotating these keys periodically to ensure
/// security of their service accounts. Users retain the private key of these
/// key-pairs, and Google retains ONLY the public key. System-managed keys are
/// automatically rotated by Google, and are used for signing for a maximum of
/// two weeks. The rotation process is probabilistic, and usage of the new key
/// will gradually ramp up and down over the key's lifetime. We recommend
/// caching the public key set for a service account for no more than 24 hours
/// to ensure you have access to the latest keys. Public keys for all service
/// accounts are also published at the OAuth2 Service Account API.
class ServiceAccountKey {
  /// Specifies the algorithm (and possibly key size) for the key.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String keyAlgorithm;

  /// The key origin.
  /// Possible string values are:
  /// - "ORIGIN_UNSPECIFIED" : Unspecified key origin.
  /// - "USER_PROVIDED" : Key is provided by user.
  /// - "GOOGLE_PROVIDED" : Key is provided by Google.
  core.String keyOrigin;

  /// The key type.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. The presence of this in
  /// the message will immediately result in an error.
  /// - "USER_MANAGED" : User-managed keys (managed and rotated by the user).
  /// - "SYSTEM_MANAGED" : System-managed keys (managed and rotated by Google).
  core.String keyType;

  /// The resource name of the service account key in the following format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  core.String name;

  /// The private key data.
  ///
  /// Only provided in `CreateServiceAccountKey` responses. Make sure to keep
  /// the private key data secure because it allows for the assertion of the
  /// service account identity. When base64 decoded, the private key data can be
  /// used to authenticate with Google API client libraries and with gcloud auth
  /// activate-service-account.
  core.String privateKeyData;
  core.List<core.int> get privateKeyDataAsBytes =>
      convert.base64.decode(privateKeyData);

  set privateKeyDataAsBytes(core.List<core.int> _bytes) {
    privateKeyData =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The output format for the private key.
  ///
  /// Only provided in `CreateServiceAccountKey` responses, not in
  /// `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never
  /// exposes system-managed private keys, and never retains user-managed
  /// private keys.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format. The password for the PKCS12 file is
  /// `notasecret`. For more information, see
  /// https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String privateKeyType;

  /// The public key data.
  ///
  /// Only provided in `GetServiceAccountKey` responses.
  core.String publicKeyData;
  core.List<core.int> get publicKeyDataAsBytes =>
      convert.base64.decode(publicKeyData);

  set publicKeyDataAsBytes(core.List<core.int> _bytes) {
    publicKeyData =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The key can be used after this timestamp.
  core.String validAfterTime;

  /// The key can be used before this timestamp.
  ///
  /// For system-managed key pairs, this timestamp is the end time for the
  /// private key signing operation. The public key could still be used for
  /// verification for a few hours after this time.
  core.String validBeforeTime;

  ServiceAccountKey();

  ServiceAccountKey.fromJson(core.Map _json) {
    if (_json.containsKey('keyAlgorithm')) {
      keyAlgorithm = _json['keyAlgorithm'] as core.String;
    }
    if (_json.containsKey('keyOrigin')) {
      keyOrigin = _json['keyOrigin'] as core.String;
    }
    if (_json.containsKey('keyType')) {
      keyType = _json['keyType'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('privateKeyData')) {
      privateKeyData = _json['privateKeyData'] as core.String;
    }
    if (_json.containsKey('privateKeyType')) {
      privateKeyType = _json['privateKeyType'] as core.String;
    }
    if (_json.containsKey('publicKeyData')) {
      publicKeyData = _json['publicKeyData'] as core.String;
    }
    if (_json.containsKey('validAfterTime')) {
      validAfterTime = _json['validAfterTime'] as core.String;
    }
    if (_json.containsKey('validBeforeTime')) {
      validBeforeTime = _json['validBeforeTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyAlgorithm != null) {
      _json['keyAlgorithm'] = keyAlgorithm;
    }
    if (keyOrigin != null) {
      _json['keyOrigin'] = keyOrigin;
    }
    if (keyType != null) {
      _json['keyType'] = keyType;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (privateKeyData != null) {
      _json['privateKeyData'] = privateKeyData;
    }
    if (privateKeyType != null) {
      _json['privateKeyType'] = privateKeyType;
    }
    if (publicKeyData != null) {
      _json['publicKeyData'] = publicKeyData;
    }
    if (validAfterTime != null) {
      _json['validAfterTime'] = validAfterTime;
    }
    if (validBeforeTime != null) {
      _json['validBeforeTime'] = validBeforeTime;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// [Migrate to Service Account Credentials
/// API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign blob request.
///
/// Deprecated.
class SignBlobRequest {
  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The bytes to sign.
  ///
  /// Required. Deprecated.
  core.String bytesToSign;
  core.List<core.int> get bytesToSignAsBytes =>
      convert.base64.decode(bytesToSign);

  set bytesToSignAsBytes(core.List<core.int> _bytes) {
    bytesToSign =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobRequest();

  SignBlobRequest.fromJson(core.Map _json) {
    if (_json.containsKey('bytesToSign')) {
      bytesToSign = _json['bytesToSign'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bytesToSign != null) {
      _json['bytesToSign'] = bytesToSign;
    }
    return _json;
  }
}

/// [Migrate to Service Account Credentials
/// API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign blob response.
///
/// Deprecated.
class SignBlobResponse {
  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The id of the key used to sign the blob.
  ///
  /// Deprecated.
  core.String keyId;

  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The signed blob.
  ///
  /// Deprecated.
  core.String signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobResponse();

  SignBlobResponse.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
    if (_json.containsKey('signature')) {
      signature = _json['signature'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (signature != null) {
      _json['signature'] = signature;
    }
    return _json;
  }
}

/// [Migrate to Service Account Credentials
/// API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign JWT request.
///
/// Deprecated.
class SignJwtRequest {
  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The JWT payload to sign. Must be a serialized JSON object that contains a
  /// JWT Claims Set. For example: `{"sub": "user@example.com", "iat": 313435}`
  /// If the JWT Claims Set contains an expiration time (`exp`) claim, it must
  /// be an integer timestamp that is not in the past and no more than 1 hour in
  /// the future. If the JWT Claims Set does not contain an expiration time
  /// (`exp`) claim, this claim is added automatically, with a timestamp that is
  /// 1 hour in the future.
  ///
  /// Required. Deprecated.
  core.String payload;

  SignJwtRequest();

  SignJwtRequest.fromJson(core.Map _json) {
    if (_json.containsKey('payload')) {
      payload = _json['payload'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (payload != null) {
      _json['payload'] = payload;
    }
    return _json;
  }
}

/// [Migrate to Service Account Credentials
/// API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign JWT response.
///
/// Deprecated.
class SignJwtResponse {
  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The id of the key used to sign the JWT.
  ///
  /// Deprecated.
  core.String keyId;

  /// [Migrate to Service Account Credentials
  /// API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The signed JWT.
  ///
  /// Deprecated.
  core.String signedJwt;

  SignJwtResponse();

  SignJwtResponse.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
    if (_json.containsKey('signedJwt')) {
      signedJwt = _json['signedJwt'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (signedJwt != null) {
      _json['signedJwt'] = signedJwt;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// The request to undelete an existing role.
class UndeleteRoleRequest {
  /// Used to perform a consistent read-modify-write.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  UndeleteRoleRequest();

  UndeleteRoleRequest.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    return _json;
  }
}

/// The service account undelete request.
class UndeleteServiceAccountRequest {
  UndeleteServiceAccountRequest();

  UndeleteServiceAccountRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

class UndeleteServiceAccountResponse {
  /// Metadata for the restored service account.
  ServiceAccount restoredAccount;

  UndeleteServiceAccountResponse();

  UndeleteServiceAccountResponse.fromJson(core.Map _json) {
    if (_json.containsKey('restoredAccount')) {
      restoredAccount = ServiceAccount.fromJson(
          _json['restoredAccount'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (restoredAccount != null) {
      _json['restoredAccount'] = restoredAccount.toJson();
    }
    return _json;
  }
}

/// The service account key upload request.
class UploadServiceAccountKeyRequest {
  /// A field that allows clients to upload their own public key.
  ///
  /// If set, use this public key data to create a service account key for given
  /// service account. Please note, the expected format for this field is
  /// X509_PEM.
  core.String publicKeyData;
  core.List<core.int> get publicKeyDataAsBytes =>
      convert.base64.decode(publicKeyData);

  set publicKeyDataAsBytes(core.List<core.int> _bytes) {
    publicKeyData =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  UploadServiceAccountKeyRequest();

  UploadServiceAccountKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('publicKeyData')) {
      publicKeyData = _json['publicKeyData'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (publicKeyData != null) {
      _json['publicKeyData'] = publicKeyData;
    }
    return _json;
  }
}
