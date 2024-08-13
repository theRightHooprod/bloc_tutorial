import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'actualizar_texto_state.dart';

class ActualizarTextoCubit extends Cubit<ActualizarTextoState> {
  ActualizarTextoCubit() : super(ActualizarTextoInitial());

  void actualizarTextoATexto2() {
    emit(ActualizarTextoATexto2());
  }

  void actualizarTextoATexto3() {
    emit(ActualizarTextoATexto3());
  }

  void sayHi() {
    emit(ActualizarTextoSayHi());
  }
}
