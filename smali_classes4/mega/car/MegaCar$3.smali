.class Lmega/car/MegaCar$3;
.super Ljava/lang/Object;
.source "MegaCar.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/MegaCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/MegaCar;


# direct methods
.method constructor <init>(Lmega/car/MegaCar;)V
    .locals 0
    .param p1, "this$0"    # Lmega/car/MegaCar;

    .line 153
    iput-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 156
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$200(Lmega/car/MegaCar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {p2}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v1

    .line 158
    .local v1, "newService":Lmega/car/ICar;
    if-nez v1, :cond_0

    .line 159
    invoke-static {}, Lmega/car/MegaCar;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null binder service"

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Lmega/log/MLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    monitor-exit v0

    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v2}, Lmega/car/MegaCar;->access$400(Lmega/car/MegaCar;)Lmega/car/ICar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v2}, Lmega/car/MegaCar;->access$400(Lmega/car/MegaCar;)Lmega/car/ICar;

    move-result-object v2

    invoke-interface {v2}, Lmega/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1}, Lmega/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_1
    iget-object v2, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lmega/car/MegaCar;->access$502(Lmega/car/MegaCar;I)I

    .line 167
    iget-object v2, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v2, v1}, Lmega/car/MegaCar;->access$402(Lmega/car/MegaCar;Lmega/car/ICar;)Lmega/car/ICar;

    .line 168
    nop

    .end local v1    # "newService":Lmega/car/ICar;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object v0

    iget-object v1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    .line 172
    :cond_2
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 176
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$200(Lmega/car/MegaCar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v1}, Lmega/car/MegaCar;->access$500(Lmega/car/MegaCar;)I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v1}, Lmega/car/MegaCar;->access$700(Lmega/car/MegaCar;)V

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object v0

    iget-object v1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$800(Lmega/car/MegaCar;)V

    .line 190
    :goto_0
    return-void

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
