.class public Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "AdvancedOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
    }
.end annotation


# static fields
.field private static final CDSP_SSR_FULLDUMP_STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final CDSP_SSR_FULLDUMP_STATE_DISABLE:Ljava/lang/String; = "disable"

.field private static final CDSP_SSR_FULLDUMP_STATE_ENABLE:Ljava/lang/String; = "enable"

.field private static final COMMAND_9008:Ljava/lang/String; = "5"

.field private static final COMMAND_CDSP_SSR_FULLDUMP_DISABLE:Ljava/lang/String; = "20"

.field private static final COMMAND_CDSP_SSR_FULLDUMP_ENABLE:Ljava/lang/String; = "19"

.field public static final COMMAND_CLEAR_DDR_DATA:Ljava/lang/String; = "32"

.field private static final COMMAND_FASTBOOT:Ljava/lang/String; = "enter_fastoot_mode.sh"

.field private static final COMMAND_GET_CDSP_SSR_FULLDUMP_STATE:Ljava/lang/String; = "21"

.field private static final COMMAND_GET_GCORE_DUMP_STATE:Ljava/lang/String; = "13"

.field private static final COMMAND_GET_QXDM_ONDEVICE_LOG_STATE:Ljava/lang/String; = "24"

.field private static final COMMAND_GET_RAW_DUMP_MODE:Ljava/lang/String; = "4"

.field private static final COMMAND_QXDM_MODE_CLEAR_ONDEVICE_LOG:Ljava/lang/String; = "30"

.field private static final COMMAND_QXDM_MODE_CLOSE_DEBUG:Ljava/lang/String; = "29"

.field private static final COMMAND_QXDM_MODE_ONDEVICE_RX:Ljava/lang/String; = "26"

.field private static final COMMAND_QXDM_MODE_ONDEVICE_RX_TX:Ljava/lang/String; = "25"

.field private static final COMMAND_QXDM_MODE_ONDEVICE_TX:Ljava/lang/String; = "27"

.field private static final COMMAND_QXDM_MODE_SOCKET_PORT:Ljava/lang/String; = "28"

.field private static final COMMAND_QXDM_MODE_UPDATE_STATE:Ljava/lang/String; = "31"

.field private static final COMMAND_QXDM_ONDEVICE_LOG_DISABLE:Ljava/lang/String; = "23"

.field private static final COMMAND_QXDM_ONDEVICE_LOG_ENABLE:Ljava/lang/String; = "22"

.field private static final COMMAND_SET_CLOSE:Ljava/lang/String; = "12"

.field private static final COMMAND_SET_FULL_DUMP:Ljava/lang/String; = "3"

.field private static final COMMAND_SET_MINI_DUMP:Ljava/lang/String; = "2"

.field private static final COMMAND_SET_OPEN:Ljava/lang/String; = "11"

.field private static final COMMAND_SET_STR_MODE:I = 0xd

.field private static final COMMAND_SET_STR_MODE_GET_CURRENT:I = 0x2

.field private static final CORE_DUMP_DISABLE:Ljava/lang/String; = "0"

.field private static final CORE_DUMP_ENABLE:Ljava/lang/String; = "1"

.field private static final GCORE_STATE_CLOSE:Ljava/lang/String; = "disable"

.field private static final GCORE_STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final GCORE_STATE_OPEN:Ljava/lang/String; = "enable"

.field public static final MCU_INACTIVE_REQ:Ljava/lang/String; = "update/mcu/inactive/req"

.field public static final MCU_INACTIVE_RES:Ljava/lang/String; = "update/mcu/inactive/res"

.field private static final MISC_REQ_BURN:Ljava/lang/String; = "misc_service/command/burn_request"

.field private static final MISC_REQ_CDSP_SSR_FULLDUMP:Ljava/lang/String; = "misc_service/command/cdsp_ssr_fulldump_request"

.field public static final MISC_REQ_CLEAR_DDR_DATA:Ljava/lang/String; = "misc_service/command/clear_ddrdata_request"

.field private static final MISC_REQ_GCORE_DUMP:Ljava/lang/String; = "misc_service/command/gcore_dump_request"

.field private static final MISC_REQ_QXDM_ONDEVICE_LOG:Ljava/lang/String; = "misc_service/command/qxdm_ondevice_log_request"

.field private static final MISC_REQ_RAWDUMP:Ljava/lang/String; = "misc_service/command/rawdump_request"

.field private static final MISC_RES_BURN:Ljava/lang/String; = "misc_service/command/burn_response"

.field private static final MISC_RES_CDSP_SSR_FULLDUMP:Ljava/lang/String; = "misc_service/command/cdsp_ssr_fulldump_response"

.field private static final MISC_RES_CLEAR_DDR_DATA:Ljava/lang/String; = "misc_service/command/clear_ddrdata_response"

.field private static final MISC_RES_GCORE_DUMP:Ljava/lang/String; = "misc_service/command/gcore_dump_response"

.field private static final MISC_RES_QXDM_ONDEVICE_LOG:Ljava/lang/String; = "misc_service/command/qxdm_ondevice_log_response"

.field private static final MISC_RES_RAWDUMP:Ljava/lang/String; = "misc_service/command/rawdump_response"

.field private static final MODE_9008:I = 0x1

.field private static final MODE_ERROR:I = 0x2

.field private static final MODE_FASTBOOT:I = 0x0

.field private static final MODE_FULL_DUMP:I = 0x1

.field private static final MODE_MINI_DUMP:I = 0x0

.field private static final MSG_CDSP_SSR_FULLDUMP_STATE_DEFAULT:I = 0x6

.field private static final MSG_CDSP_SSR_FULLDUMP_STATE_DISABLE:I = 0x8

.field private static final MSG_CDSP_SSR_FULLDUMP_STATE_ENABLE:I = 0x7

.field private static final MSG_ID_BURN_VALUE:Ljava/lang/String; = "burn_set"

.field private static final MSG_ID_CDSP_SSR_FULLDUMP_GET_VALUE:Ljava/lang/String; = "cdsp_ssr_fulldump_get"

.field private static final MSG_ID_CDSP_SSR_FULLDUMP_SET_VALUE:Ljava/lang/String; = "cdsp_ssr_fulldump_set"

.field private static final MSG_ID_GCORE_DUMP_GET_VALUE:Ljava/lang/String; = "gcore_dump_get"

.field private static final MSG_ID_GCORE_DUMP_SET_VALUE:Ljava/lang/String; = "gcore_dump_set"

.field private static final MSG_ID_QXDM_ONDEVICE_LOG_GET_VALUE:Ljava/lang/String; = "qxdm_ondevice_log_get"

.field private static final MSG_ID_QXDM_ONDEVICE_LOG_SET_VALUE:Ljava/lang/String; = "qxdm_ondevice_log_set"

.field private static final MSG_ID_RAW_DUMP_GET_VALUE:Ljava/lang/String; = "raw_dump_get"

.field private static final MSG_ID_RAW_DUMP_SET_VALUE:Ljava/lang/String; = "raw_dump_set"

.field private static final MSG_OPT_GET:Ljava/lang/String; = "get"

.field public static final MSG_OPT_SET:Ljava/lang/String; = "set"

.field private static final MSG_QXDM_MODE_STATE_DISABLE:I = 0xc

.field private static final MSG_QXDM_MODE_STATE_ENABLE:I = 0xd

.field private static final MSG_QXDM_ONDEVICE_LOG_STATE_DEFAULT:I = 0x9

.field private static final MSG_QXDM_ONDEVICE_LOG_STATE_DISABLE:I = 0xb

.field private static final MSG_QXDM_ONDEVICE_LOG_STATE_ENABLE:I = 0xa

.field private static final MSG_ROLLBACK_FAILED:I = 0xe

.field private static final OP_POWER_CONTROL:I = 0x6

.field private static final OP_POWER_CONTROL_FAIL:I = 0x86

.field private static final PROP_CORE_DUMP:Ljava/lang/String; = "persist.debug.coredump"

.field public static final QNX_SWITCH_REQ:Ljava/lang/String; = "update/qnx/switch/req"

.field public static final QNX_SWITCH_RES:Ljava/lang/String; = "update/qnx/switch/res"

.field private static final QXDM_ONDEVICE_LOG_STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final QXDM_ONDEVICE_LOG_STATE_DISABLE:Ljava/lang/String; = "disable"

.field private static final QXDM_ONDEVICE_LOG_STATE_ENABLE:Ljava/lang/String; = "enable"

.field private static final STATE_CLOSE:I = 0x5

.field private static final STATE_DEFAULT:I = 0x3

.field private static final STATE_OPEN:I = 0x4

.field private static final STR_REQ:Ljava/lang/String; = "uartrpc_svc/pm/req"

.field private static final STR_RES:Ljava/lang/String; = "uartrpc_svc/pm/resp"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_STR_DISABLE:I = 0x0

.field private static final VALUE_STR_ENABLE:I = 0x1


# instance fields
.field private QXDM_MODE_PARAMETER:[Ljava/lang/String;

.field private m9008Mode:Landroid/widget/Button;

.field private mCdspSSRFullDump:Landroid/widget/Button;

.field private mCdspSSRFullDumpState:I

.field private mCheckSTR:Z

.field private mCheckSTRState:Landroid/widget/Button;

.field private mClearDDR:Landroid/widget/Button;

.field private mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

.field private mCoreDump:Landroid/widget/Button;

.field private mCurrentDumpMode:I

.field private mDisableSTR:Landroid/widget/Button;

.field private mDumpMode:Landroid/widget/Button;

.field private mEnableSTR:Landroid/widget/Button;

.field private mFactoryReset:Landroid/widget/Button;

.field private mFastBootMode:Landroid/widget/Button;

.field private mGcoreDump:Landroid/widget/Button;

.field private mGcoreDumpState:I

.field private mHandler:Landroid/os/Handler;

.field private mMasterClearHelper:Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;

.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

.field private mQXdmModeSpinner:Landroid/widget/Spinner;

.field private mQxdmCurrentMode:Ljava/lang/String;

.field private mQxdmModeButten:Landroid/widget/Button;

.field private mQxdmModeName:[Ljava/lang/String;

.field private mQxdmModePost:I

.field private mQxdmModeState:Landroid/widget/TextView;

.field private mQxdmModeStateHelp:Landroid/widget/Button;

.field private mQxdmOndeviceLogState:I

.field private mRollback:Landroid/widget/Button;

.field private mRollbackStep:I

.field private mSTRState:I

.field private mUpdateRawDumpText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmCurrentMode:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTR:Z

    .line 180
    new-instance v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;-><init>()V

    iput-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    .line 181
    iput v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    .line 183
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$1;-><init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mDumpMode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModePost:I

    return v0
.end method

.method static synthetic access$402(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModePost:I

    return p1
.end method

.method static synthetic access$500(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQXdmModeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModeState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mSTRState:I

    return v0
.end method

.method static synthetic access$900(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 31
    iget-boolean v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTR:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTR:Z

    return p1
.end method

.method private checkSTRState()Z
    .locals 2

    .line 623
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 626
    .local v0, "checkStrings":[B
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTR:Z

    .line 627
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->sendSTRData([B)Z

    move-result v1

    return v1

    :array_0
    .array-data 1
        0x6t
        0xdt
        0x2t
    .end array-data
.end method

.method private clearDDRData()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v2, "set"

    invoke-virtual {v0, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "clear ddr data topic:misc_service/command/clear_ddrdata_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/clear_ddrdata_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 606
    return-void
.end method

.method private disableSTR()Z
    .locals 2

    .line 616
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 619
    .local v0, "disableStrings":[B
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->sendSTRData([B)Z

    move-result v1

    return v1

    nop

    :array_0
    .array-data 1
        0x6t
        0xdt
        0x0t
    .end array-data
.end method

.method private enableSTR()Z
    .locals 2

    .line 609
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 612
    .local v0, "enableStrings":[B
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->sendSTRData([B)Z

    move-result v1

    return v1

    nop

    :array_0
    .array-data 1
        0x6t
        0xdt
        0x1t
    .end array-data
.end method

.method private initCdspSSRFullDumpState()V
    .locals 0

    .line 824
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->updateCdspSSRFullDumpState()V

    .line 825
    return-void
.end method

.method private initCoreDump()V
    .locals 3

    .line 815
    const-string v0, "persist.debug.coredump"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    const v2, 0x7f0e0031

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 821
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initDumpMode()V

    .line 586
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initGcoreDumpState()V

    .line 587
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initCoreDump()V

    .line 588
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initCdspSSRFullDumpState()V

    .line 589
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initQxdmOndeviceLogState()V

    .line 590
    invoke-direct {p0, p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initQxdmModeResource(Landroid/content/Context;)V

    .line 591
    return-void
.end method

.method private initDumpMode()V
    .locals 3

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mUpdateRawDumpText:Z

    .line 784
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "raw_dump_get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "initDumpMode topic:misc_service/command/rawdump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/rawdump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 790
    return-void
.end method

.method private initGcoreDumpState()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "gcore_dump_get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "init gcore dump state topic:misc_service/command/gcore_dump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/gcore_dump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 799
    return-void
.end method

.method private initQxdmModeResource(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 850
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModePost:I

    .line 851
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModeButten:Landroid/widget/Button;

    .line 852
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQXdmModeSpinner:Landroid/widget/Spinner;

    .line 854
    const v1, 0x7f030007

    const v2, 0x1090008

    invoke-static {p1, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 856
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModeName:[Ljava/lang/String;

    .line 857
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModeState:Landroid/widget/TextView;

    .line 858
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModeStateHelp:Landroid/widget/Button;

    .line 859
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->QXDM_MODE_MAX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    .line 862
    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "25"

    aput-object v2, v0, v1

    .line 863
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "26"

    aput-object v2, v0, v1

    .line 864
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "27"

    aput-object v2, v0, v1

    .line 865
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->SOCKET_PORT:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "28"

    aput-object v2, v0, v1

    .line 866
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLOSE_DEBUG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "29"

    aput-object v2, v0, v1

    .line 867
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLEAR_ONDEVICE_LOG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v1

    const-string v2, "30"

    aput-object v2, v0, v1

    .line 869
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQXdmModeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$4;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$4;-><init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 880
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQXdmModeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModePost:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 881
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->updataQxdmModeState()V

    .line 882
    return-void
.end method

.method private initQxdmOndeviceLogState()V
    .locals 0

    .line 837
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->updateQxdmOndeviceLogState()V

    .line 838
    return-void
.end method

.method private onDDRRsp()V
    .locals 1

    .line 403
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$2;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$2;-><init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method private onSTRRsp(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSTRRsp data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 414
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 415
    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mSTRState:I

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_2

    .line 417
    iput v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mSTRState:I

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mSTRState:I

    .line 422
    :cond_2
    :goto_0
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;-><init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method private rollback()V
    .locals 3

    .line 594
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "start rollback qnx.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    .line 596
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/qnx/switch/req"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    .line 597
    return-void
.end method

.method private sendQxdmModeTopic(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;)V
    .locals 3
    .param p1, "mode"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 885
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->QXDM_MODE_PARAMETER:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 890
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "set qxdm ondevice log state topic:misc_service/command/qxdm_ondevice_log_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/qxdm_ondevice_log_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 892
    return-void
.end method

.method private sendSTRData([B)Z
    .locals 5
    .param p1, "strings"    # [B

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "stringsBuff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 633
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_0
    sget-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSTRData data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v2, "uartrpc_svc/pm/req"

    invoke-virtual {v1, v2, v0}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method private setBurnMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 640
    if-nez p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "enter_fastoot_mode.sh"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 645
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "burn_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "setBurnMode topic:misc_service/command/burn_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/burn_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 650
    return-void
.end method

.method private setCdspSSRFullDumpState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 747
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_0
    const/16 v0, 0x8

    const-string v1, "20"

    if-ne p1, v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 754
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "cdsp_ssr_fulldump_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "set cdsp ssr fulldump state topic:misc_service/command/cdsp_ssr_fulldump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/cdsp_ssr_fulldump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 761
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->updateCdspSSRFullDumpState()V

    .line 762
    return-void
.end method

.method private setDumpMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 733
    if-nez p1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 738
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "raw_dump_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 741
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "setDumpMode topic:misc_service/command/rawdump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/rawdump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 744
    return-void
.end method

.method private setGcoreDumpState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 717
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_0
    const/4 v0, 0x5

    const-string v1, "12"

    if-ne p1, v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 724
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "gcore_dump_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "set gcore state topic:misc_service/command/gcore_dump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/gcore_dump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 730
    return-void
.end method

.method private setQxdmOndeviceLogState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 765
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_0
    const/16 v0, 0xb

    const-string v1, "23"

    if-ne p1, v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 772
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "qxdm_ondevice_log_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "set qxdm ondevice log state topic:misc_service/command/qxdm_ondevice_log_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/qxdm_ondevice_log_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 779
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->updateQxdmOndeviceLogState()V

    .line 780
    return-void
.end method

.method private switchCdspSSRFulldump()V
    .locals 3

    .line 685
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDumpState:I

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setCdspSSRFullDumpState(I)V

    .line 691
    goto :goto_0

    .line 687
    :cond_1
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setCdspSSRFullDumpState(I)V

    .line 688
    goto :goto_0

    .line 693
    :cond_2
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setCdspSSRFullDumpState(I)V

    .line 694
    nop

    .line 698
    :goto_0
    return-void
.end method

.method private switchCoreDump()V
    .locals 4

    .line 802
    const-string v0, "persist.debug.coredump"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "1"

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    const v2, 0x7f0e0030

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 807
    :cond_0
    invoke-static {v0, v3}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    const v2, 0x7f0e0031

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 810
    :goto_0
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v2, "trigger reboot due to core dump set"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {}, Lcom/mega/app/engineeringmode/common/Util;->rebootConfig()Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    move-result-object v2

    invoke-static {v2}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "misc_service/command/reboot_request"

    invoke-virtual {v0, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 812
    return-void
.end method

.method private switchDumpMode()V
    .locals 3

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mUpdateRawDumpText:Z

    .line 654
    iget v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCurrentDumpMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setDumpMode(I)V

    .line 660
    goto :goto_0

    .line 656
    :cond_1
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setDumpMode(I)V

    .line 657
    nop

    .line 664
    :goto_0
    const v1, 0x7f0e00d8

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    return-void
.end method

.method private switchGcoreDump()V
    .locals 3

    .line 669
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDumpState:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setGcoreDumpState(I)V

    .line 675
    goto :goto_0

    .line 671
    :cond_1
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setGcoreDumpState(I)V

    .line 672
    goto :goto_0

    .line 677
    :cond_2
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setGcoreDumpState(I)V

    .line 678
    nop

    .line 682
    :goto_0
    return-void
.end method

.method private switchQxdmOndeviceLog()V
    .locals 2

    .line 701
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmOndeviceLogState:I

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 706
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setQxdmOndeviceLogState(I)V

    .line 707
    goto :goto_0

    .line 703
    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setQxdmOndeviceLogState(I)V

    .line 704
    goto :goto_0

    .line 709
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setQxdmOndeviceLogState(I)V

    .line 710
    nop

    .line 714
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updataQxdmModeState()V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v2, "set"

    invoke-virtual {v0, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 899
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "set qxdm ondevice log state topic:misc_service/command/qxdm_ondevice_log_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/qxdm_ondevice_log_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 901
    return-void
.end method

.method private updateCdspSSRFullDumpState()V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "cdsp_ssr_fulldump_get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 832
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "get cdsp ssr fulldump state topic:misc_service/command/cdsp_ssr_fulldump_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/cdsp_ssr_fulldump_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 834
    return-void
.end method

.method private updateQxdmOndeviceLogState()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "qxdm_ondevice_log_get"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "get qxdm ondevice log state topic:misc_service/command/qxdm_ondevice_log_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/qxdm_ondevice_log_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 847
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 574
    :sswitch_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->rollback()V

    .line 575
    goto :goto_0

    .line 577
    :sswitch_1
    const v0, 0x7f0e00ba

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 568
    :sswitch_2
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->values()[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    move-result-object v0

    iget v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmModePost:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->sendQxdmModeTopic(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;)V

    .line 569
    goto :goto_0

    .line 536
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setBurnMode(I)V

    .line 537
    goto :goto_0

    .line 542
    :sswitch_4
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->switchDumpMode()V

    .line 543
    goto :goto_0

    .line 539
    :sswitch_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setBurnMode(I)V

    .line 540
    goto :goto_0

    .line 550
    :sswitch_6
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->switchGcoreDump()V

    .line 551
    goto :goto_0

    .line 545
    :sswitch_7
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMasterClearHelper:Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->performFactoryReset()V

    goto :goto_0

    .line 556
    :sswitch_8
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->enableSTR()Z

    .line 557
    goto :goto_0

    .line 559
    :sswitch_9
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->disableSTR()Z

    .line 560
    goto :goto_0

    .line 553
    :sswitch_a
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->switchCoreDump()V

    .line 554
    goto :goto_0

    .line 571
    :sswitch_b
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->clearDDRData()V

    .line 572
    goto :goto_0

    .line 562
    :sswitch_c
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->checkSTRState()Z

    .line 563
    goto :goto_0

    .line 565
    :sswitch_d
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->switchCdspSSRFulldump()V

    .line 566
    nop

    .line 582
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090065 -> :sswitch_d
        0x7f09006b -> :sswitch_c
        0x7f090073 -> :sswitch_b
        0x7f09007e -> :sswitch_a
        0x7f0900a6 -> :sswitch_9
        0x7f0900ba -> :sswitch_8
        0x7f0900c5 -> :sswitch_7
        0x7f0900d1 -> :sswitch_6
        0x7f090100 -> :sswitch_5
        0x7f090102 -> :sswitch_4
        0x7f090103 -> :sswitch_3
        0x7f09012d -> :sswitch_2
        0x7f09012e -> :sswitch_1
        0x7f09013a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 456
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 457
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->setContentView(I)V

    .line 458
    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mFastBootMode:Landroid/widget/Button;

    .line 459
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->m9008Mode:Landroid/widget/Button;

    .line 460
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mClearDDR:Landroid/widget/Button;

    .line 461
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollback:Landroid/widget/Button;

    .line 462
    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mDumpMode:Landroid/widget/Button;

    .line 463
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDump:Landroid/widget/Button;

    .line 464
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mFactoryReset:Landroid/widget/Button;

    .line 465
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    .line 466
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mEnableSTR:Landroid/widget/Button;

    .line 467
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mDisableSTR:Landroid/widget/Button;

    .line 468
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTRState:Landroid/widget/Button;

    .line 469
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDump:Landroid/widget/Button;

    .line 470
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mFastBootMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->m9008Mode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mClearDDR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollback:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mDumpMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDump:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mFactoryReset:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mEnableSTR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mDisableSTR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCheckSTRState:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDump:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 485
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMasterClearHelper:Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;

    .line 486
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mFastBootMode:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollback:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    const-string v0, "ro.build.type"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "buildType":Ljava/lang/String;
    const-string v2, "user"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->m9008Mode:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDump:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCoreDump:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDump:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 529
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 530
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/burn_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/rawdump_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/gcore_dump_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "uartrpc_svc/pm/resp"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/cdsp_ssr_fulldump_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/qxdm_ondevice_log_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/clear_ddrdata_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/qnx/switch/res"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/mcu/inactive/res"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 524
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onPause()V

    .line 525
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "uartrpc_svc/pm/resp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->onSTRRsp(Ljava/util/ArrayList;)V

    .line 262
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    const-string v0, "update/qnx/switch/res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    iput v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    .line 271
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 267
    :cond_2
    :goto_0
    iput v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    .line 268
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/mcu/inactive/req"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    :goto_1
    return-void

    .line 276
    :cond_3
    iget v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    if-ne v0, v2, :cond_7

    const-string v0, "update/mcu/inactive/res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 278
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultMsg;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultMsg;

    .line 279
    .local v2, "ri":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultMsg;
    iget v3, v2, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultMsg;->ecu_result:I

    if-nez v3, :cond_6

    .line 280
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMasterClearHelper:Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;

    if-eqz v1, :cond_4

    .line 281
    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->performFactoryResetNext()V

    .line 283
    :cond_4
    const-string v1, "{\"command\":\"8\", \"operation\":\"set\", \"id\":\"UpdateService\"}"

    .line 284
    .local v1, "command":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_5

    aget-byte v8, v5, v7

    .local v8, "b":B
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v8    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 286
    :cond_5
    iget-object v5, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v6, "misc_service/command/update_request"

    invoke-virtual {v5, v6, v3}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 287
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_3

    .line 288
    :cond_6
    iget-object v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    :goto_3
    iput v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mRollbackStep:I

    .line 291
    return-void

    .line 294
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "ri":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultMsg;
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;

    invoke-virtual {v1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;

    .line 297
    .local v1, "ri":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;
    sget-object v5, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive topic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->status:Ljava/lang/String;

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 301
    sget-object v3, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    const-string v4, "onReceive return false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void

    .line 306
    :cond_8
    const-string v5, "misc_service/command/burn_response"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 307
    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive result status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 308
    :cond_9
    const-string v5, "misc_service/command/rawdump_response"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "onReceive result ri.ack:"

    if-eqz v5, :cond_b

    .line 309
    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mUpdateRawDumpText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mUpdateRawDumpText:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mUpdateRawDumpText:Z

    if-eqz v2, :cond_1e

    .line 312
    iget-object v2, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 313
    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCurrentDumpMode:I

    .line 314
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 316
    :cond_a
    iput v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCurrentDumpMode:I

    .line 317
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 320
    :cond_b
    const-string v5, "misc_service/command/gcore_dump_response"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "default"

    const-string v8, "disable"

    const-string v9, "enable"

    if-eqz v5, :cond_f

    .line 321
    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 323
    iget-object v2, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 325
    const/4 v3, 0x4

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDumpState:I

    .line 326
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 327
    :cond_c
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 328
    const/4 v3, 0x5

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDumpState:I

    .line 329
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 330
    :cond_d
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 331
    const/4 v3, 0x3

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mGcoreDumpState:I

    .line 332
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    .end local v2    # "result":Ljava/lang/String;
    :cond_e
    :goto_4
    goto/16 :goto_8

    .line 335
    :cond_f
    const-string v5, "misc_service/command/cdsp_ssr_fulldump_response"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 336
    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 338
    iget-object v2, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "result":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 340
    const/4 v3, 0x7

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDumpState:I

    .line 341
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 342
    :cond_10
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 343
    const/16 v3, 0x8

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDumpState:I

    .line 344
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 345
    :cond_11
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 346
    const/4 v3, 0x6

    iput v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mCdspSSRFullDumpState:I

    .line 347
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    .end local v2    # "result":Ljava/lang/String;
    :cond_12
    :goto_5
    goto/16 :goto_8

    .line 350
    :cond_13
    const-string v5, "misc_service/command/qxdm_ondevice_log_response"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 351
    iget-object v5, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    iget-object v5, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 352
    sget-object v5, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive result ri.id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v5, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->id:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "id":Ljava/lang/String;
    iget-object v6, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->ack:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "ack":Ljava/lang/String;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmCurrentMode:Ljava/lang/String;

    .line 358
    const-string v10, "qxdm_ondevice_log_get"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 359
    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 360
    const/16 v2, 0xa

    iput v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmOndeviceLogState:I

    .line 361
    iget-object v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 362
    :cond_14
    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 363
    const/16 v2, 0xb

    iput v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmOndeviceLogState:I

    .line 364
    iget-object v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 365
    :cond_15
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 366
    const/16 v2, 0x9

    iput v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmOndeviceLogState:I

    .line 367
    iget-object v3, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 372
    :cond_16
    const-string v7, ":"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "splitStr":[Ljava/lang/String;
    array-length v8, v7

    const/16 v9, 0xc

    if-lt v8, v2, :cond_1b

    .line 374
    aget-object v2, v7, v4

    .line 375
    .local v2, "mode":Ljava/lang/String;
    aget-object v3, v7, v3

    .line 377
    .local v3, "state":Ljava/lang/String;
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->values()[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    move-result-object v8

    array-length v10, v8

    :goto_6
    if-ge v4, v10, :cond_18

    aget-object v11, v8, v4

    .line 378
    .local v11, "c":Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
    invoke-virtual {v11}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 379
    iput-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmCurrentMode:Ljava/lang/String;

    .line 377
    .end local v11    # "c":Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 383
    :cond_18
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mQxdmCurrentMode:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 384
    const-string v4, "ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 385
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 387
    :cond_19
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 390
    :cond_1a
    iget-object v4, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 393
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :cond_1b
    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "ack":Ljava/lang/String;
    .end local v7    # "splitStr":[Ljava/lang/String;
    :cond_1c
    :goto_7
    goto :goto_8

    .line 397
    :cond_1d
    const-string v2, "misc_service/command/clear_ddrdata_response"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 398
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->onDDRRsp()V

    .line 400
    :cond_1e
    :goto_8
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/burn_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/rawdump_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/gcore_dump_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "uartrpc_svc/pm/resp"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/cdsp_ssr_fulldump_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/qxdm_ondevice_log_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/clear_ddrdata_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/qnx/switch/res"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/mcu/inactive/res"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->initData()V

    .line 510
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onResume()V

    .line 511
    return-void
.end method
