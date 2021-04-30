// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'address_store.dart';
//
// // **************************************************************************
// // StoreGenerator
// // **************************************************************************
//
// // ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic
//
// mixin _$AddressStore on _AddressStoreBase, Store {
//   Computed<AddressStoreStatus> _$addAddressStoreStatusComputed;
//
//   @override
//   AddressStoreStatus get addAddressStoreStatus =>
//       (_$addAddressStoreStatusComputed ??= Computed<AddressStoreStatus>(
//               () => super.addAddressStoreStatus,
//               name: '_AddressStoreBase.addAddressStoreStatus'))
//           .value;
//   Computed<AddressStoreStatus> _$getAddressStoreStatusComputed;
//
//   @override
//   AddressStoreStatus get getAddressStoreStatus =>
//       (_$getAddressStoreStatusComputed ??= Computed<AddressStoreStatus>(
//               () => super.getAddressStoreStatus,
//               name: '_AddressStoreBase.getAddressStoreStatus'))
//           .value;
//   Computed<AddressStoreStatus> _$deleteAddressStoreStatusComputed;
//
//   @override
//   AddressStoreStatus get deleteAddressStoreStatus =>
//       (_$deleteAddressStoreStatusComputed ??= Computed<AddressStoreStatus>(
//               () => super.deleteAddressStoreStatus,
//               name: '_AddressStoreBase.deleteAddressStoreStatus'))
//           .value;
//   Computed<AddressStoreStatus> _$updateAddressStoreStatusComputed;
//
//   @override
//   AddressStoreStatus get updateAddressStoreStatus =>
//       (_$updateAddressStoreStatusComputed ??= Computed<AddressStoreStatus>(
//               () => super.updateAddressStoreStatus,
//               name: '_AddressStoreBase.updateAddressStoreStatus'))
//           .value;
//
//   final _$addAddressFutureAtom =
//       Atom(name: '_AddressStoreBase.addAddressFuture');
//
//   @override
//   ObservableFuture<AddAddressResponseModel> get addAddressFuture {
//     _$addAddressFutureAtom.reportRead();
//     return super.addAddressFuture;
//   }
//
//   @override
//   set addAddressFuture(ObservableFuture<AddAddressResponseModel> value) {
//     _$addAddressFutureAtom.reportWrite(value, super.addAddressFuture, () {
//       super.addAddressFuture = value;
//     });
//   }
//
//   final _$addAddressResponseAtom =
//       Atom(name: '_AddressStoreBase.addAddressResponse');
//
//   @override
//   AddAddressResponseModel get addAddressResponse {
//     _$addAddressResponseAtom.reportRead();
//     return super.addAddressResponse;
//   }
//
//   @override
//   set addAddressResponse(AddAddressResponseModel value) {
//     _$addAddressResponseAtom.reportWrite(value, super.addAddressResponse, () {
//       super.addAddressResponse = value;
//     });
//   }
//
//   final _$addAddressErrorAtom = Atom(name: '_AddressStoreBase.addAddressError');
//
//   @override
//   ErrorResponse get addAddressError {
//     _$addAddressErrorAtom.reportRead();
//     return super.addAddressError;
//   }
//
//   @override
//   set addAddressError(ErrorResponse value) {
//     _$addAddressErrorAtom.reportWrite(value, super.addAddressError, () {
//       super.addAddressError = value;
//     });
//   }
//
//   final _$getAddressFutureAtom =
//       Atom(name: '_AddressStoreBase.getAddressFuture');
//
//   @override
//   ObservableFuture<GetAddressResponseModel> get getAddressFuture {
//     _$getAddressFutureAtom.reportRead();
//     return super.getAddressFuture;
//   }
//
//   @override
//   set getAddressFuture(ObservableFuture<GetAddressResponseModel> value) {
//     _$getAddressFutureAtom.reportWrite(value, super.getAddressFuture, () {
//       super.getAddressFuture = value;
//     });
//   }
//
//   final _$getAddressResponseAtom =
//       Atom(name: '_AddressStoreBase.getAddressResponse');
//
//   @override
//   GetAddressResponseModel get getAddressResponse {
//     _$getAddressResponseAtom.reportRead();
//     return super.getAddressResponse;
//   }
//
//   @override
//   set getAddressResponse(GetAddressResponseModel value) {
//     _$getAddressResponseAtom.reportWrite(value, super.getAddressResponse, () {
//       super.getAddressResponse = value;
//     });
//   }
//
//   final _$getAddressErrorAtom = Atom(name: '_AddressStoreBase.getAddressError');
//
//   @override
//   ErrorResponse get getAddressError {
//     _$getAddressErrorAtom.reportRead();
//     return super.getAddressError;
//   }
//
//   @override
//   set getAddressError(ErrorResponse value) {
//     _$getAddressErrorAtom.reportWrite(value, super.getAddressError, () {
//       super.getAddressError = value;
//     });
//   }
//
//   final _$deleteAddressFutureAtom =
//       Atom(name: '_AddressStoreBase.deleteAddressFuture');
//
//   @override
//   ObservableFuture<DeleteAddressResponseModel> get deleteAddressFuture {
//     _$deleteAddressFutureAtom.reportRead();
//     return super.deleteAddressFuture;
//   }
//
//   @override
//   set deleteAddressFuture(ObservableFuture<DeleteAddressResponseModel> value) {
//     _$deleteAddressFutureAtom.reportWrite(value, super.deleteAddressFuture, () {
//       super.deleteAddressFuture = value;
//     });
//   }
//
//   final _$deleteAddressResponseAtom =
//       Atom(name: '_AddressStoreBase.deleteAddressResponse');
//
//   @override
//   DeleteAddressResponseModel get deleteAddressResponse {
//     _$deleteAddressResponseAtom.reportRead();
//     return super.deleteAddressResponse;
//   }
//
//   @override
//   set deleteAddressResponse(DeleteAddressResponseModel value) {
//     _$deleteAddressResponseAtom.reportWrite(value, super.deleteAddressResponse,
//         () {
//       super.deleteAddressResponse = value;
//     });
//   }
//
//   final _$deleteAddressErrorAtom =
//       Atom(name: '_AddressStoreBase.deleteAddressError');
//
//   @override
//   ErrorResponse get deleteAddressError {
//     _$deleteAddressErrorAtom.reportRead();
//     return super.deleteAddressError;
//   }
//
//   @override
//   set deleteAddressError(ErrorResponse value) {
//     _$deleteAddressErrorAtom.reportWrite(value, super.deleteAddressError, () {
//       super.deleteAddressError = value;
//     });
//   }
//
//   final _$updateAddressFutureAtom =
//       Atom(name: '_AddressStoreBase.updateAddressFuture');
//
//   @override
//   ObservableFuture<UpdateAddressResponseModel> get updateAddressFuture {
//     _$updateAddressFutureAtom.reportRead();
//     return super.updateAddressFuture;
//   }
//
//   @override
//   set updateAddressFuture(ObservableFuture<UpdateAddressResponseModel> value) {
//     _$updateAddressFutureAtom.reportWrite(value, super.updateAddressFuture, () {
//       super.updateAddressFuture = value;
//     });
//   }
//
//   final _$updateAddressResponseAtom =
//       Atom(name: '_AddressStoreBase.updateAddressResponse');
//
//   @override
//   UpdateAddressResponseModel get updateAddressResponse {
//     _$updateAddressResponseAtom.reportRead();
//     return super.updateAddressResponse;
//   }
//
//   @override
//   set updateAddressResponse(UpdateAddressResponseModel value) {
//     _$updateAddressResponseAtom.reportWrite(value, super.updateAddressResponse,
//         () {
//       super.updateAddressResponse = value;
//     });
//   }
//
//   final _$updateAddressErrorAtom =
//       Atom(name: '_AddressStoreBase.updateAddressError');
//
//   @override
//   ErrorResponse get updateAddressError {
//     _$updateAddressErrorAtom.reportRead();
//     return super.updateAddressError;
//   }
//
//   @override
//   set updateAddressError(ErrorResponse value) {
//     _$updateAddressErrorAtom.reportWrite(value, super.updateAddressError, () {
//       super.updateAddressError = value;
//     });
//   }
//
//   final _$addAddressApiProcessAsyncAction =
//       AsyncAction('_AddressStoreBase.addAddressApiProcess');
//
//   @override
//   Future<void> addAddressApiProcess({Map<dynamic, dynamic> param}) {
//     return _$addAddressApiProcessAsyncAction
//         .run(() => super.addAddressApiProcess(param: param));
//   }
//
//   final _$getAddressApiProcessAsyncAction =
//       AsyncAction('_AddressStoreBase.getAddressApiProcess');
//
//   @override
//   Future<void> getAddressApiProcess() {
//     return _$getAddressApiProcessAsyncAction
//         .run(() => super.getAddressApiProcess());
//   }
//
//   final _$deleteAddressApiProcessAsyncAction =
//       AsyncAction('_AddressStoreBase.deleteAddressApiProcess');
//
//   @override
//   Future<void> deleteAddressApiProcess({String profileId}) {
//     return _$deleteAddressApiProcessAsyncAction
//         .run(() => super.deleteAddressApiProcess(profileId: profileId));
//   }
//
//   final _$updateAddressApiProcessAsyncAction =
//       AsyncAction('_AddressStoreBase.updateAddressApiProcess');
//
//   @override
//   Future<void> updateAddressApiProcess(
//       {Map<dynamic, dynamic> param, String profileId}) {
//     return _$updateAddressApiProcessAsyncAction.run(() =>
//         super.updateAddressApiProcess(param: param, profileId: profileId));
//   }
//
//   @override
//   String toString() {
//     return '''
// addAddressFuture: ${addAddressFuture},
// addAddressResponse: ${addAddressResponse},
// addAddressError: ${addAddressError},
// getAddressFuture: ${getAddressFuture},
// getAddressResponse: ${getAddressResponse},
// getAddressError: ${getAddressError},
// deleteAddressFuture: ${deleteAddressFuture},
// deleteAddressResponse: ${deleteAddressResponse},
// deleteAddressError: ${deleteAddressError},
// updateAddressFuture: ${updateAddressFuture},
// updateAddressResponse: ${updateAddressResponse},
// updateAddressError: ${updateAddressError},
// addAddressStoreStatus: ${addAddressStoreStatus},
// getAddressStoreStatus: ${getAddressStoreStatus},
// deleteAddressStoreStatus: ${deleteAddressStoreStatus},
// updateAddressStoreStatus: ${updateAddressStoreStatus}
//     ''';
//   }
// }
