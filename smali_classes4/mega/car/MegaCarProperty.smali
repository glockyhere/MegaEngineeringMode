.class public Lmega/car/MegaCarProperty;
.super Ljava/lang/Object;
.source "MegaCarProperty.java"


# static fields
.field public static final CAR_PROP_UNKNOWN:I = -0x1

.field private static final FORCE_RECONNECT:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmega/car/MegaCarProperty;


# instance fields
.field private mManager:Lmega/car/hardware/property/CarPropertyManager;

.field private mMegaCar:Lmega/car/MegaCar;

.field private final mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lmega/car/MegaCarProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "forceReconnect"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lmega/car/-$$Lambda$MegaCarProperty$6LuDud_z0pANm7lvYQ4HqENOzoU;

    invoke-direct {v0, p0, p3, p1, p2}, Lmega/car/-$$Lambda$MegaCarProperty$6LuDud_z0pANm7lvYQ4HqENOzoU;-><init>(Lmega/car/MegaCarProperty;ZLandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 59
    invoke-direct {p0, p1, p2}, Lmega/car/MegaCarProperty;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 60
    return-void
.end method

.method private declared-synchronized ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 65
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lmega/car/MegaCarProperty;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    invoke-static {p1, p2, v0, v1, v2}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lmega/car/MegaCarProperty;
    .locals 1

    .line 73
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lmega/car/MegaCarProperty;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "megaCarThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lmega/car/MegaCarProperty;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lmega/car/MegaCarProperty;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    sput-object v3, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    .line 96
    .end local v1    # "megaCarThread":Landroid/os/HandlerThread;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 98
    :cond_1
    :goto_0
    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;
    .locals 2

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null MegaCar"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 115
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    const-string v1, "property"

    invoke-virtual {v0, v1}, Lmega/car/MegaCar;->getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    .line 116
    if-nez v0, :cond_2

    .line 117
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null CarPropertyManager"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFloatProp(I)F
    .locals 3
    .param p1, "propid"    # I

    .line 218
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v1

    .line 219
    .local v1, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v1, :cond_1

    .line 220
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lmega/car/hardware/property/CarPropertyManager;->getFloatProp(II)Ljava/lang/Float;

    move-result-object v2

    .line 221
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

    .line 225
    .end local v1    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    .end local v2    # "value":Ljava/lang/Float;
    :cond_1
    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 226
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return v0
.end method

.method public getIntProp(I)I
    .locals 2
    .param p1, "propid"    # I

    .line 186
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 187
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmega/car/hardware/property/CarPropertyManager;->getIntProp(II)I

    move-result v1

    return v1

    .line 190
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getMegaCar()Lmega/car/MegaCar;
    .locals 1

    .line 103
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    return-object v0
.end method

.method public getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "propid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 256
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 261
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$MegaCarProperty(ZLandroid/content/Context;Landroid/os/Handler;Lmega/car/MegaCar;Z)V
    .locals 2
    .param p1, "forceReconnect"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "car"    # Lmega/car/MegaCar;
    .param p5, "ready"    # Z

    .line 49
    if-eqz p5, :cond_0

    .line 50
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService connected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService disconnected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-direct {p0, p2, p3}, Lmega/car/MegaCarProperty;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 154
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_0
    goto :goto_0

    .line 152
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 157
    .restart local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 131
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 135
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

    .line 136
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    .end local v2    # "id":I
    goto :goto_0

    .line 138
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 130
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 132
    .restart local p0    # "this":Lmega/car/MegaCarProperty;
    .restart local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setFloatProp(IF)V
    .locals 2
    .param p1, "propid"    # I
    .param p2, "status"    # F

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 238
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmega/car/hardware/property/CarPropertyManager;->setFloatProp(IIF)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 244
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setIntProp(II)V
    .locals 2
    .param p1, "propid"    # I
    .param p2, "status"    # I

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 202
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmega/car/hardware/property/CarPropertyManager;->setIntProp(III)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 208
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setRawProp(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 272
    .local p1, "value":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 273
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lmega/car/hardware/property/CarPropertyManager;->setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 279
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 1
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 171
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 173
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 177
    .restart local p0    # "this":Lmega/car/MegaCarProperty;
    .restart local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
