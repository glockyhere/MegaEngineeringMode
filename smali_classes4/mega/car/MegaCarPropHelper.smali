.class public Lmega/car/MegaCarPropHelper;
.super Ljava/lang/Object;
.source "MegaCarPropHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CAR_PROP_UNKNOWN:I = -0x1

.field private static final FORCE_RECONNECT:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmega/car/MegaCarPropHelper;


# instance fields
.field private mManager:Lmega/car/CarPropertyManager;

.field private mMegaCar:Lmega/car/MegaCar;

.field private final mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lmega/car/MegaCarPropHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "forceReconnect"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;

    invoke-direct {v0, p0, p3, p1, p2}, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;-><init>(Lmega/car/MegaCarPropHelper;ZLandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 56
    invoke-direct {p0, p1, p2}, Lmega/car/MegaCarPropHelper;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method private declared-synchronized ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 62
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lmega/car/MegaCarPropHelper;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    invoke-static {p1, p2, v0, v1, v2}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;Z)Lmega/car/MegaCarPropHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Z)Lmega/car/MegaCarPropHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "forceReconnect"    # Z

    .line 89
    sget-object v0, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    if-nez v0, :cond_1

    .line 90
    const-class v0, Lmega/car/MegaCarPropHelper;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lmega/car/MegaCarPropHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lmega/car/MegaCarPropHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    sput-object v1, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    .line 95
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 97
    :cond_1
    :goto_0
    sget-object v0, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCarPropertyManager()Lmega/car/CarPropertyManager;
    .locals 4

    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 326
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_0
    :try_start_1
    new-instance v0, Lmega/car/CarPropertyManager;

    iget-object v1, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    iget-object v2, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    .line 327
    invoke-virtual {v2}, Lmega/car/MegaCar;->getService()Lmega/car/ICar;

    move-result-object v2

    const-string v3, "property"

    invoke-interface {v2, v3}, Lmega/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmega/car/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    if-nez v0, :cond_1

    .line 332
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "Null CarPropertyManager"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFloatProp(I)F
    .locals 1
    .param p1, "propid"    # I

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getFloatProp(II)F

    move-result v0

    return v0
.end method

.method public getFloatProp(II)F
    .locals 3
    .param p1, "propid"    # I
    .param p2, "area"    # I

    .line 234
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v1

    .line 235
    .local v1, "manager":Lmega/car/CarPropertyManager;
    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v1, p1, p2}, Lmega/car/CarPropertyManager;->getFloatProp(II)Ljava/lang/Float;

    move-result-object v2

    .line 237
    .local v2, "value":Ljava/lang/Float;
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    .line 241
    .end local v1    # "manager":Lmega/car/CarPropertyManager;
    .end local v2    # "value":Ljava/lang/Float;
    :cond_1
    goto :goto_1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 242
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return v0
.end method

.method public getIntProp(I)I
    .locals 1
    .param p1, "propid"    # I

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getIntProp(II)I

    move-result v0

    return v0
.end method

.method public getIntProp(II)I
    .locals 2
    .param p1, "propid"    # I
    .param p2, "area"    # I

    .line 182
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 183
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->getIntProp(II)I

    move-result v1

    return v1

    .line 186
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getMegaCar()Lmega/car/MegaCar;
    .locals 1

    .line 101
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    return-object v0
.end method

.method public getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .param p1, "propid"    # I

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "propid"    # I
    .param p2, "areaId"    # I

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 296
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 301
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$MegaCarPropHelper(ZLandroid/content/Context;Landroid/os/Handler;Lmega/car/MegaCar;Z)V
    .locals 2
    .param p1, "forceReconnect"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "car"    # Lmega/car/MegaCar;
    .param p5, "ready"    # Z

    .line 46
    if-eqz p5, :cond_0

    .line 47
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "CarService connected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "CarService disconnected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-direct {p0, p2, p3}, Lmega/car/MegaCarPropHelper;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .local p1, "cb":Ljava/lang/Object;, "TT;"
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 142
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_0
    goto :goto_0

    .line 140
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 145
    .restart local p1    # "cb":Ljava/lang/Object;, "TT;"
    .restart local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCallback(Lmega/car/CarPropertyManager$CarPropChangeCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/CarPropertyManager$CarPropChangeCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 111
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 115
    .local v0, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    .end local v2    # "id":I
    goto :goto_0

    .line 118
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 112
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerCallback(Lmega/car/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 122
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 126
    .local v0, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .end local v2    # "id":I
    goto :goto_0

    .line 129
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 121
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 123
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setFloatProp(IF)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "status"    # F

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/MegaCarPropHelper;->setFloatProp(IIF)V

    .line 253
    return-void
.end method

.method public setFloatProp(IIF)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "area"    # I
    .param p3, "status"    # F

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 264
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1, p2, p3}, Lmega/car/CarPropertyManager;->setFloatProp(IIF)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 270
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setIntProp(II)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "status"    # I

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/MegaCarPropHelper;->setIntProp(III)V

    .line 197
    return-void
.end method

.method public setIntProp(III)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "area"    # I
    .param p3, "status"    # I

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 208
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1, p2, p3}, Lmega/car/CarPropertyManager;->setIntProp(III)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setRawProp(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 313
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lmega/car/CarPropertyManager;->setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 319
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterCallback(Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p1, "cb":Ljava/lang/Object;, "TT;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 157
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 159
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->unregisterCallback(Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 163
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Ljava/lang/Object;, "TT;"
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
