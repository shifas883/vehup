part of 'vehicle_bloc.dart';

@immutable
sealed class VehicleEvent {}


class FetchVehicles extends VehicleEvent {
  final String token;

  FetchVehicles(this.token);

  @override
  List<Object> get props => [token];
}

class FetchVehicleDetails extends VehicleEvent {
  final int vehicleId;
  final String token;
  FetchVehicleDetails(this.vehicleId, this.token);

  @override
  List<Object?> get props => [vehicleId];
}