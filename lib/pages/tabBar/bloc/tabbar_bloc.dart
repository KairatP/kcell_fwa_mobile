import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'tabbar_event.dart';
part 'tabbar_state.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(TabBarInitialState()) {
    on<TabBarLoadEvent>(_tabBarLoadEvent);
  }

  Future<void> _tabBarLoadEvent(
    TabBarLoadEvent event,
    Emitter<TabBarState> emit,
  ) async {


      
  }
}

