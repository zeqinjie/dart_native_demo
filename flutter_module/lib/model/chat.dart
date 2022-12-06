import 'dart:convert';
import 'dart:developer';
import 'package:isar/isar.dart';

part 'chat.g.dart';

void tryCatch(Function? f) {
  try {
    f?.call();
  } catch (e, stack) {
    log('$e');
    log('$stack');
  }
}

class FFConvert {
  FFConvert._();
  static T? Function<T extends Object?>(dynamic value) convert =
      <T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return json.decode(value.toString()) as T?;
  };
}

T? asT<T extends Object?>(dynamic value, [T? defaultValue]) {
  if (value is T) {
    return value;
  }
  try {
    if (value != null) {
      final String valueS = value.toString();
      if ('' is T) {
        return valueS as T;
      } else if (0 is T) {
        return int.parse(valueS) as T;
      } else if (0.0 is T) {
        return double.parse(valueS) as T;
      } else if (false is T) {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else {
        return FFConvert.convert<T>(value);
      }
    }
  } catch (e, stackTrace) {
    log('asT<$T>', error: e, stackTrace: stackTrace);
    return defaultValue;
  }

  return defaultValue;
}

@collection
class ChatModel {
  ChatModel({
    this.uid,
    this.conversation,
    this.nickname,
    this.avatar,
    this.extend,
    this.remark,
    this.lastMessage,
    this.unreadCount,
    this.isSticked,
    this.isMuted,
    this.isOnline,
    this.isDeleted,
    this.lastContactedAt,
    this.updateAt,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        uid: asT<String?>(json['uid']),
        conversation: asT<String?>(json['conversation']),
        nickname: asT<String?>(json['nickname']),
        avatar: asT<String?>(json['avatar']),
        extend: asT<String?>(json['extend']),
        remark: asT<String?>(json['remark']),
        lastMessage: json['last_message'] == null
            ? null
            : LastMessage.fromJson(
                asT<Map<String, dynamic>>(json['last_message'])!),
        unreadCount: asT<int?>(json['unread_count']),
        isSticked: asT<int?>(json['is_sticked']),
        isMuted: asT<int?>(json['is_muted']),
        isOnline: asT<int?>(json['is_online']),
        isDeleted: asT<int?>(json['is_deleted']),
        lastContactedAt: asT<String?>(json['last_contacted_at']),
        updateAt: asT<String?>(json['update_at']),
      );

  Id id = Isar.autoIncrement; // 你也可以用 id = null 来表示 id 是自增的

  String? uid;
  String? conversation;
  String? nickname;
  String? avatar;
  String? extend;
  String? remark;
  LastMessage? lastMessage;
  int? unreadCount;
  int? isSticked;
  int? isMuted;
  int? isOnline;
  int? isDeleted;
  String? lastContactedAt;
  String? updateAt;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'uid': uid,
        'conversation': conversation,
        'nickname': nickname,
        'avatar': avatar,
        'extend': extend,
        'remark': remark,
        'last_message': lastMessage,
        'unread_count': unreadCount,
        'is_sticked': isSticked,
        'is_muted': isMuted,
        'is_online': isOnline,
        'is_deleted': isDeleted,
        'last_contacted_at': lastContactedAt,
        'update_at': updateAt,
      };

  ChatModel copy() {
    return ChatModel(
      uid: uid,
      conversation: conversation,
      nickname: nickname,
      avatar: avatar,
      extend: extend,
      remark: remark,
      lastMessage: lastMessage?.copy(),
      unreadCount: unreadCount,
      isSticked: isSticked,
      isMuted: isMuted,
      isOnline: isOnline,
      isDeleted: isDeleted,
      lastContactedAt: lastContactedAt,
      updateAt: updateAt,
    );
  }
}

@embedded
class LastMessage {
  LastMessage({
    this.type,
    this.content,
  });

  factory LastMessage.fromJson(Map<String, dynamic> json) => LastMessage(
        type: asT<String?>(json['type']),
        content: json['content'] == null
            ? null
            : Content.fromJson(asT<Map<String, dynamic>>(json['content'])!),
      );

  String? type;
  Content? content;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'content': content,
      };

  LastMessage copy() {
    return LastMessage(
      type: type,
      content: content?.copy(),
    );
  }
}

@embedded
class Content {
  Content({
    this.content,
    this.extra,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        content: asT<String?>(json['content']),
        extra: json['extra'] == null
            ? null
            : Extra.fromJson(asT<Map<String, dynamic>>(json['extra'])!),
      );

  String? content;
  Extra? extra;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'content': content,
        'extra': extra,
      };

  Content copy() {
    return Content(
      content: content,
      extra: extra?.copy(),
    );
  }
}

@embedded
class Extra {
  Extra({
    this.from,
    this.params,
    this.device,
    this.ip,
    this.recalledEnable,
  });

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
        from: asT<String?>(json['from']),
        params: asT<String?>(json['params']),
        device: asT<int?>(json['device']),
        ip: asT<String?>(json['ip']),
        recalledEnable: asT<int?>(json['recalled_enable']),
      );

  String? from;
  String? params;
  int? device;
  String? ip;
  int? recalledEnable;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'from': from,
        'params': params,
        'device': device,
        'ip': ip,
        'recalled_enable': recalledEnable,
      };

  Extra copy() {
    return Extra(
      from: from,
      params: params,
      device: device,
      ip: ip,
      recalledEnable: recalledEnable,
    );
  }
}
