class Methods {
  String notStartedText = "Initialize Lie Detector";
  String processingText = "Processing";
  String foundLieText = "Uh oh! You lied!";
  String foundTrueText = "You are a good human. That was the truth!";

  Methods(
      {this.notStartedText,
      this.processingText,
      this.foundLieText,
      this.foundTrueText});

  String notStarted() {
    return notStartedText;
  }

  String processing() {
    return processingText;
  }

  String foundLie() {
    return foundLieText;
  }

  String foundTrue() {
    return foundTrueText;
  }
}
