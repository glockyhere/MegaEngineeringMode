.class public Lcom/mega/app/engineeringmode/common/EcuConnector;
.super Ljava/lang/Object;
.source "EcuConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/mega/app/engineeringmode/common/EcuConnector;


# instance fields
.field private mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/mega/app/engineeringmode/common/EcuConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mInstance:Lcom/mega/app/engineeringmode/common/EcuConnector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/common/EcuConnector;)Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 14
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mega/app/engineeringmode/common/EcuConnector;Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;)Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/common/EcuConnector;
    .param p1, "x1"    # Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    .line 14
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->getService(Z)Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    new-instance v1, Lcom/mega/app/engineeringmode/common/EcuConnector$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/common/EcuConnector$1;-><init>(Lcom/mega/app/engineeringmode/common/EcuConnector;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 38
    .end local p0    # "this":Lcom/mega/app/engineeringmode/common/EcuConnector;
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector;->mEcuInfo:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/mega/app/engineeringmode/common/EcuConnector;
    .locals 2

    const-class v0, Lcom/mega/app/engineeringmode/common/EcuConnector;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/mega/app/engineeringmode/common/EcuConnector;->mInstance:Lcom/mega/app/engineeringmode/common/EcuConnector;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/mega/app/engineeringmode/common/EcuConnector;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/common/EcuConnector;-><init>()V

    sput-object v1, Lcom/mega/app/engineeringmode/common/EcuConnector;->mInstance:Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 45
    :cond_0
    sget-object v1, Lcom/mega/app/engineeringmode/common/EcuConnector;->mInstance:Lcom/mega/app/engineeringmode/common/EcuConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$getProperty$0(Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;ILjava/lang/String;)V
    .locals 0
    .param p0, "result"    # Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;
    .param p1, "retCode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_0

    .line 60
    iput-object p2, p0, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;->value:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 3
    .param p1, "id"    # I

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v0

    .line 74
    .local v0, "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 79
    .end local v0    # "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    const-string v2, "get HIDL service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProperty(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    .line 53
    new-instance v0, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;-><init>(Lcom/mega/app/engineeringmode/common/EcuConnector$1;)V

    .line 55
    .local v0, "result":Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;
    :try_start_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v1

    .line 56
    .local v1, "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    if-eqz v1, :cond_0

    .line 57
    new-instance v2, Lcom/mega/app/engineeringmode/common/-$$Lambda$EcuConnector$5DGz_FDhmNooA_KJmaCrmw2Gy_s;

    invoke-direct {v2, v0}, Lcom/mega/app/engineeringmode/common/-$$Lambda$EcuConnector$5DGz_FDhmNooA_KJmaCrmw2Gy_s;-><init>(Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;)V

    invoke-interface {v1, p1, v2}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->getProperty(ILvendor/mega/system/ecu_info/V1_0/IEcuInfo$getPropertyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    const-string v3, "get HIDL service failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, v0, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;->value:Ljava/lang/String;

    return-object v1
.end method

.method public readSecureFile(Ljava/lang/String;)[B
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v1

    .line 106
    .local v1, "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v1, p1}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->readSecureFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez v2, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    invoke-static {v2}, Lcom/mega/app/engineeringmode/common/Util;->toByteArray(Ljava/util/List;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    .end local v1    # "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_1
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    const-string v3, "Failed request for readSecureFile "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public setProperty(I[B)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .line 84
    sget-object v0, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperty id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "hidlData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p2, v3

    .line 87
    .local v4, "item":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v4    # "item":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 90
    .local v1, "end":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v3, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProperty data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v3

    .line 94
    .local v3, "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v3, p1, v0}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->setProperty(ILjava/util/ArrayList;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 99
    .end local v3    # "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    :cond_1
    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    const-string v5, "get HIDL service failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v2
.end method

.method public writeSecureFile(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "hidlData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p2, v3

    .line 122
    .local v4, "item":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v4    # "item":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 125
    .local v1, "end":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v3, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSecureFile data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v3

    .line 129
    .local v3, "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v3, p1, v0}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->writeSecureFile(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v4, "retVal":I
    if-nez v4, :cond_1

    .line 132
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v3    # "ecu":Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
    .end local v4    # "retVal":I
    :cond_1
    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/mega/app/engineeringmode/common/EcuConnector;->TAG:Ljava/lang/String;

    const-string v5, "Failed request for writeSecureFile "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2
.end method
