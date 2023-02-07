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
  parameterPriority(13),
  slaColor(14),
  holiday(15),
  timeSetup(16),
  startEndLocation(17),
  intervalLocation(18);

  const SyncEnum(this.value);
  final int value;
}
