part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const RESULT = _Paths.RESULT;
  static const IMAGE_SOURCE_VIEW = _Paths.IMAGE_SOURCE_VIEW;
}

abstract class _Paths {
  static const HOME = '/home';
  static const RESULT = '/result';
  static const IMAGE_SOURCE_VIEW = '/image-source'; // harus sesuai nama route
}
