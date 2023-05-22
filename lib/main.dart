import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:itw_dashboard/core/routes/routes.dart';
import 'package:itw_dashboard/theme/color_schema.dart';
import 'package:itw_dashboard/theme/theme_controller.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ref.watch(themeProvider) == false
            ? ThemeData(
                useMaterial3: true,
                colorScheme: lightColorScheme,
              )
            : ThemeData(
                useMaterial3: true,
                colorScheme: darkColorScheme,
              ),
        routerConfig: route);
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.widgetBody});

  final Widget widgetBody;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  // int indexs = 0;
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    var navchilderen = const [
      Text('Home'),
      Text('Assets'),
      Text('Tournaments'),
    ];

    _onItemTapped(int index, BuildContext context) {
      switch (index) {
        case 0:
          selectedindex = 0;
          GoRouter.of(context).go('/');
          break;
        case 1:
          selectedindex = 1;
          GoRouter.of(context).go('/assets');
          break;
        case 2:
          selectedindex = 2;
          GoRouter.of(context).go('/tournments');
          break;

        default:
      }
    }

    return Scaffold(
      body: AdaptiveLayout(
        primaryNavigation: SlotLayout(config: {
          Breakpoints.large: SlotLayout.from(
            key: Key('value'),
            builder: (context) {
              return Container(
                  width: 250,
                  color: lightColorScheme.onPrimaryContainer,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 50,
                        child: Image.asset('assets/itw-logo.png'),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: navchilderen.length,
                          itemBuilder: (context, index) {
                            return Container(
                              color: selectedindex == index
                                  ? Colors.blue
                                  : Colors.transparent,
                              child: ListTile(
                                selected: selectedindex == index ? true : false,
                                selectedColor: Colors.white,
                                textColor: Colors.white,
                                style: ListTileStyle.list,
                                title: Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: navchilderen[index]),
                                contentPadding: const EdgeInsets.only(
                                    top: 6, left: 5, right: 5, bottom: 6),
                                onTap: () {
                                  setState(() {
                                    _onItemTapped(index, context);
                                  });
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 20, right: 10),
                        child: Row(
                          children: [
                            const Text(
                              'Dark Mode',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Switch(
                              value: ref.watch(themeProvider),
                              onChanged: (value) {
                                ref.read(themeProvider.notifier).addstate();
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ));
            },
          )
        }),
        body: SlotLayout(
          config: {
            Breakpoints.standard: SlotLayout.from(
              key: const Key('koshish'),
              builder: (context) {
                return widget.widgetBody;
              },
            ),
          },
        ),
      ),
    );
  }
}
