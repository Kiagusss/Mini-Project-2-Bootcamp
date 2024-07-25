import 'package:flutter_test/flutter_test.dart';
import 'package:mini_project_2_bootcamp/services/repository/profile_repository.dart';

void main() {
  group('ProfileRepository', () {
    late ProfileRepository profileRepository;

    setUp(() {
      profileRepository = ProfileRepository();
    });

    test('returns a Profile if the http call completes successfully', () async {
      final profile = await profileRepository.fetchProfile();

      expect(profile.id, isNotNull);
      expect(profile.email, isNotEmpty);
      expect(profile.username, isNotEmpty);
      expect(profile.password, isNotEmpty);
      expect(profile.name?.firstname, isNotEmpty);
      expect(profile.name?.lastname, isNotEmpty);
      expect(profile.phone, isNotEmpty);
      expect(profile.iV, isNotNull);
      expect(profile.address?.city, isNotEmpty);
      expect(profile.address?.street, isNotEmpty);
      expect(profile.address?.number, isNotNull);
      expect(profile.address?.zipcode, isNotEmpty);
      expect(profile.address?.geolocation?.lat, isNotEmpty);
      expect(profile.address?.geolocation?.long, isNotEmpty);
    });
  });
}
