import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vehup/models/vehicle_details.dart';
import 'package:vehup/models/vehicle_model.dart';
import 'package:vehup/services/datasourse.dart';

part 'vehicle_event.dart';
part 'vehicle_state.dart';

class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  final AuthRepository authRepository;

  VehicleBloc(this.authRepository) : super(VehicleInitial()) {
    on<FetchVehicles>((event, emit) async {
      emit(VehicleLoading());
      try {
        final vehicles = await authRepository.fetchTotalVehicles(event.token);
        emit(VehicleLoaded(vehicles));
      } catch (e) {
        emit(VehicleError('Failed to fetch vehicles'));
      }
    });

    on<FetchVehicleDetails>((event, emit) async {
      emit(VehicleDetailsLoading());
      try {
        final vehicleDetails = await authRepository.getVehicleDetails(event.vehicleId, event.token);
        emit(VehicleDetailsLoaded(vehicleDetails));
      } catch (e) {
        emit(VehicleDetailsError(e.toString()));
      }
    });
  }
}
