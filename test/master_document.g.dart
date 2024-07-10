// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterDocument _$MasterDocumentFromJson(Map<String, dynamic> json) =>
    MasterDocument(
      id: (json['id'] as num?)?.toInt(),
      product: json['_product'] as String?,
      title: json['title'] as String?,
      type: json['type'] == null
          ? null
          : Discipline.fromJson(json['type'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      process: json['process'] == null
          ? null
          : Discipline.fromJson(json['process'] as Map<String, dynamic>),
      code: json['code'] as String?,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      order: (json['order'] as num?)?.toInt(),
      deleted: json['deleted'],
      drawingNumber: json['drawing_number'],
      costImpact: (json['cost_impact'] as num?)?.toInt(),
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : LocationClass.fromJson(json['location'] as Map<String, dynamic>),
      isPrivate: json['is_private'] as bool?,
      cycle: (json['cycle'] as num?)?.toInt(),
      assignee: json['assignee'] == null
          ? null
          : PurpleAssignee.fromJson(json['assignee'] as Map<String, dynamic>),
      assignees: (json['assignees'] as List<dynamic>?)
          ?.map((e) => AssigneeElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      manager: json['manager'] == null
          ? null
          : Manager.fromJson(json['manager'] as Map<String, dynamic>),
      distributionList: (json['distribution_list'] as List<dynamic>?)
          ?.map((e) => Originator.fromJson(e as Map<String, dynamic>))
          .toList(),
      specification: json['specification'] == null
          ? null
          : Discipline.fromJson(json['specification'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : Discipline.fromJson(json['discipline'] as Map<String, dynamic>),
      scheduleImpact: (json['schedule_impact'] as num?)?.toInt(),
      template: json['template'] == null
          ? null
          : Template.fromJson(json['template'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      responsibleContractor: json['responsible_contractor'],
      receivedFrom: json['received_from'],
      isRespondable: json['is_respondable'] as bool?,
      isRecentlyRejected: json['is_recently_rejected'] as bool?,
      overruleMarkupList: json['overrule_markup_list'] as List<dynamic>?,
      createdBy: json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
      ballInCourt: (json['ball_in_court'] as List<dynamic>?)
          ?.map((e) => BallInCourt.fromJson(e as Map<String, dynamic>))
          .toList(),
      delayed: (json['delayed'] as num?)?.toInt(),
      hasFile: json['has_file'] as bool?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => MasterDocumentFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      inspection: json['inspection'] == null
          ? null
          : Inspection.fromJson(json['inspection'] as Map<String, dynamic>),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Priority.fromJson(e as Map<String, dynamic>))
          .toList(),
      inspectionTestPlan: json['inspection_test_plan'],
      stat: json['stat'] == null
          ? null
          : Stat.fromJson(json['stat'] as Map<String, dynamic>),
      submittal: json['submittal'] == null
          ? null
          : Submittal.fromJson(json['submittal'] as Map<String, dynamic>),
      userInspectionGeneral: (json['user_inspection_general'] as List<dynamic>?)
          ?.map(
              (e) => UserInspectionGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      fromInspection: json['from_inspection'] == null
          ? null
          : Discipline.fromJson(
              json['from_inspection'] as Map<String, dynamic>),
      subSection: (json['sub_section'] as num?)?.toInt(),
      section: json['section'] == null
          ? null
          : Section.fromJson(json['section'] as Map<String, dynamic>),
      acknowledgeManager: json['acknowledge_manager'] == null
          ? null
          : AcknowledgeManager.fromJson(
              json['acknowledge_manager'] as Map<String, dynamic>),
      ballInCourtDate: json['ball_in_court_date'] == null
          ? null
          : DateTime.parse(json['ball_in_court_date'] as String),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      completionDate: json['completion_date'],
      customFieldList: (json['custom_field_list'] as List<dynamic>?)
          ?.map((e) => CustomFieldList.fromJson(e as Map<String, dynamic>))
          .toList(),
      downtime: (json['downtime'] as num?)?.toInt(),
      facility: json['facility'] == null
          ? null
          : LocationClass.fromJson(json['facility'] as Map<String, dynamic>),
      feedBack: json['feed_back'],
      historiesCount: (json['histories_count'] as num?)?.toInt(),
      incompleteWo: json['incomplete_wo'] as List<dynamic>?,
      invoiceCost: (json['invoice_cost'] as num?)?.toInt(),
      isBallInCourt: json['is_ball_in_court'] as bool?,
      laborCost: (json['labor_cost'] as num?)?.toInt(),
      originator: json['originator'] == null
          ? null
          : Originator.fromJson(json['originator'] as Map<String, dynamic>),
      partCost: (json['part_cost'] as num?)?.toInt(),
      parts: json['parts'] as List<dynamic>?,
      planMode: json['plan_mode'] as bool?,
      pm: json['pm'],
      priority: json['priority'] == null
          ? null
          : Priority.fromJson(json['priority'] as Map<String, dynamic>),
      state: (json['state'] as num?)?.toInt(),
      ticket: json['ticket'] == null
          ? null
          : Ticket.fromJson(json['ticket'] as Map<String, dynamic>),
      timeSpent: (json['time_spent'] as num?)?.toInt(),
      totalCost: (json['total_cost'] as num?)?.toInt(),
      willCreateOn: json['will_create_on'],
      workflows: json['workflows'] as List<dynamic>?,
    );

Map<String, dynamic> _$MasterDocumentToJson(MasterDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      '_product': instance.product,
      'title': instance.title,
      'type': instance.type,
      'status': instance.status,
      'process': instance.process,
      'code': instance.code,
      'due_date': instance.dueDate?.toIso8601String(),
      'order': instance.order,
      'deleted': instance.deleted,
      'drawing_number': instance.drawingNumber,
      'cost_impact': instance.costImpact,
      'description': instance.description,
      'location': instance.location,
      'is_private': instance.isPrivate,
      'cycle': instance.cycle,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'manager': instance.manager,
      'distribution_list': instance.distributionList,
      'specification': instance.specification,
      'discipline': instance.discipline,
      'schedule_impact': instance.scheduleImpact,
      'template': instance.template,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'project': instance.project,
      'responsible_contractor': instance.responsibleContractor,
      'received_from': instance.receivedFrom,
      'is_respondable': instance.isRespondable,
      'is_recently_rejected': instance.isRecentlyRejected,
      'overrule_markup_list': instance.overruleMarkupList,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'ball_in_court': instance.ballInCourt,
      'delayed': instance.delayed,
      'has_file': instance.hasFile,
      'files': instance.files,
      'inspection': instance.inspection,
      'sections': instance.sections,
      'inspection_test_plan': instance.inspectionTestPlan,
      'stat': instance.stat,
      'submittal': instance.submittal,
      'user_inspection_general': instance.userInspectionGeneral,
      'from_inspection': instance.fromInspection,
      'sub_section': instance.subSection,
      'section': instance.section,
      'acknowledge_manager': instance.acknowledgeManager,
      'ball_in_court_date': instance.ballInCourtDate?.toIso8601String(),
      'categories': instance.categories,
      'completion_date': instance.completionDate,
      'custom_field_list': instance.customFieldList,
      'downtime': instance.downtime,
      'facility': instance.facility,
      'feed_back': instance.feedBack,
      'histories_count': instance.historiesCount,
      'incomplete_wo': instance.incompleteWo,
      'invoice_cost': instance.invoiceCost,
      'is_ball_in_court': instance.isBallInCourt,
      'labor_cost': instance.laborCost,
      'originator': instance.originator,
      'part_cost': instance.partCost,
      'parts': instance.parts,
      'plan_mode': instance.planMode,
      'pm': instance.pm,
      'priority': instance.priority,
      'state': instance.state,
      'ticket': instance.ticket,
      'time_spent': instance.timeSpent,
      'total_cost': instance.totalCost,
      'will_create_on': instance.willCreateOn,
      'workflows': instance.workflows,
    };

AcknowledgeManager _$AcknowledgeManagerFromJson(Map<String, dynamic> json) =>
    AcknowledgeManager(
      documentManager: json['document_manager'] == null
          ? null
          : DocumentManager.fromJson(
              json['document_manager'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      responseDate: json['response_date'] == null
          ? null
          : DateTime.parse(json['response_date'] as String),
      files: json['files'] as List<dynamic>?,
    );

Map<String, dynamic> _$AcknowledgeManagerToJson(AcknowledgeManager instance) =>
    <String, dynamic>{
      'document_manager': instance.documentManager,
      'status': instance.status,
      'response': instance.response,
      'response_date': instance.responseDate?.toIso8601String(),
      'files': instance.files,
    };

DocumentManager _$DocumentManagerFromJson(Map<String, dynamic> json) =>
    DocumentManager(
      mode: (json['mode'] as num?)?.toInt(),
      responder: (json['responder'] as List<dynamic>?)
          ?.map((e) => Originator.fromJson(e as Map<String, dynamic>))
          .toList(),
      roleResponder: json['role_responder'],
      groupResponder: json['group_responder'],
      status: (json['status'] as num?)?.toInt(),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      respondedDate: json['responded_date'],
      responsedBy: json['responsed_by'] == null
          ? null
          : Originator.fromJson(json['responsed_by'] as Map<String, dynamic>),
      response: json['response'],
      managerRound: (json['manager_round'] as num?)?.toInt(),
      managerCycle: (json['manager_cycle'] as num?)?.toInt(),
      isLatest: json['is_latest'] as bool?,
      duration: (json['duration'] as num?)?.toInt(),
      files: json['files'] as List<dynamic>?,
    );

Map<String, dynamic> _$DocumentManagerToJson(DocumentManager instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'responder': instance.responder,
      'role_responder': instance.roleResponder,
      'group_responder': instance.groupResponder,
      'status': instance.status,
      'due_date': instance.dueDate?.toIso8601String(),
      'responded_date': instance.respondedDate,
      'responsed_by': instance.responsedBy,
      'response': instance.response,
      'manager_round': instance.managerRound,
      'manager_cycle': instance.managerCycle,
      'is_latest': instance.isLatest,
      'duration': instance.duration,
      'files': instance.files,
    };

Originator _$OriginatorFromJson(Map<String, dynamic> json) => Originator(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      shortcutName: json['shortcut_name'] as String?,
      email: json['email'] as String?,
      position: json['position'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      isNotification: json['is_notification'] as bool?,
      unitCost: (json['unit_cost'] as num?)?.toInt(),
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      permission: (json['permission'] as num?)?.toInt(),
      isSuperuser: json['is_superuser'] as bool?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OriginatorToJson(Originator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'shortcut_name': instance.shortcutName,
      'email': instance.email,
      'position': instance.position,
      'company': instance.company,
      'phone': instance.phone,
      'is_notification': instance.isNotification,
      'unit_cost': instance.unitCost,
      'last_login': instance.lastLogin?.toIso8601String(),
      'organization': instance.organization,
      'permission': instance.permission,
      'is_superuser': instance.isSuperuser,
      'status': instance.status,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      title: json['title'] as String?,
      service: json['service'],
      start: json['start'],
      end: json['end'],
      description: json['description'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      country: json['country'],
      address: json['address'],
      city: json['city'],
      province: json['province'],
      postcode: json['postcode'],
      timezone: json['timezone'],
      level: (json['level'] as num?)?.toInt(),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      image: json['image'] as String?,
      userCount: (json['user_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'service': instance.service,
      'start': instance.start,
      'end': instance.end,
      'description': instance.description,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
      'address': instance.address,
      'city': instance.city,
      'province': instance.province,
      'postcode': instance.postcode,
      'timezone': instance.timezone,
      'level': instance.level,
      'organization': instance.organization,
      'image': instance.image,
      'user_count': instance.userCount,
    };

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      id: (json['id'] as num?)?.toInt(),
      title: $enumDecodeNullable(_$TitleEnumMap, json['title']),
      code: $enumDecodeNullable(_$LastNameEnumMap, json['code']),
      logo: json['logo'],
      storageUsage: (json['storage_usage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': _$TitleEnumMap[instance.title],
      'code': _$LastNameEnumMap[instance.code],
      'logo': instance.logo,
      'storage_usage': instance.storageUsage,
    };

const _$TitleEnumMap = {
  Title.SWIFT_DYNAMICS: 'SwiftDynamics',
};

const _$LastNameEnumMap = {
  LastName.SWD: 'SWD',
};

PurpleAssignee _$PurpleAssigneeFromJson(Map<String, dynamic> json) =>
    PurpleAssignee(
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      files: json['files'] as List<dynamic>?,
      id: (json['id'] as num?)?.toInt(),
      response: json['response'],
      responseDate: json['response_date'],
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : Discipline.fromJson(json['user'] as Map<String, dynamic>),
      workOrder: json['work_order'] == null
          ? null
          : Discipline.fromJson(json['work_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PurpleAssigneeToJson(PurpleAssignee instance) =>
    <String, dynamic>{
      'due_date': instance.dueDate?.toIso8601String(),
      'files': instance.files,
      'id': instance.id,
      'response': instance.response,
      'response_date': instance.responseDate,
      'status': instance.status,
      'user': instance.user,
      'work_order': instance.workOrder,
    };

Discipline _$DisciplineFromJson(Map<String, dynamic> json) => Discipline(
      id: (json['id'] as num?)?.toInt(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$DisciplineToJson(Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
    };

AssigneeElement _$AssigneeElementFromJson(Map<String, dynamic> json) =>
    AssigneeElement(
      id: (json['id'] as num?)?.toInt(),
      state: json['state'] == null
          ? null
          : Discipline.fromJson(json['state'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UpdatedBy.fromJson(json['user'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>?,
      isAllSubAssigneeDone: json['is_all_sub_assignee_done'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      order: (json['order'] as num?)?.toInt(),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      response: json['response'],
      responseDate: json['response_date'],
      round: (json['round'] as num?)?.toInt(),
      cycle: (json['cycle'] as num?)?.toInt(),
      rejectedTo: json['rejected_to'] as String?,
      isLatest: json['is_latest'] as bool?,
      isOpen: json['is_open'] as bool?,
      isOfficial: json['is_official'] as bool?,
      createdBy: json['created_by'] == null
          ? null
          : UpdatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssigneeElementToJson(AssigneeElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'status': instance.status,
      'user': instance.user,
      'document': instance.document,
      'files': instance.files,
      'is_all_sub_assignee_done': instance.isAllSubAssigneeDone,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'order': instance.order,
      'due_date': instance.dueDate?.toIso8601String(),
      'response': instance.response,
      'response_date': instance.responseDate,
      'round': instance.round,
      'cycle': instance.cycle,
      'rejected_to': instance.rejectedTo,
      'is_latest': instance.isLatest,
      'is_open': instance.isOpen,
      'is_official': instance.isOfficial,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };

UpdatedBy _$UpdatedByFromJson(Map<String, dynamic> json) => UpdatedBy(
      id: (json['id'] as num?)?.toInt(),
      fullName: $enumDecodeNullable(_$FullNameEnumMap, json['full_name']),
    );

Map<String, dynamic> _$UpdatedByToJson(UpdatedBy instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': _$FullNameEnumMap[instance.fullName],
    };

const _$FullNameEnumMap = {
  FullName.SUPERIORADMIN_SITEAROUND: 'Superioradmin Sitearound',
};

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
    };

BallInCourt _$BallInCourtFromJson(Map<String, dynamic> json) => BallInCourt(
      id: (json['id'] as num?)?.toInt(),
      comment: json['_comment'] as String?,
      fullName: $enumDecodeNullable(_$FullNameEnumMap, json['full_name']),
    );

Map<String, dynamic> _$BallInCourtToJson(BallInCourt instance) =>
    <String, dynamic>{
      'id': instance.id,
      '_comment': instance.comment,
      'full_name': _$FullNameEnumMap[instance.fullName],
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      code: json['code'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'code': instance.code,
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'title': instance.title,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CreatedBy _$CreatedByFromJson(Map<String, dynamic> json) => CreatedBy(
      comment: json['_comment'] as String?,
      id: (json['id'] as num?)?.toInt(),
      fullName: $enumDecodeNullable(_$FullNameEnumMap, json['full_name']),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      isAcceptTerms: json['is_accept_terms'] as bool?,
      lastName: $enumDecodeNullable(_$LastNameEnumMap, json['last_name']),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      permission: (json['permission'] as num?)?.toInt(),
      position: json['position'] as String?,
      shortcutName: json['shortcut_name'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toInt(),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$CreatedByToJson(CreatedBy instance) => <String, dynamic>{
      '_comment': instance.comment,
      'id': instance.id,
      'full_name': _$FullNameEnumMap[instance.fullName],
      'company': instance.company,
      'email': instance.email,
      'first_name': instance.firstName,
      'is_accept_terms': instance.isAcceptTerms,
      'last_name': _$LastNameEnumMap[instance.lastName],
      'organization': instance.organization,
      'permission': instance.permission,
      'position': instance.position,
      'shortcut_name': instance.shortcutName,
      'unit_cost': instance.unitCost,
      'username': instance.username,
    };

CustomFieldList _$CustomFieldListFromJson(Map<String, dynamic> json) =>
    CustomFieldList(
      customField: json['custom_field'] == null
          ? null
          : CustomField.fromJson(json['custom_field'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>?,
      value: json['value'] as String?,
      valueId: (json['value_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CustomFieldListToJson(CustomFieldList instance) =>
    <String, dynamic>{
      'custom_field': instance.customField,
      'files': instance.files,
      'value': instance.value,
      'value_id': instance.valueId,
    };

CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => CustomField(
      createdBy: json['created_by'] as String?,
      fieldId: (json['field_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      valueOption: (json['value_option'] as num?)?.toInt(),
      valueType: (json['value_type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CustomFieldToJson(CustomField instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy,
      'field_id': instance.fieldId,
      'title': instance.title,
      'value_option': instance.valueOption,
      'value_type': instance.valueType,
    };

LocationClass _$LocationClassFromJson(Map<String, dynamic> json) =>
    LocationClass(
      calculation: json['calculation'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      customFieldList: json['custom_field_list'] as List<dynamic>?,
      displayName: json['display_name'] as String?,
      facility: json['facility'] == null
          ? null
          : FacilityFacility.fromJson(json['facility'] as Map<String, dynamic>),
      haveChild: json['have_child'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      parent: json['parent'],
      parents: json['parents'] as List<dynamic>?,
      setting: json['setting'],
      title: json['title'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LocationClassToJson(LocationClass instance) =>
    <String, dynamic>{
      'calculation': instance.calculation,
      'created_at': instance.createdAt?.toIso8601String(),
      'custom_field_list': instance.customFieldList,
      'display_name': instance.displayName,
      'facility': instance.facility,
      'have_child': instance.haveChild,
      'id': instance.id,
      'image': instance.image,
      'parent': instance.parent,
      'parents': instance.parents,
      'setting': instance.setting,
      'title': instance.title,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
    };

FacilityFacility _$FacilityFacilityFromJson(Map<String, dynamic> json) =>
    FacilityFacility(
      address: json['address'] as String?,
      code: json['code'] as String?,
      country: json['country'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      currency: json['currency'],
      description: json['description'] as String?,
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      timeZone: json['time_zone'] as String?,
      title: json['title'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FacilityFacilityToJson(FacilityFacility instance) =>
    <String, dynamic>{
      'address': instance.address,
      'code': instance.code,
      'country': instance.country,
      'created_at': instance.createdAt?.toIso8601String(),
      'currency': instance.currency,
      'description': instance.description,
      'id': instance.id,
      'image': instance.image,
      'time_zone': instance.timeZone,
      'title': instance.title,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

MasterDocumentFile _$MasterDocumentFileFromJson(Map<String, dynamic> json) =>
    MasterDocumentFile(
      documentFileId: (json['document_file_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      path: json['path'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
      ticketId: (json['ticket_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MasterDocumentFileToJson(MasterDocumentFile instance) =>
    <String, dynamic>{
      'document_file_id': instance.documentFileId,
      'id': instance.id,
      'path': instance.path,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'ticket_id': instance.ticketId,
    };

Inspection _$InspectionFromJson(Map<String, dynamic> json) => Inspection(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UpdatedBy.fromJson(json['user'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => UpdatedBy.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseUser: json['response_user'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      response: json['response'],
      responseDate: json['response_date'],
      round: (json['round'] as num?)?.toInt(),
      cycle: (json['cycle'] as num?)?.toInt(),
      isLatest: json['is_latest'] as bool?,
      stat: json['stat'] == null
          ? null
          : Stat.fromJson(json['stat'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toInt(),
      maxScore: (json['max_score'] as num?)?.toInt(),
      createdBy: json['created_by'] == null
          ? null
          : UpdatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
      form: (json['form'] as num?)?.toInt(),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      formType: (json['form_type'] as num?)?.toInt(),
      files: json['files'] as List<dynamic>?,
    );

Map<String, dynamic> _$InspectionToJson(Inspection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'users': instance.users,
      'response_user': instance.responseUser,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'status': instance.status,
      'response': instance.response,
      'response_date': instance.responseDate,
      'round': instance.round,
      'cycle': instance.cycle,
      'is_latest': instance.isLatest,
      'stat': instance.stat,
      'score': instance.score,
      'max_score': instance.maxScore,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'form': instance.form,
      'document': instance.document,
      'form_type': instance.formType,
      'files': instance.files,
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      nA: (json['n/a'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      pending: (json['pending'] as num?)?.toInt(),
      respond: (json['respond'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'n/a': instance.nA,
      'type': instance.type,
      'total': instance.total,
      'pending': instance.pending,
      'respond': instance.respond,
    };

Manager _$ManagerFromJson(Map<String, dynamic> json) => Manager(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      workOrder: json['work_order'] == null
          ? null
          : Discipline.fromJson(json['work_order'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      files: json['files'] as List<dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      response: json['response'],
      responseDate: json['response_date'],
      round: (json['round'] as num?)?.toInt(),
      cycle: (json['cycle'] as num?)?.toInt(),
      isLatest: json['is_latest'] as bool?,
      isOfficial: json['is_official'] as bool?,
      rejectedTo: json['rejected_to'],
      createdBy: json['created_by'] == null
          ? null
          : UpdatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toInt(),
      groupResponder: json['group_responder'],
      managerCycle: (json['manager_cycle'] as num?)?.toInt(),
      managerRound: (json['manager_round'] as num?)?.toInt(),
      mode: (json['mode'] as num?)?.toInt(),
      respondedDate: json['responded_date'],
      responder: (json['responder'] as List<dynamic>?)
          ?.map((e) => Originator.fromJson(e as Map<String, dynamic>))
          .toList(),
      responsedBy: json['responsed_by'] == null
          ? null
          : Originator.fromJson(json['responsed_by'] as Map<String, dynamic>),
      roleResponder: json['role_responder'],
    );

Map<String, dynamic> _$ManagerToJson(Manager instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'work_order': instance.workOrder,
      'status': instance.status,
      'files': instance.files,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'response': instance.response,
      'response_date': instance.responseDate,
      'round': instance.round,
      'cycle': instance.cycle,
      'is_latest': instance.isLatest,
      'is_official': instance.isOfficial,
      'rejected_to': instance.rejectedTo,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'document': instance.document,
      'duration': instance.duration,
      'group_responder': instance.groupResponder,
      'manager_cycle': instance.managerCycle,
      'manager_round': instance.managerRound,
      'mode': instance.mode,
      'responded_date': instance.respondedDate,
      'responder': instance.responder,
      'responsed_by': instance.responsedBy,
      'role_responder': instance.roleResponder,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      fullName: $enumDecodeNullable(_$FullNameEnumMap, json['full_name']),
      label: $enumDecodeNullable(_$FullNameEnumMap, json['label']),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': _$FullNameEnumMap[instance.fullName],
      'label': _$FullNameEnumMap[instance.label],
    };

Priority _$PriorityFromJson(Map<String, dynamic> json) => Priority(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      style: json['style'] as String?,
      title: json['title'] as String?,
      subSections: (json['sub_sections'] as List<dynamic>?)
          ?.map((e) => SubSectionElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriorityToJson(Priority instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'style': instance.style,
      'title': instance.title,
      'sub_sections': instance.subSections,
    };

SubSectionElement _$SubSectionElementFromJson(Map<String, dynamic> json) =>
    SubSectionElement(
      id: (json['id'] as num?)?.toInt(),
      deleted: json['deleted'],
      deletedByCascade: json['deleted_by_cascade'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt(),
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      section: (json['section'] as num?)?.toInt(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => SubSectionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      workOrders: (json['work_orders'] as List<dynamic>?)
          ?.map((e) => WorkOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubSectionElementToJson(SubSectionElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deleted': instance.deleted,
      'deleted_by_cascade': instance.deletedByCascade,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'order': instance.order,
      'type': instance.type,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'section': instance.section,
      'comments': instance.comments,
      'response': instance.response,
      'files': instance.files,
      'work_orders': instance.workOrders,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      comment: json['comment'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : UpdatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      file: json['file'],
      id: (json['id'] as num?)?.toInt(),
      subSection: (json['sub_section'] as num?)?.toInt(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'comment': instance.comment,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'file': instance.file,
      'id': instance.id,
      'sub_section': instance.subSection,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
    };

SubSectionFile _$SubSectionFileFromJson(Map<String, dynamic> json) =>
    SubSectionFile(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String?,
      title: json['title'] as String?,
      path: json['path'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      thumbnail: json['thumbnail'],
      markup: json['markup'],
      form: json['form'],
    );

Map<String, dynamic> _$SubSectionFileToJson(SubSectionFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'path': instance.path,
      'url': instance.url,
      'type': instance.type,
      'thumbnail': instance.thumbnail,
      'markup': instance.markup,
      'form': instance.form,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      files: json['files'] as List<dynamic>?,
      id: (json['id'] as num?)?.toInt(),
      result: json['result'] as String?,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'files': instance.files,
      'id': instance.id,
      'result': instance.result,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      isMultiselect: json['is_multiselect'] as bool?,
      isScore: json['is_score'] as bool?,
      responseType: (json['response_type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'choices': instance.choices,
      'id': instance.id,
      'is_multiselect': instance.isMultiselect,
      'is_score': instance.isScore,
      'response_type': instance.responseType,
    };

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
      color: json['color'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
      'color': instance.color,
      'label': instance.label,
    };

WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) => WorkOrder(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      title: json['title'] as String?,
      defectType: json['defect_type'],
      process: (json['process'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      hasWorkOrderPermission: json['has_work_order_permission'] as bool?,
    );

Map<String, dynamic> _$WorkOrderToJson(WorkOrder instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'defect_type': instance.defectType,
      'process': instance.process,
      'status': instance.status,
      'due_date': instance.dueDate?.toIso8601String(),
      'has_work_order_permission': instance.hasWorkOrderPermission,
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      title: json['title'] as String?,
      company: json['company'] == null
          ? null
          : Project.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'company': instance.company,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      document: (json['document'] as num?)?.toInt(),
      hasInspectionPermission: json['has_inspection_permission'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      subSection: json['sub_section'] == null
          ? null
          : PurpleSubSection.fromJson(
              json['sub_section'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'document': instance.document,
      'has_inspection_permission': instance.hasInspectionPermission,
      'id': instance.id,
      'order': instance.order,
      'sub_section': instance.subSection,
      'title': instance.title,
    };

PurpleSubSection _$PurpleSubSectionFromJson(Map<String, dynamic> json) =>
    PurpleSubSection(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      files: json['files'] as List<dynamic>?,
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
      title: json['title'] as String?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PurpleSubSectionToJson(PurpleSubSection instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'description': instance.description,
      'files': instance.files,
      'id': instance.id,
      'order': instance.order,
      'response': instance.response,
      'title': instance.title,
      'type': instance.type,
    };

Submittal _$SubmittalFromJson(Map<String, dynamic> json) => Submittal(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UpdatedBy.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Discipline.fromJson(json['status'] as Map<String, dynamic>),
      createdBy: json['created_by'] == null
          ? null
          : UpdatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: json['updated_by'] == null
          ? null
          : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>),
      deleted: json['deleted'],
      deletedByCascade: json['deleted_by_cascade'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      documentNumber: json['document_number'] as String?,
      rev: json['rev'] as String?,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      response: json['response'] as String?,
      responseDate: json['response_date'] == null
          ? null
          : DateTime.parse(json['response_date'] as String),
      round: (json['round'] as num?)?.toInt(),
      cycle: (json['cycle'] as num?)?.toInt(),
      isLatest: json['is_latest'] as bool?,
      rejectedTo: json['rejected_to'],
      document: (json['document'] as num?)?.toInt(),
      files: json['files'] as List<dynamic>?,
    );

Map<String, dynamic> _$SubmittalToJson(Submittal instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'status': instance.status,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'deleted': instance.deleted,
      'deleted_by_cascade': instance.deletedByCascade,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'document_number': instance.documentNumber,
      'rev': instance.rev,
      'due_date': instance.dueDate?.toIso8601String(),
      'response': instance.response,
      'response_date': instance.responseDate?.toIso8601String(),
      'round': instance.round,
      'cycle': instance.cycle,
      'is_latest': instance.isLatest,
      'rejected_to': instance.rejectedTo,
      'document': instance.document,
      'files': instance.files,
    };

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
      id: (json['id'] as num?)?.toInt(),
      label: json['label'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Originator.fromJson(json['created_by'] as Map<String, dynamic>),
      description: (json['description'] as num?)?.toInt(),
      facility: json['facility'] == null
          ? null
          : FacilityFacility.fromJson(json['facility'] as Map<String, dynamic>),
      location: json['location'],
      templateType: (json['template_type'] as num?)?.toInt(),
      title: json['title'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'description': instance.description,
      'facility': instance.facility,
      'location': instance.location,
      'template_type': instance.templateType,
      'title': instance.title,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
    };

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      description: json['description'] as String?,
      facility: json['facility'] == null
          ? null
          : FacilityFacility.fromJson(json['facility'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => MasterDocumentFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? null
          : Priority.fromJson(json['priority'] as Map<String, dynamic>),
      reporterEmail: json['reporter_email'] as String?,
      reporterName: json['reporter_name'] as String?,
      reporterPhone: json['reporter_phone'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'description': instance.description,
      'facility': instance.facility,
      'files': instance.files,
      'id': instance.id,
      'location': instance.location,
      'priority': instance.priority,
      'reporter_email': instance.reporterEmail,
      'reporter_name': instance.reporterName,
      'reporter_phone': instance.reporterPhone,
      'title': instance.title,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      calculation: json['calculation'],
      displayName: json['display_name'] as String?,
      haveChild: json['have_child'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      parent: json['parent'],
      setting: json['setting'],
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'calculation': instance.calculation,
      'display_name': instance.displayName,
      'have_child': instance.haveChild,
      'id': instance.id,
      'parent': instance.parent,
      'setting': instance.setting,
      'title': instance.title,
      'url': instance.url,
    };

UserInspectionGeneral _$UserInspectionGeneralFromJson(
        Map<String, dynamic> json) =>
    UserInspectionGeneral(
      value: (json['value'] as num?)?.toInt(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UserInspectionGeneralToJson(
        UserInspectionGeneral instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
    };
