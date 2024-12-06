.class public Lmega/car/hardware/property/CarPropertyManager;
.super Lmega/car/CarManagerBase;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;,
        Lmega/car/hardware/property/CarPropertyManager$CarSetPropertyErrorCode;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    }
.end annotation


# static fields
.field public static final CAR_SET_PROPERTY_ERROR_CODE_ACCESS_DENIED:I = 0x4

.field public static final CAR_SET_PROPERTY_ERROR_CODE_INVALID_ARG:I = 0x2

.field public static final CAR_SET_PROPERTY_ERROR_CODE_PROPERTY_NOT_AVAILABLE:I = 0x3

.field public static final CAR_SET_PROPERTY_ERROR_CODE_TRY_AGAIN:I = 0x1

.field public static final CAR_SET_PROPERTY_ERROR_CODE_UNKNOWN:I = 0x5

.field private static final DBG:Z = false

.field private static final MSG_GENERIC_EVENT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivePropertyListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

.field private final mHandler:Lmega/car/utils/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmega/car/utils/SingleMessageHandler<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmega/car/hardware/property/ICarProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lmega/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "car"    # Lmega/car/MegaCar;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 126
    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 43
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 127
    invoke-static {p2}, Lmega/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarProperty;

    move-result-object v1

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    .line 128
    invoke-virtual {p0}, Lmega/car/hardware/property/CarPropertyManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    .line 129
    .local v1, "eventHandler":Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 130
    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    .line 131
    return-void

    .line 133
    :cond_0
    new-instance v0, Lmega/car/hardware/property/CarPropertyManager$1;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lmega/car/hardware/property/CarPropertyManager$1;-><init>(Lmega/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lmega/car/hardware/property/CarPropertyManager;

    .line 31
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmega/car/hardware/property/CarPropertyManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/hardware/property/CarPropertyManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 31
    invoke-direct {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method private doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 7
    .param p1, "listener"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 377
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 378
    .local v0, "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 379
    .local v2, "propertyId":I
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 380
    .local v3, "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    if-eqz v3, :cond_2

    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, "needsServerUpdate":Z
    invoke-virtual {v3, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    invoke-virtual {v3, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 385
    :cond_0
    invoke-virtual {v3}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    :try_start_0
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v6, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v5, v2, v6}, Lmega/car/hardware/property/ICarProperty;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_1

    .line 388
    :catch_0
    move-exception v5

    .line 389
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 391
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 392
    :cond_1
    if-eqz v4, :cond_2

    .line 393
    invoke-virtual {v3}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    .end local v4    # "needsServerUpdate":Z
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 397
    invoke-direct {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    .line 399
    .end local v2    # "propertyId":I
    .end local v3    # "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    :cond_3
    goto :goto_0

    .line 400
    :cond_4
    return-void
.end method

.method private getAllPropRateMap()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 428
    .local v0, "propRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v1

    .line 429
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 430
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 431
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 432
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-virtual {v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 430
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 435
    return-object v0

    .line 434
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 313
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 316
    .local v0, "size":I
    invoke-static {}, Lmega/car/config/CarPropertyProvider;->getAllProperties()Landroid/util/SparseArray;

    move-result-object v1

    .line 317
    .local v1, "allProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 318
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 319
    .local v3, "propertyId":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/CarPropertyConfig;

    .line 320
    .local v4, "propertyConfig":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<*>;"
    if-nez v4, :cond_0

    .line 321
    sget-object v5, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found CarPropertyConfig for 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    goto :goto_3

    .line 325
    :cond_0
    invoke-virtual {v4}, Lmega/car/hardware/CarPropertyConfig;->getAreaIds()[I

    move-result-object v5

    .line 326
    .local v5, "areaIds":[I
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget v8, v5, v7

    .line 327
    .local v8, "area":I
    invoke-virtual {p0, v3, v8}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v9

    .line 328
    .local v9, "areaProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    if-eqz v9, :cond_2

    .line 329
    invoke-virtual {v9}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    .line 330
    invoke-interface {p1, v9}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_2

    .line 332
    :cond_1
    invoke-interface {p1, v3, v8}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    .line 326
    .end local v8    # "area":I
    .end local v9    # "areaProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 317
    .end local v3    # "propertyId":I
    .end local v4    # "propertyConfig":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<*>;"
    .end local v5    # "areaIds":[I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "size":I
    .end local v1    # "allProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private handleEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lmega/car/utils/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    .line 501
    :cond_0
    return-void
.end method

.method private declared-synchronized registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .local p1, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 345
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 346
    .local v1, "size":I
    new-array v2, v1, [I

    .line 347
    .local v2, "propIds":[I
    new-array v3, v1, [F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    .local v3, "rates":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 349
    :try_start_2
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 350
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "size":I
    .end local v2    # "propIds":[I
    .end local v3    # "rates":[F
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v2    # "propIds":[I
    .restart local v3    # "rates":[F
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    :try_start_4
    array-length v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_1

    .line 355
    monitor-exit p0

    return-void

    .line 358
    :cond_1
    :try_start_5
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, v1, v2, v3}, Lmega/car/hardware/property/ICarProperty;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 361
    goto :goto_1

    .line 359
    .end local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 362
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    return-void

    .line 352
    .end local v2    # "propIds":[I
    .end local v3    # "rates":[F
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 343
    .end local p1    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I

    .line 412
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->addBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getFloatProp(II)Ljava/lang/Float;
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 173
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 174
    .local v0, "carProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Float;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getIntProp(II)I
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 163
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 164
    .local v0, "carProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;
    .locals 5
    .param p2, "propId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)",
            "Lmega/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    .line 222
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p2, p3}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 223
    .local v0, "propVal":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TE;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid property type. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local p2    # "propId":I
    .end local p3    # "areaId":I
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .restart local p2    # "propId":I
    .restart local p3    # "areaId":I
    :cond_1
    :goto_0
    return-object v0

    .line 231
    .end local v0    # "propVal":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TE;>;"
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    return-object v1
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    return-object v1
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected onCarDisconnected()V
    .locals 4

    .line 505
    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    const-string v1, "onCarDisconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 512
    :try_start_1
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 513
    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 514
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 280
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    if-nez v1, :cond_1

    .line 285
    new-instance v1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-direct {v1, p0, p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;-><init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager;)V

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 287
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 289
    .local v1, "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 290
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 291
    .local v3, "propertyId":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 292
    .local v4, "rate":F
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 293
    .local v5, "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    if-nez v5, :cond_2

    .line 294
    new-instance v6, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-direct {v6, p0, v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;-><init>(Lmega/car/hardware/property/CarPropertyManager;F)V

    move-object v5, v6

    .line 295
    iget-object v6, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    :cond_2
    invoke-virtual {v5, p1, v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->addAndUpdateRate(Ljava/lang/Object;F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    .end local v3    # "propertyId":I
    .end local v4    # "rate":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "i":I
    .end local v5    # "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    invoke-direct {p0, v1}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    .line 305
    :cond_5
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    .line 306
    .end local v1    # "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 281
    :cond_6
    :goto_1
    return-void
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I

    .line 420
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->removeBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setFloatProp(IIF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .param p3, "status"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 168
    const-class v0, Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public setIntProp(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 159
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 2
    .param p2, "propId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    .line 199
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p4, "val":Ljava/lang/Object;, "TE;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    new-instance v1, Lmega/car/hardware/CarPropertyValue;

    invoke-direct {v1, p2, p3, p4}, Lmega/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 2
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 372
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
