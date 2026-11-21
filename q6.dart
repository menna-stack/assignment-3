void analyzeScores(List<num> scores) {
  if (scores.isEmpty) {
    print('No scores provided.');
    return;
  }

  num sum = 0;
  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;

  int aboveOrEqual = 0;
  int equal = 0;
  int below = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= average) aboveOrEqual++;
    if (scores[i] == average) equal++;
    if (scores[i] < average) below++;
  }

  print('Above average:$aboveOrEqual');
  print('Below average:$below');
  print('Equal average:$equal');
}

void main() {
  analyzeScores([8, 5, 1, 3]);
}