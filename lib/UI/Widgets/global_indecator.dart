import '../../Resources/main_imports.dart';

class GlobalIndicator extends StatelessWidget {
  const GlobalIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(),);
  }
}
