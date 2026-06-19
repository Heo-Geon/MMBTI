import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

/// 루트 위젯. 테마 주입 + go_router 연결.
class MapleMbtiApp extends StatelessWidget {
  const MapleMbtiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '메이플 플레이 성향 테스트',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
    );
  }
}
