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
      title: fields[38] as String,
      color: fields[39] as SimpleColor,
      segments: (fields[40] as List).cast<SpinnerSegmentModel>(),
      description: fields[41] as String?,
      id: fields[23] as String?,
      stats: fields[37] as SpinnerStatsModel?,
      isFavorite: fields[42] == null ? false : fields[42] as bool,
      tags: fields[43] == null ? [] : (fields[43] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(23)
      ..write(obj.id)
      ..writeByte(37)
      ..write(obj.stats)
      ..writeByte(38)
      ..write(obj.title)
      ..writeByte(39)
      ..write(obj.color)
      ..writeByte(40)
      ..write(obj.segments)
      ..writeByte(41)
      ..write(obj.description)
      ..writeByte(42)
      ..write(obj.isFavorite)
      ..writeByte(43)
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
      (fields[0] as num).toInt(),
      (fields[1] as num).toInt(),
      (fields[2] as num).toInt(),
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

class SpinnerStatsModelAdapter extends TypeAdapter<SpinnerStatsModel> {
  @override
  final typeId = 2;

  @override
  SpinnerStatsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpinnerStatsModel(
      createdTime: (fields[0] as num?)?.toInt(),
      lastEditTime: (fields[13] as num?)?.toInt(),
      lastSpinTime: (fields[14] as num?)?.toInt(),
      deletedTime: (fields[15] as num?)?.toInt(),
      spinCount: fields[16] == null ? 0 : (fields[16] as num).toInt(),
      editCount: fields[17] == null ? 0 : (fields[17] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerStatsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.createdTime)
      ..writeByte(13)
      ..write(obj.lastEditTime)
      ..writeByte(14)
      ..write(obj.lastSpinTime)
      ..writeByte(15)
      ..write(obj.deletedTime)
      ..writeByte(16)
      ..write(obj.spinCount)
      ..writeByte(17)
      ..write(obj.editCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpinnerStatsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ColorPaletteModelAdapter extends TypeAdapter<ColorPaletteModel> {
  @override
  final typeId = 3;

  @override
  ColorPaletteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColorPaletteModel(
      title: fields[3] as String,
      colors: (fields[4] as List).cast<SimpleColor>(),
      isFavorite: fields[5] == null ? false : fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ColorPaletteModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.colors)
      ..writeByte(5)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorPaletteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpinnerSegmentModelAdapter extends TypeAdapter<SpinnerSegmentModel> {
  @override
  final typeId = 4;

  @override
  SpinnerSegmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpinnerSegmentModel(
      title: fields[0] as String,
      color: fields[1] == null ? SimpleColor.green : fields[1] as SimpleColor,
      weight: fields[2] == null ? 1 : (fields[2] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerSegmentModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.color)
      ..writeByte(2)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpinnerSegmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
