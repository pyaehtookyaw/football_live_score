class MatchData {
  List<Leagues> leagues;
  String userSettings;
  String date;

  MatchData({this.leagues, this.userSettings, this.date});

  MatchData.fromJson(Map<String, dynamic> json) {
    if (json['leagues'] != null) {
      leagues = new List<Leagues>();
      json['leagues'].forEach((v) {
        leagues.add(new Leagues.fromJson(v));
      });
    }
    userSettings = json['userSettings'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.leagues != null) {
      data['leagues'] = this.leagues.map((v) => v.toJson()).toList();
    }
    data['userSettings'] = this.userSettings;
    data['date'] = this.date;
    return data;
  }
}

class Leagues {
  String ccode;
  int id;
  int primaryId;
  String name;
  List<Matches> matches;
  int internalRank;
  int liveRank;
  bool simpleLeague;
  int parentLeagueId;
  bool isGroup;
  String groupName;
  String parentLeagueName;

  Leagues(
      {this.ccode,
      this.id,
      this.primaryId,
      this.name,
      this.matches,
      this.internalRank,
      this.liveRank,
      this.simpleLeague,
      this.parentLeagueId,
      this.isGroup,
      this.groupName,
      this.parentLeagueName});

  Leagues.fromJson(Map<String, dynamic> json) {
    ccode = json['ccode'];
    id = json['id'];
    primaryId = json['primaryId'];
    name = json['name'];
    if (json['matches'] != null) {
      matches = new List<Matches>();
      json['matches'].forEach((v) {
        matches.add(new Matches.fromJson(v));
      });
    }
    internalRank = json['internalRank'];
    liveRank = json['liveRank'];
    simpleLeague = json['simpleLeague'];
    parentLeagueId = json['parentLeagueId'];
    isGroup = json['isGroup'];
    groupName = json['groupName'];
    parentLeagueName = json['parentLeagueName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ccode'] = this.ccode;
    data['id'] = this.id;
    data['primaryId'] = this.primaryId;
    data['name'] = this.name;
    if (this.matches != null) {
      data['matches'] = this.matches.map((v) => v.toJson()).toList();
    }
    data['internalRank'] = this.internalRank;
    data['liveRank'] = this.liveRank;
    data['simpleLeague'] = this.simpleLeague;
    data['parentLeagueId'] = this.parentLeagueId;
    data['isGroup'] = this.isGroup;
    data['groupName'] = this.groupName;
    data['parentLeagueName'] = this.parentLeagueName;
    return data;
  }
}

class Matches {
  int id;
  int leagueId;
  String time;
  Home home;
  Home away;
  int statusId;
  String tournamentStage;
  Status status;
  int timeTS;
  Null tv;

  Matches(
      {this.id,
      this.leagueId,
      this.time,
      this.home,
      this.away,
      this.statusId,
      this.tournamentStage,
      this.status,
      this.timeTS,
      this.tv});

  Matches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    leagueId = json['leagueId'];
    time = json['time'];
    home = json['home'] != null ? new Home.fromJson(json['home']) : null;
    away = json['away'] != null ? new Home.fromJson(json['away']) : null;
    statusId = json['statusId'];
    tournamentStage = json['tournamentStage'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    timeTS = json['timeTS'];
    tv = json['tv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['leagueId'] = this.leagueId;
    data['time'] = this.time;
    if (this.home != null) {
      data['home'] = this.home.toJson();
    }
    if (this.away != null) {
      data['away'] = this.away.toJson();
    }
    data['statusId'] = this.statusId;
    data['tournamentStage'] = this.tournamentStage;
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    data['timeTS'] = this.timeTS;
    data['tv'] = this.tv;
    return data;
  }
}

class Home {
  int id;
  int score;
  String name;
  String longName;

  Home({this.id, this.score, this.name, this.longName});

  Home.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    score = json['score'];
    name = json['name'];
    longName = json['longName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['score'] = this.score;
    data['name'] = this.name;
    data['longName'] = this.longName;
    return data;
  }
}

class Status {
  bool started;
  bool cancelled;
  bool finished;
  String startTimeStr;
  String startDateStr;
  String startDateStrShort;
  String scoreStr;
  Reason reason;
  String whoLostOnAggregated;
  bool ongoing;
  Reason liveTime;

  Status(
      {this.started,
      this.cancelled,
      this.finished,
      this.startTimeStr,
      this.startDateStr,
      this.startDateStrShort,
      this.scoreStr,
      this.reason,
      this.whoLostOnAggregated,
      this.ongoing,
      this.liveTime});

  Status.fromJson(Map<String, dynamic> json) {
    started = json['started'];
    cancelled = json['cancelled'];
    finished = json['finished'];
    startTimeStr = json['startTimeStr'];
    startDateStr = json['startDateStr'];
    startDateStrShort = json['startDateStrShort'];
    scoreStr = json['scoreStr'];
    reason =
        json['reason'] != null ? new Reason.fromJson(json['reason']) : null;
    whoLostOnAggregated = json['whoLostOnAggregated'];
    ongoing = json['ongoing'];
    liveTime =
        json['liveTime'] != null ? new Reason.fromJson(json['liveTime']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['started'] = this.started;
    data['cancelled'] = this.cancelled;
    data['finished'] = this.finished;
    data['startTimeStr'] = this.startTimeStr;
    data['startDateStr'] = this.startDateStr;
    data['startDateStrShort'] = this.startDateStrShort;
    data['scoreStr'] = this.scoreStr;
    if (this.reason != null) {
      data['reason'] = this.reason.toJson();
    }
    data['whoLostOnAggregated'] = this.whoLostOnAggregated;
    data['ongoing'] = this.ongoing;
    if (this.liveTime != null) {
      data['liveTime'] = this.liveTime.toJson();
    }
    return data;
  }
}

class Reason {
  String short;
  String long;

  Reason({this.short, this.long});

  Reason.fromJson(Map<String, dynamic> json) {
    short = json['short'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['short'] = this.short;
    data['long'] = this.long;
    return data;
  }
}
