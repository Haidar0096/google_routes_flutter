// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'toll_pass.g.dart';

/// List of toll passes around the world that we support.
@JsonEnum(alwaysCreate: true)
enum TollPass {
  /// Not used. If this value is used, then the request fails.
  TOLL_PASS_UNSPECIFIED,

  /// Sydney toll pass. See additional details at https://www.myetoll.com.au.
  AU_ETOLL_TAG,

  /// Sydney toll pass. See additional details at https://www.tollpay.com.au.
  AU_EWAY_TAG,

  /// Australia-wide toll pass. See additional details at https://www.linkt.com.au/.
  AU_LINKT,

  ///	Argentina toll pass. See additional details at https://telepase.com.ar.
  AR_TELEPASE,

  ///	Brazil toll pass. See additional details at https://www.autoexpreso.com.
  BR_AUTO_EXPRESO,

  ///	Brazil toll pass. See additional details at https://conectcar.com.
  BR_CONECTCAR,

  ///	Brazil toll pass. See additional details at https://movemais.com.
  BR_MOVE_MAIS,

  ///	Brazil toll pass. See additional details at https://pasorapido.gob.do/
  BR_PASSA_RAPIDO,

  /// Brazil toll pass. See additional details at https://www.semparar.com.br.
  BR_SEM_PARAR,

  /// Brazil toll pass. See additional details at https://taggy.com.br.
  BR_TAGGY,

  /// Brazil toll pass. See additional details at https://veloe.com.br/site/onde-usar.
  BR_VELOE,

  /// Canada to United States border crossing.
  CA_US_AKWASASNE_SEAWAY_CORPORATE_CARD,

  /// Canada to United States border crossing.
  CA_US_AKWASASNE_SEAWAY_TRANSIT_CARD,

  /// Ontario, Canada to Michigan, United States border crossing.
  CA_US_BLUE_WATER_EDGE_PASS,

  ///	Ontario, Canada to Michigan, United States border crossing.
  CA_US_CONNEXION,

  /// Canada to United States border crossing.
  CA_US_NEXUS_CARD,

  ///	Indonesia. E-card provided by multiple banks used to pay for tolls.
  /// All e-cards via banks are charged the same so only one enum value is
  /// needed. E.g. - Bank Mandiri https://www.bankmandiri.co.id/e-money
  /// - BCA https://www.bca.co.id/flazz -
  /// BNI https://www.bni.co.id/id-id/ebanking/tapcash
  ID_E_TOLL,

  /// India.
  IN_FASTAG,

  ///	India, HP state plate exemption.
  IN_LOCAL_HP_PLATE_EXEMPT,

  ///	Mexico toll pass. https://iave.capufe.gob.mx/#/
  MX_IAVE,

  ///	Mexico https://www.pase.com.mx
  MX_PASE,

  ///	Mexico https://operadoravial.com/quick-pass/
  MX_QUICKPASS,

  ///	http://appsh.chihuahua.gob.mx/transparencia/?doc=/ingresos/TelepeajeFormato4.pdf
  MX_SISTEMA_TELEPEAJE_CHIHUAHUA,

  /// Mexico,
  MX_TAG_IAVE,

  ///	Mexico toll pass company. One of many operating in Mexico City. See
  /// additional details at https://www.televia.com.mx.
  MX_TAG_TELEVIA,

  /// Mexico toll pass company. One of many operating in Mexico City.
  /// https://www.televia.com.mx
  MX_TELEVIA,

  ///	Mexico toll pass. See additional details at
  /// https://www.viapass.com.mx/viapass/web_home.aspx.
  MX_VIAPASS,

  ///	AL, USA.
  US_AL_FREEDOM_PASS,

  ///	AK, USA.
  US_AK_ANTON_ANDERSON_TUNNEL_BOOK_OF_10_TICKETS,

  /// CA, USA.
  US_CA_FASTRAK,

  /// 	Indicates driver has any FasTrak pass in addition to the DMV issued Clean
  /// Air Vehicle (CAV) sticker.
  /// https://www.bayareafastrak.org/en/guide/doINeedFlex.shtml
  US_CA_FASTRAK_CAV_STICKER,

  ///	CO, USA.
  US_CO_EXPRESSTOLL,

  /// CO, USA.
  US_CO_GO_PASS,

  ///	DE, USA.
  US_DE_EZPASSDE,

  /// FL, USA.
  US_FL_BOB_SIKES_TOLL_BRIDGE_PASS,

  ///	FL, USA.
  US_FL_DUNES_COMMUNITY_DEVELOPMENT_DISTRICT_EXPRESSCARD,

  /// FL, USA.
  US_FL_EPASS,

  /// FL, USA.
  US_FL_GIBA_TOLL_PASS,

  /// FL, USA.
  US_FL_LEEWAY,

  /// FL, USA.
  US_FL_SUNPASS,

  /// FL, USA.
  US_FL_SUNPASS_PRO,

  /// IL, USA.
  US_IL_EZPASSIL,

  /// IL, USA.
  US_IL_IPASS,

  /// IN, USA.
  US_IN_EZPASSIN,

  /// KS, USA.
  US_KS_BESTPASS_HORIZON,

  /// KS, USA.
  US_KS_KTAG,

  /// KS, USA.
  US_KS_NATIONALPASS,

  /// KS, USA.
  US_KS_PREPASS_ELITEPASS,

  /// KY, USA.
  US_KY_RIVERLINK,

  /// LA, USA.
  US_LA_GEAUXPASS,

  /// LA, USA.
  US_LA_TOLL_TAG,

  /// MA, USA.
  US_MA_EZPASSMA,

  /// MD, USA.
  US_MD_EZPASSMD,

  /// ME, USA.
  US_ME_EZPASSME,

  /// MI, USA.
  US_MI_AMBASSADOR_BRIDGE_PREMIER_COMMUTER_CARD,

  /// MI, USA.
  US_MI_BCPASS,

  /// MI, USA.
  US_MI_GROSSE_ILE_TOLL_BRIDGE_PASS_TAG,

  /// MI, USA. Deprecated as this pass type no longer exists.
  US_MI_IQ_PROX_CARD,

  /// MI, USA.
  US_MI_IQ_TAG,

  /// MI, USA.
  US_MI_MACKINAC_BRIDGE_MAC_PASS,

  /// MI, USA.
  US_MI_NEXPRESS_TOLL,

  /// MN, USA.
  US_MN_EZPASSMN,

  /// NC, USA.
  US_NC_EZPASSNC,

  /// NC, USA.
  US_NC_PEACH_PASS,

  /// NC, USA.
  US_NC_QUICK_PASS,

  /// NH, USA.
  US_NH_EZPASSNH,

  /// NJ, USA.
  US_NJ_DOWNBEACH_EXPRESS_PASS,

  /// NJ, USA.
  US_NJ_EZPASSNJ,

  /// NY, USA.
  US_NY_EXPRESSPASS,

  /// NY, USA.
  US_NY_EZPASSNY,

  /// OH, USA.
  US_OH_EZPASSOH,

  /// PA, USA.
  US_PA_EZPASSPA,

  /// RI, USA.
  US_RI_EZPASSRI,

  /// SC, USA.
  US_SC_PALPASS,

  /// TX, USA.
  US_TX_AVI_TAG,

  /// TX, USA.
  US_TX_BANCPASS,

  /// TX, USA.
  US_TX_DEL_RIO_PASS,

  /// TX, USA.
  US_TX_EFAST_PASS,
// TX, USA.
  US_TX_EAGLE_PASS_EXPRESS_CARD,

  /// TX, USA.
  US_TX_EPTOLL,

  /// TX, USA.
  US_TX_EZ_CROSS,

  ///	TX, USA.
  US_TX_EZTAG,

  ///	TX, USA.
  US_TX_FUEGO_TAG,

  ///	TX, USA.
  US_TX_LAREDO_TRADE_TAG,

  ///	TX, USA.
  US_TX_PLUSPASS,

  ///	TX, USA.
  US_TX_TOLLTAG,

  ///	TX, USA.
  US_TX_TXTAG,

  ///	TX, USA.
  US_TX_XPRESS_CARD,

  ///	UT, USA.
  US_UT_ADAMS_AVE_PARKWAY_EXPRESSCARD,

  ///	VA, USA.
  US_VA_EZPASSVA,

  ///	WA, USA.
  US_WA_BREEZEBY,

  ///	WA, USA.
  US_WA_GOOD_TO_GO,

  ///	WV, USA.
  US_WV_EZPASSWV,

  ///	WV, USA.
  US_WV_MEMORIAL_BRIDGE_TICKETS,

  ///	WV, USA.
  US_WV_NEWELL_TOLL_BRIDGE_TICKET
}
