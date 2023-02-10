enum SyncEnum {
  versionApp(0),
  lov(1),
  occupation(2),
  subOccupation(3),
  category(4),
  model(5),
  province(6),
  city(7),
  kecamatan(8),
  kelurahan(9),
  zipCode(10),
  slaOpportunity(11),
  priorityLeads(12),
  slaColor(13),
  holiday(14),
  timeSetup(15),
  startEndLocation(16),
  intervalLocation(17);

  const SyncEnum(this.value);
  final int value;
}
