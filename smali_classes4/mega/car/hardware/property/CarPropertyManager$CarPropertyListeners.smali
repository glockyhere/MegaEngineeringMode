.class Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
.super Lmega/car/hardware/property/CarRatedFloatListeners;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarPropertyListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmega/car/hardware/property/CarRatedFloatListeners<",
        "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/hardware/property/CarPropertyManager;


# direct methods
.method constructor <init>(Lmega/car/hardware/property/CarPropertyManager;F)V
    .locals 0
    .param p2, "rate"    # F

    .line 439
    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    .line 440
    invoke-direct {p0, p2}, Lmega/car/hardware/property/CarRatedFloatListeners;-><init>(F)V

    .line 441
    return-void
.end method

.method static synthetic lambda$onErrorEvent$1(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 2
    .param p0, "value"    # Lmega/car/hardware/CarPropertyValue;
    .param p1, "listener"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    .line 476
    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    .line 477
    return-void
.end method


# virtual methods
.method public synthetic lambda$onPropertyChanged$0$CarPropertyManager$CarPropertyListeners(JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 1
    .param p1, "updateTime"    # J
    .param p3, "event"    # Lmega/car/hardware/property/CarPropertyEvent;
    .param p4, "listener"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    .line 456
    invoke-virtual {p0, p4, p1, p2}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->needUpdateForSelectedListener(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p3}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 458
    .local v0, "value":Lmega/car/hardware/CarPropertyValue;
    invoke-interface {p4, v0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    .line 460
    .end local v0    # "value":Lmega/car/hardware/CarPropertyValue;
    :cond_0
    return-void
.end method

.method onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "event"    # Lmega/car/hardware/property/CarPropertyEvent;

    .line 465
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 466
    .local v0, "value":Lmega/car/hardware/CarPropertyValue;
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-static {v1}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 467
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    new-instance v1, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8XV1fAeIWmbyt0YFyRhNN8BDkSQ;

    invoke-direct {v1, v0}, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8XV1fAeIWmbyt0YFyRhNN8BDkSQ;-><init>(Lmega/car/hardware/CarPropertyValue;)V

    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 478
    return-void

    .line 468
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 6
    .param p1, "event"    # Lmega/car/hardware/property/CarPropertyEvent;

    .line 445
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    .line 446
    .local v0, "updateTime":J
    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    .line 447
    .local v2, "areaId":I
    invoke-virtual {p0, v2, v0, v1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->needUpdateForAreaId(IJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    invoke-static {}, Lmega/car/hardware/property/CarPropertyManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropping old property data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 452
    :cond_0
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-static {v3}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 453
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    new-instance v3, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;

    invoke-direct {v3, p0, v0, v1, p1}, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$8C8llqLXrB-m5-9QxrdoK-8VoJs;-><init>(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v4, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 461
    return-void

    .line 454
    .end local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
