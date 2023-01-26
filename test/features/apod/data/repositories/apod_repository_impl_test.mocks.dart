// Mocks generated by Mockito 5.3.2 from annotations
// in socle/test/features/apod/data/repositories/apod_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:socle/core/network/network_info.dart' as _i4;
import 'package:socle/features/apod/data/datasources/apod_remote_data_source.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ApodRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockApodRemoteDataSource extends _i1.Mock
    implements _i2.ApodRemoteDataSource {
  MockApodRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<dynamic> getApodMedia(int? count) => (super.noSuchMethod(
        Invocation.method(
          #getApodMedia,
          [count],
        ),
        returnValue: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i4.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
