part of 'actualizar_texto_cubit.dart';

@immutable
sealed class ActualizarTextoState {}

final class ActualizarTextoInitial extends ActualizarTextoState {}

final class ActualizarTextoATexto2 extends ActualizarTextoState {}

final class ActualizarTextoATexto3 extends ActualizarTextoState {}

@immutable
sealed class ActualizarTextoActionState extends ActualizarTextoState {}

final class ActualizarTextoSayHi extends ActualizarTextoActionState {}
