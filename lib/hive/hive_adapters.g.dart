// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class SpinnerModelAdapter extends TypeAdapter<SpinnerModel> {
  @override
  final typeId = 0;

  @override
  SpinnerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpinnerModel(
      title: fields[0] as String,
      items: (fields[1] as List).cast<String>(),
      description: fields[2] as String?,
      tags: fields[3] == null ? [] : (fields[3] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.items)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpinnerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
