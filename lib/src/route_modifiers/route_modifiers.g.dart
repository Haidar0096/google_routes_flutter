// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteModifiers _$RouteModifiersFromJson(Map<String, dynamic> json) =>
    RouteModifiers(
      avoidTolls: json['avoidTolls'] as bool?,
      avoidHighways: json['avoidHighways'] as bool?,
      avoidFerries: json['avoidFerries'] as bool?,
      avoidIndoor: json['avoidIndoor'] as bool?,
      vehicleInfo: json['vehicleInfo'] == null
          ? null
          : VehicleInfo.fromJson(json['vehicleInfo'] as Map<String, dynamic>),
      tollPasses: (json['tollPasses'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TollPassEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$RouteModifiersToJson(RouteModifiers instance) =>
    <String, dynamic>{
      'avoidTolls': instance.avoidTolls,
      'avoidHighways': instance.avoidHighways,
      'avoidFerries': instance.avoidFerries,
      'avoidIndoor': instance.avoidIndoor,
      'vehicleInfo': instance.vehicleInfo,
      'tollPasses':
          instance.tollPasses?.map((e) => _$TollPassEnumMap[e]!).toList(),
    };

const _$TollPassEnumMap = {
  TollPass.TOLL_PASS_UNSPECIFIED: 'TOLL_PASS_UNSPECIFIED',
  TollPass.AU_ETOLL_TAG: 'AU_ETOLL_TAG',
  TollPass.AU_EWAY_TAG: 'AU_EWAY_TAG',
  TollPass.AU_LINKT: 'AU_LINKT',
  TollPass.AR_TELEPASE: 'AR_TELEPASE',
  TollPass.BR_AUTO_EXPRESO: 'BR_AUTO_EXPRESO',
  TollPass.BR_CONECTCAR: 'BR_CONECTCAR',
  TollPass.BR_MOVE_MAIS: 'BR_MOVE_MAIS',
  TollPass.BR_PASSA_RAPIDO: 'BR_PASSA_RAPIDO',
  TollPass.BR_SEM_PARAR: 'BR_SEM_PARAR',
  TollPass.BR_TAGGY: 'BR_TAGGY',
  TollPass.BR_VELOE: 'BR_VELOE',
  TollPass.CA_US_AKWASASNE_SEAWAY_CORPORATE_CARD:
      'CA_US_AKWASASNE_SEAWAY_CORPORATE_CARD',
  TollPass.CA_US_AKWASASNE_SEAWAY_TRANSIT_CARD:
      'CA_US_AKWASASNE_SEAWAY_TRANSIT_CARD',
  TollPass.CA_US_BLUE_WATER_EDGE_PASS: 'CA_US_BLUE_WATER_EDGE_PASS',
  TollPass.CA_US_CONNEXION: 'CA_US_CONNEXION',
  TollPass.CA_US_NEXUS_CARD: 'CA_US_NEXUS_CARD',
  TollPass.ID_E_TOLL: 'ID_E_TOLL',
  TollPass.IN_FASTAG: 'IN_FASTAG',
  TollPass.IN_LOCAL_HP_PLATE_EXEMPT: 'IN_LOCAL_HP_PLATE_EXEMPT',
  TollPass.MX_IAVE: 'MX_IAVE',
  TollPass.MX_PASE: 'MX_PASE',
  TollPass.MX_QUICKPASS: 'MX_QUICKPASS',
  TollPass.MX_SISTEMA_TELEPEAJE_CHIHUAHUA: 'MX_SISTEMA_TELEPEAJE_CHIHUAHUA',
  TollPass.MX_TAG_IAVE: 'MX_TAG_IAVE',
  TollPass.MX_TAG_TELEVIA: 'MX_TAG_TELEVIA',
  TollPass.MX_TELEVIA: 'MX_TELEVIA',
  TollPass.MX_VIAPASS: 'MX_VIAPASS',
  TollPass.US_AL_FREEDOM_PASS: 'US_AL_FREEDOM_PASS',
  TollPass.US_AK_ANTON_ANDERSON_TUNNEL_BOOK_OF_10_TICKETS:
      'US_AK_ANTON_ANDERSON_TUNNEL_BOOK_OF_10_TICKETS',
  TollPass.US_CA_FASTRAK: 'US_CA_FASTRAK',
  TollPass.US_CA_FASTRAK_CAV_STICKER: 'US_CA_FASTRAK_CAV_STICKER',
  TollPass.US_CO_EXPRESSTOLL: 'US_CO_EXPRESSTOLL',
  TollPass.US_CO_GO_PASS: 'US_CO_GO_PASS',
  TollPass.US_DE_EZPASSDE: 'US_DE_EZPASSDE',
  TollPass.US_FL_BOB_SIKES_TOLL_BRIDGE_PASS: 'US_FL_BOB_SIKES_TOLL_BRIDGE_PASS',
  TollPass.US_FL_DUNES_COMMUNITY_DEVELOPMENT_DISTRICT_EXPRESSCARD:
      'US_FL_DUNES_COMMUNITY_DEVELOPMENT_DISTRICT_EXPRESSCARD',
  TollPass.US_FL_EPASS: 'US_FL_EPASS',
  TollPass.US_FL_GIBA_TOLL_PASS: 'US_FL_GIBA_TOLL_PASS',
  TollPass.US_FL_LEEWAY: 'US_FL_LEEWAY',
  TollPass.US_FL_SUNPASS: 'US_FL_SUNPASS',
  TollPass.US_FL_SUNPASS_PRO: 'US_FL_SUNPASS_PRO',
  TollPass.US_IL_EZPASSIL: 'US_IL_EZPASSIL',
  TollPass.US_IL_IPASS: 'US_IL_IPASS',
  TollPass.US_IN_EZPASSIN: 'US_IN_EZPASSIN',
  TollPass.US_KS_BESTPASS_HORIZON: 'US_KS_BESTPASS_HORIZON',
  TollPass.US_KS_KTAG: 'US_KS_KTAG',
  TollPass.US_KS_NATIONALPASS: 'US_KS_NATIONALPASS',
  TollPass.US_KS_PREPASS_ELITEPASS: 'US_KS_PREPASS_ELITEPASS',
  TollPass.US_KY_RIVERLINK: 'US_KY_RIVERLINK',
  TollPass.US_LA_GEAUXPASS: 'US_LA_GEAUXPASS',
  TollPass.US_LA_TOLL_TAG: 'US_LA_TOLL_TAG',
  TollPass.US_MA_EZPASSMA: 'US_MA_EZPASSMA',
  TollPass.US_MD_EZPASSMD: 'US_MD_EZPASSMD',
  TollPass.US_ME_EZPASSME: 'US_ME_EZPASSME',
  TollPass.US_MI_AMBASSADOR_BRIDGE_PREMIER_COMMUTER_CARD:
      'US_MI_AMBASSADOR_BRIDGE_PREMIER_COMMUTER_CARD',
  TollPass.US_MI_BCPASS: 'US_MI_BCPASS',
  TollPass.US_MI_GROSSE_ILE_TOLL_BRIDGE_PASS_TAG:
      'US_MI_GROSSE_ILE_TOLL_BRIDGE_PASS_TAG',
  TollPass.US_MI_IQ_PROX_CARD: 'US_MI_IQ_PROX_CARD',
  TollPass.US_MI_IQ_TAG: 'US_MI_IQ_TAG',
  TollPass.US_MI_MACKINAC_BRIDGE_MAC_PASS: 'US_MI_MACKINAC_BRIDGE_MAC_PASS',
  TollPass.US_MI_NEXPRESS_TOLL: 'US_MI_NEXPRESS_TOLL',
  TollPass.US_MN_EZPASSMN: 'US_MN_EZPASSMN',
  TollPass.US_NC_EZPASSNC: 'US_NC_EZPASSNC',
  TollPass.US_NC_PEACH_PASS: 'US_NC_PEACH_PASS',
  TollPass.US_NC_QUICK_PASS: 'US_NC_QUICK_PASS',
  TollPass.US_NH_EZPASSNH: 'US_NH_EZPASSNH',
  TollPass.US_NJ_DOWNBEACH_EXPRESS_PASS: 'US_NJ_DOWNBEACH_EXPRESS_PASS',
  TollPass.US_NJ_EZPASSNJ: 'US_NJ_EZPASSNJ',
  TollPass.US_NY_EXPRESSPASS: 'US_NY_EXPRESSPASS',
  TollPass.US_NY_EZPASSNY: 'US_NY_EZPASSNY',
  TollPass.US_OH_EZPASSOH: 'US_OH_EZPASSOH',
  TollPass.US_PA_EZPASSPA: 'US_PA_EZPASSPA',
  TollPass.US_RI_EZPASSRI: 'US_RI_EZPASSRI',
  TollPass.US_SC_PALPASS: 'US_SC_PALPASS',
  TollPass.US_TX_AVI_TAG: 'US_TX_AVI_TAG',
  TollPass.US_TX_BANCPASS: 'US_TX_BANCPASS',
  TollPass.US_TX_DEL_RIO_PASS: 'US_TX_DEL_RIO_PASS',
  TollPass.US_TX_EFAST_PASS: 'US_TX_EFAST_PASS',
  TollPass.US_TX_EAGLE_PASS_EXPRESS_CARD: 'US_TX_EAGLE_PASS_EXPRESS_CARD',
  TollPass.US_TX_EPTOLL: 'US_TX_EPTOLL',
  TollPass.US_TX_EZ_CROSS: 'US_TX_EZ_CROSS',
  TollPass.US_TX_EZTAG: 'US_TX_EZTAG',
  TollPass.US_TX_FUEGO_TAG: 'US_TX_FUEGO_TAG',
  TollPass.US_TX_LAREDO_TRADE_TAG: 'US_TX_LAREDO_TRADE_TAG',
  TollPass.US_TX_PLUSPASS: 'US_TX_PLUSPASS',
  TollPass.US_TX_TOLLTAG: 'US_TX_TOLLTAG',
  TollPass.US_TX_TXTAG: 'US_TX_TXTAG',
  TollPass.US_TX_XPRESS_CARD: 'US_TX_XPRESS_CARD',
  TollPass.US_UT_ADAMS_AVE_PARKWAY_EXPRESSCARD:
      'US_UT_ADAMS_AVE_PARKWAY_EXPRESSCARD',
  TollPass.US_VA_EZPASSVA: 'US_VA_EZPASSVA',
  TollPass.US_WA_BREEZEBY: 'US_WA_BREEZEBY',
  TollPass.US_WA_GOOD_TO_GO: 'US_WA_GOOD_TO_GO',
  TollPass.US_WV_EZPASSWV: 'US_WV_EZPASSWV',
  TollPass.US_WV_MEMORIAL_BRIDGE_TICKETS: 'US_WV_MEMORIAL_BRIDGE_TICKETS',
  TollPass.US_WV_NEWELL_TOLL_BRIDGE_TICKET: 'US_WV_NEWELL_TOLL_BRIDGE_TICKET',
};
