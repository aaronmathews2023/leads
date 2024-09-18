String? validateMobileNumber(String? number) {
  if (number == null || number.isEmpty) {
    return 'Please enter a mobile number.';
  }

  // Remove any non-digit characters (e.g., spaces, dashes)
  final cleanedNumber = number.replaceAll(RegExp(r'\D'), '');

  // Check if the cleaned number is empty
  if (cleanedNumber.isEmpty) {
    return 'Please enter a valid mobile number.';
  }

  // Define a regular expression for mobile number validation
  final regex =
      RegExp(r'^[6-9]\d{9}$'); // Must start with 6-9 and be 10 digits long

  if (!regex.hasMatch(cleanedNumber)) {
    return ' Must be 10 digits.';
  }

  return null; // Return null if validation passes
}
