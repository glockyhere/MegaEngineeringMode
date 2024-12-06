.class public Lcom/mega/app/engineeringmode/info/InfoActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "InfoActivity.java"


# static fields
.field private static final ENV_PROD:Ljava/lang/String; = "prod"

.field private static final ENV_STG:Ljava/lang/String; = "stg"

.field private static final GIB_IN_BYTES:J = 0x40000000L

.field private static final HU_SN:I = 0x3300000e

.field private static final KIB_IN_BYTES:J = 0x400L

.field private static final MIB_IN_BYTES:J = 0x100000L

.field private static final PERSIST_AUTH:Ljava/lang/String; = "persist.mega.need_auth"

.field private static final PERSIST_ENV:Ljava/lang/String; = "persist.mega.env"

.field private static final PERSIST_VID:Ljava/lang/String; = "persist.mega.vehicle_id"

.field private static final SECURE_BOOT:I = 0x33000018

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEZONE_POLL_OFFSET:I = 0x2


# instance fields
.field certId:Ljava/lang/String;

.field env:Ljava/lang/String;

.field envText:Ljava/lang/String;

.field huAndroidVersion:Ljava/lang/String;

.field huHWVersion:Ljava/lang/String;

.field huQnxVersion:Ljava/lang/String;

.field huSN:Ljava/lang/String;

.field private localMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAuthState:Landroid/widget/TextView;

.field private mBlueToothMacAddr:Landroid/widget/TextView;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallback:Lmega/car/CarPropertyManager$CarPropertyEventCallback;

.field private mCarProhelper:Lmega/car/MegaCarPropHelper;

.field private mCertID:Landroid/widget/TextView;

.field private mCurrentEnv:Landroid/widget/TextView;

.field private mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

.field protected mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHuAndroidVersion:Landroid/widget/TextView;

.field private mHuHWVersion:Landroid/widget/TextView;

.field private mHuQnxVersion:Landroid/widget/TextView;

.field private mHuSN:Landroid/widget/TextView;

.field private mMcuSWMVersion:Landroid/widget/TextView;

.field private mOsVersion:Landroid/widget/TextView;

.field private mSecureBoot:Landroid/widget/TextView;

.field private mSwitchAuth:Landroid/widget/TextView;

.field private mSwitchEnv:Landroid/widget/TextView;

.field private mTboxCertID:Landroid/widget/TextView;

.field private mTboxICCID:Landroid/widget/TextView;

.field private mTboxTuid:Landroid/widget/TextView;

.field private mTotalMemory:Landroid/widget/TextView;

.field private mTuid:Landroid/widget/TextView;

.field private mVid:Landroid/widget/TextView;

.field private mVinCode:Landroid/widget/TextView;

.field private mWifiMacAddr:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mcuSWMVersion:Ljava/lang/String;

.field osVersion:Ljava/lang/String;

.field switchEnv:Ljava/lang/String;

.field switchEnvText:Ljava/lang/String;

.field tboxCertID:Ljava/lang/String;

.field tboxICCID:Ljava/lang/String;

.field tboxTuid:Ljava/lang/String;

.field tuid:Ljava/lang/String;

.field vid:Ljava/lang/String;

.field vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->vin:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->tuid:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->certId:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxTuid:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxCertID:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxICCID:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->huAndroidVersion:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->huQnxVersion:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->huSN:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->osVersion:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->huHWVersion:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mcuSWMVersion:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->vid:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->env:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->envText:Ljava/lang/String;

    .line 158
    const-string v1, "prod"

    iput-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnv:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnvText:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/mega/app/engineeringmode/info/InfoActivity$1;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/info/InfoActivity$1;-><init>(Lcom/mega/app/engineeringmode/info/InfoActivity;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCallback:Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/info/InfoActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mega/app/engineeringmode/info/InfoActivity;->updateInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCertID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxTuid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxCertID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxICCID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuAndroidVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuQnxVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mMcuSWMVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuSN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mOsVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTotalMemory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mVinCode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSecureBoot:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuHWVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mBlueToothMacAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mWifiMacAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTuid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mVid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCurrentEnv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSwitchEnv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mega/app/engineeringmode/info/InfoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getAuthSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mega/app/engineeringmode/info/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->initAuth()V

    return-void
.end method

.method static synthetic access$900(Lcom/mega/app/engineeringmode/info/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/info/InfoActivity;

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSwitchAuth:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAuthSwitch()Z
    .locals 2

    .line 339
    const-string v0, "persist.mega.need_auth"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mega/nexus/os/MegaSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBlueToothMacAddr()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecureBootState()Ljava/lang/String;
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const v1, 0x33000018

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getProperty(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_0
    return-object v0
.end method

.method private getSystemTotalMemory()Ljava/lang/String;
    .locals 11

    .line 444
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 445
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 446
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 447
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 448
    .local v2, "size":J
    const-string v4, "0M"

    .line 449
    .local v4, "totalMem":Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 450
    .local v5, "df":Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x400

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 452
    :cond_0
    const-wide/32 v6, 0x100000

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v7, v2

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 454
    :cond_1
    const-wide/32 v6, 0x40000000

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v7, v2

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 457
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v7, v2

    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    :goto_0
    sget-object v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TotalMem[BYTE]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " TotalMem:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v4
.end method

.method private getWifiMacAddr()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWifiMacAddr_()Ljava/lang/String;
    .locals 11

    .line 415
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    .local v0, "listIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    sget-object v1, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listIfaces:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 418
    .local v2, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 422
    .local v1, "macBytes":[B
    sget-object v3, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-nez v1, :cond_1

    const-string v3, ""

    return-object v3

    .line 424
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-byte v8, v1, v6

    .line 426
    .local v8, "b":B
    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    nop

    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 431
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 435
    .end local v0    # "listIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v1    # "macBytes":[B
    .end local v2    # "iface":Ljava/net/NetworkInterface;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    goto :goto_2

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 118
    const v0, 0x7f0901df

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mVinCode:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0901dd

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTuid:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0901de

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mVid:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCurrentEnv:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSwitchEnv:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mAuthState:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSwitchAuth:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCertID:Landroid/widget/TextView;

    .line 126
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 127
    const v0, 0x7f0901db

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxTuid:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxCertID:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0901da

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxICCID:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuAndroidVersion:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuQnxVersion:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mMcuSWMVersion:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0901cc

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuSN:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mOsVersion:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0901dc

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTotalMemory:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSecureBoot:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuHWVersion:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mBlueToothMacAddr:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0901e0

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mWifiMacAddr:Landroid/widget/TextView;

    .line 141
    return-void
.end method

.method private initAuth()V
    .locals 3

    .line 333
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getAuthSwitch()Z

    move-result v0

    .line 334
    .local v0, "state":Z
    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mAuthState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0e0081

    goto :goto_0

    :cond_0
    const v2, 0x7f0e0080

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mSwitchAuth:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f0e002e

    goto :goto_1

    :cond_1
    const v2, 0x7f0e00b0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 336
    return-void
.end method

.method public static synthetic lambda$E8tjd1ltew37NFgm3IPuFXnB6T4(Lcom/mega/app/engineeringmode/info/InfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->updateData()V

    return-void
.end method

.method private updateData()V
    .locals 24

    .line 178
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "car property help is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_0
    iget-object v1, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCallback:Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lmega/car/MegaCarPropHelper;->registerCallback(Lmega/car/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    .line 184
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateData START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000002

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v7

    .line 186
    .local v7, "vinProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v7, :cond_1

    .line 187
    invoke-virtual {v7}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->vin:Ljava/lang/String;

    .line 189
    :cond_1
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData vin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->vin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000003

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v8

    .line 192
    .local v8, "tuidProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v8, :cond_2

    .line 193
    invoke-virtual {v8}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tuid:Ljava/lang/String;

    .line 195
    :cond_2
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData tuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000004

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v9

    .line 198
    .local v9, "certIdProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v9, :cond_3

    .line 199
    invoke-virtual {v9}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->certId:Ljava/lang/String;

    .line 202
    :cond_3
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000005

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v10

    .line 203
    .local v10, "tboxTuidProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v10, :cond_4

    .line 204
    invoke-virtual {v10}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxTuid:Ljava/lang/String;

    .line 206
    :cond_4
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData tboxTuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxTuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000006

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v11

    .line 209
    .local v11, "tboxCertIDProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v11, :cond_5

    .line 210
    invoke-virtual {v11}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxCertID:Ljava/lang/String;

    .line 212
    :cond_5
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData tboxCertID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxCertID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000007

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v12

    .line 215
    .local v12, "tboxICCIDProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v12, :cond_6

    .line 216
    invoke-virtual {v12}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxICCID:Ljava/lang/String;

    .line 218
    :cond_6
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData tboxICCID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->tboxICCID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000008

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v13

    .line 221
    .local v13, "huAndroidVersionProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v13, :cond_7

    .line 222
    invoke-virtual {v13}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huAndroidVersion:Ljava/lang/String;

    .line 224
    :cond_7
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData huAndroidVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huAndroidVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x33000009

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v14

    .line 227
    .local v14, "huQnxVersionProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v14, :cond_8

    .line 228
    invoke-virtual {v14}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huQnxVersion:Ljava/lang/String;

    .line 230
    :cond_8
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData huQnxVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huQnxVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x3300000b

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v15

    .line 233
    .local v15, "mcuSWMVersionProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v15, :cond_9

    .line 234
    invoke-virtual {v15}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mcuSWMVersion:Ljava/lang/String;

    .line 236
    :cond_9
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData mcuSWMVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mcuSWMVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x3300000e

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v16

    .line 239
    .local v16, "huSNProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v16, :cond_a

    .line 240
    invoke-virtual/range {v16 .. v16}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huSN:Ljava/lang/String;

    .line 242
    :cond_a
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData huSN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huSN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x3300000f

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v17

    .line 245
    .local v17, "osVersionProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v17, :cond_b

    .line 246
    invoke-virtual/range {v17 .. v17}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->osVersion:Ljava/lang/String;

    .line 248
    :cond_b
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData osVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->osVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    const v1, 0x3300000d

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v18

    .line 251
    .local v18, "huHWVersionProp":Lmega/car/hardware/CarPropertyValue;
    if-eqz v18, :cond_c

    .line 252
    invoke-virtual/range {v18 .. v18}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huHWVersion:Ljava/lang/String;

    .line 254
    :cond_c
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData huHWVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->huHWVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getBlueToothMacAddr()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "blueToothMacAddr":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getWifiMacAddr()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "wifiMacAddr":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getSystemTotalMemory()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "totalMemory":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getSecureBootState()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "secureBoot":Ljava/lang/String;
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    .end local v7    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    .local v19, "vinProp":Lmega/car/hardware/CarPropertyValue;
    const-string v7, "updateData blueToothMacAddr:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", wifiMacAddr:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", TotalMemory:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", secureBoot:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateData END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "persist.mega.vehicle_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/nexus/os/MegaSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->vid:Ljava/lang/String;

    .line 267
    const-string v0, "persist.mega.env"

    invoke-static {v0, v1}, Lcom/mega/nexus/os/MegaSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->env:Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vid:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->vid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", env:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->env:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->env:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "envTextId":I
    const/4 v1, 0x0

    .line 272
    .local v1, "switchId":I
    iget-object v7, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->env:Ljava/lang/String;

    move/from16 v20, v0

    .end local v0    # "envTextId":I
    .local v20, "envTextId":I
    const-string v0, "stg"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 273
    const v0, 0x7f0e008b

    .line 274
    .end local v20    # "envTextId":I
    .restart local v0    # "envTextId":I
    const-string v7, "prod"

    iput-object v7, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnv:Ljava/lang/String;

    .line 275
    const v1, 0x7f0e0089

    goto :goto_0

    .line 277
    .end local v0    # "envTextId":I
    .restart local v20    # "envTextId":I
    :cond_d
    const v7, 0x7f0e0089

    .line 278
    .end local v20    # "envTextId":I
    .local v7, "envTextId":I
    iput-object v0, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnv:Ljava/lang/String;

    .line 279
    const v1, 0x7f0e008b

    move v0, v7

    .line 281
    .end local v7    # "envTextId":I
    .restart local v0    # "envTextId":I
    :goto_0
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-virtual {v6, v1}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v7, v21

    move/from16 v21, v1

    const v1, 0x7f0e00d9

    .end local v1    # "switchId":I
    .local v21, "switchId":I
    invoke-virtual {v6, v1, v7}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->switchEnvText:Ljava/lang/String;

    .line 282
    invoke-virtual {v6, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/mega/app/engineeringmode/info/InfoActivity;->envText:Ljava/lang/String;

    .line 285
    .end local v0    # "envTextId":I
    .end local v21    # "switchId":I
    :cond_e
    new-instance v7, Lcom/mega/app/engineeringmode/info/InfoActivity$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "secureBoot":Ljava/lang/String;
    .local v20, "secureBoot":Ljava/lang/String;
    move-object v2, v3

    move-object/from16 v21, v3

    .end local v3    # "totalMemory":Ljava/lang/String;
    .local v21, "totalMemory":Ljava/lang/String;
    move-object/from16 v3, v20

    move-object/from16 v22, v4

    .end local v4    # "wifiMacAddr":Ljava/lang/String;
    .local v22, "wifiMacAddr":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v23, v5

    .end local v5    # "blueToothMacAddr":Ljava/lang/String;
    .local v23, "blueToothMacAddr":Ljava/lang/String;
    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/mega/app/engineeringmode/info/InfoActivity$2;-><init>(Lcom/mega/app/engineeringmode/info/InfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/mega/app/engineeringmode/info/InfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method private updateInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "propValue"    # Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/mega/app/engineeringmode/info/InfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmega/car/MegaCar;->propIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 345
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mOsVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuSN:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuHWVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    goto :goto_0

    .line 383
    :pswitch_4
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mMcuSWMVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    goto :goto_0

    .line 379
    :pswitch_5
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuQnxVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    goto :goto_0

    .line 375
    :pswitch_6
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHuAndroidVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    goto :goto_0

    .line 371
    :pswitch_7
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxICCID:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    goto :goto_0

    .line 367
    :pswitch_8
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxCertID:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    goto :goto_0

    .line 363
    :pswitch_9
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTboxTuid:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    goto :goto_0

    .line 355
    :pswitch_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCertID:Landroid/widget/TextView;

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCertID:Landroid/widget/TextView;

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    goto :goto_0

    .line 351
    :pswitch_b
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mTuid:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    goto :goto_0

    .line 347
    :pswitch_c
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mVinCode:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    nop

    .line 401
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33000002
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->init()V

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 94
    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    .line 96
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 97
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    invoke-static {}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getInstance()Lcom/mega/app/engineeringmode/common/EcuConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x33000002

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x33000003

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x33000004

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x33000005

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x33000006

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x33000007

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x33000008

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x33000009

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x3300000b

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x3300000e

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x3300000f

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const v3, 0x3300000d

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHashSet:Ljava/util/HashSet;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mega/app/engineeringmode/info/-$$Lambda$InfoActivity$E8tjd1ltew37NFgm3IPuFXnB6T4;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/info/-$$Lambda$InfoActivity$E8tjd1ltew37NFgm3IPuFXnB6T4;-><init>(Lcom/mega/app/engineeringmode/info/InfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 476
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 477
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 471
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onResume()V

    .line 472
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCarProhelper:Lmega/car/MegaCarPropHelper;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mCallback:Lmega/car/CarPropertyManager$CarPropertyEventCallback;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/info/InfoActivity;->mHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lmega/car/MegaCarPropHelper;->unregisterCallback(Ljava/lang/Object;Ljava/util/Set;)V

    .line 466
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onStop()V

    .line 467
    return-void
.end method
