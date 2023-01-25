enum VerifikasiEnum {
  ktp('KTP'),
  nameAndPhone('Nama dan Telepon'),
  newCustomer('Konsumen Baru');

  const VerifikasiEnum(this.value);
  final String value;
}
