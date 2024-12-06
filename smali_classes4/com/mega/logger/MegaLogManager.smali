.class public Lcom/mega/logger/MegaLogManager;
.super Ljava/lang/Object;
.source "MegaLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;,
        Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;,
        Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;,
        Lcom/mega/logger/MegaLogManager$LoggerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_ID_ADAS:I = 0x5

.field public static final LOG_ID_ALL:I = 0x0

.field public static final LOG_ID_ANDROID:I = 0x1

.field public static final LOG_ID_QNX:I = 0x2

.field public static final LOG_ID_S32G:I = 0x3

.field public static final LOG_ID_TBOX:I = 0x4

.field public static final LOG_LEVEL_DEBUG:I = 0x5

.field public static final LOG_LEVEL_ERROR:I = 0x2

.field public static final LOG_LEVEL_FATAL:I = 0x1

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x6

.field public static final LOG_LEVEL_WARN:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SLEEP_DELAY:J

.field private final WAIT_FOR_LOGGER_HAL_TIMEOUT_MS:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mega/logger/MegaLogManager$LoggerHandler;

.field private mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

.field private final mLoggerDeathRecipient:Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

.field private mLoggerRxCallBackInternal:Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

.field private mLoggerUpdateProgressCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/mega/logger/MegaLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mega/logger/MegaLogManager;->WAIT_FOR_LOGGER_HAL_TIMEOUT_MS:J

    .line 35
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/mega/logger/MegaLogManager;->SLEEP_DELAY:J

    .line 36
    new-instance v0, Lcom/mega/logger/MegaLoggerNative;

    invoke-direct {v0}, Lcom/mega/logger/MegaLoggerNative;-><init>()V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    .line 37
    new-instance v0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;-><init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerDeathRecipient:Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    invoke-direct {v0, p0, v1}, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;-><init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerRxCallBackInternal:Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mega/logger/MegaLogManager;->WAIT_FOR_LOGGER_HAL_TIMEOUT_MS:J

    .line 35
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/mega/logger/MegaLogManager;->SLEEP_DELAY:J

    .line 36
    new-instance v0, Lcom/mega/logger/MegaLoggerNative;

    invoke-direct {v0}, Lcom/mega/logger/MegaLoggerNative;-><init>()V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    .line 37
    new-instance v0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;-><init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerDeathRecipient:Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    invoke-direct {v0, p0, v1}, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;-><init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerRxCallBackInternal:Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    .line 310
    iput-object p1, p0, Lcom/mega/logger/MegaLogManager;->mContext:Landroid/content/Context;

    .line 311
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 313
    new-instance v1, Lcom/mega/logger/MegaLogManager$LoggerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mega/logger/MegaLogManager$LoggerHandler;-><init>(Lcom/mega/logger/MegaLogManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mega/logger/MegaLogManager;->mHandler:Lcom/mega/logger/MegaLogManager$LoggerHandler;

    .line 315
    :try_start_0
    invoke-static {}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->getService()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/util/NoSuchElementException;
    sget-object v2, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    const-string v3, "ILoggerBridge service not registered yet"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 316
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get ILoggerBridge service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 321
    :goto_1
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    if-eqz v1, :cond_0

    .line 323
    :try_start_1
    iget-object v2, p0, Lcom/mega/logger/MegaLogManager;->mLoggerDeathRecipient:Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 324
    invoke-direct {p0}, Lcom/mega/logger/MegaLogManager;->registerCallBack()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 325
    :catch_2
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linktoDeath failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Get Logger service error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$200(Lcom/mega/logger/MegaLogManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;

    .line 28
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/logger/MegaLogManager;)Lcom/mega/logger/MegaLogManager$LoggerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;

    .line 28
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mHandler:Lcom/mega/logger/MegaLogManager$LoggerHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/mega/logger/MegaLogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mega/logger/MegaLogManager;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;

    .line 28
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mega/logger/MegaLogManager;Lvendor/mega/loggerhal/V1_0/ILoggerBridge;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 0
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;
    .param p1, "x1"    # Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    .line 28
    iput-object p1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mega/logger/MegaLogManager;J)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;
    .param p1, "x1"    # J

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mega/logger/MegaLogManager;->getLoggerBridgeWithTimeout(J)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mega/logger/MegaLogManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/logger/MegaLogManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/mega/logger/MegaLogManager;->registerCallBack()V

    return-void
.end method

.method private getLoggerBridge()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 4

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "loggerBridge":Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    :try_start_0
    invoke-static {}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->getService()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v1

    move-object v0, v1

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerDeathRecipient:Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private getLoggerBridgeWithTimeout(J)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 7
    .param p1, "timeout_ms"    # J

    .line 257
    invoke-direct {p0}, Lcom/mega/logger/MegaLogManager;->getLoggerBridge()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    .line 258
    .local v0, "bridge":Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 259
    .local v1, "start":J
    :goto_0
    if-nez v0, :cond_0

    add-long v3, v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 261
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .line 265
    invoke-direct {p0}, Lcom/mega/logger/MegaLogManager;->getLoggerBridge()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 267
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-object v0
.end method

.method private registerCallBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerRxCallBackInternal:Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    invoke-interface {v0, v1}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->registerUpdateProgressCallBack(Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Logger service is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterCallBack()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerBridge:Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager;->mLoggerRxCallBackInternal:Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;

    invoke-interface {v0, v1}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->unregisterUpdateProgressCallBack(Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 254
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Logger service is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearLog(I)Z
    .locals 1
    .param p1, "logid"    # I

    .line 133
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1}, Lcom/mega/logger/MegaLoggerNative;->clearLog(I)Z

    move-result v0

    return v0
.end method

.method public isUsbConnected()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0}, Lcom/mega/logger/MegaLoggerNative;->isUsbConnected()Z

    move-result v0

    return v0
.end method

.method public notifyDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "usbPath"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1}, Lcom/mega/logger/MegaLoggerNative;->notifyDisconnected(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/mega/logger/MegaLogManager;->unregisterCallBack()V

    .line 339
    return-void
.end method

.method public registerLoggerUpdateProgressCallBack(Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;

    .line 346
    monitor-enter p0

    .line 347
    if-nez p1, :cond_0

    .line 348
    :try_start_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1
    monitor-exit p0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveLogToPath(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "logid"    # I

    .line 146
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1, p2}, Lcom/mega/logger/MegaLoggerNative;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveToUsb()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0}, Lcom/mega/logger/MegaLoggerNative;->saveToUsb()Z

    move-result v0

    return v0
.end method

.method public setLogLevel(II)Z
    .locals 1
    .param p1, "logid"    # I
    .param p2, "logLevel"    # I

    .line 159
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1, p2}, Lcom/mega/logger/MegaLoggerNative;->setLogLevel(II)Z

    move-result v0

    return v0
.end method

.method public unregisterLoggerUpdateProgressCallBack(Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->mLoggerUpdateProgressCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 363
    monitor-exit p0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public usbConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "mountPath"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1}, Lcom/mega/logger/MegaLoggerNative;->usbConnected(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public usbDisconnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unmountPath"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {v0, p1}, Lcom/mega/logger/MegaLoggerNative;->usbDisconnected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
