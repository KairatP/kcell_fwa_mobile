
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  // final SettingsRepositoryInterface settingsRepository;
  // final DbHelperInterface historyRepository;
  SettingsBloc(
      // {
        // required this.historyRepository, required this.settingsRepository
      // }
      )
      : super(SettingsInitial(
          // theme: settingsRepository.getTheme(),
          // notification: settingsRepository.getNotificationValue(),
        )) {
    on<ClearRhymesHistoryEvent>(_clearRhymesHistory);
    on<LoadSettingsEvent>(_load);
    on<ThemLoadSettingsEvent>(_themLoad);
    on<NotificationLoadSettingsEvent>(_notificationLoad);
  }

  Future<void> _load(LoadSettingsEvent event, Emitter<SettingsState> emit) async {
    emit(const SettingsState(
      // theme: event.theme,
      // notification: event.notification,
    ));
  }

  Future<void> _clearRhymesHistory(
      ClearRhymesHistoryEvent event, Emitter<SettingsState> emit) async {
    try {
      // await historyRepository.clear();
      // emit(HistoryClean());
      emit(const SettingsState(
        // theme: event.theme,
        // notification: event.notification,
        // appTrack: event.appTrack
      ));
    } catch (e) {
      // log(e.toString());
    }
  }

  Future<void> _themLoad(
      ThemLoadSettingsEvent event, Emitter<SettingsState> emit) async {
    try {
      // settingsRepository.setTheme(event.theme);
      // final theme = settingsRepository.getTheme();

      emit(const SettingsState(
        // theme: theme,
        // notification: state.notification,
      ));
    } catch (e) {
      // Handle errors by emitting a failure state
      // log(e.toString());
    } finally {
      // event.completer?.complete();
    }
  }

  FutureOr<void> _notificationLoad(
      NotificationLoadSettingsEvent event, Emitter<SettingsState> emit) {
    try {
      // settingsRepository.setNotificationValue(event.notificationValue);
      // final theme = settingsRepository.getNotificationValue();

      emit(const SettingsState(
        // theme: state.theme,
        // notification: theme,
      ));
    } catch (e) {
      // log(e.toString());
    }
  }
}