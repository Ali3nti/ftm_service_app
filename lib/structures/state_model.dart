class StateModel {
  int? stateId;
  String? stateName;
  int? supervisorId;
  String? supervisorName;
  int? tblShift;
  int? status;
  String? location;
  String? detail;

  StateModel(
      {this.stateId,
      this.stateName,
      this.supervisorId,
      this.supervisorName,
      this.tblShift,
      this.status,
      this.location,
      this.detail});

  factory StateModel.fromJson(Map<String, dynamic> json) {
    return StateModel(
      stateId: json['id'],
      stateName: json['name'],
      supervisorId: json['supervisor']['id'],
      supervisorName: json['supervisor']['first_name'] +
          " " +
          json['supervisor']['last_name'],
      tblShift: json['tbl_shift'],
      status: json['status'],
      location: json['location'],
      detail: json['detail'],
    );
  }
}
