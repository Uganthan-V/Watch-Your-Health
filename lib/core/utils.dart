String shortText(String text, [int max = 120]) {
  if (text.length <= max) return text;
  return text.substring(0, max - 3) + '...';
}
