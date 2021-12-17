// class LeagueData {
// 	List<String> _tabs;
// 	Details _details;
// 	Action _action;
// 	String _seostr;
// 	Datasets _datasets;
// 	List<QAData> _qAData;
// 	String _season;
// 	List<News> _news;
// 	TableData _tableData;
// 	TopPlayers _topPlayers;
// 	bool _hasTotw;
// 	List<Fixtures> _fixtures;

// 	LeagueData({List<String> tabs, Details details, Action action, String seostr, Datasets datasets, List<QAData> qAData, String season, List<News> news, TableData tableData, TopPlayers topPlayers, bool hasTotw, List<Fixtures> fixtures}) {
// this._tabs = tabs;
// this._details = details;
// this._action = action;
// this._seostr = seostr;
// this._datasets = datasets;
// this._qAData = qAData;
// this._season = season;
// this._news = news;
// this._tableData = tableData;
// this._topPlayers = topPlayers;
// this._hasTotw = hasTotw;
// this._fixtures = fixtures;
// }

// 	List<String> get tabs => _tabs;
// 	set tabs(List<String> tabs) => _tabs = tabs;
// 	Details get details => _details;
// 	set details(Details details) => _details = details;
// 	Action get action => _action;
// 	set action(Action action) => _action = action;
// 	String get seostr => _seostr;
// 	set seostr(String seostr) => _seostr = seostr;
// 	Datasets get datasets => _datasets;
// 	set datasets(Datasets datasets) => _datasets = datasets;
// 	List<QAData> get qAData => _qAData;
// 	set qAData(List<QAData> qAData) => _qAData = qAData;
// 	String get season => _season;
// 	set season(String season) => _season = season;
// 	List<News> get news => _news;
// 	set news(List<News> news) => _news = news;
// 	TableData get tableData => _tableData;
// 	set tableData(TableData tableData) => _tableData = tableData;
// 	TopPlayers get topPlayers => _topPlayers;
// 	set topPlayers(TopPlayers topPlayers) => _topPlayers = topPlayers;
// 	bool get hasTotw => _hasTotw;
// 	set hasTotw(bool hasTotw) => _hasTotw = hasTotw;
// 	List<Fixtures> get fixtures => _fixtures;
// 	set fixtures(List<Fixtures> fixtures) => _fixtures = fixtures;

// 	LeagueData.fromJson(Map<String, dynamic> json) {
// 		_tabs = json['tabs'].cast<String>();
// 		_details = json['details'] != null ? new Details.fromJson(json['details']) : null;
// 		_action = json['action'] != null ? new Action.fromJson(json['action']) : null;
// 		_seostr = json['seostr'];
// 		_datasets = json['datasets'] != null ? new Datasets.fromJson(json['datasets']) : null;
// 		if (json['QAData'] != null) {
// 			_qAData = new List<QAData>();
// 			json['QAData'].forEach((v) { _qAData.add(new QAData.fromJson(v)); });
// 		}
// 		_season = json['season'];
// 		if (json['news'] != null) {
// 			_news = new List<News>();
// 			json['news'].forEach((v) { _news.add(new News.fromJson(v)); });
// 		}
// 		_tableData = json['tableData'] != null ? new TableData.fromJson(json['tableData']) : null;
// 		_topPlayers = json['topPlayers'] != null ? new TopPlayers.fromJson(json['topPlayers']) : null;
// 		_hasTotw = json['hasTotw'];
// 		if (json['fixtures'] != null) {
// 			_fixtures = new List<Fixtures>();
// 			json['fixtures'].forEach((v) { _fixtures.add(new Fixtures.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['tabs'] = this._tabs;
// 		if (this._details != null) {
//       data['details'] = this._details.toJson();
//     }
// 		if (this._action != null) {
//       data['action'] = this._action.toJson();
//     }
// 		data['seostr'] = this._seostr;
// 		if (this._datasets != null) {
//       data['datasets'] = this._datasets.toJson();
//     }
// 		if (this._qAData != null) {
//       data['QAData'] = this._qAData.map((v) => v.toJson()).toList();
//     }
// 		data['season'] = this._season;
// 		if (this._news != null) {
//       data['news'] = this._news.map((v) => v.toJson()).toList();
//     }
// 		if (this._tableData != null) {
//       data['tableData'] = this._tableData.toJson();
//     }
// 		if (this._topPlayers != null) {
//       data['topPlayers'] = this._topPlayers.toJson();
//     }
// 		data['hasTotw'] = this._hasTotw;
// 		if (this._fixtures != null) {
//       data['fixtures'] = this._fixtures.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class Details {
// 	int _id;
// 	String _type;
// 	String _name;
// 	String _shortName;
// 	String _country;
// 	FaqJSONLD _faqJSONLD;

// 	Details({int id, String type, String name, String shortName, String country, FaqJSONLD faqJSONLD}) {
// this._id = id;
// this._type = type;
// this._name = name;
// this._shortName = shortName;
// this._country = country;
// this._faqJSONLD = faqJSONLD;
// }

// 	int get id => _id;
// 	set id(int id) => _id = id;
// 	String get type => _type;
// 	set type(String type) => _type = type;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	String get shortName => _shortName;
// 	set shortName(String shortName) => _shortName = shortName;
// 	String get country => _country;
// 	set country(String country) => _country = country;
// 	FaqJSONLD get faqJSONLD => _faqJSONLD;
// 	set faqJSONLD(FaqJSONLD faqJSONLD) => _faqJSONLD = faqJSONLD;

// 	Details.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_type = json['type'];
// 		_name = json['name'];
// 		_shortName = json['shortName'];
// 		_country = json['country'];
// 		_faqJSONLD = json['faqJSONLD'] != null ? new FaqJSONLD.fromJson(json['faqJSONLD']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['type'] = this._type;
// 		data['name'] = this._name;
// 		data['shortName'] = this._shortName;
// 		data['country'] = this._country;
// 		if (this._faqJSONLD != null) {
//       data['faqJSONLD'] = this._faqJSONLD.toJson();
//     }
// 		return data;
// 	}
// }

// class FaqJSONLD {
// 	String _context;
// 	String _type;
// 	List<MainEntity> _mainEntity;

// 	FaqJSONLD({String context, String type, List<MainEntity> mainEntity}) {
// this._context = context;
// this._type = type;
// this._mainEntity = mainEntity;
// }

// 	String get context => _context;
// 	set context(String context) => _context = context;
// 	String get type => _type;
// 	set type(String type) => _type = type;
// 	List<MainEntity> get mainEntity => _mainEntity;
// 	set mainEntity(List<MainEntity> mainEntity) => _mainEntity = mainEntity;

// 	FaqJSONLD.fromJson(Map<String, dynamic> json) {
// 		_context = json['@context'];
// 		_type = json['@type'];
// 		if (json['mainEntity'] != null) {
// 			_mainEntity = new List<MainEntity>();
// 			json['mainEntity'].forEach((v) { _mainEntity.add(new MainEntity.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['@context'] = this._context;
// 		data['@type'] = this._type;
// 		if (this._mainEntity != null) {
//       data['mainEntity'] = this._mainEntity.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class MainEntity {
// 	String _type;
// 	String _name;
// 	AcceptedAnswer _acceptedAnswer;

// 	MainEntity({String type, String name, AcceptedAnswer acceptedAnswer}) {
// this._type = type;
// this._name = name;
// this._acceptedAnswer = acceptedAnswer;
// }

// 	String get type => _type;
// 	set type(String type) => _type = type;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	AcceptedAnswer get acceptedAnswer => _acceptedAnswer;
// 	set acceptedAnswer(AcceptedAnswer acceptedAnswer) => _acceptedAnswer = acceptedAnswer;

// 	MainEntity.fromJson(Map<String, dynamic> json) {
// 		_type = json['@type'];
// 		_name = json['name'];
// 		_acceptedAnswer = json['acceptedAnswer'] != null ? new AcceptedAnswer.fromJson(json['acceptedAnswer']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['@type'] = this._type;
// 		data['name'] = this._name;
// 		if (this._acceptedAnswer != null) {
//       data['acceptedAnswer'] = this._acceptedAnswer.toJson();
//     }
// 		return data;
// 	}
// }

// class AcceptedAnswer {
// 	String _type;
// 	String _text;

// 	AcceptedAnswer({String type, String text}) {
// this._type = type;
// this._text = text;
// }

// 	String get type => _type;
// 	set type(String type) => _type = type;
// 	String get text => _text;
// 	set text(String text) => _text = text;

// 	AcceptedAnswer.fromJson(Map<String, dynamic> json) {
// 		_type = json['@type'];
// 		_text = json['text'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['@type'] = this._type;
// 		data['text'] = this._text;
// 		return data;
// 	}
// }

// class Action {
// 	String _type;

// 	Action({String type}) {
// this._type = type;
// }

// 	String get type => _type;
// 	set type(String type) => _type = type;

// 	Action.fromJson(Map<String, dynamic> json) {
// 		_type = json['type'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['type'] = this._type;
// 		return data;
// 	}
// }

// class Datasets {
// 	bool _news;
// 	bool _fixtures;
// 	bool _tableData;
// 	bool _topPlayers;

// 	Datasets({bool news, bool fixtures, bool tableData, bool topPlayers}) {
// this._news = news;
// this._fixtures = fixtures;
// this._tableData = tableData;
// this._topPlayers = topPlayers;
// }

// 	bool get news => _news;
// 	set news(bool news) => _news = news;
// 	bool get fixtures => _fixtures;
// 	set fixtures(bool fixtures) => _fixtures = fixtures;
// 	bool get tableData => _tableData;
// 	set tableData(bool tableData) => _tableData = tableData;
// 	bool get topPlayers => _topPlayers;
// 	set topPlayers(bool topPlayers) => _topPlayers = topPlayers;

// 	Datasets.fromJson(Map<String, dynamic> json) {
// 		_news = json['news'];
// 		_fixtures = json['fixtures'];
// 		_tableData = json['tableData'];
// 		_topPlayers = json['topPlayers'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['news'] = this._news;
// 		data['fixtures'] = this._fixtures;
// 		data['tableData'] = this._tableData;
// 		data['topPlayers'] = this._topPlayers;
// 		return data;
// 	}
// }

// class QAData {
// 	String _question;
// 	String _answer;

// 	QAData({String question, String answer}) {
// this._question = question;
// this._answer = answer;
// }

// 	String get question => _question;
// 	set question(String question) => _question = question;
// 	String get answer => _answer;
// 	set answer(String answer) => _answer = answer;

// 	QAData.fromJson(Map<String, dynamic> json) {
// 		_question = json['question'];
// 		_answer = json['answer'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['question'] = this._question;
// 		data['answer'] = this._answer;
// 		return data;
// 	}
// }

// class News {
// 	String _imageUrl;
// 	String _title;
// 	String _sourceStr;
// 	String _lead;
// 	String _sourceIconUrl;
// 	Page _page;

// 	News({String imageUrl, String title, String sourceStr, String lead, String sourceIconUrl, Page page}) {
// this._imageUrl = imageUrl;
// this._title = title;
// this._sourceStr = sourceStr;
// this._lead = lead;
// this._sourceIconUrl = sourceIconUrl;
// this._page = page;
// }

// 	String get imageUrl => _imageUrl;
// 	set imageUrl(String imageUrl) => _imageUrl = imageUrl;
// 	String get title => _title;
// 	set title(String title) => _title = title;
// 	String get sourceStr => _sourceStr;
// 	set sourceStr(String sourceStr) => _sourceStr = sourceStr;
// 	String get lead => _lead;
// 	set lead(String lead) => _lead = lead;
// 	String get sourceIconUrl => _sourceIconUrl;
// 	set sourceIconUrl(String sourceIconUrl) => _sourceIconUrl = sourceIconUrl;
// 	Page get page => _page;
// 	set page(Page page) => _page = page;

// 	News.fromJson(Map<String, dynamic> json) {
// 		_imageUrl = json['imageUrl'];
// 		_title = json['title'];
// 		_sourceStr = json['sourceStr'];
// 		_lead = json['lead'];
// 		_sourceIconUrl = json['sourceIconUrl'];
// 		_page = json['page'] != null ? new Page.fromJson(json['page']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['imageUrl'] = this._imageUrl;
// 		data['title'] = this._title;
// 		data['sourceStr'] = this._sourceStr;
// 		data['lead'] = this._lead;
// 		data['sourceIconUrl'] = this._sourceIconUrl;
// 		if (this._page != null) {
//       data['page'] = this._page.toJson();
//     }
// 		return data;
// 	}
// }

// class Page {
// 	String _url;

// 	Page({String url}) {
// this._url = url;
// }

// 	String get url => _url;
// 	set url(String url) => _url = url;

// 	Page.fromJson(Map<String, dynamic> json) {
// 		_url = json['url'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['url'] = this._url;
// 		return data;
// 	}
// }

// class TableData {
// 	List<Tables> _tables;
// 	TeamForms _teamForms;
// 	NextOpponent _nextOpponent;
// 	TableHeader _tableHeader;

// 	TableData({List<Tables> tables, TeamForms teamForms, NextOpponent nextOpponent, TableHeader tableHeader}) {
// this._tables = tables;
// this._teamForms = teamForms;
// this._nextOpponent = nextOpponent;
// this._tableHeader = tableHeader;
// }

// 	List<Tables> get tables => _tables;
// 	set tables(List<Tables> tables) => _tables = tables;
// 	TeamForms get teamForms => _teamForms;
// 	set teamForms(TeamForms teamForms) => _teamForms = teamForms;
// 	NextOpponent get nextOpponent => _nextOpponent;
// 	set nextOpponent(NextOpponent nextOpponent) => _nextOpponent = nextOpponent;
// 	TableHeader get tableHeader => _tableHeader;
// 	set tableHeader(TableHeader tableHeader) => _tableHeader = tableHeader;

// 	TableData.fromJson(Map<String, dynamic> json) {
// 		if (json['tables'] != null) {
// 			_tables = new List<Tables>();
// 			json['tables'].forEach((v) { _tables.add(new Tables.fromJson(v)); });
// 		}
// 		_teamForms = json['teamForms'] != null ? new TeamForms.fromJson(json['teamForms']) : null;
// 		_nextOpponent = json['nextOpponent'] != null ? new NextOpponent.fromJson(json['nextOpponent']) : null;
// 		_tableHeader = json['tableHeader'] != null ? new TableHeader.fromJson(json['tableHeader']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this._tables != null) {
//       data['tables'] = this._tables.map((v) => v.toJson()).toList();
//     }
// 		if (this._teamForms != null) {
//       data['teamForms'] = this._teamForms.toJson();
//     }
// 		if (this._nextOpponent != null) {
//       data['nextOpponent'] = this._nextOpponent.toJson();
//     }
// 		if (this._tableHeader != null) {
//       data['tableHeader'] = this._tableHeader.toJson();
//     }
// 		return data;
// 	}
// }

// class Tables {
// 	String _ccode;
// 	int _leagueId;
// 	String _pageUrl;
// 	String _leagueName;
// 	List<Legend> _legend;
// 	List<Table> _table;
// 	bool _composite;

// 	Tables({String ccode, int leagueId, String pageUrl, String leagueName, List<Legend> legend, List<Table> table, bool composite}) {
// this._ccode = ccode;
// this._leagueId = leagueId;
// this._pageUrl = pageUrl;
// this._leagueName = leagueName;
// this._legend = legend;
// this._table = table;
// this._composite = composite;
// }

// 	String get ccode => _ccode;
// 	set ccode(String ccode) => _ccode = ccode;
// 	int get leagueId => _leagueId;
// 	set leagueId(int leagueId) => _leagueId = leagueId;
// 	String get pageUrl => _pageUrl;
// 	set pageUrl(String pageUrl) => _pageUrl = pageUrl;
// 	String get leagueName => _leagueName;
// 	set leagueName(String leagueName) => _leagueName = leagueName;
// 	List<Legend> get legend => _legend;
// 	set legend(List<Legend> legend) => _legend = legend;
// 	List<Table> get table => _table;
// 	set table(List<Table> table) => _table = table;
// 	bool get composite => _composite;
// 	set composite(bool composite) => _composite = composite;

// 	Tables.fromJson(Map<String, dynamic> json) {
// 		_ccode = json['ccode'];
// 		_leagueId = json['leagueId'];
// 		_pageUrl = json['pageUrl'];
// 		_leagueName = json['leagueName'];
// 		if (json['legend'] != null) {
// 			_legend = new List<Legend>();
// 			json['legend'].forEach((v) { _legend.add(new Legend.fromJson(v)); });
// 		}
// 		if (json['table'] != null) {
// 			_table = new List<Table>();
// 			json['table'].forEach((v) { _table.add(new Table.fromJson(v)); });
// 		}
// 		_composite = json['composite'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['ccode'] = this._ccode;
// 		data['leagueId'] = this._leagueId;
// 		data['pageUrl'] = this._pageUrl;
// 		data['leagueName'] = this._leagueName;
// 		if (this._legend != null) {
//       data['legend'] = this._legend.map((v) => v.toJson()).toList();
//     }
// 		if (this._table != null) {
//       data['table'] = this._table.map((v) => v.toJson()).toList();
//     }
// 		data['composite'] = this._composite;
// 		return data;
// 	}
// }

// class Legend {
// 	String _title;
// 	String _color;
// 	List<int> _indices;

// 	Legend({String title, String color, List<int> indices}) {
// this._title = title;
// this._color = color;
// this._indices = indices;
// }

// 	String get title => _title;
// 	set title(String title) => _title = title;
// 	String get color => _color;
// 	set color(String color) => _color = color;
// 	List<int> get indices => _indices;
// 	set indices(List<int> indices) => _indices = indices;

// 	Legend.fromJson(Map<String, dynamic> json) {
// 		_title = json['title'];
// 		_color = json['color'];
// 		_indices = json['indices'].cast<int>();
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['title'] = this._title;
// 		data['color'] = this._color;
// 		data['indices'] = this._indices;
// 		return data;
// 	}
// }

// class Table {
// 	String _qualColor;
// 	int _idx;
// 	String _name;
// 	int _id;
// 	String _pageUrl;
// 	int _played;
// 	int _wins;
// 	int _draws;
// 	int _losses;
// 	String _scoresStr;
// 	int _goalConDiff;
// 	int _pts;
// 	Null _deduction;

// 	Table({String qualColor, int idx, String name, int id, String pageUrl, int played, int wins, int draws, int losses, String scoresStr, int goalConDiff, int pts, Null deduction}) {
// this._qualColor = qualColor;
// this._idx = idx;
// this._name = name;
// this._id = id;
// this._pageUrl = pageUrl;
// this._played = played;
// this._wins = wins;
// this._draws = draws;
// this._losses = losses;
// this._scoresStr = scoresStr;
// this._goalConDiff = goalConDiff;
// this._pts = pts;
// this._deduction = deduction;
// }

// 	String get qualColor => _qualColor;
// 	set qualColor(String qualColor) => _qualColor = qualColor;
// 	int get idx => _idx;
// 	set idx(int idx) => _idx = idx;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	int get id => _id;
// 	set id(int id) => _id = id;
// 	String get pageUrl => _pageUrl;
// 	set pageUrl(String pageUrl) => _pageUrl = pageUrl;
// 	int get played => _played;
// 	set played(int played) => _played = played;
// 	int get wins => _wins;
// 	set wins(int wins) => _wins = wins;
// 	int get draws => _draws;
// 	set draws(int draws) => _draws = draws;
// 	int get losses => _losses;
// 	set losses(int losses) => _losses = losses;
// 	String get scoresStr => _scoresStr;
// 	set scoresStr(String scoresStr) => _scoresStr = scoresStr;
// 	int get goalConDiff => _goalConDiff;
// 	set goalConDiff(int goalConDiff) => _goalConDiff = goalConDiff;
// 	int get pts => _pts;
// 	set pts(int pts) => _pts = pts;
// 	Null get deduction => _deduction;
// 	set deduction(Null deduction) => _deduction = deduction;

// 	Table.fromJson(Map<String, dynamic> json) {
// 		_qualColor = json['qualColor'];
// 		_idx = json['idx'];
// 		_name = json['name'];
// 		_id = json['id'];
// 		_pageUrl = json['pageUrl'];
// 		_played = json['played'];
// 		_wins = json['wins'];
// 		_draws = json['draws'];
// 		_losses = json['losses'];
// 		_scoresStr = json['scoresStr'];
// 		_goalConDiff = json['goalConDiff'];
// 		_pts = json['pts'];
// 		_deduction = json['deduction'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['qualColor'] = this._qualColor;
// 		data['idx'] = this._idx;
// 		data['name'] = this._name;
// 		data['id'] = this._id;
// 		data['pageUrl'] = this._pageUrl;
// 		data['played'] = this._played;
// 		data['wins'] = this._wins;
// 		data['draws'] = this._draws;
// 		data['losses'] = this._losses;
// 		data['scoresStr'] = this._scoresStr;
// 		data['goalConDiff'] = this._goalConDiff;
// 		data['pts'] = this._pts;
// 		data['deduction'] = this._deduction;
// 		return data;
// 	}
// }

// class TeamForms {
// 	List<8191> _l8191;
// 	List<8197> _l8197;
// 	List<8455> _l8455;
// 	List<8456> _l8456;
// 	List<8463> _l8463;
// 	List<8466> _l8466;
// 	List<8586> _l8586;
// 	List<8602> _l8602;
// 	List<8650> _l8650;
// 	List<8654> _l8654;
// 	List<8668> _l8668;
// 	List<9817> _l9817;
// 	List<9825> _l9825;
// 	List<9826> _l9826;
// 	List<9850> _l9850;
// 	List<9937> _l9937;
// 	List<10204> _l10204;
// 	List<10252> _l10252;
// 	List<10260> _l10260;
// 	List<10261> _l10261;

// 	TeamForms({List<8191> l8191, List<8197> l8197, List<8455> l8455, List<8456> l8456, List<8463> l8463, List<8466> l8466, List<8586> l8586, List<8602> l8602, List<8650> l8650, List<8654> l8654, List<8668> l8668, List<9817> l9817, List<9825> l9825, List<9826> l9826, List<9850> l9850, List<9937> l9937, List<10204> l10204, List<10252> l10252, List<10260> l10260, List<10261> l10261}) {
// this._l8191 = l8191;
// this._l8197 = l8197;
// this._l8455 = l8455;
// this._l8456 = l8456;
// this._l8463 = l8463;
// this._l8466 = l8466;
// this._l8586 = l8586;
// this._l8602 = l8602;
// this._l8650 = l8650;
// this._l8654 = l8654;
// this._l8668 = l8668;
// this._l9817 = l9817;
// this._l9825 = l9825;
// this._l9826 = l9826;
// this._l9850 = l9850;
// this._l9937 = l9937;
// this._l10204 = l10204;
// this._l10252 = l10252;
// this._l10260 = l10260;
// this._l10261 = l10261;
// }

// 	List<8191> get l8191 => _l8191;
// 	set l8191(List<8191> l8191) => _l8191 = l8191;
// 	List<8197> get l8197 => _l8197;
// 	set l8197(List<8197> l8197) => _l8197 = l8197;
// 	List<8455> get l8455 => _l8455;
// 	set l8455(List<8455> l8455) => _l8455 = l8455;
// 	List<8456> get l8456 => _l8456;
// 	set l8456(List<8456> l8456) => _l8456 = l8456;
// 	List<8463> get l8463 => _l8463;
// 	set l8463(List<8463> l8463) => _l8463 = l8463;
// 	List<8466> get l8466 => _l8466;
// 	set l8466(List<8466> l8466) => _l8466 = l8466;
// 	List<8586> get l8586 => _l8586;
// 	set l8586(List<8586> l8586) => _l8586 = l8586;
// 	List<8602> get l8602 => _l8602;
// 	set l8602(List<8602> l8602) => _l8602 = l8602;
// 	List<8650> get l8650 => _l8650;
// 	set l8650(List<8650> l8650) => _l8650 = l8650;
// 	List<8654> get l8654 => _l8654;
// 	set l8654(List<8654> l8654) => _l8654 = l8654;
// 	List<8668> get l8668 => _l8668;
// 	set l8668(List<8668> l8668) => _l8668 = l8668;
// 	List<9817> get l9817 => _l9817;
// 	set l9817(List<9817> l9817) => _l9817 = l9817;
// 	List<9825> get l9825 => _l9825;
// 	set l9825(List<9825> l9825) => _l9825 = l9825;
// 	List<9826> get l9826 => _l9826;
// 	set l9826(List<9826> l9826) => _l9826 = l9826;
// 	List<9850> get l9850 => _l9850;
// 	set l9850(List<9850> l9850) => _l9850 = l9850;
// 	List<9937> get l9937 => _l9937;
// 	set l9937(List<9937> l9937) => _l9937 = l9937;
// 	List<10204> get l10204 => _l10204;
// 	set l10204(List<10204> l10204) => _l10204 = l10204;
// 	List<10252> get l10252 => _l10252;
// 	set l10252(List<10252> l10252) => _l10252 = l10252;
// 	List<10260> get l10260 => _l10260;
// 	set l10260(List<10260> l10260) => _l10260 = l10260;
// 	List<10261> get l10261 => _l10261;
// 	set l10261(List<10261> l10261) => _l10261 = l10261;

// 	TeamForms.fromJson(Map<String, dynamic> json) {
// 		if (json['8191'] != null) {
// 			_l8191 = new List<8191>();
// 			json['8191'].forEach((v) { _l8191.add(new 8191.fromJson(v)); });
// 		}
// 		if (json['8197'] != null) {
// 			_l8197 = new List<8197>();
// 			json['8197'].forEach((v) { _l8197.add(new 8197.fromJson(v)); });
// 		}
// 		if (json['8455'] != null) {
// 			_l8455 = new List<8455>();
// 			json['8455'].forEach((v) { _l8455.add(new 8455.fromJson(v)); });
// 		}
// 		if (json['8456'] != null) {
// 			_l8456 = new List<8456>();
// 			json['8456'].forEach((v) { _l8456.add(new 8456.fromJson(v)); });
// 		}
// 		if (json['8463'] != null) {
// 			_l8463 = new List<8463>();
// 			json['8463'].forEach((v) { _l8463.add(new 8463.fromJson(v)); });
// 		}
// 		if (json['8466'] != null) {
// 			_l8466 = new List<8466>();
// 			json['8466'].forEach((v) { _l8466.add(new 8466.fromJson(v)); });
// 		}
// 		if (json['8586'] != null) {
// 			_l8586 = new List<8586>();
// 			json['8586'].forEach((v) { _l8586.add(new 8586.fromJson(v)); });
// 		}
// 		if (json['8602'] != null) {
// 			_l8602 = new List<8602>();
// 			json['8602'].forEach((v) { _l8602.add(new 8602.fromJson(v)); });
// 		}
// 		if (json['8650'] != null) {
// 			_l8650 = new List<8650>();
// 			json['8650'].forEach((v) { _l8650.add(new 8650.fromJson(v)); });
// 		}
// 		if (json['8654'] != null) {
// 			_l8654 = new List<8654>();
// 			json['8654'].forEach((v) { _l8654.add(new 8654.fromJson(v)); });
// 		}
// 		if (json['8668'] != null) {
// 			_l8668 = new List<8668>();
// 			json['8668'].forEach((v) { _l8668.add(new 8668.fromJson(v)); });
// 		}
// 		if (json['9817'] != null) {
// 			_l9817 = new List<9817>();
// 			json['9817'].forEach((v) { _l9817.add(new 9817.fromJson(v)); });
// 		}
// 		if (json['9825'] != null) {
// 			_l9825 = new List<9825>();
// 			json['9825'].forEach((v) { _l9825.add(new 9825.fromJson(v)); });
// 		}
// 		if (json['9826'] != null) {
// 			_l9826 = new List<9826>();
// 			json['9826'].forEach((v) { _l9826.add(new 9826.fromJson(v)); });
// 		}
// 		if (json['9850'] != null) {
// 			_l9850 = new List<9850>();
// 			json['9850'].forEach((v) { _l9850.add(new 9850.fromJson(v)); });
// 		}
// 		if (json['9937'] != null) {
// 			_l9937 = new List<9937>();
// 			json['9937'].forEach((v) { _l9937.add(new 9937.fromJson(v)); });
// 		}
// 		if (json['10204'] != null) {
// 			_l10204 = new List<10204>();
// 			json['10204'].forEach((v) { _l10204.add(new 10204.fromJson(v)); });
// 		}
// 		if (json['10252'] != null) {
// 			_l10252 = new List<10252>();
// 			json['10252'].forEach((v) { _l10252.add(new 10252.fromJson(v)); });
// 		}
// 		if (json['10260'] != null) {
// 			_l10260 = new List<10260>();
// 			json['10260'].forEach((v) { _l10260.add(new 10260.fromJson(v)); });
// 		}
// 		if (json['10261'] != null) {
// 			_l10261 = new List<10261>();
// 			json['10261'].forEach((v) { _l10261.add(new 10261.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this._l8191 != null) {
//       data['8191'] = this._l8191.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8197 != null) {
//       data['8197'] = this._l8197.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8455 != null) {
//       data['8455'] = this._l8455.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8456 != null) {
//       data['8456'] = this._l8456.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8463 != null) {
//       data['8463'] = this._l8463.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8466 != null) {
//       data['8466'] = this._l8466.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8586 != null) {
//       data['8586'] = this._l8586.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8602 != null) {
//       data['8602'] = this._l8602.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8650 != null) {
//       data['8650'] = this._l8650.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8654 != null) {
//       data['8654'] = this._l8654.map((v) => v.toJson()).toList();
//     }
// 		if (this._l8668 != null) {
//       data['8668'] = this._l8668.map((v) => v.toJson()).toList();
//     }
// 		if (this._l9817 != null) {
//       data['9817'] = this._l9817.map((v) => v.toJson()).toList();
//     }
// 		if (this._l9825 != null) {
//       data['9825'] = this._l9825.map((v) => v.toJson()).toList();
//     }
// 		if (this._l9826 != null) {
//       data['9826'] = this._l9826.map((v) => v.toJson()).toList();
//     }
// 		if (this._l9850 != null) {
//       data['9850'] = this._l9850.map((v) => v.toJson()).toList();
//     }
// 		if (this._l9937 != null) {
//       data['9937'] = this._l9937.map((v) => v.toJson()).toList();
//     }
// 		if (this._l10204 != null) {
//       data['10204'] = this._l10204.map((v) => v.toJson()).toList();
//     }
// 		if (this._l10252 != null) {
//       data['10252'] = this._l10252.map((v) => v.toJson()).toList();
//     }
// 		if (this._l10260 != null) {
//       data['10260'] = this._l10260.map((v) => v.toJson()).toList();
//     }
// 		if (this._l10261 != null) {
//       data['10261'] = this._l10261.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class 8191 {
// 	int _result;
// 	String _resultString;
// 	String _imageUrl;
// 	String _linkToMatch;
// 	Null _date;
// 	String _teamPageUrl;
// 	String _tooltipText;
// 	String _score;
// 	Opponent _home;
// 	Opponent _away;

// 	8191({int result, String resultString, String imageUrl, String linkToMatch, Null date, String teamPageUrl, String tooltipText, String score, Opponent home, Opponent away}) {
// this._result = result;
// this._resultString = resultString;
// this._imageUrl = imageUrl;
// this._linkToMatch = linkToMatch;
// this._date = date;
// this._teamPageUrl = teamPageUrl;
// this._tooltipText = tooltipText;
// this._score = score;
// this._home = home;
// this._away = away;
// }

// 	int get result => _result;
// 	set result(int result) => _result = result;
// 	String get resultString => _resultString;
// 	set resultString(String resultString) => _resultString = resultString;
// 	String get imageUrl => _imageUrl;
// 	set imageUrl(String imageUrl) => _imageUrl = imageUrl;
// 	String get linkToMatch => _linkToMatch;
// 	set linkToMatch(String linkToMatch) => _linkToMatch = linkToMatch;
// 	Null get date => _date;
// 	set date(Null date) => _date = date;
// 	String get teamPageUrl => _teamPageUrl;
// 	set teamPageUrl(String teamPageUrl) => _teamPageUrl = teamPageUrl;
// 	String get tooltipText => _tooltipText;
// 	set tooltipText(String tooltipText) => _tooltipText = tooltipText;
// 	String get score => _score;
// 	set score(String score) => _score = score;
// 	Opponent get home => _home;
// 	set home(Opponent home) => _home = home;
// 	Opponent get away => _away;
// 	set away(Opponent away) => _away = away;

// 	8191.fromJson(Map<String, dynamic> json) {
// 		_result = json['result'];
// 		_resultString = json['resultString'];
// 		_imageUrl = json['imageUrl'];
// 		_linkToMatch = json['linkToMatch'];
// 		_date = json['date'];
// 		_teamPageUrl = json['teamPageUrl'];
// 		_tooltipText = json['tooltipText'];
// 		_score = json['score'];
// 		_home = json['home'] != null ? new Opponent.fromJson(json['home']) : null;
// 		_away = json['away'] != null ? new Opponent.fromJson(json['away']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['result'] = this._result;
// 		data['resultString'] = this._resultString;
// 		data['imageUrl'] = this._imageUrl;
// 		data['linkToMatch'] = this._linkToMatch;
// 		data['date'] = this._date;
// 		data['teamPageUrl'] = this._teamPageUrl;
// 		data['tooltipText'] = this._tooltipText;
// 		data['score'] = this._score;
// 		if (this._home != null) {
//       data['home'] = this._home.toJson();
//     }
// 		if (this._away != null) {
//       data['away'] = this._away.toJson();
//     }
// 		return data;
// 	}
// }

// class Home {
// 	bool _isOurTeam;

// 	Home({bool isOurTeam}) {
// this._isOurTeam = isOurTeam;
// }

// 	bool get isOurTeam => _isOurTeam;
// 	set isOurTeam(bool isOurTeam) => _isOurTeam = isOurTeam;

// 	Home.fromJson(Map<String, dynamic> json) {
// 		_isOurTeam = json['isOurTeam'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['isOurTeam'] = this._isOurTeam;
// 		return data;
// 	}
// }

// class NextOpponent {
// 	List<String> _l8191;
// 	List<String> _l8197;
// 	List<String> _l8455;
// 	List<String> _l8456;
// 	List<String> _l8463;
// 	List<String> _l8466;
// 	List<String> _l8586;
// 	List<String> _l8602;
// 	List<String> _l8650;
// 	List<String> _l8654;
// 	List<String> _l8668;
// 	List<String> _l9817;
// 	List<String> _l9825;
// 	List<String> _l9826;
// 	List<String> _l9850;
// 	List<String> _l9937;
// 	List<String> _l10204;
// 	List<String> _l10252;
// 	List<String> _l10260;
// 	List<String> _l10261;

// 	NextOpponent({List<String> l8191, List<String> l8197, List<String> l8455, List<String> l8456, List<String> l8463, List<String> l8466, List<String> l8586, List<String> l8602, List<String> l8650, List<String> l8654, List<String> l8668, List<String> l9817, List<String> l9825, List<String> l9826, List<String> l9850, List<String> l9937, List<String> l10204, List<String> l10252, List<String> l10260, List<String> l10261}) {
// this._l8191 = l8191;
// this._l8197 = l8197;
// this._l8455 = l8455;
// this._l8456 = l8456;
// this._l8463 = l8463;
// this._l8466 = l8466;
// this._l8586 = l8586;
// this._l8602 = l8602;
// this._l8650 = l8650;
// this._l8654 = l8654;
// this._l8668 = l8668;
// this._l9817 = l9817;
// this._l9825 = l9825;
// this._l9826 = l9826;
// this._l9850 = l9850;
// this._l9937 = l9937;
// this._l10204 = l10204;
// this._l10252 = l10252;
// this._l10260 = l10260;
// this._l10261 = l10261;
// }

// 	List<String> get l8191 => _l8191;
// 	set l8191(List<String> l8191) => _l8191 = l8191;
// 	List<String> get l8197 => _l8197;
// 	set l8197(List<String> l8197) => _l8197 = l8197;
// 	List<String> get l8455 => _l8455;
// 	set l8455(List<String> l8455) => _l8455 = l8455;
// 	List<String> get l8456 => _l8456;
// 	set l8456(List<String> l8456) => _l8456 = l8456;
// 	List<String> get l8463 => _l8463;
// 	set l8463(List<String> l8463) => _l8463 = l8463;
// 	List<String> get l8466 => _l8466;
// 	set l8466(List<String> l8466) => _l8466 = l8466;
// 	List<String> get l8586 => _l8586;
// 	set l8586(List<String> l8586) => _l8586 = l8586;
// 	List<String> get l8602 => _l8602;
// 	set l8602(List<String> l8602) => _l8602 = l8602;
// 	List<String> get l8650 => _l8650;
// 	set l8650(List<String> l8650) => _l8650 = l8650;
// 	List<String> get l8654 => _l8654;
// 	set l8654(List<String> l8654) => _l8654 = l8654;
// 	List<String> get l8668 => _l8668;
// 	set l8668(List<String> l8668) => _l8668 = l8668;
// 	List<String> get l9817 => _l9817;
// 	set l9817(List<String> l9817) => _l9817 = l9817;
// 	List<String> get l9825 => _l9825;
// 	set l9825(List<String> l9825) => _l9825 = l9825;
// 	List<String> get l9826 => _l9826;
// 	set l9826(List<String> l9826) => _l9826 = l9826;
// 	List<String> get l9850 => _l9850;
// 	set l9850(List<String> l9850) => _l9850 = l9850;
// 	List<String> get l9937 => _l9937;
// 	set l9937(List<String> l9937) => _l9937 = l9937;
// 	List<String> get l10204 => _l10204;
// 	set l10204(List<String> l10204) => _l10204 = l10204;
// 	List<String> get l10252 => _l10252;
// 	set l10252(List<String> l10252) => _l10252 = l10252;
// 	List<String> get l10260 => _l10260;
// 	set l10260(List<String> l10260) => _l10260 = l10260;
// 	List<String> get l10261 => _l10261;
// 	set l10261(List<String> l10261) => _l10261 = l10261;

// 	NextOpponent.fromJson(Map<String, dynamic> json) {
// 		_l8191 = json['8191'].cast<String>();
// 		_l8197 = json['8197'].cast<String>();
// 		_l8455 = json['8455'].cast<String>();
// 		_l8456 = json['8456'].cast<String>();
// 		_l8463 = json['8463'].cast<String>();
// 		_l8466 = json['8466'].cast<String>();
// 		_l8586 = json['8586'].cast<String>();
// 		_l8602 = json['8602'].cast<String>();
// 		_l8650 = json['8650'].cast<String>();
// 		_l8654 = json['8654'].cast<String>();
// 		_l8668 = json['8668'].cast<String>();
// 		_l9817 = json['9817'].cast<String>();
// 		_l9825 = json['9825'].cast<String>();
// 		_l9826 = json['9826'].cast<String>();
// 		_l9850 = json['9850'].cast<String>();
// 		_l9937 = json['9937'].cast<String>();
// 		_l10204 = json['10204'].cast<String>();
// 		_l10252 = json['10252'].cast<String>();
// 		_l10260 = json['10260'].cast<String>();
// 		_l10261 = json['10261'].cast<String>();
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['8191'] = this._l8191;
// 		data['8197'] = this._l8197;
// 		data['8455'] = this._l8455;
// 		data['8456'] = this._l8456;
// 		data['8463'] = this._l8463;
// 		data['8466'] = this._l8466;
// 		data['8586'] = this._l8586;
// 		data['8602'] = this._l8602;
// 		data['8650'] = this._l8650;
// 		data['8654'] = this._l8654;
// 		data['8668'] = this._l8668;
// 		data['9817'] = this._l9817;
// 		data['9825'] = this._l9825;
// 		data['9826'] = this._l9826;
// 		data['9850'] = this._l9850;
// 		data['9937'] = this._l9937;
// 		data['10204'] = this._l10204;
// 		data['10252'] = this._l10252;
// 		data['10260'] = this._l10260;
// 		data['10261'] = this._l10261;
// 		return data;
// 	}
// }

// class TableHeader {
// 	List<String> _staticTableHeaders;
// 	List<String> _dynamicTableHeaders;

// 	TableHeader({List<String> staticTableHeaders, List<String> dynamicTableHeaders}) {
// this._staticTableHeaders = staticTableHeaders;
// this._dynamicTableHeaders = dynamicTableHeaders;
// }

// 	List<String> get staticTableHeaders => _staticTableHeaders;
// 	set staticTableHeaders(List<String> staticTableHeaders) => _staticTableHeaders = staticTableHeaders;
// 	List<String> get dynamicTableHeaders => _dynamicTableHeaders;
// 	set dynamicTableHeaders(List<String> dynamicTableHeaders) => _dynamicTableHeaders = dynamicTableHeaders;

// 	TableHeader.fromJson(Map<String, dynamic> json) {
// 		_staticTableHeaders = json['staticTableHeaders'].cast<String>();
// 		_dynamicTableHeaders = json['dynamicTableHeaders'].cast<String>();
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['staticTableHeaders'] = this._staticTableHeaders;
// 		data['dynamicTableHeaders'] = this._dynamicTableHeaders;
// 		return data;
// 	}
// }

// class TopPlayers {
// 	List<ByRating> _byRating;
// 	List<ByGoals> _byGoals;
// 	List<ByAssists> _byAssists;
// 	String _seeAllUrl;

// 	TopPlayers({List<ByRating> byRating, List<ByGoals> byGoals, List<ByAssists> byAssists, String seeAllUrl}) {
// this._byRating = byRating;
// this._byGoals = byGoals;
// this._byAssists = byAssists;
// this._seeAllUrl = seeAllUrl;
// }

// 	List<ByRating> get byRating => _byRating;
// 	set byRating(List<ByRating> byRating) => _byRating = byRating;
// 	List<ByGoals> get byGoals => _byGoals;
// 	set byGoals(List<ByGoals> byGoals) => _byGoals = byGoals;
// 	List<ByAssists> get byAssists => _byAssists;
// 	set byAssists(List<ByAssists> byAssists) => _byAssists = byAssists;
// 	String get seeAllUrl => _seeAllUrl;
// 	set seeAllUrl(String seeAllUrl) => _seeAllUrl = seeAllUrl;

// 	TopPlayers.fromJson(Map<String, dynamic> json) {
// 		if (json['byRating'] != null) {
// 			_byRating = new List<ByRating>();
// 			json['byRating'].forEach((v) { _byRating.add(new ByRating.fromJson(v)); });
// 		}
// 		if (json['byGoals'] != null) {
// 			_byGoals = new List<ByGoals>();
// 			json['byGoals'].forEach((v) { _byGoals.add(new ByGoals.fromJson(v)); });
// 		}
// 		if (json['byAssists'] != null) {
// 			_byAssists = new List<ByAssists>();
// 			json['byAssists'].forEach((v) { _byAssists.add(new ByAssists.fromJson(v)); });
// 		}
// 		_seeAllUrl = json['seeAllUrl'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this._byRating != null) {
//       data['byRating'] = this._byRating.map((v) => v.toJson()).toList();
//     }
// 		if (this._byGoals != null) {
//       data['byGoals'] = this._byGoals.map((v) => v.toJson()).toList();
//     }
// 		if (this._byAssists != null) {
//       data['byAssists'] = this._byAssists.map((v) => v.toJson()).toList();
//     }
// 		data['seeAllUrl'] = this._seeAllUrl;
// 		return data;
// 	}
// }

// class ByRating {
// 	int _id;
// 	String _name;
// 	int _rank;
// 	Null _goals;
// 	Null _assists;
// 	String _rating;
// 	Null _positionId;
// 	Null _ccode;
// 	Null _cname;
// 	int _teamId;
// 	String _teamName;
// 	Null _showRole;
// 	Null _showCountryFlag;
// 	bool _showTeamFlag;
// 	bool _excludeFromRanking;

// 	ByRating({int id, String name, int rank, Null goals, Null assists, String rating, Null positionId, Null ccode, Null cname, int teamId, String teamName, Null showRole, Null showCountryFlag, bool showTeamFlag, bool excludeFromRanking}) {
// this._id = id;
// this._name = name;
// this._rank = rank;
// this._goals = goals;
// this._assists = assists;
// this._rating = rating;
// this._positionId = positionId;
// this._ccode = ccode;
// this._cname = cname;
// this._teamId = teamId;
// this._teamName = teamName;
// this._showRole = showRole;
// this._showCountryFlag = showCountryFlag;
// this._showTeamFlag = showTeamFlag;
// this._excludeFromRanking = excludeFromRanking;
// }

// 	int get id => _id;
// 	set id(int id) => _id = id;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	int get rank => _rank;
// 	set rank(int rank) => _rank = rank;
// 	Null get goals => _goals;
// 	set goals(Null goals) => _goals = goals;
// 	Null get assists => _assists;
// 	set assists(Null assists) => _assists = assists;
// 	String get rating => _rating;
// 	set rating(String rating) => _rating = rating;
// 	Null get positionId => _positionId;
// 	set positionId(Null positionId) => _positionId = positionId;
// 	Null get ccode => _ccode;
// 	set ccode(Null ccode) => _ccode = ccode;
// 	Null get cname => _cname;
// 	set cname(Null cname) => _cname = cname;
// 	int get teamId => _teamId;
// 	set teamId(int teamId) => _teamId = teamId;
// 	String get teamName => _teamName;
// 	set teamName(String teamName) => _teamName = teamName;
// 	Null get showRole => _showRole;
// 	set showRole(Null showRole) => _showRole = showRole;
// 	Null get showCountryFlag => _showCountryFlag;
// 	set showCountryFlag(Null showCountryFlag) => _showCountryFlag = showCountryFlag;
// 	bool get showTeamFlag => _showTeamFlag;
// 	set showTeamFlag(bool showTeamFlag) => _showTeamFlag = showTeamFlag;
// 	bool get excludeFromRanking => _excludeFromRanking;
// 	set excludeFromRanking(bool excludeFromRanking) => _excludeFromRanking = excludeFromRanking;

// 	ByRating.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_name = json['name'];
// 		_rank = json['rank'];
// 		_goals = json['goals'];
// 		_assists = json['assists'];
// 		_rating = json['rating'];
// 		_positionId = json['positionId'];
// 		_ccode = json['ccode'];
// 		_cname = json['cname'];
// 		_teamId = json['teamId'];
// 		_teamName = json['teamName'];
// 		_showRole = json['showRole'];
// 		_showCountryFlag = json['showCountryFlag'];
// 		_showTeamFlag = json['showTeamFlag'];
// 		_excludeFromRanking = json['excludeFromRanking'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['name'] = this._name;
// 		data['rank'] = this._rank;
// 		data['goals'] = this._goals;
// 		data['assists'] = this._assists;
// 		data['rating'] = this._rating;
// 		data['positionId'] = this._positionId;
// 		data['ccode'] = this._ccode;
// 		data['cname'] = this._cname;
// 		data['teamId'] = this._teamId;
// 		data['teamName'] = this._teamName;
// 		data['showRole'] = this._showRole;
// 		data['showCountryFlag'] = this._showCountryFlag;
// 		data['showTeamFlag'] = this._showTeamFlag;
// 		data['excludeFromRanking'] = this._excludeFromRanking;
// 		return data;
// 	}
// }

// class ByGoals {
// 	int _id;
// 	String _name;
// 	int _rank;
// 	int _goals;
// 	Null _assists;
// 	Null _rating;
// 	Null _positionId;
// 	Null _ccode;
// 	Null _cname;
// 	int _teamId;
// 	String _teamName;
// 	Null _showRole;
// 	Null _showCountryFlag;
// 	bool _showTeamFlag;
// 	bool _excludeFromRanking;

// 	ByGoals({int id, String name, int rank, int goals, Null assists, Null rating, Null positionId, Null ccode, Null cname, int teamId, String teamName, Null showRole, Null showCountryFlag, bool showTeamFlag, bool excludeFromRanking}) {
// this._id = id;
// this._name = name;
// this._rank = rank;
// this._goals = goals;
// this._assists = assists;
// this._rating = rating;
// this._positionId = positionId;
// this._ccode = ccode;
// this._cname = cname;
// this._teamId = teamId;
// this._teamName = teamName;
// this._showRole = showRole;
// this._showCountryFlag = showCountryFlag;
// this._showTeamFlag = showTeamFlag;
// this._excludeFromRanking = excludeFromRanking;
// }

// 	int get id => _id;
// 	set id(int id) => _id = id;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	int get rank => _rank;
// 	set rank(int rank) => _rank = rank;
// 	int get goals => _goals;
// 	set goals(int goals) => _goals = goals;
// 	Null get assists => _assists;
// 	set assists(Null assists) => _assists = assists;
// 	Null get rating => _rating;
// 	set rating(Null rating) => _rating = rating;
// 	Null get positionId => _positionId;
// 	set positionId(Null positionId) => _positionId = positionId;
// 	Null get ccode => _ccode;
// 	set ccode(Null ccode) => _ccode = ccode;
// 	Null get cname => _cname;
// 	set cname(Null cname) => _cname = cname;
// 	int get teamId => _teamId;
// 	set teamId(int teamId) => _teamId = teamId;
// 	String get teamName => _teamName;
// 	set teamName(String teamName) => _teamName = teamName;
// 	Null get showRole => _showRole;
// 	set showRole(Null showRole) => _showRole = showRole;
// 	Null get showCountryFlag => _showCountryFlag;
// 	set showCountryFlag(Null showCountryFlag) => _showCountryFlag = showCountryFlag;
// 	bool get showTeamFlag => _showTeamFlag;
// 	set showTeamFlag(bool showTeamFlag) => _showTeamFlag = showTeamFlag;
// 	bool get excludeFromRanking => _excludeFromRanking;
// 	set excludeFromRanking(bool excludeFromRanking) => _excludeFromRanking = excludeFromRanking;

// 	ByGoals.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_name = json['name'];
// 		_rank = json['rank'];
// 		_goals = json['goals'];
// 		_assists = json['assists'];
// 		_rating = json['rating'];
// 		_positionId = json['positionId'];
// 		_ccode = json['ccode'];
// 		_cname = json['cname'];
// 		_teamId = json['teamId'];
// 		_teamName = json['teamName'];
// 		_showRole = json['showRole'];
// 		_showCountryFlag = json['showCountryFlag'];
// 		_showTeamFlag = json['showTeamFlag'];
// 		_excludeFromRanking = json['excludeFromRanking'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['name'] = this._name;
// 		data['rank'] = this._rank;
// 		data['goals'] = this._goals;
// 		data['assists'] = this._assists;
// 		data['rating'] = this._rating;
// 		data['positionId'] = this._positionId;
// 		data['ccode'] = this._ccode;
// 		data['cname'] = this._cname;
// 		data['teamId'] = this._teamId;
// 		data['teamName'] = this._teamName;
// 		data['showRole'] = this._showRole;
// 		data['showCountryFlag'] = this._showCountryFlag;
// 		data['showTeamFlag'] = this._showTeamFlag;
// 		data['excludeFromRanking'] = this._excludeFromRanking;
// 		return data;
// 	}
// }

// class ByAssists {
// 	int _id;
// 	String _name;
// 	int _rank;
// 	Null _goals;
// 	int _assists;
// 	Null _rating;
// 	Null _positionId;
// 	Null _ccode;
// 	Null _cname;
// 	int _teamId;
// 	String _teamName;
// 	Null _showRole;
// 	Null _showCountryFlag;
// 	bool _showTeamFlag;
// 	bool _excludeFromRanking;

// 	ByAssists({int id, String name, int rank, Null goals, int assists, Null rating, Null positionId, Null ccode, Null cname, int teamId, String teamName, Null showRole, Null showCountryFlag, bool showTeamFlag, bool excludeFromRanking}) {
// this._id = id;
// this._name = name;
// this._rank = rank;
// this._goals = goals;
// this._assists = assists;
// this._rating = rating;
// this._positionId = positionId;
// this._ccode = ccode;
// this._cname = cname;
// this._teamId = teamId;
// this._teamName = teamName;
// this._showRole = showRole;
// this._showCountryFlag = showCountryFlag;
// this._showTeamFlag = showTeamFlag;
// this._excludeFromRanking = excludeFromRanking;
// }

// 	int get id => _id;
// 	set id(int id) => _id = id;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	int get rank => _rank;
// 	set rank(int rank) => _rank = rank;
// 	Null get goals => _goals;
// 	set goals(Null goals) => _goals = goals;
// 	int get assists => _assists;
// 	set assists(int assists) => _assists = assists;
// 	Null get rating => _rating;
// 	set rating(Null rating) => _rating = rating;
// 	Null get positionId => _positionId;
// 	set positionId(Null positionId) => _positionId = positionId;
// 	Null get ccode => _ccode;
// 	set ccode(Null ccode) => _ccode = ccode;
// 	Null get cname => _cname;
// 	set cname(Null cname) => _cname = cname;
// 	int get teamId => _teamId;
// 	set teamId(int teamId) => _teamId = teamId;
// 	String get teamName => _teamName;
// 	set teamName(String teamName) => _teamName = teamName;
// 	Null get showRole => _showRole;
// 	set showRole(Null showRole) => _showRole = showRole;
// 	Null get showCountryFlag => _showCountryFlag;
// 	set showCountryFlag(Null showCountryFlag) => _showCountryFlag = showCountryFlag;
// 	bool get showTeamFlag => _showTeamFlag;
// 	set showTeamFlag(bool showTeamFlag) => _showTeamFlag = showTeamFlag;
// 	bool get excludeFromRanking => _excludeFromRanking;
// 	set excludeFromRanking(bool excludeFromRanking) => _excludeFromRanking = excludeFromRanking;

// 	ByAssists.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_name = json['name'];
// 		_rank = json['rank'];
// 		_goals = json['goals'];
// 		_assists = json['assists'];
// 		_rating = json['rating'];
// 		_positionId = json['positionId'];
// 		_ccode = json['ccode'];
// 		_cname = json['cname'];
// 		_teamId = json['teamId'];
// 		_teamName = json['teamName'];
// 		_showRole = json['showRole'];
// 		_showCountryFlag = json['showCountryFlag'];
// 		_showTeamFlag = json['showTeamFlag'];
// 		_excludeFromRanking = json['excludeFromRanking'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['name'] = this._name;
// 		data['rank'] = this._rank;
// 		data['goals'] = this._goals;
// 		data['assists'] = this._assists;
// 		data['rating'] = this._rating;
// 		data['positionId'] = this._positionId;
// 		data['ccode'] = this._ccode;
// 		data['cname'] = this._cname;
// 		data['teamId'] = this._teamId;
// 		data['teamName'] = this._teamName;
// 		data['showRole'] = this._showRole;
// 		data['showCountryFlag'] = this._showCountryFlag;
// 		data['showTeamFlag'] = this._showTeamFlag;
// 		data['excludeFromRanking'] = this._excludeFromRanking;
// 		return data;
// 	}
// }

// class Fixtures {
// 	String _id;
// 	String _pageUrl;
// 	Opponent _opponent;
// 	Opponent _home;
// 	Opponent _away;
// 	bool _displayTournament;
// 	List<String> _lnameArr;
// 	String _color;
// 	bool _notStarted;
// 	Tournament _tournament;
// 	Status _status;

// 	Fixtures({String id, String pageUrl, Opponent opponent, Opponent home, Opponent away, bool displayTournament, List<String> lnameArr, String color, bool notStarted, Tournament tournament, Status status}) {
// this._id = id;
// this._pageUrl = pageUrl;
// this._opponent = opponent;
// this._home = home;
// this._away = away;
// this._displayTournament = displayTournament;
// this._lnameArr = lnameArr;
// this._color = color;
// this._notStarted = notStarted;
// this._tournament = tournament;
// this._status = status;
// }

// 	String get id => _id;
// 	set id(String id) => _id = id;
// 	String get pageUrl => _pageUrl;
// 	set pageUrl(String pageUrl) => _pageUrl = pageUrl;
// 	Opponent get opponent => _opponent;
// 	set opponent(Opponent opponent) => _opponent = opponent;
// 	Opponent get home => _home;
// 	set home(Opponent home) => _home = home;
// 	Opponent get away => _away;
// 	set away(Opponent away) => _away = away;
// 	bool get displayTournament => _displayTournament;
// 	set displayTournament(bool displayTournament) => _displayTournament = displayTournament;
// 	List<String> get lnameArr => _lnameArr;
// 	set lnameArr(List<String> lnameArr) => _lnameArr = lnameArr;
// 	String get color => _color;
// 	set color(String color) => _color = color;
// 	bool get notStarted => _notStarted;
// 	set notStarted(bool notStarted) => _notStarted = notStarted;
// 	Tournament get tournament => _tournament;
// 	set tournament(Tournament tournament) => _tournament = tournament;
// 	Status get status => _status;
// 	set status(Status status) => _status = status;

// 	Fixtures.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_pageUrl = json['pageUrl'];
// 		_opponent = json['opponent'] != null ? new Opponent.fromJson(json['opponent']) : null;
// 		_home = json['home'] != null ? new Opponent.fromJson(json['home']) : null;
// 		_away = json['away'] != null ? new Opponent.fromJson(json['away']) : null;
// 		_displayTournament = json['displayTournament'];
// 		_lnameArr = json['lnameArr'].cast<String>();
// 		_color = json['color'];
// 		_notStarted = json['notStarted'];
// 		_tournament = json['tournament'] != null ? new Tournament.fromJson(json['tournament']) : null;
// 		_status = json['status'] != null ? new Status.fromJson(json['status']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['pageUrl'] = this._pageUrl;
// 		if (this._opponent != null) {
//       data['opponent'] = this._opponent.toJson();
//     }
// 		if (this._home != null) {
//       data['home'] = this._home.toJson();
//     }
// 		if (this._away != null) {
//       data['away'] = this._away.toJson();
//     }
// 		data['displayTournament'] = this._displayTournament;
// 		data['lnameArr'] = this._lnameArr;
// 		data['color'] = this._color;
// 		data['notStarted'] = this._notStarted;
// 		if (this._tournament != null) {
//       data['tournament'] = this._tournament.toJson();
//     }
// 		if (this._status != null) {
//       data['status'] = this._status.toJson();
//     }
// 		return data;
// 	}
// }

// class Opponent {
// 	String _id;
// 	String _name;
// 	int _score;

// 	Opponent({String id, String name, int score}) {
// this._id = id;
// this._name = name;
// this._score = score;
// }

// 	String get id => _id;
// 	set id(String id) => _id = id;
// 	String get name => _name;
// 	set name(String name) => _name = name;
// 	int get score => _score;
// 	set score(int score) => _score = score;

// 	Opponent.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_name = json['name'];
// 		_score = json['score'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['name'] = this._name;
// 		data['score'] = this._score;
// 		return data;
// 	}
// }

// class Tournament {


// 	Tournament({}) {
// }



// 	Tournament.fromJson(Map<String, dynamic> json) {
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		return data;
// 	}
// }

// class Status {
// 	bool _finished;
// 	bool _started;
// 	bool _cancelled;
// 	String _scoreStr;
// 	String _startDateStr;
// 	String _startDateStrShort;
// 	Reason _reason;
// 	String _startTimeStr;

// 	Status({bool finished, bool started, bool cancelled, String scoreStr, String startDateStr, String startDateStrShort, Reason reason, String startTimeStr}) {
// this._finished = finished;
// this._started = started;
// this._cancelled = cancelled;
// this._scoreStr = scoreStr;
// this._startDateStr = startDateStr;
// this._startDateStrShort = startDateStrShort;
// this._reason = reason;
// this._startTimeStr = startTimeStr;
// }

// 	bool get finished => _finished;
// 	set finished(bool finished) => _finished = finished;
// 	bool get started => _started;
// 	set started(bool started) => _started = started;
// 	bool get cancelled => _cancelled;
// 	set cancelled(bool cancelled) => _cancelled = cancelled;
// 	String get scoreStr => _scoreStr;
// 	set scoreStr(String scoreStr) => _scoreStr = scoreStr;
// 	String get startDateStr => _startDateStr;
// 	set startDateStr(String startDateStr) => _startDateStr = startDateStr;
// 	String get startDateStrShort => _startDateStrShort;
// 	set startDateStrShort(String startDateStrShort) => _startDateStrShort = startDateStrShort;
// 	Reason get reason => _reason;
// 	set reason(Reason reason) => _reason = reason;
// 	String get startTimeStr => _startTimeStr;
// 	set startTimeStr(String startTimeStr) => _startTimeStr = startTimeStr;

// 	Status.fromJson(Map<String, dynamic> json) {
// 		_finished = json['finished'];
// 		_started = json['started'];
// 		_cancelled = json['cancelled'];
// 		_scoreStr = json['scoreStr'];
// 		_startDateStr = json['startDateStr'];
// 		_startDateStrShort = json['startDateStrShort'];
// 		_reason = json['reason'] != null ? new Reason.fromJson(json['reason']) : null;
// 		_startTimeStr = json['startTimeStr'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['finished'] = this._finished;
// 		data['started'] = this._started;
// 		data['cancelled'] = this._cancelled;
// 		data['scoreStr'] = this._scoreStr;
// 		data['startDateStr'] = this._startDateStr;
// 		data['startDateStrShort'] = this._startDateStrShort;
// 		if (this._reason != null) {
//       data['reason'] = this._reason.toJson();
//     }
// 		data['startTimeStr'] = this._startTimeStr;
// 		return data;
// 	}
// }

// class Reason {
// 	String _short;
// 	String _long;

// 	Reason({String short, String long}) {
// this._short = short;
// this._long = long;
// }

// 	String get short => _short;
// 	set short(String short) => _short = short;
// 	String get long => _long;
// 	set long(String long) => _long = long;

// 	Reason.fromJson(Map<String, dynamic> json) {
// 		_short = json['short'];
// 		_long = json['long'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['short'] = this._short;
// 		data['long'] = this._long;
// 		return data;
// 	}
// }

// class 8191 {
// 	int _result;
// 	String _resultString;
// 	String _imageUrl;
// 	String _linkToMatch;
// 	Null _date;
// 	String _teamPageUrl;
// 	String _tooltipText;
// 	String _score;
// 	Opponent _home;
// 	Opponent _away;

// 	8191({int result, String resultString, String imageUrl, String linkToMatch, Null date, String teamPageUrl, String tooltipText, String score, Opponent home, Opponent away}) {
// this._result = result;
// this._resultString = resultString;
// this._imageUrl = imageUrl;
// this._linkToMatch = linkToMatch;
// this._date = date;
// this._teamPageUrl = teamPageUrl;
// this._tooltipText = tooltipText;
// this._score = score;
// this._home = home;
// this._away = away;
// }

// 	int get result => _result;
// 	set result(int result) => _result = result;
// 	String get resultString => _resultString;
// 	set resultString(String resultString) => _resultString = resultString;
// 	String get imageUrl => _imageUrl;
// 	set imageUrl(String imageUrl) => _imageUrl = imageUrl;
// 	String get linkToMatch => _linkToMatch;
// 	set linkToMatch(String linkToMatch) => _linkToMatch = linkToMatch;
// 	Null get date => _date;
// 	set date(Null date) => _date = date;
// 	String get teamPageUrl => _teamPageUrl;
// 	set teamPageUrl(String teamPageUrl) => _teamPageUrl = teamPageUrl;
// 	String get tooltipText => _tooltipText;
// 	set tooltipText(String tooltipText) => _tooltipText = tooltipText;
// 	String get score => _score;
// 	set score(String score) => _score = score;
// 	Opponent get home => _home;
// 	set home(Opponent home) => _home = home;
// 	Opponent get away => _away;
// 	set away(Opponent away) => _away = away;

// 	8191.fromJson(Map<String, dynamic> json) {
// 		_result = json['result'];
// 		_resultString = json['resultString'];
// 		_imageUrl = json['imageUrl'];
// 		_linkToMatch = json['linkToMatch'];
// 		_date = json['date'];
// 		_teamPageUrl = json['teamPageUrl'];
// 		_tooltipText = json['tooltipText'];
// 		_score = json['score'];
// 		_home = json['home'] != null ? new Opponent.fromJson(json['home']) : null;
// 		_away = json['away'] != null ? new Opponent.fromJson(json['away']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['result'] = this._result;
// 		data['resultString'] = this._resultString;
// 		data['imageUrl'] = this._imageUrl;
// 		data['linkToMatch'] = this._linkToMatch;
// 		data['date'] = this._date;
// 		data['teamPageUrl'] = this._teamPageUrl;
// 		data['tooltipText'] = this._tooltipText;
// 		data['score'] = this._score;
// 		if (this._home != null) {
//       data['home'] = this._home.toJson();
//     }
// 		if (this._away != null) {
//       data['away'] = this._away.toJson();
//     }
// 		return data;
// 	}
// }

// class Fixtures {
// 	String _id;
// 	String _pageUrl;
// 	Opponent _opponent;
// 	Opponent _home;
// 	Opponent _away;
// 	bool _displayTournament;
// 	List<String> _lnameArr;
// 	String _color;
// 	bool _notStarted;
// 	Tournament _tournament;
// 	Status _status;

// 	Fixtures({String id, String pageUrl, Opponent opponent, Opponent home, Opponent away, bool displayTournament, List<String> lnameArr, String color, bool notStarted, Tournament tournament, Status status}) {
// this._id = id;
// this._pageUrl = pageUrl;
// this._opponent = opponent;
// this._home = home;
// this._away = away;
// this._displayTournament = displayTournament;
// this._lnameArr = lnameArr;
// this._color = color;
// this._notStarted = notStarted;
// this._tournament = tournament;
// this._status = status;
// }

// 	String get id => _id;
// 	set id(String id) => _id = id;
// 	String get pageUrl => _pageUrl;
// 	set pageUrl(String pageUrl) => _pageUrl = pageUrl;
// 	Opponent get opponent => _opponent;
// 	set opponent(Opponent opponent) => _opponent = opponent;
// 	Opponent get home => _home;
// 	set home(Opponent home) => _home = home;
// 	Opponent get away => _away;
// 	set away(Opponent away) => _away = away;
// 	bool get displayTournament => _displayTournament;
// 	set displayTournament(bool displayTournament) => _displayTournament = displayTournament;
// 	List<String> get lnameArr => _lnameArr;
// 	set lnameArr(List<String> lnameArr) => _lnameArr = lnameArr;
// 	String get color => _color;
// 	set color(String color) => _color = color;
// 	bool get notStarted => _notStarted;
// 	set notStarted(bool notStarted) => _notStarted = notStarted;
// 	Tournament get tournament => _tournament;
// 	set tournament(Tournament tournament) => _tournament = tournament;
// 	Status get status => _status;
// 	set status(Status status) => _status = status;

// 	Fixtures.fromJson(Map<String, dynamic> json) {
// 		_id = json['id'];
// 		_pageUrl = json['pageUrl'];
// 		_opponent = json['opponent'] != null ? new Opponent.fromJson(json['opponent']) : null;
// 		_home = json['home'] != null ? new Opponent.fromJson(json['home']) : null;
// 		_away = json['away'] != null ? new Opponent.fromJson(json['away']) : null;
// 		_displayTournament = json['displayTournament'];
// 		_lnameArr = json['lnameArr'].cast<String>();
// 		_color = json['color'];
// 		_notStarted = json['notStarted'];
// 		_tournament = json['tournament'] != null ? new Tournament.fromJson(json['tournament']) : null;
// 		_status = json['status'] != null ? new Status.fromJson(json['status']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this._id;
// 		data['pageUrl'] = this._pageUrl;
// 		if (this._opponent != null) {
//       data['opponent'] = this._opponent.toJson();
//     }
// 		if (this._home != null) {
//       data['home'] = this._home.toJson();
//     }
// 		if (this._away != null) {
//       data['away'] = this._away.toJson();
//     }
// 		data['displayTournament'] = this._displayTournament;
// 		data['lnameArr'] = this._lnameArr;
// 		data['color'] = this._color;
// 		data['notStarted'] = this._notStarted;
// 		if (this._tournament != null) {
//       data['tournament'] = this._tournament.toJson();
//     }
// 		if (this._status != null) {
//       data['status'] = this._status.toJson();
//     }
// 		return data;
// 	}
// }
