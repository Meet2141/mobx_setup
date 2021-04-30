// import 'package:mobx/mobx.dart';
// import 'package:souck_direct/api_response_model/add_address_response_model.dart';
// import 'package:souck_direct/api_response_model/delete_address_reponse_model.dart';
// import 'package:souck_direct/api_response_model/get_address_response_model.dart';
// import 'package:souck_direct/api_response_model/login_response_model.dart';
// import 'package:souck_direct/api_response_model/login_with_otp_model.dart';
// import 'package:souck_direct/api_response_model/update_address_response_model.dart';
// import 'package:souck_direct/export_basic_file.dart';
//
// part 'address_store.g.dart';
//
// class AddressStore = _AddressStoreBase with _$AddressStore;
//
// enum AddressStoreStatus { initial, loading, success, failure }
//
// abstract class _AddressStoreBase with Store {
//   ApiController _apiController = ApiController();
//
//   //add address
//   @observable
//   ObservableFuture<AddAddressResponseModel> addAddressFuture;
//
//   @observable
//   AddAddressResponseModel addAddressResponse;
//
//   @observable
//   ErrorResponse addAddressError;
//
//   @computed
//   AddressStoreStatus get addAddressStoreStatus {
//     if (addAddressFuture != null) {
//       if (addAddressFuture.status == FutureStatus.pending)
//         return AddressStoreStatus.loading;
//       else if (addAddressFuture.status == FutureStatus.rejected)
//         return AddressStoreStatus.failure;
//       else
//         return AddressStoreStatus.success;
//     } else {
//       return AddressStoreStatus.initial;
//     }
//   }
//
//   @action
//   Future<void> addAddressApiProcess({Map param}) async {
//     try {
//       addAddressError = null;
//       addAddressFuture = ObservableFuture(
//         _apiController.addAddressApi(param: param),
//       );
//       addAddressResponse = await addAddressFuture;
//     } on ErrorResponse catch (error) {
//       this.addAddressError = error;
//     }
//   }
//
// //get address
//   @observable
//   ObservableFuture<GetAddressResponseModel> getAddressFuture;
//
//   @observable
//   GetAddressResponseModel getAddressResponse;
//
//   @observable
//   ErrorResponse getAddressError;
//
//   @computed
//   AddressStoreStatus get getAddressStoreStatus {
//     if (getAddressFuture != null) {
//       if (getAddressFuture.status == FutureStatus.pending)
//         return AddressStoreStatus.loading;
//       else if (getAddressFuture.status == FutureStatus.rejected)
//         return AddressStoreStatus.failure;
//       else
//         return AddressStoreStatus.success;
//     } else {
//       return AddressStoreStatus.initial;
//     }
//   }
//
//   @action
//   Future<void> getAddressApiProcess() async {
//     try {
//       getAddressError = null;
//       getAddressFuture = ObservableFuture(
//         _apiController.getAddressApi(),
//       );
//       getAddressResponse = await getAddressFuture;
//     } on ErrorResponse catch (error) {
//       this.getAddressError = error;
//     }
//   }
//
//   //delete address
//  @observable
//   ObservableFuture<DeleteAddressResponseModel> deleteAddressFuture;
//
//   @observable
//   DeleteAddressResponseModel deleteAddressResponse;
//
//   @observable
//   ErrorResponse deleteAddressError;
//
//   @computed
//   AddressStoreStatus get deleteAddressStoreStatus {
//     if (deleteAddressFuture != null) {
//       if (deleteAddressFuture.status == FutureStatus.pending)
//         return AddressStoreStatus.loading;
//       else if (deleteAddressFuture.status == FutureStatus.rejected)
//         return AddressStoreStatus.failure;
//       else
//         return AddressStoreStatus.success;
//     } else {
//       return AddressStoreStatus.initial;
//     }
//   }
//
//   @action
//   Future<void> deleteAddressApiProcess({String profileId}) async {
//     try {
//       deleteAddressError = null;
//       deleteAddressFuture = ObservableFuture(
//         _apiController.deleteAddressApi(profileId:profileId),
//       );
//       deleteAddressResponse = await deleteAddressFuture;
//     } on ErrorResponse catch (error) {
//       this.deleteAddressError = error;
//     }
//   }
//
//   //update address
//   @observable
//   ObservableFuture<UpdateAddressResponseModel> updateAddressFuture;
//
//   @observable
//   UpdateAddressResponseModel updateAddressResponse;
//
//   @observable
//   ErrorResponse updateAddressError;
//
//   @computed
//   AddressStoreStatus get updateAddressStoreStatus {
//     if (updateAddressFuture != null) {
//       if (updateAddressFuture.status == FutureStatus.pending)
//         return AddressStoreStatus.loading;
//       else if (updateAddressFuture.status == FutureStatus.rejected)
//         return AddressStoreStatus.failure;
//       else
//         return AddressStoreStatus.success;
//     } else {
//       return AddressStoreStatus.initial;
//     }
//   }
//
//   @action
//   Future<void> updateAddressApiProcess({Map param, String profileId}) async {
//     try {
//       updateAddressError = null;
//       updateAddressFuture = ObservableFuture(
//         _apiController.updateAddressApi(profileId: profileId,param: param),
//       );
//       updateAddressResponse = await updateAddressFuture;
//     } on ErrorResponse catch (error) {
//       this.updateAddressError = error;
//     }
//   }
//
// }
