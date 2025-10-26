
import 'package:test_jorge_ramos_globall66_flutter/shared/enums/dashboard_section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_layout_provider.g.dart';

@Riverpod(keepAlive: true)
class DashboardLayout extends _$DashboardLayout {

  @override
  DashboardSection build() => DashboardSection.home;

  set update(DashboardSection newSection) => state = newSection;
  
}