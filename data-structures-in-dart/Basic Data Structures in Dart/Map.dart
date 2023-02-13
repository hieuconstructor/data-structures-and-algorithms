void main() {
  //Declare Map

  //Cách 1:
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  //Cách 2:
  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //Cách 3:
  var identifier = new Map();

  print("Mảng Map gift là: \n$gifts \n");

  print("Độ dài của mảng là: ${gifts.length} \n");
  //Adding Values to Map Literals at Runtime
  gifts['fourth'] = 'car';

  print("Mảng gift sau khi add là: \n$gifts");

  //To create a map that’s a compile-time constant, add const before the map literal:
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print('Mảng có trống không: ${gifts.isEmpty}\n');

  //Add all
  gifts.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  print('Map after adding  entries :${gifts}\n');

  //Remove
  gifts.remove('first');
  print("Mảng sau khi remove: $gifts\n");

  //Foreach
  gifts.forEach((key, value) => print('${key}: ${value}'));

  //Clear
  gifts.clear();
  print("\nMảng sau khi clear: $gifts\n");
}
