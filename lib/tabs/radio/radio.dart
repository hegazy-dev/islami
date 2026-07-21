class RadioModel {
  final String title;
  bool isPlaying;
  bool soundOn;

  RadioModel({
    required this.title,
    this.isPlaying = false,
    this.soundOn = true,
  });
}
