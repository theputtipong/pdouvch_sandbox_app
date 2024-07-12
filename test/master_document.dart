import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'master_document.g.dart';

MasterDocument masterDocumentFromJson(String str) => MasterDocument.fromJson(json.decode(str));

String masterDocumentToJson(MasterDocument data) => json.encode(data.toJson());

@JsonSerializable()
class MasterDocument {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "_product")
  String? product;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "type")
  Discipline? type;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "process")
  Discipline? process;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "deleted")
  dynamic deleted;
  @JsonKey(name: "drawing_number")
  dynamic drawingNumber;
  @JsonKey(name: "cost_impact")
  int? costImpact;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "location")
  LocationClass? location;
  @JsonKey(name: "is_private")
  bool? isPrivate;
  @JsonKey(name: "cycle")
  int? cycle;
  @JsonKey(name: "assignee")
  PurpleAssignee? assignee;
  @JsonKey(name: "assignees")
  List<AssigneeElement>? assignees;
  @JsonKey(name: "manager")
  Manager? manager;
  @JsonKey(name: "distribution_list")
  List<Originator>? distributionList;
  @JsonKey(name: "specification")
  Discipline? specification;
  @JsonKey(name: "discipline")
  Discipline? discipline;
  @JsonKey(name: "schedule_impact")
  int? scheduleImpact;
  @JsonKey(name: "template")
  Template? template;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "project")
  Project? project;
  @JsonKey(name: "responsible_contractor")
  dynamic responsibleContractor;
  @JsonKey(name: "received_from")
  dynamic receivedFrom;
  @JsonKey(name: "is_respondable")
  bool? isRespondable;
  @JsonKey(name: "is_recently_rejected")
  bool? isRecentlyRejected;
  @JsonKey(name: "overrule_markup_list")
  List<dynamic>? overruleMarkupList;
  @JsonKey(name: "created_by")
  CreatedBy? createdBy;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;
  @JsonKey(name: "ball_in_court")
  List<BallInCourt>? ballInCourt;
  @JsonKey(name: "delayed")
  int? delayed;
  @JsonKey(name: "has_file")
  bool? hasFile;
  @JsonKey(name: "files")
  List<MasterDocumentFile>? files;
  @JsonKey(name: "inspection")
  Inspection? inspection;
  @JsonKey(name: "sections")
  List<Priority>? sections;
  @JsonKey(name: "inspection_test_plan")
  dynamic inspectionTestPlan;
  @JsonKey(name: "stat")
  Stat? stat;
  @JsonKey(name: "submittal")
  Submittal? submittal;
  @JsonKey(name: "user_inspection_general")
  List<UserInspectionGeneral>? userInspectionGeneral;
  @JsonKey(name: "from_inspection")
  Discipline? fromInspection;
  @JsonKey(name: "sub_section")
  int? subSection;
  @JsonKey(name: "section")
  Section? section;
  @JsonKey(name: "acknowledge_manager")
  AcknowledgeManager? acknowledgeManager;
  @JsonKey(name: "ball_in_court_date")
  DateTime? ballInCourtDate;
  @JsonKey(name: "categories")
  List<Category>? categories;
  @JsonKey(name: "completion_date")
  dynamic completionDate;
  @JsonKey(name: "custom_field_list")
  List<CustomFieldList>? customFieldList;
  @JsonKey(name: "downtime")
  int? downtime;
  @JsonKey(name: "facility")
  LocationClass? facility;
  @JsonKey(name: "feed_back")
  dynamic feedBack;
  @JsonKey(name: "histories_count")
  int? historiesCount;
  @JsonKey(name: "incomplete_wo")
  List<dynamic>? incompleteWo;
  @JsonKey(name: "invoice_cost")
  int? invoiceCost;
  @JsonKey(name: "is_ball_in_court")
  bool? isBallInCourt;
  @JsonKey(name: "labor_cost")
  int? laborCost;
  @JsonKey(name: "originator")
  Originator? originator;
  @JsonKey(name: "part_cost")
  int? partCost;
  @JsonKey(name: "parts")
  List<dynamic>? parts;
  @JsonKey(name: "plan_mode")
  bool? planMode;
  @JsonKey(name: "pm")
  dynamic pm;
  @JsonKey(name: "priority")
  Priority? priority;
  @JsonKey(name: "state")
  int? state;
  @JsonKey(name: "ticket")
  Ticket? ticket;
  @JsonKey(name: "time_spent")
  int? timeSpent;
  @JsonKey(name: "total_cost")
  int? totalCost;
  @JsonKey(name: "will_create_on")
  dynamic willCreateOn;
  @JsonKey(name: "workflows")
  List<dynamic>? workflows;

  MasterDocument({
    this.id,
    this.product,
    this.title,
    this.type,
    this.status,
    this.process,
    this.code,
    this.dueDate,
    this.order,
    this.deleted,
    this.drawingNumber,
    this.costImpact,
    this.description,
    this.location,
    this.isPrivate,
    this.cycle,
    this.assignee,
    this.assignees,
    this.manager,
    this.distributionList,
    this.specification,
    this.discipline,
    this.scheduleImpact,
    this.template,
    this.createdAt,
    this.updatedAt,
    this.project,
    this.responsibleContractor,
    this.receivedFrom,
    this.isRespondable,
    this.isRecentlyRejected,
    this.overruleMarkupList,
    this.createdBy,
    this.updatedBy,
    this.ballInCourt,
    this.delayed,
    this.hasFile,
    this.files,
    this.inspection,
    this.sections,
    this.inspectionTestPlan,
    this.stat,
    this.submittal,
    this.userInspectionGeneral,
    this.fromInspection,
    this.subSection,
    this.section,
    this.acknowledgeManager,
    this.ballInCourtDate,
    this.categories,
    this.completionDate,
    this.customFieldList,
    this.downtime,
    this.facility,
    this.feedBack,
    this.historiesCount,
    this.incompleteWo,
    this.invoiceCost,
    this.isBallInCourt,
    this.laborCost,
    this.originator,
    this.partCost,
    this.parts,
    this.planMode,
    this.pm,
    this.priority,
    this.state,
    this.ticket,
    this.timeSpent,
    this.totalCost,
    this.willCreateOn,
    this.workflows,
  });

  MasterDocument copyWith({
    int? id,
    String? product,
    String? title,
    Discipline? type,
    Discipline? status,
    Discipline? process,
    String? code,
    DateTime? dueDate,
    int? order,
    dynamic deleted,
    dynamic drawingNumber,
    int? costImpact,
    String? description,
    LocationClass? location,
    bool? isPrivate,
    int? cycle,
    PurpleAssignee? assignee,
    List<AssigneeElement>? assignees,
    Manager? manager,
    List<Originator>? distributionList,
    Discipline? specification,
    Discipline? discipline,
    int? scheduleImpact,
    Template? template,
    DateTime? createdAt,
    DateTime? updatedAt,
    Project? project,
    dynamic responsibleContractor,
    dynamic receivedFrom,
    bool? isRespondable,
    bool? isRecentlyRejected,
    List<dynamic>? overruleMarkupList,
    CreatedBy? createdBy,
    UpdatedBy? updatedBy,
    List<BallInCourt>? ballInCourt,
    int? delayed,
    bool? hasFile,
    List<MasterDocumentFile>? files,
    Inspection? inspection,
    List<Priority>? sections,
    dynamic inspectionTestPlan,
    Stat? stat,
    Submittal? submittal,
    List<UserInspectionGeneral>? userInspectionGeneral,
    Discipline? fromInspection,
    int? subSection,
    Section? section,
    AcknowledgeManager? acknowledgeManager,
    DateTime? ballInCourtDate,
    List<Category>? categories,
    dynamic completionDate,
    List<CustomFieldList>? customFieldList,
    int? downtime,
    LocationClass? facility,
    dynamic feedBack,
    int? historiesCount,
    List<dynamic>? incompleteWo,
    int? invoiceCost,
    bool? isBallInCourt,
    int? laborCost,
    Originator? originator,
    int? partCost,
    List<dynamic>? parts,
    bool? planMode,
    dynamic pm,
    Priority? priority,
    int? state,
    Ticket? ticket,
    int? timeSpent,
    int? totalCost,
    dynamic willCreateOn,
    List<dynamic>? workflows,
  }) =>
      MasterDocument(
        id: id ?? this.id,
        product: product ?? this.product,
        title: title ?? this.title,
        type: type ?? this.type,
        status: status ?? this.status,
        process: process ?? this.process,
        code: code ?? this.code,
        dueDate: dueDate ?? this.dueDate,
        order: order ?? this.order,
        deleted: deleted ?? this.deleted,
        drawingNumber: drawingNumber ?? this.drawingNumber,
        costImpact: costImpact ?? this.costImpact,
        description: description ?? this.description,
        location: location ?? this.location,
        isPrivate: isPrivate ?? this.isPrivate,
        cycle: cycle ?? this.cycle,
        assignee: assignee ?? this.assignee,
        assignees: assignees ?? this.assignees,
        manager: manager ?? this.manager,
        distributionList: distributionList ?? this.distributionList,
        specification: specification ?? this.specification,
        discipline: discipline ?? this.discipline,
        scheduleImpact: scheduleImpact ?? this.scheduleImpact,
        template: template ?? this.template,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        project: project ?? this.project,
        responsibleContractor: responsibleContractor ?? this.responsibleContractor,
        receivedFrom: receivedFrom ?? this.receivedFrom,
        isRespondable: isRespondable ?? this.isRespondable,
        isRecentlyRejected: isRecentlyRejected ?? this.isRecentlyRejected,
        overruleMarkupList: overruleMarkupList ?? this.overruleMarkupList,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        ballInCourt: ballInCourt ?? this.ballInCourt,
        delayed: delayed ?? this.delayed,
        hasFile: hasFile ?? this.hasFile,
        files: files ?? this.files,
        inspection: inspection ?? this.inspection,
        sections: sections ?? this.sections,
        inspectionTestPlan: inspectionTestPlan ?? this.inspectionTestPlan,
        stat: stat ?? this.stat,
        submittal: submittal ?? this.submittal,
        userInspectionGeneral: userInspectionGeneral ?? this.userInspectionGeneral,
        fromInspection: fromInspection ?? this.fromInspection,
        subSection: subSection ?? this.subSection,
        section: section ?? this.section,
        acknowledgeManager: acknowledgeManager ?? this.acknowledgeManager,
        ballInCourtDate: ballInCourtDate ?? this.ballInCourtDate,
        categories: categories ?? this.categories,
        completionDate: completionDate ?? this.completionDate,
        customFieldList: customFieldList ?? this.customFieldList,
        downtime: downtime ?? this.downtime,
        facility: facility ?? this.facility,
        feedBack: feedBack ?? this.feedBack,
        historiesCount: historiesCount ?? this.historiesCount,
        incompleteWo: incompleteWo ?? this.incompleteWo,
        invoiceCost: invoiceCost ?? this.invoiceCost,
        isBallInCourt: isBallInCourt ?? this.isBallInCourt,
        laborCost: laborCost ?? this.laborCost,
        originator: originator ?? this.originator,
        partCost: partCost ?? this.partCost,
        parts: parts ?? this.parts,
        planMode: planMode ?? this.planMode,
        pm: pm ?? this.pm,
        priority: priority ?? this.priority,
        state: state ?? this.state,
        ticket: ticket ?? this.ticket,
        timeSpent: timeSpent ?? this.timeSpent,
        totalCost: totalCost ?? this.totalCost,
        willCreateOn: willCreateOn ?? this.willCreateOn,
        workflows: workflows ?? this.workflows,
      );

  factory MasterDocument.fromJson(Map<String, dynamic> json) => _$MasterDocumentFromJson(json);

  Map<String, dynamic> toJson() => _$MasterDocumentToJson(this);
}

@JsonSerializable()
class AcknowledgeManager {
  @JsonKey(name: "document_manager")
  DocumentManager? documentManager;
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "response")
  String? response;
  @JsonKey(name: "response_date")
  DateTime? responseDate;
  @JsonKey(name: "files")
  List<dynamic>? files;

  AcknowledgeManager({
    this.documentManager,
    this.status,
    this.response,
    this.responseDate,
    this.files,
  });

  AcknowledgeManager copyWith({
    DocumentManager? documentManager,
    int? status,
    String? response,
    DateTime? responseDate,
    List<dynamic>? files,
  }) =>
      AcknowledgeManager(
        documentManager: documentManager ?? this.documentManager,
        status: status ?? this.status,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        files: files ?? this.files,
      );

  factory AcknowledgeManager.fromJson(Map<String, dynamic> json) => _$AcknowledgeManagerFromJson(json);

  Map<String, dynamic> toJson() => _$AcknowledgeManagerToJson(this);
}

@JsonSerializable()
class DocumentManager {
  @JsonKey(name: "mode")
  int? mode;
  @JsonKey(name: "responder")
  List<Originator>? responder;
  @JsonKey(name: "role_responder")
  dynamic roleResponder;
  @JsonKey(name: "group_responder")
  dynamic groupResponder;
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "responded_date")
  dynamic respondedDate;
  @JsonKey(name: "responsed_by")
  Originator? responsedBy;
  @JsonKey(name: "response")
  dynamic response;
  @JsonKey(name: "manager_round")
  int? managerRound;
  @JsonKey(name: "manager_cycle")
  int? managerCycle;
  @JsonKey(name: "is_latest")
  bool? isLatest;
  @JsonKey(name: "duration")
  int? duration;
  @JsonKey(name: "files")
  List<dynamic>? files;

  DocumentManager({
    this.mode,
    this.responder,
    this.roleResponder,
    this.groupResponder,
    this.status,
    this.dueDate,
    this.respondedDate,
    this.responsedBy,
    this.response,
    this.managerRound,
    this.managerCycle,
    this.isLatest,
    this.duration,
    this.files,
  });

  DocumentManager copyWith({
    int? mode,
    List<Originator>? responder,
    dynamic roleResponder,
    dynamic groupResponder,
    int? status,
    DateTime? dueDate,
    dynamic respondedDate,
    Originator? responsedBy,
    dynamic response,
    int? managerRound,
    int? managerCycle,
    bool? isLatest,
    int? duration,
    List<dynamic>? files,
  }) =>
      DocumentManager(
        mode: mode ?? this.mode,
        responder: responder ?? this.responder,
        roleResponder: roleResponder ?? this.roleResponder,
        groupResponder: groupResponder ?? this.groupResponder,
        status: status ?? this.status,
        dueDate: dueDate ?? this.dueDate,
        respondedDate: respondedDate ?? this.respondedDate,
        responsedBy: responsedBy ?? this.responsedBy,
        response: response ?? this.response,
        managerRound: managerRound ?? this.managerRound,
        managerCycle: managerCycle ?? this.managerCycle,
        isLatest: isLatest ?? this.isLatest,
        duration: duration ?? this.duration,
        files: files ?? this.files,
      );

  factory DocumentManager.fromJson(Map<String, dynamic> json) => _$DocumentManagerFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentManagerToJson(this);
}

@JsonSerializable()
class Originator {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "shortcut_name")
  String? shortcutName;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "position")
  String? position;
  @JsonKey(name: "company")
  Company? company;
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "is_notification")
  bool? isNotification;
  @JsonKey(name: "unit_cost")
  int? unitCost;
  @JsonKey(name: "last_login")
  DateTime? lastLogin;
  @JsonKey(name: "organization")
  Organization? organization;
  @JsonKey(name: "permission")
  int? permission;
  @JsonKey(name: "is_superuser")
  bool? isSuperuser;
  @JsonKey(name: "status")
  int? status;

  Originator({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.shortcutName,
    this.email,
    this.position,
    this.company,
    this.phone,
    this.isNotification,
    this.unitCost,
    this.lastLogin,
    this.organization,
    this.permission,
    this.isSuperuser,
    this.status,
  });

  Originator copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? fullName,
    String? shortcutName,
    String? email,
    String? position,
    Company? company,
    String? phone,
    bool? isNotification,
    int? unitCost,
    DateTime? lastLogin,
    Organization? organization,
    int? permission,
    bool? isSuperuser,
    int? status,
  }) =>
      Originator(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        shortcutName: shortcutName ?? this.shortcutName,
        email: email ?? this.email,
        position: position ?? this.position,
        company: company ?? this.company,
        phone: phone ?? this.phone,
        isNotification: isNotification ?? this.isNotification,
        unitCost: unitCost ?? this.unitCost,
        lastLogin: lastLogin ?? this.lastLogin,
        organization: organization ?? this.organization,
        permission: permission ?? this.permission,
        isSuperuser: isSuperuser ?? this.isSuperuser,
        status: status ?? this.status,
      );

  factory Originator.fromJson(Map<String, dynamic> json) => _$OriginatorFromJson(json);

  Map<String, dynamic> toJson() => _$OriginatorToJson(this);
}

@JsonSerializable()
class Company {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "service")
  dynamic service;
  @JsonKey(name: "start")
  dynamic start;
  @JsonKey(name: "end")
  dynamic end;
  @JsonKey(name: "description")
  dynamic description;
  @JsonKey(name: "name")
  dynamic name;
  @JsonKey(name: "email")
  dynamic email;
  @JsonKey(name: "phone")
  dynamic phone;
  @JsonKey(name: "country")
  dynamic country;
  @JsonKey(name: "address")
  dynamic address;
  @JsonKey(name: "city")
  dynamic city;
  @JsonKey(name: "province")
  dynamic province;
  @JsonKey(name: "postcode")
  dynamic postcode;
  @JsonKey(name: "timezone")
  dynamic timezone;
  @JsonKey(name: "level")
  int? level;
  @JsonKey(name: "organization")
  Organization? organization;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "user_count")
  int? userCount;

  Company({
    this.id,
    this.code,
    this.title,
    this.service,
    this.start,
    this.end,
    this.description,
    this.name,
    this.email,
    this.phone,
    this.country,
    this.address,
    this.city,
    this.province,
    this.postcode,
    this.timezone,
    this.level,
    this.organization,
    this.image,
    this.userCount,
  });

  Company copyWith({
    int? id,
    String? code,
    String? title,
    dynamic service,
    dynamic start,
    dynamic end,
    dynamic description,
    dynamic name,
    dynamic email,
    dynamic phone,
    dynamic country,
    dynamic address,
    dynamic city,
    dynamic province,
    dynamic postcode,
    dynamic timezone,
    int? level,
    Organization? organization,
    String? image,
    int? userCount,
  }) =>
      Company(
        id: id ?? this.id,
        code: code ?? this.code,
        title: title ?? this.title,
        service: service ?? this.service,
        start: start ?? this.start,
        end: end ?? this.end,
        description: description ?? this.description,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        address: address ?? this.address,
        city: city ?? this.city,
        province: province ?? this.province,
        postcode: postcode ?? this.postcode,
        timezone: timezone ?? this.timezone,
        level: level ?? this.level,
        organization: organization ?? this.organization,
        image: image ?? this.image,
        userCount: userCount ?? this.userCount,
      );

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class Organization {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  Title? title;
  @JsonKey(name: "code")
  LastName? code;
  @JsonKey(name: "logo")
  dynamic logo;
  @JsonKey(name: "storage_usage")
  int? storageUsage;

  Organization({
    this.id,
    this.title,
    this.code,
    this.logo,
    this.storageUsage,
  });

  Organization copyWith({
    int? id,
    Title? title,
    LastName? code,
    dynamic logo,
    int? storageUsage,
  }) =>
      Organization(
        id: id ?? this.id,
        title: title ?? this.title,
        code: code ?? this.code,
        logo: logo ?? this.logo,
        storageUsage: storageUsage ?? this.storageUsage,
      );

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

enum LastName {
  @JsonValue("SWD")
  SWD
}

final lastNameValues = EnumValues({"SWD": LastName.SWD});

enum Title {
  @JsonValue("SwiftDynamics")
  SWIFT_DYNAMICS
}

final titleValues = EnumValues({"SwiftDynamics": Title.SWIFT_DYNAMICS});

@JsonSerializable()
class PurpleAssignee {
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "response")
  dynamic response;
  @JsonKey(name: "response_date")
  dynamic responseDate;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "user")
  Discipline? user;
  @JsonKey(name: "work_order")
  Discipline? workOrder;

  PurpleAssignee({
    this.dueDate,
    this.files,
    this.id,
    this.response,
    this.responseDate,
    this.status,
    this.user,
    this.workOrder,
  });

  PurpleAssignee copyWith({
    DateTime? dueDate,
    List<dynamic>? files,
    int? id,
    dynamic response,
    dynamic responseDate,
    Discipline? status,
    Discipline? user,
    Discipline? workOrder,
  }) =>
      PurpleAssignee(
        dueDate: dueDate ?? this.dueDate,
        files: files ?? this.files,
        id: id ?? this.id,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        status: status ?? this.status,
        user: user ?? this.user,
        workOrder: workOrder ?? this.workOrder,
      );

  factory PurpleAssignee.fromJson(Map<String, dynamic> json) => _$PurpleAssigneeFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleAssigneeToJson(this);
}

@JsonSerializable()
class Discipline {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "label")
  String? label;

  Discipline({
    this.id,
    this.label,
  });

  Discipline copyWith({
    int? id,
    String? label,
  }) =>
      Discipline(
        id: id ?? this.id,
        label: label ?? this.label,
      );

  factory Discipline.fromJson(Map<String, dynamic> json) => _$DisciplineFromJson(json);

  Map<String, dynamic> toJson() => _$DisciplineToJson(this);
}

@JsonSerializable()
class AssigneeElement {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "state")
  Discipline? state;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "user")
  UpdatedBy? user;
  @JsonKey(name: "document")
  Document? document;
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "is_all_sub_assignee_done")
  bool? isAllSubAssigneeDone;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "response")
  dynamic response;
  @JsonKey(name: "response_date")
  dynamic responseDate;
  @JsonKey(name: "round")
  int? round;
  @JsonKey(name: "cycle")
  int? cycle;
  @JsonKey(name: "rejected_to")
  String? rejectedTo;
  @JsonKey(name: "is_latest")
  bool? isLatest;
  @JsonKey(name: "is_open")
  bool? isOpen;
  @JsonKey(name: "is_official")
  bool? isOfficial;
  @JsonKey(name: "created_by")
  UpdatedBy? createdBy;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;

  AssigneeElement({
    this.id,
    this.state,
    this.status,
    this.user,
    this.document,
    this.files,
    this.isAllSubAssigneeDone,
    this.createdAt,
    this.updatedAt,
    this.order,
    this.dueDate,
    this.response,
    this.responseDate,
    this.round,
    this.cycle,
    this.rejectedTo,
    this.isLatest,
    this.isOpen,
    this.isOfficial,
    this.createdBy,
    this.updatedBy,
  });

  AssigneeElement copyWith({
    int? id,
    Discipline? state,
    Discipline? status,
    UpdatedBy? user,
    Document? document,
    List<dynamic>? files,
    bool? isAllSubAssigneeDone,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? order,
    DateTime? dueDate,
    dynamic response,
    dynamic responseDate,
    int? round,
    int? cycle,
    String? rejectedTo,
    bool? isLatest,
    bool? isOpen,
    bool? isOfficial,
    UpdatedBy? createdBy,
    UpdatedBy? updatedBy,
  }) =>
      AssigneeElement(
        id: id ?? this.id,
        state: state ?? this.state,
        status: status ?? this.status,
        user: user ?? this.user,
        document: document ?? this.document,
        files: files ?? this.files,
        isAllSubAssigneeDone: isAllSubAssigneeDone ?? this.isAllSubAssigneeDone,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        order: order ?? this.order,
        dueDate: dueDate ?? this.dueDate,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        round: round ?? this.round,
        cycle: cycle ?? this.cycle,
        rejectedTo: rejectedTo ?? this.rejectedTo,
        isLatest: isLatest ?? this.isLatest,
        isOpen: isOpen ?? this.isOpen,
        isOfficial: isOfficial ?? this.isOfficial,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
      );

  factory AssigneeElement.fromJson(Map<String, dynamic> json) => _$AssigneeElementFromJson(json);

  Map<String, dynamic> toJson() => _$AssigneeElementToJson(this);
}

@JsonSerializable()
class UpdatedBy {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "full_name")
  String? fullName;

  UpdatedBy({
    this.id,
    this.fullName,
  });

  UpdatedBy copyWith({
    int? id,
    String? fullName,
  }) =>
      UpdatedBy(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
      );

  factory UpdatedBy.fromJson(Map<String, dynamic> json) => _$UpdatedByFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedByToJson(this);
}

@JsonSerializable()
class Document {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "code")
  String? code;

  Document({
    this.id,
    this.code,
  });

  Document copyWith({
    int? id,
    String? code,
  }) =>
      Document(
        id: id ?? this.id,
        code: code ?? this.code,
      );

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}

@JsonSerializable()
class BallInCourt {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "_comment")
  String? comment;
  @JsonKey(name: "full_name")
  String? fullName;

  BallInCourt({
    this.id,
    this.comment,
    this.fullName,
  });

  BallInCourt copyWith({
    int? id,
    String? comment,
    String? fullName,
  }) =>
      BallInCourt(
        id: id ?? this.id,
        comment: comment ?? this.comment,
        fullName: fullName ?? this.fullName,
      );

  factory BallInCourt.fromJson(Map<String, dynamic> json) => _$BallInCourtFromJson(json);

  Map<String, dynamic> toJson() => _$BallInCourtToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;

  Category({
    this.code,
    this.createdAt,
    this.id,
    this.title,
    this.updatedAt,
  });

  Category copyWith({
    String? code,
    DateTime? createdAt,
    int? id,
    String? title,
    DateTime? updatedAt,
  }) =>
      Category(
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        title: title ?? this.title,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class CreatedBy {
  @JsonKey(name: "_comment")
  String? comment;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "company")
  Company? company;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "is_accept_terms")
  bool? isAcceptTerms;
  @JsonKey(name: "last_name")
  LastName? lastName;
  @JsonKey(name: "organization")
  Organization? organization;
  @JsonKey(name: "permission")
  int? permission;
  @JsonKey(name: "position")
  String? position;
  @JsonKey(name: "shortcut_name")
  String? shortcutName;
  @JsonKey(name: "unit_cost")
  int? unitCost;
  @JsonKey(name: "username")
  String? username;

  CreatedBy({
    this.comment,
    this.id,
    this.fullName,
    this.company,
    this.email,
    this.firstName,
    this.isAcceptTerms,
    this.lastName,
    this.organization,
    this.permission,
    this.position,
    this.shortcutName,
    this.unitCost,
    this.username,
  });

  CreatedBy copyWith({
    String? comment,
    int? id,
    String? fullName,
    Company? company,
    String? email,
    String? firstName,
    bool? isAcceptTerms,
    LastName? lastName,
    Organization? organization,
    int? permission,
    String? position,
    String? shortcutName,
    int? unitCost,
    String? username,
  }) =>
      CreatedBy(
        comment: comment ?? this.comment,
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        company: company ?? this.company,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        isAcceptTerms: isAcceptTerms ?? this.isAcceptTerms,
        lastName: lastName ?? this.lastName,
        organization: organization ?? this.organization,
        permission: permission ?? this.permission,
        position: position ?? this.position,
        shortcutName: shortcutName ?? this.shortcutName,
        unitCost: unitCost ?? this.unitCost,
        username: username ?? this.username,
      );

  factory CreatedBy.fromJson(Map<String, dynamic> json) => _$CreatedByFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
}

@JsonSerializable()
class CustomFieldList {
  @JsonKey(name: "custom_field")
  CustomField? customField;
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "value")
  String? value;
  @JsonKey(name: "value_id")
  int? valueId;

  CustomFieldList({
    this.customField,
    this.files,
    this.value,
    this.valueId,
  });

  CustomFieldList copyWith({
    CustomField? customField,
    List<dynamic>? files,
    String? value,
    int? valueId,
  }) =>
      CustomFieldList(
        customField: customField ?? this.customField,
        files: files ?? this.files,
        value: value ?? this.value,
        valueId: valueId ?? this.valueId,
      );

  factory CustomFieldList.fromJson(Map<String, dynamic> json) => _$CustomFieldListFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldListToJson(this);
}

@JsonSerializable()
class CustomField {
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "field_id")
  int? fieldId;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "value_option")
  int? valueOption;
  @JsonKey(name: "value_type")
  int? valueType;

  CustomField({
    this.createdBy,
    this.fieldId,
    this.title,
    this.valueOption,
    this.valueType,
  });

  CustomField copyWith({
    String? createdBy,
    int? fieldId,
    String? title,
    int? valueOption,
    int? valueType,
  }) =>
      CustomField(
        createdBy: createdBy ?? this.createdBy,
        fieldId: fieldId ?? this.fieldId,
        title: title ?? this.title,
        valueOption: valueOption ?? this.valueOption,
        valueType: valueType ?? this.valueType,
      );

  factory CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldToJson(this);
}

@JsonSerializable()
class LocationClass {
  @JsonKey(name: "calculation")
  dynamic calculation;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "custom_field_list")
  List<dynamic>? customFieldList;
  @JsonKey(name: "display_name")
  String? displayName;
  @JsonKey(name: "facility")
  FacilityFacility? facility;
  @JsonKey(name: "have_child")
  bool? haveChild;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "parent")
  dynamic parent;
  @JsonKey(name: "parents")
  List<dynamic>? parents;
  @JsonKey(name: "setting")
  dynamic setting;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "url")
  String? url;

  LocationClass({
    this.calculation,
    this.createdAt,
    this.customFieldList,
    this.displayName,
    this.facility,
    this.haveChild,
    this.id,
    this.image,
    this.parent,
    this.parents,
    this.setting,
    this.title,
    this.updatedAt,
    this.url,
  });

  LocationClass copyWith({
    dynamic calculation,
    DateTime? createdAt,
    List<dynamic>? customFieldList,
    String? displayName,
    FacilityFacility? facility,
    bool? haveChild,
    int? id,
    String? image,
    dynamic parent,
    List<dynamic>? parents,
    dynamic setting,
    String? title,
    DateTime? updatedAt,
    String? url,
  }) =>
      LocationClass(
        calculation: calculation ?? this.calculation,
        createdAt: createdAt ?? this.createdAt,
        customFieldList: customFieldList ?? this.customFieldList,
        displayName: displayName ?? this.displayName,
        facility: facility ?? this.facility,
        haveChild: haveChild ?? this.haveChild,
        id: id ?? this.id,
        image: image ?? this.image,
        parent: parent ?? this.parent,
        parents: parents ?? this.parents,
        setting: setting ?? this.setting,
        title: title ?? this.title,
        updatedAt: updatedAt ?? this.updatedAt,
        url: url ?? this.url,
      );

  factory LocationClass.fromJson(Map<String, dynamic> json) => _$LocationClassFromJson(json);

  Map<String, dynamic> toJson() => _$LocationClassToJson(this);
}

@JsonSerializable()
class FacilityFacility {
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "currency")
  dynamic currency;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "time_zone")
  String? timeZone;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;

  FacilityFacility({
    this.address,
    this.code,
    this.country,
    this.createdAt,
    this.currency,
    this.description,
    this.id,
    this.image,
    this.timeZone,
    this.title,
    this.updatedAt,
  });

  FacilityFacility copyWith({
    String? address,
    String? code,
    String? country,
    DateTime? createdAt,
    dynamic currency,
    String? description,
    int? id,
    String? image,
    String? timeZone,
    String? title,
    DateTime? updatedAt,
  }) =>
      FacilityFacility(
        address: address ?? this.address,
        code: code ?? this.code,
        country: country ?? this.country,
        createdAt: createdAt ?? this.createdAt,
        currency: currency ?? this.currency,
        description: description ?? this.description,
        id: id ?? this.id,
        image: image ?? this.image,
        timeZone: timeZone ?? this.timeZone,
        title: title ?? this.title,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory FacilityFacility.fromJson(Map<String, dynamic> json) => _$FacilityFacilityFromJson(json);

  Map<String, dynamic> toJson() => _$FacilityFacilityToJson(this);
}

@JsonSerializable()
class MasterDocumentFile {
  @JsonKey(name: "document_file_id")
  int? documentFileId;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "path")
  String? path;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "ticket_id")
  int? ticketId;

  MasterDocumentFile({
    this.documentFileId,
    this.id,
    this.path,
    this.title,
    this.type,
    this.url,
    this.ticketId,
  });

  MasterDocumentFile copyWith({
    int? documentFileId,
    int? id,
    String? path,
    String? title,
    String? type,
    String? url,
    int? ticketId,
  }) =>
      MasterDocumentFile(
        documentFileId: documentFileId ?? this.documentFileId,
        id: id ?? this.id,
        path: path ?? this.path,
        title: title ?? this.title,
        type: type ?? this.type,
        url: url ?? this.url,
        ticketId: ticketId ?? this.ticketId,
      );

  factory MasterDocumentFile.fromJson(Map<String, dynamic> json) => _$MasterDocumentFileFromJson(json);

  Map<String, dynamic> toJson() => _$MasterDocumentFileToJson(this);
}

@JsonSerializable()
class Inspection {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user")
  UpdatedBy? user;
  @JsonKey(name: "users")
  List<UpdatedBy>? users;
  @JsonKey(name: "response_user")
  dynamic responseUser;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "response")
  dynamic response;
  @JsonKey(name: "response_date")
  dynamic responseDate;
  @JsonKey(name: "round")
  int? round;
  @JsonKey(name: "cycle")
  int? cycle;
  @JsonKey(name: "is_latest")
  bool? isLatest;
  @JsonKey(name: "stat")
  Stat? stat;
  @JsonKey(name: "score")
  int? score;
  @JsonKey(name: "max_score")
  int? maxScore;
  @JsonKey(name: "created_by")
  UpdatedBy? createdBy;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;
  @JsonKey(name: "form")
  int? form;
  @JsonKey(name: "document")
  Document? document;
  @JsonKey(name: "form_type")
  int? formType;
  @JsonKey(name: "files")
  List<dynamic>? files;

  Inspection({
    this.id,
    this.user,
    this.users,
    this.responseUser,
    this.createdAt,
    this.updatedAt,
    this.dueDate,
    this.status,
    this.response,
    this.responseDate,
    this.round,
    this.cycle,
    this.isLatest,
    this.stat,
    this.score,
    this.maxScore,
    this.createdBy,
    this.updatedBy,
    this.form,
    this.document,
    this.formType,
    this.files,
  });

  Inspection copyWith({
    int? id,
    UpdatedBy? user,
    List<UpdatedBy>? users,
    dynamic responseUser,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? dueDate,
    Discipline? status,
    dynamic response,
    dynamic responseDate,
    int? round,
    int? cycle,
    bool? isLatest,
    Stat? stat,
    int? score,
    int? maxScore,
    UpdatedBy? createdBy,
    UpdatedBy? updatedBy,
    int? form,
    Document? document,
    int? formType,
    List<dynamic>? files,
  }) =>
      Inspection(
        id: id ?? this.id,
        user: user ?? this.user,
        users: users ?? this.users,
        responseUser: responseUser ?? this.responseUser,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        dueDate: dueDate ?? this.dueDate,
        status: status ?? this.status,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        round: round ?? this.round,
        cycle: cycle ?? this.cycle,
        isLatest: isLatest ?? this.isLatest,
        stat: stat ?? this.stat,
        score: score ?? this.score,
        maxScore: maxScore ?? this.maxScore,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        form: form ?? this.form,
        document: document ?? this.document,
        formType: formType ?? this.formType,
        files: files ?? this.files,
      );

  factory Inspection.fromJson(Map<String, dynamic> json) => _$InspectionFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionToJson(this);
}

@JsonSerializable()
class Stat {
  @JsonKey(name: "n/a")
  int? nA;
  @JsonKey(name: "type")
  int? type;
  @JsonKey(name: "total")
  int? total;
  @JsonKey(name: "pending")
  int? pending;
  @JsonKey(name: "respond")
  int? respond;

  Stat({
    this.nA,
    this.type,
    this.total,
    this.pending,
    this.respond,
  });

  Stat copyWith({
    int? nA,
    int? type,
    int? total,
    int? pending,
    int? respond,
  }) =>
      Stat(
        nA: nA ?? this.nA,
        type: type ?? this.type,
        total: total ?? this.total,
        pending: pending ?? this.pending,
        respond: respond ?? this.respond,
      );

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  Map<String, dynamic> toJson() => _$StatToJson(this);
}

@JsonSerializable()
class Manager {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user")
  User? user;
  @JsonKey(name: "work_order")
  Discipline? workOrder;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "response")
  dynamic response;
  @JsonKey(name: "response_date")
  dynamic responseDate;
  @JsonKey(name: "round")
  int? round;
  @JsonKey(name: "cycle")
  int? cycle;
  @JsonKey(name: "is_latest")
  bool? isLatest;
  @JsonKey(name: "is_official")
  bool? isOfficial;
  @JsonKey(name: "rejected_to")
  dynamic rejectedTo;
  @JsonKey(name: "created_by")
  UpdatedBy? createdBy;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;
  @JsonKey(name: "document")
  Document? document;
  @JsonKey(name: "duration")
  int? duration;
  @JsonKey(name: "group_responder")
  dynamic groupResponder;
  @JsonKey(name: "manager_cycle")
  int? managerCycle;
  @JsonKey(name: "manager_round")
  int? managerRound;
  @JsonKey(name: "mode")
  int? mode;
  @JsonKey(name: "responded_date")
  dynamic respondedDate;
  @JsonKey(name: "responder")
  List<Originator>? responder;
  @JsonKey(name: "responsed_by")
  Originator? responsedBy;
  @JsonKey(name: "role_responder")
  dynamic roleResponder;

  Manager({
    this.id,
    this.user,
    this.workOrder,
    this.status,
    this.files,
    this.createdAt,
    this.updatedAt,
    this.dueDate,
    this.response,
    this.responseDate,
    this.round,
    this.cycle,
    this.isLatest,
    this.isOfficial,
    this.rejectedTo,
    this.createdBy,
    this.updatedBy,
    this.document,
    this.duration,
    this.groupResponder,
    this.managerCycle,
    this.managerRound,
    this.mode,
    this.respondedDate,
    this.responder,
    this.responsedBy,
    this.roleResponder,
  });

  Manager copyWith({
    int? id,
    User? user,
    Discipline? workOrder,
    Discipline? status,
    List<dynamic>? files,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? dueDate,
    dynamic response,
    dynamic responseDate,
    int? round,
    int? cycle,
    bool? isLatest,
    bool? isOfficial,
    dynamic rejectedTo,
    UpdatedBy? createdBy,
    UpdatedBy? updatedBy,
    Document? document,
    int? duration,
    dynamic groupResponder,
    int? managerCycle,
    int? managerRound,
    int? mode,
    dynamic respondedDate,
    List<Originator>? responder,
    Originator? responsedBy,
    dynamic roleResponder,
  }) =>
      Manager(
        id: id ?? this.id,
        user: user ?? this.user,
        workOrder: workOrder ?? this.workOrder,
        status: status ?? this.status,
        files: files ?? this.files,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        dueDate: dueDate ?? this.dueDate,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        round: round ?? this.round,
        cycle: cycle ?? this.cycle,
        isLatest: isLatest ?? this.isLatest,
        isOfficial: isOfficial ?? this.isOfficial,
        rejectedTo: rejectedTo ?? this.rejectedTo,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        document: document ?? this.document,
        duration: duration ?? this.duration,
        groupResponder: groupResponder ?? this.groupResponder,
        managerCycle: managerCycle ?? this.managerCycle,
        managerRound: managerRound ?? this.managerRound,
        mode: mode ?? this.mode,
        respondedDate: respondedDate ?? this.respondedDate,
        responder: responder ?? this.responder,
        responsedBy: responsedBy ?? this.responsedBy,
        roleResponder: roleResponder ?? this.roleResponder,
      );

  factory Manager.fromJson(Map<String, dynamic> json) => _$ManagerFromJson(json);

  Map<String, dynamic> toJson() => _$ManagerToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "full_name")
  String? fullName;
  @JsonKey(name: "label")
  String? label;

  User({
    this.id,
    this.fullName,
    this.label,
  });

  User copyWith({
    int? id,
    String? fullName,
    String? label,
  }) =>
      User(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        label: label ?? this.label,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Priority {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "style")
  String? style;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "sub_sections")
  List<SubSectionElement>? subSections;

  Priority({
    this.id,
    this.order,
    this.style,
    this.title,
    this.subSections,
  });

  Priority copyWith({
    int? id,
    int? order,
    String? style,
    String? title,
    List<SubSectionElement>? subSections,
  }) =>
      Priority(
        id: id ?? this.id,
        order: order ?? this.order,
        style: style ?? this.style,
        title: title ?? this.title,
        subSections: subSections ?? this.subSections,
      );

  factory Priority.fromJson(Map<String, dynamic> json) => _$PriorityFromJson(json);

  Map<String, dynamic> toJson() => _$PriorityToJson(this);
}

@JsonSerializable()
class SubSectionElement {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "deleted")
  dynamic deleted;
  @JsonKey(name: "deleted_by_cascade")
  bool? deletedByCascade;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "type")
  Type? type;
  @JsonKey(name: "created_by")
  int? createdBy;
  @JsonKey(name: "updated_by")
  int? updatedBy;
  @JsonKey(name: "section")
  int? section;
  @JsonKey(name: "comments")
  List<Comment>? comments;
  @JsonKey(name: "response")
  Response? response;
  @JsonKey(name: "files")
  List<SubSectionFile>? files;
  @JsonKey(name: "work_orders")
  List<WorkOrder>? workOrders;

  SubSectionElement({
    this.id,
    this.deleted,
    this.deletedByCascade,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.order,
    this.type,
    this.createdBy,
    this.updatedBy,
    this.section,
    this.comments,
    this.response,
    this.files,
    this.workOrders,
  });

  SubSectionElement copyWith({
    int? id,
    dynamic deleted,
    bool? deletedByCascade,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    String? description,
    int? order,
    Type? type,
    int? createdBy,
    int? updatedBy,
    int? section,
    List<Comment>? comments,
    Response? response,
    List<SubSectionFile>? files,
    List<WorkOrder>? workOrders,
  }) =>
      SubSectionElement(
        id: id ?? this.id,
        deleted: deleted ?? this.deleted,
        deletedByCascade: deletedByCascade ?? this.deletedByCascade,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        description: description ?? this.description,
        order: order ?? this.order,
        type: type ?? this.type,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        section: section ?? this.section,
        comments: comments ?? this.comments,
        response: response ?? this.response,
        files: files ?? this.files,
        workOrders: workOrders ?? this.workOrders,
      );

  factory SubSectionElement.fromJson(Map<String, dynamic> json) => _$SubSectionElementFromJson(json);

  Map<String, dynamic> toJson() => _$SubSectionElementToJson(this);
}

@JsonSerializable()
class Comment {
  @JsonKey(name: "comment")
  String? comment;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "created_by")
  UpdatedBy? createdBy;
  @JsonKey(name: "file")
  dynamic file;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "sub_section")
  int? subSection;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;

  Comment({
    this.comment,
    this.createdAt,
    this.createdBy,
    this.file,
    this.id,
    this.subSection,
    this.updatedAt,
    this.updatedBy,
  });

  Comment copyWith({
    String? comment,
    DateTime? createdAt,
    UpdatedBy? createdBy,
    dynamic file,
    int? id,
    int? subSection,
    DateTime? updatedAt,
    UpdatedBy? updatedBy,
  }) =>
      Comment(
        comment: comment ?? this.comment,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        file: file ?? this.file,
        id: id ?? this.id,
        subSection: subSection ?? this.subSection,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
      );

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class SubSectionFile {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "uuid")
  String? uuid;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "path")
  String? path;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "thumbnail")
  dynamic thumbnail;
  @JsonKey(name: "markup")
  dynamic markup;
  @JsonKey(name: "form")
  dynamic form;

  SubSectionFile({
    this.id,
    this.uuid,
    this.title,
    this.path,
    this.url,
    this.type,
    this.thumbnail,
    this.markup,
    this.form,
  });

  SubSectionFile copyWith({
    int? id,
    String? uuid,
    String? title,
    String? path,
    String? url,
    String? type,
    dynamic thumbnail,
    dynamic markup,
    dynamic form,
  }) =>
      SubSectionFile(
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        title: title ?? this.title,
        path: path ?? this.path,
        url: url ?? this.url,
        type: type ?? this.type,
        thumbnail: thumbnail ?? this.thumbnail,
        markup: markup ?? this.markup,
        form: form ?? this.form,
      );

  factory SubSectionFile.fromJson(Map<String, dynamic> json) => _$SubSectionFileFromJson(json);

  Map<String, dynamic> toJson() => _$SubSectionFileToJson(this);
}

@JsonSerializable()
class Response {
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "result")
  String? result;

  Response({
    this.files,
    this.id,
    this.result,
  });

  Response copyWith({
    List<dynamic>? files,
    int? id,
    String? result,
  }) =>
      Response(
        files: files ?? this.files,
        id: id ?? this.id,
        result: result ?? this.result,
      );

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

@JsonSerializable()
class Type {
  @JsonKey(name: "choices")
  List<Choice>? choices;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "is_multiselect")
  bool? isMultiselect;
  @JsonKey(name: "is_score")
  bool? isScore;
  @JsonKey(name: "response_type")
  int? responseType;

  Type({
    this.choices,
    this.id,
    this.isMultiselect,
    this.isScore,
    this.responseType,
  });

  Type copyWith({
    List<Choice>? choices,
    int? id,
    bool? isMultiselect,
    bool? isScore,
    int? responseType,
  }) =>
      Type(
        choices: choices ?? this.choices,
        id: id ?? this.id,
        isMultiselect: isMultiselect ?? this.isMultiselect,
        isScore: isScore ?? this.isScore,
        responseType: responseType ?? this.responseType,
      );

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}

@JsonSerializable()
class Choice {
  @JsonKey(name: "color")
  String? color;
  @JsonKey(name: "label")
  String? label;

  Choice({
    this.color,
    this.label,
  });

  Choice copyWith({
    String? color,
    String? label,
  }) =>
      Choice(
        color: color ?? this.color,
        label: label ?? this.label,
      );

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);
}

@JsonSerializable()
class WorkOrder {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "defect_type")
  dynamic defectType;
  @JsonKey(name: "process")
  int? process;
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "has_work_order_permission")
  bool? hasWorkOrderPermission;

  WorkOrder({
    this.id,
    this.code,
    this.title,
    this.defectType,
    this.process,
    this.status,
    this.dueDate,
    this.hasWorkOrderPermission,
  });

  WorkOrder copyWith({
    int? id,
    String? code,
    String? title,
    dynamic defectType,
    int? process,
    int? status,
    DateTime? dueDate,
    bool? hasWorkOrderPermission,
  }) =>
      WorkOrder(
        id: id ?? this.id,
        code: code ?? this.code,
        title: title ?? this.title,
        defectType: defectType ?? this.defectType,
        process: process ?? this.process,
        status: status ?? this.status,
        dueDate: dueDate ?? this.dueDate,
        hasWorkOrderPermission: hasWorkOrderPermission ?? this.hasWorkOrderPermission,
      );

  factory WorkOrder.fromJson(Map<String, dynamic> json) => _$WorkOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderToJson(this);
}

@JsonSerializable()
class Project {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "company")
  Project? company;

  Project({
    this.id,
    this.code,
    this.title,
    this.company,
  });

  Project copyWith({
    int? id,
    String? code,
    String? title,
    Project? company,
  }) =>
      Project(
        id: id ?? this.id,
        code: code ?? this.code,
        title: title ?? this.title,
        company: company ?? this.company,
      );

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class Section {
  @JsonKey(name: "document")
  int? document;
  @JsonKey(name: "has_inspection_permission")
  bool? hasInspectionPermission;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "sub_section")
  PurpleSubSection? subSection;
  @JsonKey(name: "title")
  String? title;

  Section({
    this.document,
    this.hasInspectionPermission,
    this.id,
    this.order,
    this.subSection,
    this.title,
  });

  Section copyWith({
    int? document,
    bool? hasInspectionPermission,
    int? id,
    int? order,
    PurpleSubSection? subSection,
    String? title,
  }) =>
      Section(
        document: document ?? this.document,
        hasInspectionPermission: hasInspectionPermission ?? this.hasInspectionPermission,
        id: id ?? this.id,
        order: order ?? this.order,
        subSection: subSection ?? this.subSection,
        title: title ?? this.title,
      );

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class PurpleSubSection {
  @JsonKey(name: "comments")
  List<Comment>? comments;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "files")
  List<dynamic>? files;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "response")
  Response? response;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "type")
  Type? type;

  PurpleSubSection({
    this.comments,
    this.description,
    this.files,
    this.id,
    this.order,
    this.response,
    this.title,
    this.type,
  });

  PurpleSubSection copyWith({
    List<Comment>? comments,
    String? description,
    List<dynamic>? files,
    int? id,
    int? order,
    Response? response,
    String? title,
    Type? type,
  }) =>
      PurpleSubSection(
        comments: comments ?? this.comments,
        description: description ?? this.description,
        files: files ?? this.files,
        id: id ?? this.id,
        order: order ?? this.order,
        response: response ?? this.response,
        title: title ?? this.title,
        type: type ?? this.type,
      );

  factory PurpleSubSection.fromJson(Map<String, dynamic> json) => _$PurpleSubSectionFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleSubSectionToJson(this);
}

@JsonSerializable()
class Submittal {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "user")
  UpdatedBy? user;
  @JsonKey(name: "status")
  Discipline? status;
  @JsonKey(name: "created_by")
  UpdatedBy? createdBy;
  @JsonKey(name: "updated_by")
  UpdatedBy? updatedBy;
  @JsonKey(name: "deleted")
  dynamic deleted;
  @JsonKey(name: "deleted_by_cascade")
  bool? deletedByCascade;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "document_number")
  String? documentNumber;
  @JsonKey(name: "rev")
  String? rev;
  @JsonKey(name: "due_date")
  DateTime? dueDate;
  @JsonKey(name: "response")
  String? response;
  @JsonKey(name: "response_date")
  DateTime? responseDate;
  @JsonKey(name: "round")
  int? round;
  @JsonKey(name: "cycle")
  int? cycle;
  @JsonKey(name: "is_latest")
  bool? isLatest;
  @JsonKey(name: "rejected_to")
  dynamic rejectedTo;
  @JsonKey(name: "document")
  int? document;
  @JsonKey(name: "files")
  List<dynamic>? files;

  Submittal({
    this.id,
    this.user,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.deleted,
    this.deletedByCascade,
    this.createdAt,
    this.updatedAt,
    this.documentNumber,
    this.rev,
    this.dueDate,
    this.response,
    this.responseDate,
    this.round,
    this.cycle,
    this.isLatest,
    this.rejectedTo,
    this.document,
    this.files,
  });

  Submittal copyWith({
    int? id,
    UpdatedBy? user,
    Discipline? status,
    UpdatedBy? createdBy,
    UpdatedBy? updatedBy,
    dynamic deleted,
    bool? deletedByCascade,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? documentNumber,
    String? rev,
    DateTime? dueDate,
    String? response,
    DateTime? responseDate,
    int? round,
    int? cycle,
    bool? isLatest,
    dynamic rejectedTo,
    int? document,
    List<dynamic>? files,
  }) =>
      Submittal(
        id: id ?? this.id,
        user: user ?? this.user,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        deleted: deleted ?? this.deleted,
        deletedByCascade: deletedByCascade ?? this.deletedByCascade,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        documentNumber: documentNumber ?? this.documentNumber,
        rev: rev ?? this.rev,
        dueDate: dueDate ?? this.dueDate,
        response: response ?? this.response,
        responseDate: responseDate ?? this.responseDate,
        round: round ?? this.round,
        cycle: cycle ?? this.cycle,
        isLatest: isLatest ?? this.isLatest,
        rejectedTo: rejectedTo ?? this.rejectedTo,
        document: document ?? this.document,
        files: files ?? this.files,
      );

  factory Submittal.fromJson(Map<String, dynamic> json) => _$SubmittalFromJson(json);

  Map<String, dynamic> toJson() => _$SubmittalToJson(this);
}

@JsonSerializable()
class Template {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "label")
  String? label;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "created_by")
  Originator? createdBy;
  @JsonKey(name: "description")
  int? description;
  @JsonKey(name: "facility")
  FacilityFacility? facility;
  @JsonKey(name: "location")
  dynamic location;
  @JsonKey(name: "template_type")
  int? templateType;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "url")
  String? url;

  Template({
    this.id,
    this.label,
    this.createdAt,
    this.createdBy,
    this.description,
    this.facility,
    this.location,
    this.templateType,
    this.title,
    this.updatedAt,
    this.url,
  });

  Template copyWith({
    int? id,
    String? label,
    DateTime? createdAt,
    Originator? createdBy,
    int? description,
    FacilityFacility? facility,
    dynamic location,
    int? templateType,
    String? title,
    DateTime? updatedAt,
    String? url,
  }) =>
      Template(
        id: id ?? this.id,
        label: label ?? this.label,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        description: description ?? this.description,
        facility: facility ?? this.facility,
        location: location ?? this.location,
        templateType: templateType ?? this.templateType,
        title: title ?? this.title,
        updatedAt: updatedAt ?? this.updatedAt,
        url: url ?? this.url,
      );

  factory Template.fromJson(Map<String, dynamic> json) => _$TemplateFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateToJson(this);
}

@JsonSerializable()
class Ticket {
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "facility")
  FacilityFacility? facility;
  @JsonKey(name: "files")
  List<MasterDocumentFile>? files;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "location")
  Location? location;
  @JsonKey(name: "priority")
  Priority? priority;
  @JsonKey(name: "reporter_email")
  String? reporterEmail;
  @JsonKey(name: "reporter_name")
  String? reporterName;
  @JsonKey(name: "reporter_phone")
  String? reporterPhone;
  @JsonKey(name: "title")
  String? title;

  Ticket({
    this.description,
    this.facility,
    this.files,
    this.id,
    this.location,
    this.priority,
    this.reporterEmail,
    this.reporterName,
    this.reporterPhone,
    this.title,
  });

  Ticket copyWith({
    String? description,
    FacilityFacility? facility,
    List<MasterDocumentFile>? files,
    int? id,
    Location? location,
    Priority? priority,
    String? reporterEmail,
    String? reporterName,
    String? reporterPhone,
    String? title,
  }) =>
      Ticket(
        description: description ?? this.description,
        facility: facility ?? this.facility,
        files: files ?? this.files,
        id: id ?? this.id,
        location: location ?? this.location,
        priority: priority ?? this.priority,
        reporterEmail: reporterEmail ?? this.reporterEmail,
        reporterName: reporterName ?? this.reporterName,
        reporterPhone: reporterPhone ?? this.reporterPhone,
        title: title ?? this.title,
      );

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "calculation")
  dynamic calculation;
  @JsonKey(name: "display_name")
  String? displayName;
  @JsonKey(name: "have_child")
  bool? haveChild;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "parent")
  dynamic parent;
  @JsonKey(name: "setting")
  dynamic setting;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "url")
  String? url;

  Location({
    this.calculation,
    this.displayName,
    this.haveChild,
    this.id,
    this.parent,
    this.setting,
    this.title,
    this.url,
  });

  Location copyWith({
    dynamic calculation,
    String? displayName,
    bool? haveChild,
    int? id,
    dynamic parent,
    dynamic setting,
    String? title,
    String? url,
  }) =>
      Location(
        calculation: calculation ?? this.calculation,
        displayName: displayName ?? this.displayName,
        haveChild: haveChild ?? this.haveChild,
        id: id ?? this.id,
        parent: parent ?? this.parent,
        setting: setting ?? this.setting,
        title: title ?? this.title,
        url: url ?? this.url,
      );

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class UserInspectionGeneral {
  @JsonKey(name: "value")
  int? value;
  @JsonKey(name: "label")
  String? label;

  UserInspectionGeneral({
    this.value,
    this.label,
  });

  UserInspectionGeneral copyWith({
    int? value,
    String? label,
  }) =>
      UserInspectionGeneral(
        value: value ?? this.value,
        label: label ?? this.label,
      );

  factory UserInspectionGeneral.fromJson(Map<String, dynamic> json) => _$UserInspectionGeneralFromJson(json);

  Map<String, dynamic> toJson() => _$UserInspectionGeneralToJson(this);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
