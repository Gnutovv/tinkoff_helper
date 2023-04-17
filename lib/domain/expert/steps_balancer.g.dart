// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps_balancer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StepsBalancerAdapter extends TypeAdapter<_$_StepBalancer> {
  @override
  final int typeId = 0;

  @override
  _$_StepBalancer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_StepBalancer(
      stepRateList: (fields[0] as List).cast<int>(),
      tradeBalance: fields[1] as double,
      stocksAmount: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_StepBalancer obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.tradeBalance)
      ..writeByte(2)
      ..write(obj.stocksAmount)
      ..writeByte(0)
      ..write(obj.stepRateList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StepsBalancerAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
