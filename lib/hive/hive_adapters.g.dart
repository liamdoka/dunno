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
      title: fields[54] as String,
      color: fields[55] as SimpleColor,
      segments: (fields[56] as List).cast<SpinnerSegmentModel>(),
      description: fields[57] as String?,
      id: fields[23] as String?,
      confetti: fields[62] as String?,
      stats: fields[37] as SpinnerStatsModel?,
      palette: fields[59] as ColorPaletteModel?,
      isFavorite: fields[60] == null ? false : fields[60] as bool,
      tags: fields[61] == null ? [] : (fields[61] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(23)
      ..write(obj.id)
      ..writeByte(37)
      ..write(obj.stats)
      ..writeByte(54)
      ..write(obj.title)
      ..writeByte(55)
      ..write(obj.color)
      ..writeByte(56)
      ..write(obj.segments)
      ..writeByte(57)
      ..write(obj.description)
      ..writeByte(59)
      ..write(obj.palette)
      ..writeByte(60)
      ..write(obj.isFavorite)
      ..writeByte(61)
      ..write(obj.tags)
      ..writeByte(62)
      ..write(obj.confetti);
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
      lastEditTime: (fields[23] as num?)?.toInt(),
      lastSpinTime: (fields[24] as num?)?.toInt(),
      deletedTime: (fields[25] as num?)?.toInt(),
      spinCount: fields[26] == null ? 0 : (fields[26] as num).toInt(),
      editCount: fields[27] == null ? 0 : (fields[27] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerStatsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.createdTime)
      ..writeByte(23)
      ..write(obj.lastEditTime)
      ..writeByte(24)
      ..write(obj.lastSpinTime)
      ..writeByte(25)
      ..write(obj.deletedTime)
      ..writeByte(26)
      ..write(obj.spinCount)
      ..writeByte(27)
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
      winCount: fields[3] == null ? 0 : (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SpinnerSegmentModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.color)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.winCount);
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

class UserPreferencesModelAdapter extends TypeAdapter<UserPreferencesModel> {
  @override
  final typeId = 5;

  @override
  UserPreferencesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserPreferencesModel(
      appTheme: fields[0] == null ? ThemeMode.system : fields[0] as ThemeMode,
      appTint: fields[3] == null
          ? const SimpleColor(103, 58, 183)
          : fields[3] as SimpleColor,
      defaultColorPalette: fields[1] == null
          ? DunnoColorPalettes.bubblegum
          : fields[1] as ColorPaletteModel,
      defaultConfetti: fields[4] == null ? '⭐️⭐️⭐️' : fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserPreferencesModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.appTheme)
      ..writeByte(1)
      ..write(obj.defaultColorPalette)
      ..writeByte(3)
      ..write(obj.appTint)
      ..writeByte(4)
      ..write(obj.defaultConfetti);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPreferencesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ThemeModeAdapter extends TypeAdapter<ThemeMode> {
  @override
  final typeId = 6;

  @override
  ThemeMode read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  @override
  void write(BinaryWriter writer, ThemeMode obj) {
    switch (obj) {
      case ThemeMode.system:
        writer.writeByte(0);
      case ThemeMode.light:
        writer.writeByte(1);
      case ThemeMode.dark:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeModeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserStatsModelAdapter extends TypeAdapter<UserStatsModel> {
  @override
  final typeId = 7;

  @override
  UserStatsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserStatsModel(
      totalSpins: fields[0] == null ? 0 : (fields[0] as num).toInt(),
      spinnersCreatedCount: fields[1] == null ? 0 : (fields[1] as num).toInt(),
      spinnersDeletedCount: fields[2] == null ? 0 : (fields[2] as num).toInt(),
      confettiCount: fields[3] == null ? 0 : (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, UserStatsModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.totalSpins)
      ..writeByte(1)
      ..write(obj.spinnersCreatedCount)
      ..writeByte(2)
      ..write(obj.spinnersDeletedCount)
      ..writeByte(3)
      ..write(obj.confettiCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserStatsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
