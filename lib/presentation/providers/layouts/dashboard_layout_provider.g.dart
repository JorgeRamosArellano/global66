// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_layout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardLayout)
const dashboardLayoutProvider = DashboardLayoutProvider._();

final class DashboardLayoutProvider
    extends $NotifierProvider<DashboardLayout, DashboardSection> {
  const DashboardLayoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardLayoutProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardLayoutHash();

  @$internal
  @override
  DashboardLayout create() => DashboardLayout();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardSection value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardSection>(value),
    );
  }
}

String _$dashboardLayoutHash() => r'18ac38f5be870907698f5a785e4a19e07cb2ced4';

abstract class _$DashboardLayout extends $Notifier<DashboardSection> {
  DashboardSection build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DashboardSection, DashboardSection>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DashboardSection, DashboardSection>,
              DashboardSection,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
