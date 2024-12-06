.class public interface abstract Lmega/car/config/Ecu;
.super Ljava/lang/Object;
.source "Ecu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Ecu$TboxNetworkInfo;,
        Lmega/car/config/Ecu$RetCode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x33
    permission = "mega.car.permission.ECU"
    source = 0x3
.end annotation


# static fields
.field public static final ID_CONFIG_3D_VEHICLE_CONTROL:I = 0x33100188
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_5G_FUNC:I = 0x3310019b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AAC:I = 0x33100214
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ABM:I = 0x331000ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ABS:I = 0x331000ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ACC_SG:I = 0x33100004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ACP:I = 0x331000da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AC_ZONE:I = 0x33100019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ADAS:I = 0x331001a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ADAS_MAP:I = 0x33100055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AEB:I = 0x3310004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AEB_CI:I = 0x33100003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AEB_MEB:I = 0x33100099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AEB_P:I = 0x33100006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AFS:I = 0x331001b6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AI:I = 0x33100016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AIPM_TFT:I = 0x331000d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AIR_ANTI_FOG:I = 0x331001e4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AIR_QUALITY_SYSTEM:I = 0x33100207
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AIR_SUSPENSION:I = 0x331000a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ALCOLOCK:I = 0x33100272
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ALTO_SPEAKER_NUM:I = 0x33100223
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AMB:I = 0x3310017f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AMBIENT_LIGHT_TURN:I = 0x3310007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AMB_TYPE:I = 0x33100030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ANC:I = 0x33100183
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ANDROID_AUTO:I = 0x331000de
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ANGULAR_MILLMETER_RADER:I = 0x33100213
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_APA:I = 0x3310000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_APA70:I = 0x3310003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_APM:I = 0x331000e5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ARKAMYS_ADVANCED:I = 0x331000d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AR_ATMOSPHERE_LAMP:I = 0x331001d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AR_HUD:I = 0x33100110
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AR_NAVIGATION:I = 0x3310001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AR_PJT_TAILDOOR:I = 0x331001a5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ASD:I = 0x331001ce
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ASSIST_LINE:I = 0x331000e0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ASU:I = 0x3310017b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ATUO_DEFOG:I = 0x331000d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTOHOLD:I = 0x331001c1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTOPILOT:I = 0x33100219
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_BEAM:I = 0x33100018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_CLOSE_WINDOW:I = 0x331001a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_DEHUMIDIFER:I = 0x3310007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_DRIVE_LOCK:I = 0x331001c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_FOG_REMOVAL:I = 0x33100204
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_FUEL_SAVE:I = 0x331001aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_LAMP_CTRL:I = 0x33100252
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_LIGHT:I = 0x331000bb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_LOCK:I = 0x331000d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_PARKING:I = 0x331001da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_PILOT:I = 0x331001a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_PROJECTION_LAMP:I = 0x331001ed
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_VISOR_CURTAIN:I = 0x331001a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_WASH:I = 0x33100029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_WIPER:I = 0x331001c4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AUTO_WIPE_IN_REVERSE_GEAR:I = 0x3310019f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVAS_5W:I = 0x3310018e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVAS_A2B_SPEAKER:I = 0x33100060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVAS_PWM:I = 0x3310005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVAS_SPEAKER:I = 0x33100061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVM:I = 0x33100010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVM_INTER_METHOD:I = 0x331000ef
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AVM_TYPE:I = 0x331000c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_AWD:I = 0x3310014b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_A_LAMP:I = 0x331001d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BACK_CARE:I = 0x33100027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BCM:I = 0x331000a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BDM:I = 0x3310010d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BEIDOU:I = 0x331000f2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BLIND_LIDAR:I = 0x33100210
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BONFIRE_MODE:I = 0x33100037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BRAKE_FLUID_LEVEL:I = 0x33100180
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BRAND:I = 0x33100159
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BRIGHTNESS_AUTO_ADJUST:I = 0x33100249
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BSD:I = 0x3310009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BT:I = 0x33100247
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_BT_KEY:I = 0x331000d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_C385_VEHICLE_TYPE:I = 0x3310026d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CAMPING:I = 0x33100028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CARCOLOR:I = 0x331000a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CARPLAY:I = 0x331000dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CAR_SEARCH_MODE:I = 0x331001a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CCP:I = 0x331000f9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_COMPASS:I = 0x3310015e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_COOLANT_HOT_OFF:I = 0x33100164
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_COOLANT_HOT_ON:I = 0x33100163
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_ENGSPD_FILET_VAL_HIGH:I = 0x3310015f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_ENGSPD_FILET_VAL_LOW:I = 0x33100160
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_ENGSPD_MAX_VAL_HIGH:I = 0x33100161
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_ENGSPD_MAX_VAL_LOW:I = 0x33100162
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_IFC_DISPLAY:I = 0x33100170
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_IFC_INTERVAL:I = 0x33100172
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_IFC_MAX:I = 0x33100171
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CFG_ODO_FACTOR:I = 0x3310016f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CGW:I = 0x331000e4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHARGE_COVER:I = 0x33100066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHARGE_LIMIT:I = 0x33100075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHASSIS_REDUNDANCY:I = 0x3310020e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHILD_LEAVE_CHECK:I = 0x33100274
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHILD_LOCK:I = 0x33100205
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHILD_SEAT:I = 0x331001e9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CHRG_PILE_CNCT:I = 0x33100067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CLM:I = 0x331000b1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CMOS_INTER_MODE:I = 0x331000f0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CMS:I = 0x33100073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_COMBINATION_SWITCH_ASSY:I = 0x33100118
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_COMPASS_WORSHIP:I = 0x331001fc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CONFORTABLE_PARKING:I = 0x331001d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CONTINUOUS_DAMPING_CTRL:I = 0x33100266
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_COUNTRY_OR_REGION:I = 0x331001fe
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CRUISE:I = 0x33100001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CUSTOMIZATION_SETTING:I = 0x3310019a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CVBOX:I = 0x331000f5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_CWC:I = 0x331000ce
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DAB:I = 0x3310023d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DEFAULT_DRIVE_MODE:I = 0x33100144
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DEVIATION:I = 0x33100049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DFM:I = 0x33100251
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DISCHARGE_CUTOFF_QUANTITY:I = 0x3310005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DISPLAY_DIMENSIONS:I = 0x33100245
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DISPLAY_TYPE:I = 0x331000e8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DMS:I = 0x33100072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DMS_CMS_TYPE:I = 0x33100270
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DMTR:I = 0x331001b2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DOOR_OPEN_WARNING:I = 0x331001b7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DOW:I = 0x33100053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DOW_VOICE:I = 0x33100054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRAGGING_MODE:I = 0x3310027b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERLUMBAR_ADJUST:I = 0x33100082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_ADJUST:I = 0x3310007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_HEADREST:I = 0x3310017c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_HEAT:I = 0x33100031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_MASSAGE:I = 0x3310008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_MEMORY:I = 0x33100080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_VENT:I = 0x33100032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVERSEAT_WAIST_ADJUST:I = 0x33100235
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVER_AWAY_INFO:I = 0x33100102
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVER_CUSHION:I = 0x33100081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVE_MODE:I = 0x33100111
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVE_MODE_NUM:I = 0x331000e3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVE_MODE_NUM2:I = 0x331000ea
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_ASSISTANCE:I = 0x3310003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_ASSISTANCE_PUSH:I = 0x3310005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_ASSISTANT:I = 0x33100095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_COMPUTER:I = 0x33100244
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_FORM:I = 0x33100258
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_POWER_TYPE:I = 0x331001fa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRIVING_TYPE:I = 0x33100085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DRL:I = 0x33100064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DVR:I = 0x3310000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DVR_EMERGENCY_RECORD:I = 0x3310005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_DVR_STORAGE_MEDIUM:I = 0x3310026e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_E0X_PLATFORM:I = 0x3310020c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_E4WWD:I = 0x331001d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EAIRM:I = 0x3310022d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EAMP:I = 0x331000e2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EBS:I = 0x33100151
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ECALL:I = 0x3310010a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ECALL_LAWS:I = 0x3310027a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ECLM:I = 0x331000fa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ECONOMIC_MODE:I = 0x331001ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EDITABLE_HEADLIGHT:I = 0x331001ef
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EGS:I = 0x3310013b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EGS_TYPE:I = 0x33100140
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EIPM_ON_CAN:I = 0x331000c2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRIC_DESK:I = 0x33100190
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRIC_REAR_SPOILER:I = 0x3310025a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRIC_TAIL:I = 0x33100255
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRIC_TAILGATE:I = 0x3310002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRIC_UNHOOK:I = 0x33100279
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELECTRONIC_SHIFT:I = 0x331001c2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ELK:I = 0x331000a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EMERGENCY_LANE_KEEPING:I = 0x331000fd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EMISSION_TYPE:I = 0x33100137
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EMS:I = 0x331000a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENERGYUSAGE_QUIRY:I = 0x3310006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENERGY_ANALYSIS:I = 0x33100079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENERGY_FEEDBACK_STRENGTH:I = 0x33100198
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENGINE_FUEL_TYPE:I = 0x3310012f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENGINE_STANDARD:I = 0x331001bd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ENGINE_TYPE:I = 0x331001b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EPB:I = 0x331000b8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EPB_WORK_LOGIC:I = 0x3310013e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EPS:I = 0x331000b2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EPS_INTEGRATED_SAS:I = 0x331000f6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ERMIL:I = 0x3310022a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ERM_HEAT:I = 0x3310022c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ESA:I = 0x3310009f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ESCL:I = 0x3310013a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ESP:I = 0x331000ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ETC:I = 0x33100096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ETHERNET_MODE:I = 0x3310006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EXTERNAL_AMP:I = 0x33100038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_EXTERNAL_LIGHT_WELCOME:I = 0x3310019e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_E_AIROUTLET:I = 0x3310018c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_E_DISCHARGE_FUNC:I = 0x331001fd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FAC:I = 0x33100218
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FACEID:I = 0x33100012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FACE_STYLE:I = 0x331000e7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FAPA_HIL:I = 0x3310026c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FAST_CHARGE:I = 0x33100086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FATIGUE_MONITOR:I = 0x33100011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FATIGUE_WARNING:I = 0x3310005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FCM:I = 0x331000be
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FCTA:I = 0x3310004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FCTB:I = 0x33100051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FCW:I = 0x33100002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FCW_RCW:I = 0x33100097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FIRST_MAINTAIN:I = 0x3310012b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FIRST_MAINTAIN_KILOMETER:I = 0x33100225
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FLASH_GRILLE:I = 0x33100267
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FLC:I = 0x33100217
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FLDRM:I = 0x33100254
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FLIP_ICM:I = 0x331001f0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FM:I = 0x33100020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FOD:I = 0x331001d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FORCE_LIMITING_SEATBELT:I = 0x33100259
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FOUR_WHEEL_DRIVE:I = 0x331001d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FOUR_ZONE:I = 0x33100242
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRAGRANCE:I = 0x33100090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRM:I = 0x331000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRONE_RADAR:I = 0x331000f4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRONT_FOG_LIGHT:I = 0x331001b5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRONT_MILLMETER_RADER:I = 0x33100211
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FRONT_RADAR:I = 0x33100069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FTSR:I = 0x3310015c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUELLEVEL_DAMPING_1:I = 0x33100169
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUELLEVEL_DAMPING_2:I = 0x3310016c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUELLEVEL_SAMPLING:I = 0x33100166
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUEL_CONSUME_CORRECT:I = 0x3310012d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUEL_CONSUMPTION_UNIT:I = 0x33100262
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUEL_COVER:I = 0x33100093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUEL_TANK_CAPACITY:I = 0x3310014e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FUEL_TANK_CAPACITY2:I = 0x33100269
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FVSR:I = 0x33100098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FWC:I = 0x33100216
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_FWH:I = 0x331000d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GAS_CAP_SWITCH:I = 0x33100077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GATEWAY:I = 0x331001b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GEAR_SWITCH:I = 0x33100196
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GESTURE_RECOGNITION:I = 0x33100014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GET_TIME:I = 0x331000db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GLOVE_BOX:I = 0x33100078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GPS_SOURCE:I = 0x33100195
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GRAR_SHIFT:I = 0x33100264
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GRM_SWITCH:I = 0x331000c5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GROUND_LAMP:I = 0x3310021e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_GUARD_MODE:I = 0x33100039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HAND_LEAVE_STEERING:I = 0x3310024c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HAZARD_WARNING:I = 0x33100042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HEADLAMP_HEIGHT_ADJUST:I = 0x33100088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HEADREST_SPEAKER:I = 0x3310021b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HEATING_GEAR:I = 0x331001ff
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HICAR:I = 0x33100243
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HIGHPRECISION_MAP:I = 0x33100056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HIGHPRECISION_MODULE:I = 0x3310021a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HIGH_BEAM_ASSIST:I = 0x33100191
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HOLOGRAPHY:I = 0x33100015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HPP:I = 0x331000a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HUB_PACKAGE:I = 0x331001ec
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HUD:I = 0x33100025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_HYDROGEN_CAP_SWITCH:I = 0x3310017e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_H_SUBWOOFER_NUM:I = 0x33100221
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IABS_ESC:I = 0x331001c0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IACC:I = 0x33100008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IC:I = 0x3310018b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICA:I = 0x3310009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICE_MODE:I = 0x33100035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM:I = 0x331000aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_ABM:I = 0x3310011b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_ABS:I = 0x3310011c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_APA:I = 0x3310013d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_AVM:I = 0x33100127
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_BMS:I = 0x33100147
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_BSD:I = 0x33100128
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_CGW:I = 0x33100125
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_CLM:I = 0x33100120
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_DRIVE_MODE_NUM:I = 0x33100143
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_DRIVE_MODE_NUM2:I = 0x3310014c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_EMERGENCY_LANE_KEEPING:I = 0x33100154
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_EPB:I = 0x33100126
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_EPS:I = 0x33100121
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_ESP:I = 0x3310011d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_FACE_STYLE:I = 0x33100149
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_FCM:I = 0x33100134
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_FRM:I = 0x33100135
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_FRONE_RADAR:I = 0x33100268
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_IDLE_START_STOP_TYPE:I = 0x3310026b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_LANE_DEPARTURE_PRE:I = 0x33100155
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_LANGUAGE:I = 0x33100130
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_LDW:I = 0x33100129
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_LKA:I = 0x33100142
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_MFS:I = 0x3310013c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_NAVIGATION_INFO:I = 0x33100138
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_OVER_SPEED_WARN:I = 0x33100131
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_PEPS:I = 0x33100122
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_PEPS_TYPE:I = 0x3310013f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_PLG:I = 0x3310012a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_RADAR:I = 0x3310012e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_REAR_RADAR_NUM:I = 0x33100136
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_SIMM3:I = 0x33100157
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_SIZE:I = 0x3310024f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TCU1:I = 0x3310011e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TCU2:I = 0x3310011f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TCU3:I = 0x33100133
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TCU4:I = 0x33100139
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TJA:I = 0x33100156
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_TPMS:I = 0x33100124
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ICM_VEHICLE_TYPE:I = 0x33100141
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IC_ELK_LIGHT_TIPS:I = 0x3310026f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IC_VIEW_SWITCH:I = 0x3310007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IDCU:I = 0x33100114
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IDLE_START_STOP_TYPE:I = 0x33100260
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IES:I = 0x33100103
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IFCW:I = 0x331001ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IHBC:I = 0x331001c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IHU:I = 0x33100123
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IHU_BRAND:I = 0x33100261
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ILDW:I = 0x331001be
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ILKA:I = 0x331001bf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ILT:I = 0x331000d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IMMO:I = 0x331000ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IMTERIOR_ATMOSPHER_LIGHT_TYPE:I = 0x3310011a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INCABIN_MONITOR:I = 0x33100013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INFO_TTS:I = 0x33100044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INITIATIVE_SUSPENSION:I = 0x331001e6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INIT_FUEL_CONSUME:I = 0x33100192
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INIT_FUEL_CONSUME2:I = 0x33100153
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTELLIGENT_OPEN_TRUNK:I = 0x331000d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERACTIVE_LAMP:I = 0x33100070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERACTIVE_SIGNLE_LAMP:I = 0x33100240
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERAVTIVE_MODE:I = 0x331000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERIOR_ATMOSPHER_LEGHT:I = 0x33100119
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERIOR_LIGHT:I = 0x331000cc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERNEL_LIGHT_WELCOME:I = 0x331001e2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_INTERVAL_MAINTAIN_KILOMETER:I = 0x33100226
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ION:I = 0x331000df
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_IPB:I = 0x3310025f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ISA:I = 0x33100047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ISAM:I = 0x331001a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ISLC:I = 0x3310009e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ISSS:I = 0x331000fb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ISTEEP_DESCENT:I = 0x331001cb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ITEST_DRIVE:I = 0x331001c3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_JA:I = 0x3310009d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_KEY_TYPE:I = 0x3310001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_DELAY_OFF:I = 0x3310023f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_LANG_BRICK:I = 0x331001ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_LANG_CLASSIC:I = 0x331001ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_LANG_METEOR:I = 0x331001ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_LANG_PULSE:I = 0x331001ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LAMP_PATTERN_ADJUSTMENT:I = 0x3310006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LANE_CHANGE_LIGHTS:I = 0x331001a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LANE_DEPARTURE_PRE:I = 0x331000fe
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LANGUAGE:I = 0x33100022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LCA:I = 0x3310003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LCA_MODE:I = 0x33100040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LDW:I = 0x33100005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LDW_LKA:I = 0x3310004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LEARN_SK:I = 0x3310017a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LHM:I = 0x3310010b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LIGHTED_ROOF_RACK:I = 0x331000ed
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LIGHT_COMITY:I = 0x33100063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LIGHT_SENSOR_TYPE:I = 0x33100201
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LIGHT_SHOW:I = 0x331001d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LIGHT_WELCOME:I = 0x33100241
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LION_INTELLIGENT_SYSTEM:I = 0x3310024b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LKA:I = 0x33100009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LOCK_TONE:I = 0x33100193
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LOD:I = 0x331001d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LONG_LIDAR:I = 0x3310020f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LOOK_AROUND:I = 0x331001cd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LOW_SPEED_PEDESTRIAN_WARNING:I = 0x33100277
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_LOW_WARNING:I = 0x33100197
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAF:I = 0x331000bc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAINTAIN_WARNING:I = 0x331001b9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAINTAION_MILEAGE:I = 0x3310012c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAINTAION_MILEAGE2:I = 0x33100145
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAINTAION_MILEAGE3:I = 0x33100152
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAIN_DRIVER_AIRBAG:I = 0x331001df
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MAX_DIGITAL_SPEED:I = 0x3310016d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MEB:I = 0x3310006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MFS:I = 0x331000cb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIC_NUMBER:I = 0x3310002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIDRANGE_SPEAK_NUM:I = 0x3310010f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIRROR_AUTO_DIPPING:I = 0x33100089
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIRROR_FOLD:I = 0x3310002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIRROR_MEMORY:I = 0x3310002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIRROR_SCROLL_DOWN:I = 0x33100179
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MIRROR_TURN_DOWN:I = 0x33100257
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MODEL_CODE:I = 0x33100158
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MOTION_TRUNK:I = 0x33100184
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MULTICOLOR_AMB:I = 0x3310023e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_MUSICAL_RHYTHM:I = 0x331001de
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NAP:I = 0x33100026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NAVIGATION:I = 0x33100230
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NAVIGATION_INFO:I = 0x331000e9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NAVIGATION_MAP:I = 0x331001f6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NAVIGATION_PROJECTION:I = 0x33100199
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NDA30:I = 0x3310003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NEGATIVE_ION:I = 0x33100091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NFC_KEY_NUM:I = 0x3310020b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NIGHT_EYE:I = 0x331001dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NM_TYPE:I = 0x331000c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NOA:I = 0x33100045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NON_EDITABLE_HEADLAMP:I = 0x331001ee
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_NUM_OF_USB_PORTS:I = 0x331001f7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OFFICIAL_FUEL_CONSUMPTIONH:I = 0x331001c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OFFICIAL_FUEL_CONSUMPTIONL:I = 0x331001c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OMS:I = 0x33100112
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OUTSIDE_DMS:I = 0x33100084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OUTSIDE_SPEAKER:I = 0x3310015d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OVERSEAS_LANGUAGE:I = 0x33100271
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OVERSEAS_MUSIC:I = 0x33100273
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_OVER_SPEED_WARN:I = 0x33100048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PAB_TOUCH_SWITCH:I = 0x331001f8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PARALLEL_ASSIST:I = 0x3310000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_ADJUST:I = 0x33100083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_ADJUST_KEY:I = 0x33100236
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_HEAT:I = 0x33100033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_MASSAGE:I = 0x3310008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_MEMORY:I = 0x33100203
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_RESET:I = 0x3310017d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_VENT:I = 0x33100034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGERSEAT_WAIST_ADJUST:I = 0x33100237
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_AIRBAG:I = 0x331001e0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_BELT:I = 0x331001b8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_CUSHION:I = 0x3310027d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_MONITOR:I = 0x33100228
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_SCREEN:I = 0x33100182
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PASSENGER_SWITCH:I = 0x331001f9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PDC:I = 0x331000a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PEPS:I = 0x331000b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PEPS_TYPE:I = 0x331000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PHOTO_ALBUM:I = 0x331001cc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PILOT:I = 0x3310003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PLASMA:I = 0x3310001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PLG:I = 0x331000bf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PLG_DEGREE_OF_CHE_CONF:I = 0x3310018f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PLG_KEEP_TIME_HIGH:I = 0x33100173
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PLG_KEEP_TIME_LOW:I = 0x33100174
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PM25_FILTER:I = 0x3310001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PM25_MONITOR:I = 0x3310001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_POWER_MGR:I = 0x331001c5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_POWER_MODE:I = 0x33100062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PPMI:I = 0x3310026a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PPMID:I = 0x33100253
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_PRAS:I = 0x33100250
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_QD_LINK:I = 0x331000dd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RACE_MODE:I = 0x33100036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADAR:I = 0x331000b5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADAR_DISPLAY:I = 0x331000d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADAR_SHOW:I = 0x331001f5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADIO_ANT_PAR:I = 0x33100231
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADIO_ANT_PARAM:I = 0x331000c3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADIO_AREA:I = 0x331000b9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RADIO_AREA2:I = 0x331000e6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RAINFALL_SENSOR:I = 0x3310023c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RAIN_SENSOR:I = 0x33100116
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RAV:I = 0x331000ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RAVT:I = 0x33100109
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RC:I = 0x3310025c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RCM:I = 0x33100215
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RCTA:I = 0x3310004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RCTA_RCTB:I = 0x3310009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RCTB:I = 0x33100050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RCW:I = 0x3310004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RDA:I = 0x3310000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_ADJUST:I = 0x3310008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_BACKREST_ADJUST:I = 0x33100238
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_CUSHION:I = 0x33100239
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_HEAT:I = 0x3310008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_LEFT_WAIST_ADJUST:I = 0x3310023a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_MASSAGE:I = 0x3310008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_MEMORY:I = 0x33100256
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_RIGHT_WAIST_ADJUST:I = 0x3310023b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REARSEAT_VENT:I = 0x3310008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_AC:I = 0x33100076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_BUMPER_TYPE:I = 0x33100178
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_PANEL:I = 0x33100186
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_RADAR_NUM:I = 0x331000e1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_SEAT_BELT:I = 0x3310007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_SUNROOF:I = 0x331001e3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_WINDSHIELD_HEAT:I = 0x3310021f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REAR_WIPER:I = 0x3310018a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFRESHING:I = 0x331001d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFUEL_HYSTRESIS:I = 0x3310016e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFULE_DETECTION:I = 0x33100167
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFULE_TIME_1:I = 0x33100165
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFULE_TIME_2:I = 0x33100168
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFULE_TIME_3:I = 0x3310016a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REFULE_TIME_4:I = 0x3310016b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_REMOTE_CTRL:I = 0x3310024a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RHM:I = 0x3310010c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RLCR:I = 0x331000f7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RLCR1:I = 0x3310014f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RLCR2:I = 0x33100150
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RMIRROR:I = 0x331001cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RMS:I = 0x33100113
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RPA:I = 0x331000a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RRCR:I = 0x331000f8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RUDDER_TYPE:I = 0x331001fb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RVC:I = 0x3310000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_RVM:I = 0x331000a5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SAFETY_WARNING:I = 0x33100043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SAS:I = 0x331000b4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SCENE_BLOCKS:I = 0x33100187
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SCISSORS_DOOR:I = 0x331001f1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SCREEN_AUTOBRIGHTNESS:I = 0x33100071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SCU:I = 0x331000cd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SEAT:I = 0x331000ec
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SEATS_NUM:I = 0x3310021c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SEAT_COMITY:I = 0x33100068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SEAT_HEATING:I = 0x331001f4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SEAT_WELCOME:I = 0x331001f3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SECOND_AC:I = 0x33100208
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SECOND_ROW_HEAT:I = 0x33100176
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SECOND_ROW_VENT:I = 0x33100177
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SENSOR_LOCK:I = 0x33100065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SHU1D:I = 0x33100105
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SHU1P:I = 0x33100106
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SHU2L:I = 0x33100107
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SHU2R:I = 0x33100108
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SIGNAL_SHIELD:I = 0x33100181
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SIMM:I = 0x33100132
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SIMM2:I = 0x33100146
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SIMULATE_SOUND:I = 0x331001e1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SLA:I = 0x33100104
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SLAF:I = 0x331000f1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SMART_CAR_UPGRADE:I = 0x331001f2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SMART_KEY:I = 0x3310018d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SMART_PHONE_KEY:I = 0x33100115
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SMOKING:I = 0x3310002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SNOWFLAKE_PATTERN:I = 0x331001bc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SONY_SOUND:I = 0x331000eb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SOUND_POSITIO:I = 0x33100194
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SOUND_SYSTEM:I = 0x33100092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SOUND_WAVE:I = 0x331001eb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPAM:I = 0x331001a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEAKER_NUMBER:I = 0x33100021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEAK_NUM:I = 0x331000c0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEECH_RECOGNITION:I = 0x33100234
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEED_CTL_FUNC:I = 0x331000fc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEED_LIMIT:I = 0x33100148
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEED_LIMIT_DEVIVATION:I = 0x331001e7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPEED_LIMIT_SETTING:I = 0x33100229
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SPORT_MODE:I = 0x331001bb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SRSBR_SWITCH:I = 0x3310014a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STARRY_SKY_MODE:I = 0x331001d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STARTED_WARNING:I = 0x3310005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING:I = 0x33100023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERINGWHEEL_MOREFUNC_KEY:I = 0x3310024e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERINGWHEEL_TURN_PAGA:I = 0x3310024d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_CFG:I = 0x3310003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_HEAT:I = 0x3310006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_MEM:I = 0x33100202
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_MODE:I = 0x331000c1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_STRING_ADJUST:I = 0x3310021d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_WELCOME:I = 0x331001e5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEERING_WHEEL_HEAT:I = 0x3310015b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STEER_MODE:I = 0x3310022f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STOVE_MODE_SEAT_HEAT:I = 0x33100276
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_STT:I = 0x331001b1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUBICM_SLIDING_FUNC:I = 0x3310025d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUBWOOFER_NUM:I = 0x33100220
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUNROOF:I = 0x331000ee
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUNROOF_ATMOSPHERE_LAMP:I = 0x3310015a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUNROOF_TYPE:I = 0x33100074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SURROUND_SPEAKER_NUM:I = 0x33100224
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SUSPENSION_SPRING:I = 0x3310020d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_SYSTEM_BACKGROUND_MODE:I = 0x33100278
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TAIL:I = 0x33100087
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TBOX:I = 0x331001b4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TBOX_ECALL_MODULE:I = 0x331000f3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TCU1:I = 0x331000af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TCU2:I = 0x331000b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TCU3:I = 0x331000b6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TCU4:I = 0x331000b7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TELEMATICS_ANT:I = 0x33100248
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_THERMOSTATIC_CABIN:I = 0x3310000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_THREE_AC:I = 0x33100209
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TIHU_CFG:I = 0x331000c4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TIHU_CFG2:I = 0x331000cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TIRE_PRESSURE_FAULT_COLOR:I = 0x3310027c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TIRE_PRESSURE_UNIT:I = 0x33100263
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TIRE_SPEC:I = 0x33100212
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TJA:I = 0x331000ff
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TLC:I = 0x331000a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TLI:I = 0x33100100
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TPMS:I = 0x33100024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRACTION_MODE:I = 0x331001db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRAFFICLIGHT_ASSIST:I = 0x33100052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRAFFIC_CRUISE:I = 0x33100046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRANSMISSION:I = 0x331001af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRANSMISSION_TYPE:I = 0x33100265
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TREAD_WELCOME:I = 0x331001a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TRSBR_SWITCH:I = 0x3310014d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TSR:I = 0x33100007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TWEETER_NUM:I = 0x33100222
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_TWO_WAY_RUDDER:I = 0x3310020a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_USB_NUM:I = 0x33100233
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_UWB_KEY:I = 0x33100232
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VEHICLE_MODEL:I = 0x33100000
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VEHICLE_NETWORK:I = 0x33100094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VEHICLE_TYPE:I = 0x3310025e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VENTILATION_GEAR:I = 0x33100200
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VETC:I = 0x3310022b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VISOR_CURTAIN:I = 0x33100189
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_ASSISTANT:I = 0x33100017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_CHANGE_LANE:I = 0x33100058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_CTRL_SUNROOF:I = 0x3310019d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_CTRL_WINDOW:I = 0x3310019c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_IACC_HWA:I = 0x33100059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_RECOGNITION:I = 0x33100101
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_REGION:I = 0x331001ea
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_SET_SPEED:I = 0x33100057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_TIPS:I = 0x33100041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOICE_VERSION:I = 0x33100275
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOLCANIC_APP:I = 0x33100175
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VOLTAGE_OUTPUT:I = 0x33100227
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_VSAL:I = 0x331000bd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WARNING_TYPE:I = 0x3310004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WASHING_LIQUID_LEVEL:I = 0x3310022e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WELCOME_FUNC:I = 0x331000d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WHIRL_SCREEN:I = 0x3310002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WHUD:I = 0x331001dd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WIFI:I = 0x33100246
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WINDOW_ADJUSTMENT:I = 0x3310006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WINTER_MODE:I = 0x3310007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WIPER_NOZZLE_HEAT:I = 0x33100206
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WIPER_SOFT_SWITCH:I = 0x33100117
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WIRELESS_CHARGE:I = 0x3310001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_WORKING_COND:I = 0x331001e8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_W_HUD:I = 0x3310010e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ZERO_GRAVITY_SEAT:I = 0x33100185
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONFIG_ZERO_G_SEAT_POSITION:I = 0x3310025b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ECU_CONFIG:I = 0x33000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ECU_INFO_READY:I = 0x3300006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final ID_ECU_SN:I = 0x33000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_ANDROID_VERSION:I = 0x33000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_CERT_ID:I = 0x33000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_CERT_KEY:I = 0x33000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_HW_ID:I = 0x33000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_HW_VERSION:I = 0x3300000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_QNX_VERSION:I = 0x33000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HU_SN:I = 0x3300000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HW_VERSION:I = 0x33000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MANUFACT_DATE:I = 0x33000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MCU_HW_VERSION:I = 0x3300000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MCU_SWA_VERSION:I = 0x3300000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MCU_SWM_VERSION:I = 0x3300000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MEGA_CA:I = 0x33000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MEGA_CDC_CERT:I = 0x33000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MEGA_TLS_CERT:I = 0x33000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MEGA_TLS_KEY:I = 0x3300006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_OPEN_CHECK_TBOX:I = 0x33000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OS_VERSION:I = 0x3300000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_PART_NUM:I = 0x33000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SUPPLIER_IDENT:I = 0x33000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SW_PART_NUM:I = 0x33000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SW_VERSION:I = 0x33000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_CERT_ID:I = 0x33000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_ICCID_ID:I = 0x33000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_IMSI:I = 0x330000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_NETWORK:I = 0x33000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = [B
    .end annotation
.end field

.field public static final ID_TBOX_SIGNAL_STRENGTH:I = 0x330000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TBOX_TUID:I = 0x33000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_VERSION:I = 0x330000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TERMINAL_CONFIG:I = 0x33000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TUID:I = 0x33000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VIN:I = 0x33000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "@null"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x33

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.ECU"
