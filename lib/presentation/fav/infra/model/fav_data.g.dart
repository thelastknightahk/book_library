// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserCredentialAdapter extends TypeAdapter<UserCredential> {
  @override
  final int typeId = 2;

  @override
  UserCredential read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserCredential(
      bookID: fields[0] as String,
      bookTitle: fields[1] as String,
      bookAuthors: fields[2] as String,
      bookImage: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserCredential obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.bookID)
      ..writeByte(1)
      ..write(obj.bookTitle)
      ..writeByte(2)
      ..write(obj.bookAuthors)
      ..writeByte(3)
      ..write(obj.bookImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCredentialAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
