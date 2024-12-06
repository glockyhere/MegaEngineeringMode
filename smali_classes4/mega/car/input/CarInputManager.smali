.class public final Lmega/car/input/CarInputManager;
.super Lmega/car/CarManagerBase;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/CarInputManager$CallbackHolder;,
        Lmega/car/input/CarInputManager$ICarInputCallbackImpl;,
        Lmega/car/input/CarInputManager$CustomLongPressRunnable;,
        Lmega/car/input/CarInputManager$LevelEnum;,
        Lmega/car/input/CarInputManager$InputTypeEnum;,
        Lmega/car/input/CarInputManager$CarInputCaptureCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INPUT_TYPE_ALL_INPUTS:I = 0x1

.field public static final INPUT_TYPE_CUSTOM_INPUT_EVENT:I = 0xc8

.field public static final INPUT_TYPE_SYSTEM_KEYS:I = 0x64

.field private static final INVALID_LEVEL:I = -0x2

.field public static final LEVEL_PRIORITY_DEFAULT:I = 0x0

.field public static final LEVEL_PRIORITY_FORCE:I = -0x1

.field public static final LEVEL_PRIORITY_HIGH:I = 0x1

.field public static final LEVEL_PRIORITY_MAX:I = 0x2

.field public static final LEVEL_PRIORITY_TEMPORARY:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sEventTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/input/CarInputManager$CustomLongPressRunnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

.field private mCurrentLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mLongPressTimeout:I

.field private final mService:Lmega/car/input/ICarInput;

.field private final mServiceCallback:Lmega/car/input/ICarInputCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lmega/car/input/CarInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "car"    # Lmega/car/MegaCar;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 153
    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    .line 137
    new-instance v0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$1;)V

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    .line 141
    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 147
    const/4 v0, -0x2

    iput v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 154
    invoke-static {p2}, Lmega/car/input/ICarInput$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInput;

    move-result-object v0

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    .line 155
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 155
    const-string v2, "custom_long_press_timeout"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/mega/nexus/provider/MegaSettings;->getIntForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/input/CarInputManager;->sEventTarget:Landroid/util/SparseArray;

    .line 159
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    .line 39
    sget-object v0, Lmega/car/input/CarInputManager;->sEventTarget:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lmega/car/input/CarInputManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/input/CarInputManager;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 39
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$400(Lmega/car/input/CarInputManager;Lmega/car/input/CustomInputEvent;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/input/CarInputManager;
    .param p1, "x1"    # Lmega/car/input/CustomInputEvent;

    .line 39
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method private customEventDownReport(IZ)V
    .locals 1
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z

    .line 396
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->customEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 9
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 308
    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    .line 309
    .local v0, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 310
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v3, "warning, null callback"

    invoke-static {v2, v3}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget v2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 312
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    .line 316
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v2, 0x0

    .line 320
    .local v2, "repeatedKeyEvent":Z
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 321
    const/4 v3, 0x1

    .line 322
    .local v3, "intercept":Z
    const/4 v2, 0x1

    goto :goto_1

    .line 324
    .end local v3    # "intercept":Z
    :cond_2
    sget-object v3, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to ask onInterceptTouchEvent for events "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v3, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v3, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z

    move-result v3

    .line 327
    .restart local v3    # "intercept":Z
    :goto_1
    const-string v4, ", for event: "

    if-nez v2, :cond_4

    .line 328
    sget-object v5, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v7, v1, :cond_3

    .line 329
    const-string v7, "LEVEL_PRIORITY_FORCE dispatch for event: "

    goto :goto_2

    .line 330
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start report to service intercept: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-static {v5, v6}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_4
    iget v5, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v5, v1, :cond_5

    .line 334
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_3

    .line 336
    :cond_5
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    .line 337
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end report to service intercept: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_3
    if-nez v3, :cond_6

    .line 341
    return-void

    .line 343
    :cond_6
    if-nez v2, :cond_7

    .line 344
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intercept true, ready to callBack onCustomInputEvent for event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_7
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 348
    new-instance v1, Lmega/car/input/CarInputManager$CustomLongPressRunnable;

    invoke-direct {v1, v0, p1}, Lmega/car/input/CarInputManager$CustomLongPressRunnable;-><init>(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    .line 349
    .local v1, "runnable":Lmega/car/input/CarInputManager$CustomLongPressRunnable;
    sget-object v4, Lmega/car/input/CarInputManager;->sEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    iget-object v4, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "runnable":Lmega/car/input/CarInputManager$CustomLongPressRunnable;
    goto :goto_4

    .line 355
    :cond_8
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    .line 356
    sget-object v1, Lmega/car/input/CarInputManager;->sEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/input/CarInputManager$CustomLongPressRunnable;

    .line 357
    .restart local v1    # "runnable":Lmega/car/input/CarInputManager$CustomLongPressRunnable;
    if-eqz v1, :cond_a

    .line 362
    iget-object v4, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    sget-object v4, Lmega/car/input/CarInputManager;->sEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_5

    .line 355
    .end local v1    # "runnable":Lmega/car/input/CarInputManager$CustomLongPressRunnable;
    :cond_9
    :goto_4
    nop

    .line 366
    :cond_a
    :goto_5
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ready to fire events "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v4, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;

    invoke-direct {v4, p1, v0}, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;-><init>(Lmega/car/input/CustomInputEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method private dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 299
    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    .line 300
    .local v0, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    if-nez v0, :cond_0

    .line 301
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v2, "warning, null callback"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 304
    :cond_0
    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;

    invoke-direct {v2, v0, p1}, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;-><init>(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method private forceCustomEventDownReport(IZ)V
    .locals 1
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z

    .line 404
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->forceCustomEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getCallback()Lmega/car/input/CarInputManager$CallbackHolder;
    .locals 2

    .line 293
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v0

    return-object v1

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dispatchCustomInputEvent$1(Lmega/car/input/CustomInputEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 3
    .param p0, "event"    # Lmega/car/input/CustomInputEvent;
    .param p1, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;

    .line 369
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing events "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v0, p0}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    .line 373
    return-void
.end method

.method static synthetic lambda$dispatchKeyEvent$0(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 1
    .param p0, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 304
    iget-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v0, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public getLongPressTimeout()I
    .locals 1

    .line 162
    iget v0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    return v0
.end method

.method protected onCarDisconnected()V
    .locals 2

    .line 286
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->releaseInputEventCapture()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseInputEventCapture()V
    .locals 3

    .line 267
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 269
    .local v1, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    if-nez v1, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 275
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v2, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v2}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 281
    :goto_0
    return-void

    .line 275
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 269
    .end local v1    # "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "requestLevel"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 242
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p4, p3}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 248
    if-eq v0, p2, :cond_1

    .line 249
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v1, "can not change request level!"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_0
    iput p2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 256
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v1, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v1, p1, p2}, Lmega/car/input/ICarInput;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 246
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestInputEventCapture(IILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "requestLevel"    # I
    .param p3, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 189
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 190
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0, p1, p2, v0, p3}, Lmega/car/input/CarInputManager;->requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    .line 191
    return-void
.end method

.method public requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 209
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p3, p2}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 216
    :try_start_1
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v1, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v1, p1}, Lmega/car/input/ICarInput;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 213
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestInputEventCapture(ILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 173
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 174
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0, p1, v0, p2}, Lmega/car/input/CarInputManager;->requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    .line 175
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .line 166
    iput p1, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    .line 167
    return-void
.end method
