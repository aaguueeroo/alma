enum Pronoun {
  they,
  he,
  she;

  String get objectForm {
    switch (this) {
      case Pronoun.they:
        return 'them';
      case Pronoun.he:
        return 'him';
      case Pronoun.she:
        return 'her';
    }
  }

  String get subjectForm {
    switch (this) {
      case Pronoun.they:
        return 'they';
      case Pronoun.he:
        return 'he';
      case Pronoun.she:
        return 'she';
    }
  }

  String get possessiveForm {
    switch (this) {
      case Pronoun.they:
        return 'their';
      case Pronoun.he:
        return 'his';
      case Pronoun.she:
        return 'her';
    }
  }
}
