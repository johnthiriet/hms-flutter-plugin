/*
    Copyright 2020-2024. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of huawei_map;

@immutable
class HeatMap {
  final HeatMapId heatMapId;
  final Map<double, Color>? color;
  final int? resourceId;
  final String? dataSet;
  final double intensity;
  final Map<double, double>? intensityMap;
  final double opacity;
  final Map<double, double>? opacityMap;
  final double radius;
  final Map<double, double>? radiusMap;
  final RadiusUnit radiusUnit;
  final bool visible;

  const HeatMap({
    required this.heatMapId,
    this.color,
    this.resourceId,
    this.dataSet,
    this.intensity = 1.0,
    this.intensityMap,
    this.opacity = 0.0,
    this.opacityMap,
    this.radius = 10,
    this.radiusMap,
    this.radiusUnit = RadiusUnit.pixel,
    this.visible = true,
  });

  HeatMap updateCopy({
    Map<double, Color>? color,
    int? resourceId,
    String? dataSet,
    double? intensity,
    Map<double, double>? intensityMap,
    double? opacity,
    Map<double, double>? opacityMap,
    double? radius,
    Map<double, double>? radiusMap,
    RadiusUnit? radiusUnit,
    bool? visible,
  }) {
    return HeatMap(
      heatMapId: heatMapId,
      color: color ?? this.color,
      resourceId: resourceId ?? this.resourceId,
      dataSet: dataSet ?? this.dataSet,
      intensity: intensity ?? this.intensity,
      intensityMap: intensityMap ?? this.intensityMap,
      opacity: opacity ?? this.opacity,
      opacityMap: opacityMap ?? this.opacityMap,
      radius: radius ?? this.radius,
      radiusMap: radiusMap ?? this.radiusMap,
      radiusUnit: radiusUnit ?? this.radiusUnit,
      visible: visible ?? this.visible,
    );
  }

  HeatMap clone() => updateCopy();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (runtimeType != other.runtimeType) {
      return false;
    }
    return other is HeatMap &&
        heatMapId == other.heatMapId &&
        color == other.color &&
        resourceId == other.resourceId &&
        dataSet == other.dataSet &&
        intensity == other.intensity &&
        intensityMap == other.intensityMap &&
        opacity == other.opacity &&
        opacityMap == other.opacityMap &&
        radius == other.radius &&
        radiusMap == other.radiusMap &&
        radiusUnit == other.radiusUnit &&
        visible == other.visible;
  }

  @override
  int get hashCode => heatMapId.hashCode;
}
