build-app:
	@echo "Building app"
	flutter clean && dart run build_runner build --delete-conflicting-outputs

assets:
	@echo "Generating assets"
	fluttergen -c pubspec.yaml