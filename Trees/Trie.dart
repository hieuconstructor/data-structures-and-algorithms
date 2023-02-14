import 'libs/string_trie.dart';

void main() {
  final trie2 = StringTrie();
  trie2.insert("cute");
  if (trie2.contains("cute")) {
    print("cute is in the trie \n");
  }

  final trie = StringTrie();
  trie.insert('cut');
  trie.insert('cute');
  assert(trie.contains('cut'));
  print('"cut" is in the trie');
  assert(trie.contains('cute'));
  print('"cute" is in the trie');
  print('\n--- Removing "cut" ---');
  trie.remove('cut');
  assert(!trie.contains('cut'));
  assert(trie.contains('cute'));
  print('"cute" is still in the trie\n');

  final trie3 = StringTrie();
  trie3.insert('car');
  trie3.insert('card');
  trie3.insert('care');
  trie3.insert('cared');
  trie3.insert('cars');
  trie3.insert('carbs');
  trie3.insert('carapace');
  trie3.insert('cargo');
  print('Collections starting with "car"');
  final prefixedWithCar = trie3.matchPrefix('car');
  print(prefixedWithCar);
  print('\nCollections starting with "care"');
  final prefixedWithCare = trie3.matchPrefix('care');
  print(prefixedWithCare);
}
