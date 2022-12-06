// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetChatModelCollection on Isar {
  IsarCollection<ChatModel> get chatModels => this.collection();
}

const ChatModelSchema = CollectionSchema(
  name: r'ChatModel',
  id: 3590324851517520026,
  properties: {
    r'avatar': PropertySchema(
      id: 0,
      name: r'avatar',
      type: IsarType.string,
    ),
    r'conversation': PropertySchema(
      id: 1,
      name: r'conversation',
      type: IsarType.string,
    ),
    r'extend': PropertySchema(
      id: 2,
      name: r'extend',
      type: IsarType.string,
    ),
    r'isDeleted': PropertySchema(
      id: 3,
      name: r'isDeleted',
      type: IsarType.long,
    ),
    r'isMuted': PropertySchema(
      id: 4,
      name: r'isMuted',
      type: IsarType.long,
    ),
    r'isOnline': PropertySchema(
      id: 5,
      name: r'isOnline',
      type: IsarType.long,
    ),
    r'isSticked': PropertySchema(
      id: 6,
      name: r'isSticked',
      type: IsarType.long,
    ),
    r'lastContactedAt': PropertySchema(
      id: 7,
      name: r'lastContactedAt',
      type: IsarType.string,
    ),
    r'lastMessage': PropertySchema(
      id: 8,
      name: r'lastMessage',
      type: IsarType.object,
      target: r'LastMessage',
    ),
    r'nickname': PropertySchema(
      id: 9,
      name: r'nickname',
      type: IsarType.string,
    ),
    r'remark': PropertySchema(
      id: 10,
      name: r'remark',
      type: IsarType.string,
    ),
    r'uid': PropertySchema(
      id: 11,
      name: r'uid',
      type: IsarType.string,
    ),
    r'unreadCount': PropertySchema(
      id: 12,
      name: r'unreadCount',
      type: IsarType.long,
    ),
    r'updateAt': PropertySchema(
      id: 13,
      name: r'updateAt',
      type: IsarType.string,
    )
  },
  estimateSize: _chatModelEstimateSize,
  serialize: _chatModelSerialize,
  deserialize: _chatModelDeserialize,
  deserializeProp: _chatModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'LastMessage': LastMessageSchema,
    r'Content': ContentSchema,
    r'Extra': ExtraSchema
  },
  getId: _chatModelGetId,
  getLinks: _chatModelGetLinks,
  attach: _chatModelAttach,
  version: '3.0.5',
);

int _chatModelEstimateSize(
  ChatModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.avatar;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.conversation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.extend;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastContactedAt;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastMessage;
    if (value != null) {
      bytesCount += 3 +
          LastMessageSchema.estimateSize(
              value, allOffsets[LastMessage]!, allOffsets);
    }
  }
  {
    final value = object.nickname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.remark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.updateAt;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _chatModelSerialize(
  ChatModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatar);
  writer.writeString(offsets[1], object.conversation);
  writer.writeString(offsets[2], object.extend);
  writer.writeLong(offsets[3], object.isDeleted);
  writer.writeLong(offsets[4], object.isMuted);
  writer.writeLong(offsets[5], object.isOnline);
  writer.writeLong(offsets[6], object.isSticked);
  writer.writeString(offsets[7], object.lastContactedAt);
  writer.writeObject<LastMessage>(
    offsets[8],
    allOffsets,
    LastMessageSchema.serialize,
    object.lastMessage,
  );
  writer.writeString(offsets[9], object.nickname);
  writer.writeString(offsets[10], object.remark);
  writer.writeString(offsets[11], object.uid);
  writer.writeLong(offsets[12], object.unreadCount);
  writer.writeString(offsets[13], object.updateAt);
}

ChatModel _chatModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChatModel(
    avatar: reader.readStringOrNull(offsets[0]),
    conversation: reader.readStringOrNull(offsets[1]),
    extend: reader.readStringOrNull(offsets[2]),
    isDeleted: reader.readLongOrNull(offsets[3]),
    isMuted: reader.readLongOrNull(offsets[4]),
    isOnline: reader.readLongOrNull(offsets[5]),
    isSticked: reader.readLongOrNull(offsets[6]),
    lastContactedAt: reader.readStringOrNull(offsets[7]),
    lastMessage: reader.readObjectOrNull<LastMessage>(
      offsets[8],
      LastMessageSchema.deserialize,
      allOffsets,
    ),
    nickname: reader.readStringOrNull(offsets[9]),
    remark: reader.readStringOrNull(offsets[10]),
    uid: reader.readStringOrNull(offsets[11]),
    unreadCount: reader.readLongOrNull(offsets[12]),
    updateAt: reader.readStringOrNull(offsets[13]),
  );
  object.id = id;
  return object;
}

P _chatModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<LastMessage>(
        offset,
        LastMessageSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _chatModelGetId(ChatModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _chatModelGetLinks(ChatModel object) {
  return [];
}

void _chatModelAttach(IsarCollection<dynamic> col, Id id, ChatModel object) {
  object.id = id;
}

extension ChatModelQueryWhereSort
    on QueryBuilder<ChatModel, ChatModel, QWhere> {
  QueryBuilder<ChatModel, ChatModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChatModelQueryWhere
    on QueryBuilder<ChatModel, ChatModel, QWhereClause> {
  QueryBuilder<ChatModel, ChatModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ChatModelQueryFilter
    on QueryBuilder<ChatModel, ChatModel, QFilterCondition> {
  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'avatar',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'avatar',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatar',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> avatarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'conversation',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'conversation',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> conversationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> conversationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'conversation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conversation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> conversationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conversation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conversation',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      conversationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conversation',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'extend',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'extend',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extend',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'extend',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'extend',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extend',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> extendIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'extend',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isDeletedEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      isDeletedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isDeletedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isDeletedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isDeleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMuted',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMuted',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMuted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isMuted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isMuted',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isMutedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isMuted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isOnlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isOnline',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      isOnlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isOnline',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isOnlineEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOnline',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isOnlineGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isOnline',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isOnlineLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isOnline',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isOnlineBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isOnline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isStickedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isSticked',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      isStickedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isSticked',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isStickedEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSticked',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      isStickedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isSticked',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isStickedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isSticked',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> isStickedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isSticked',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastContactedAt',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastContactedAt',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastContactedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastContactedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastContactedAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastContactedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastContactedAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastContactedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastMessage',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      lastMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastMessage',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nickname',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      nicknameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nickname',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nickname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nickname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nickname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> nicknameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nickname',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      nicknameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nickname',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remark',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remark',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remark',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> remarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remark',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uid',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uid',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      unreadCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unreadCount',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      unreadCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unreadCount',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> unreadCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      unreadCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> unreadCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> unreadCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unreadCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateAt',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      updateAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateAt',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updateAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updateAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> updateAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      updateAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updateAt',
        value: '',
      ));
    });
  }
}

extension ChatModelQueryObject
    on QueryBuilder<ChatModel, ChatModel, QFilterCondition> {
  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> lastMessage(
      FilterQuery<LastMessage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lastMessage');
    });
  }
}

extension ChatModelQueryLinks
    on QueryBuilder<ChatModel, ChatModel, QFilterCondition> {}

extension ChatModelQuerySortBy on QueryBuilder<ChatModel, ChatModel, QSortBy> {
  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByConversation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conversation', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByConversationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conversation', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByExtend() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extend', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByExtendDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extend', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsMuted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMuted', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsMutedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMuted', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsSticked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSticked', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIsStickedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSticked', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByLastContactedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastContactedAt', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByLastContactedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastContactedAt', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByNickname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nickname', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByNicknameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nickname', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUnreadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension ChatModelQuerySortThenBy
    on QueryBuilder<ChatModel, ChatModel, QSortThenBy> {
  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByConversation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conversation', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByConversationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conversation', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByExtend() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extend', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByExtendDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extend', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsMuted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMuted', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsMutedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMuted', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsSticked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSticked', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIsStickedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSticked', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByLastContactedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastContactedAt', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByLastContactedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastContactedAt', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByNickname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nickname', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByNicknameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nickname', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUnreadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.desc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension ChatModelQueryWhereDistinct
    on QueryBuilder<ChatModel, ChatModel, QDistinct> {
  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByAvatar(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatar', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByConversation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conversation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByExtend(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extend', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByIsMuted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMuted');
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOnline');
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByIsSticked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSticked');
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByLastContactedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastContactedAt',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByNickname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nickname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByRemark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unreadCount');
    });
  }

  QueryBuilder<ChatModel, ChatModel, QDistinct> distinctByUpdateAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt', caseSensitive: caseSensitive);
    });
  }
}

extension ChatModelQueryProperty
    on QueryBuilder<ChatModel, ChatModel, QQueryProperty> {
  QueryBuilder<ChatModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> avatarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatar');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> conversationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conversation');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> extendProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extend');
    });
  }

  QueryBuilder<ChatModel, int?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<ChatModel, int?, QQueryOperations> isMutedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMuted');
    });
  }

  QueryBuilder<ChatModel, int?, QQueryOperations> isOnlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOnline');
    });
  }

  QueryBuilder<ChatModel, int?, QQueryOperations> isStickedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSticked');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> lastContactedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastContactedAt');
    });
  }

  QueryBuilder<ChatModel, LastMessage?, QQueryOperations>
      lastMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastMessage');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> nicknameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nickname');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> remarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remark');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }

  QueryBuilder<ChatModel, int?, QQueryOperations> unreadCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unreadCount');
    });
  }

  QueryBuilder<ChatModel, String?, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LastMessageSchema = Schema(
  name: r'LastMessage',
  id: 430351496321737210,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.object,
      target: r'Content',
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _lastMessageEstimateSize,
  serialize: _lastMessageSerialize,
  deserialize: _lastMessageDeserialize,
  deserializeProp: _lastMessageDeserializeProp,
);

int _lastMessageEstimateSize(
  LastMessage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.content;
    if (value != null) {
      bytesCount += 3 +
          ContentSchema.estimateSize(value, allOffsets[Content]!, allOffsets);
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _lastMessageSerialize(
  LastMessage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Content>(
    offsets[0],
    allOffsets,
    ContentSchema.serialize,
    object.content,
  );
  writer.writeString(offsets[1], object.type);
}

LastMessage _lastMessageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LastMessage(
    content: reader.readObjectOrNull<Content>(
      offsets[0],
      ContentSchema.deserialize,
      allOffsets,
    ),
    type: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _lastMessageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Content>(
        offset,
        ContentSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LastMessageQueryFilter
    on QueryBuilder<LastMessage, LastMessage, QFilterCondition> {
  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition>
      contentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition>
      contentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension LastMessageQueryObject
    on QueryBuilder<LastMessage, LastMessage, QFilterCondition> {
  QueryBuilder<LastMessage, LastMessage, QAfterFilterCondition> content(
      FilterQuery<Content> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'content');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ContentSchema = Schema(
  name: r'Content',
  id: 2749874844035024652,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'extra': PropertySchema(
      id: 1,
      name: r'extra',
      type: IsarType.object,
      target: r'Extra',
    )
  },
  estimateSize: _contentEstimateSize,
  serialize: _contentSerialize,
  deserialize: _contentDeserialize,
  deserializeProp: _contentDeserializeProp,
);

int _contentEstimateSize(
  Content object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.content;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.extra;
    if (value != null) {
      bytesCount +=
          3 + ExtraSchema.estimateSize(value, allOffsets[Extra]!, allOffsets);
    }
  }
  return bytesCount;
}

void _contentSerialize(
  Content object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeObject<Extra>(
    offsets[1],
    allOffsets,
    ExtraSchema.serialize,
    object.extra,
  );
}

Content _contentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Content(
    content: reader.readStringOrNull(offsets[0]),
    extra: reader.readObjectOrNull<Extra>(
      offsets[1],
      ExtraSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _contentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Extra>(
        offset,
        ExtraSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ContentQueryFilter
    on QueryBuilder<Content, Content, QFilterCondition> {
  QueryBuilder<Content, Content, QAfterFilterCondition> contentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> extraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'extra',
      ));
    });
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> extraIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'extra',
      ));
    });
  }
}

extension ContentQueryObject
    on QueryBuilder<Content, Content, QFilterCondition> {
  QueryBuilder<Content, Content, QAfterFilterCondition> extra(
      FilterQuery<Extra> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'extra');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ExtraSchema = Schema(
  name: r'Extra',
  id: 4523994041122135631,
  properties: {
    r'device': PropertySchema(
      id: 0,
      name: r'device',
      type: IsarType.long,
    ),
    r'from': PropertySchema(
      id: 1,
      name: r'from',
      type: IsarType.string,
    ),
    r'ip': PropertySchema(
      id: 2,
      name: r'ip',
      type: IsarType.string,
    ),
    r'params': PropertySchema(
      id: 3,
      name: r'params',
      type: IsarType.string,
    ),
    r'recalledEnable': PropertySchema(
      id: 4,
      name: r'recalledEnable',
      type: IsarType.long,
    )
  },
  estimateSize: _extraEstimateSize,
  serialize: _extraSerialize,
  deserialize: _extraDeserialize,
  deserializeProp: _extraDeserializeProp,
);

int _extraEstimateSize(
  Extra object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.from;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ip;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.params;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _extraSerialize(
  Extra object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.device);
  writer.writeString(offsets[1], object.from);
  writer.writeString(offsets[2], object.ip);
  writer.writeString(offsets[3], object.params);
  writer.writeLong(offsets[4], object.recalledEnable);
}

Extra _extraDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Extra(
    device: reader.readLongOrNull(offsets[0]),
    from: reader.readStringOrNull(offsets[1]),
    ip: reader.readStringOrNull(offsets[2]),
    params: reader.readStringOrNull(offsets[3]),
    recalledEnable: reader.readLongOrNull(offsets[4]),
  );
  return object;
}

P _extraDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ExtraQueryFilter on QueryBuilder<Extra, Extra, QFilterCondition> {
  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'device',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'device',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'device',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'device',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'device',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> deviceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'device',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'from',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'from',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'from',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> fromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'from',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ip',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ip',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ip',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> ipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'params',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'params',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'params',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'params',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'params',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'params',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> paramsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'params',
        value: '',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recalledEnable',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recalledEnable',
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recalledEnable',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recalledEnable',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recalledEnable',
        value: value,
      ));
    });
  }

  QueryBuilder<Extra, Extra, QAfterFilterCondition> recalledEnableBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recalledEnable',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExtraQueryObject on QueryBuilder<Extra, Extra, QFilterCondition> {}
