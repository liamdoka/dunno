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
      title: fields[16] as String,
      color: fields[17] as SimpleColor,
      items: (fields[18] as List).cast<String>(),
      description: fields[19] as String?,
      lastSpinTime: (fields[20] as num?)?.toInt(),
      id: fields[23] as String?,
      createdTime: (fields[24] as num?)?.toInt(),
      isFavorite: fields[21] == null ? false : fields[21] as bool,
      tags: fields[22] == null ? [] : (fields[22] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(16)
      ..write(obj.title)
      ..writeByte(17)
      ..write(obj.color)
      ..writeByte(18)
      ..write(obj.items)
      ..writeByte(19)
      ..write(obj.description)
      ..writeByte(20)
      ..write(obj.lastSpinTime)
      ..writeByte(21)
      ..write(obj.isFavorite)
      ..writeByte(22)
      ..write(obj.tags)
      ..writeByte(23)
      ..write(obj.id)
      ..writeByte(24)
      ..write(obj.createdTime);
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

class SimpleColorAdapter extends TypeAdapter<SimpleColor> {
  @override
  final typeId = 1;

  @override
  SimpleColor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SimpleColor(
      r: (fields[0] as num).toInt(),
      g: (fields[1] as num).toInt(),
      b: (fields[2] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SimpleColor obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.r)
      ..writeByte(1)
      ..write(obj.g)
      ..writeByte(2)
      ..write(obj.b);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleColorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
