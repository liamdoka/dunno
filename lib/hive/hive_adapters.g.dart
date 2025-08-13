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
      stats: fields[37] as DunnoStatsModel?,
      paletteId: fields[63] as String?,
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
      ..writeByte(60)
      ..write(obj.isFavorite)
      ..writeByte(61)
      ..write(obj.tags)
      ..writeByte(62)
      ..write(obj.confetti)
      ..writeByte(63)
      ..write(obj.paletteId);
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
      title: fields[6] as String,
      colors: (fields[7] as List).cast<SimpleColor>(),
      id: fields[8] as String?,
      stats: fields[10] as DunnoStatsModel?,
      isFavorite: fields[9] == null ? false : fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ColorPaletteModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.colors)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.isFavorite)
      ..writeByte(10)
      ..write(obj.stats);
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
      id: fields[8] as String?,
      appTheme: fields[10] == null ? ThemeMode.system : fields[10] as ThemeMode,
      appTint: fields[11] == null
          ? const SimpleColor(103, 58, 183)
          : fields[11] as SimpleColor,
      defaultConfetti: fields[12] == null ? '⭐️⭐️⭐️' : fields[12] as String,
      confettiAmount: fields[13] == null
          ? ConfettiAmount.medium
          : fields[13] as ConfettiAmount,
      defaultColorPalette: fields[9] as ColorPaletteModel?,
    );
  }

  @override
  void write(BinaryWriter writer, UserPreferencesModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.defaultColorPalette)
      ..writeByte(10)
      ..write(obj.appTheme)
      ..writeByte(11)
      ..write(obj.appTint)
      ..writeByte(12)
      ..write(obj.defaultConfetti)
      ..writeByte(13)
      ..write(obj.confettiAmount);
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

class ConfettiAmountAdapter extends TypeAdapter<ConfettiAmount> {
  @override
  final typeId = 9;

  @override
  ConfettiAmount read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ConfettiAmount.low;
      case 1:
        return ConfettiAmount.medium;
      case 2:
        return ConfettiAmount.high;
      case 3:
        return ConfettiAmount.ridiculous;
      default:
        return ConfettiAmount.low;
    }
  }

  @override
  void write(BinaryWriter writer, ConfettiAmount obj) {
    switch (obj) {
      case ConfettiAmount.low:
        writer.writeByte(0);
      case ConfettiAmount.medium:
        writer.writeByte(1);
      case ConfettiAmount.high:
        writer.writeByte(2);
      case ConfettiAmount.ridiculous:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfettiAmountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DunnoStatsModelAdapter extends TypeAdapter<DunnoStatsModel> {
  @override
  final typeId = 10;

  @override
  DunnoStatsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DunnoStatsModel(
      createdTime: (fields[0] as num?)?.toInt(),
      lastEditTime: (fields[1] as num?)?.toInt(),
      lastSpinTime: (fields[2] as num?)?.toInt(),
      deletedTime: (fields[3] as num?)?.toInt(),
      spinCount: fields[4] == null ? 0 : (fields[4] as num).toInt(),
      editCount: fields[5] == null ? 0 : (fields[5] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, DunnoStatsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.createdTime)
      ..writeByte(1)
      ..write(obj.lastEditTime)
      ..writeByte(2)
      ..write(obj.lastSpinTime)
      ..writeByte(3)
      ..write(obj.deletedTime)
      ..writeByte(4)
      ..write(obj.spinCount)
      ..writeByte(5)
      ..write(obj.editCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DunnoStatsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
