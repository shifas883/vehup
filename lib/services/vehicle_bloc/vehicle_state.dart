part of 'vehicle_bloc.dart';

@immutable
sealed class VehicleState {}

class VehicleInitial extends VehicleState {}

class VehicleLoading extends VehicleState {}

class VehicleLoaded extends VehicleState {
  final List<VehicleData> vehicles;
  VehicleLoaded(this.vehicles);
}

class VehicleError extends VehicleState {
  final String message;
  VehicleError(this.message);
}

class VehicleDetailsLoading extends VehicleState {}

class VehicleDetailsLoaded extends VehicleState {
  final VehicleDetailsData vehicleDetails;

  VehicleDetailsLoaded(this.vehicleDetails);

  @override
  List<Object?> get props => [vehicleDetails];
}

class VehicleDetailsError extends VehicleState {
  final String message;

  VehicleDetailsError(this.message);

  @override
  List<Object?> get props => [message];
}