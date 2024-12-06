.class public Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;,
        Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    }
.end annotation


# static fields
.field static final COMPAT_SERVICE_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "SucServiceProvider"

.field static disableLooperCheckForTesting:Z

.field private static volatile instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;


# instance fields
.field private final connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field final serviceConnection:Landroid/content/ServiceConnection;

.field private volatile serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string v1, "com.google.android.setupcompat.SetupCompatService.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    .line 331
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 246
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    .line 214
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    .param p1, "x1"    # Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public static get(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "waitTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v0

    return-object v0
.end method

.method private getAndClearConnectedCondition()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private getConnectedCondition()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 203
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->createCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    return-object v0

    .line 207
    :cond_1
    goto :goto_0
.end method

.method private declared-synchronized getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 173
    .end local p0    # "this":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 312
    const-string v0, "Context object cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 314
    .local v0, "result":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    if-nez v0, :cond_1

    .line 315
    const-class v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    monitor-enter v1

    .line 316
    :try_start_0
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-object v0, v2

    .line 317
    if-nez v0, :cond_0

    .line 318
    new-instance v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    sput-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 319
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-direct {v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 321
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 323
    :cond_1
    :goto_0
    return-object v0
.end method

.method private declared-synchronized requestServiceBind()V
    .locals 5

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    .line 128
    .local v0, "currentServiceState":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne v1, v2, :cond_0

    .line 129
    const-string v1, "SucServiceProvider"

    const-string v2, "Refusing to rebind since current state is already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    .end local p0    # "this":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-eq v1, v2, :cond_1

    .line 133
    const-string v1, "SucServiceProvider"

    const-string v2, "Unbinding existing service connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 140
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .local v1, "bindAllowed":Z
    goto :goto_0

    .line 141
    .end local v1    # "bindAllowed":Z
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string v2, "SucServiceProvider"

    const-string v3, "Unable to bind to compat service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v2, 0x0

    move v1, v2

    .line 146
    .local v1, "bindAllowed":Z
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-eq v3, v4, :cond_3

    .line 151
    new-instance v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-direct {v3, v4, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-direct {p0, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    .line 152
    const-string v2, "SucServiceProvider"

    const-string v3, "Context#bindService went through, now waiting for service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_2
    new-instance v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-direct {v3, v4, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-direct {p0, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    .line 157
    const-string v2, "SucServiceProvider"

    const-string v3, "Context#bindService did not succeed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "currentServiceState":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    .end local v1    # "bindAllowed":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V
    .locals 0
    .param p0, "testInstance"    # Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 328
    sput-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    .line 329
    return-void
.end method

.method private swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V
    .locals 4
    .param p1, "latestServiceContext"    # Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 177
    const-string v0, "SucServiceProvider"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    iget-object v3, v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v3, v1, v2

    .line 180
    const-string v2, "State changed: %s -> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    .line 184
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getAndClearConnectedCondition()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 185
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 188
    :cond_1
    return-void
.end method

.method private waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    .line 92
    .local v0, "currentServiceState":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getConnectedCondition()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 97
    .local v1, "connectedStateLatch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "SucServiceProvider"

    const-string v3, "Waiting for service to get connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 99
    .local v3, "stateChanged":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    .line 107
    const/4 v6, 0x4

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v6, v4, v5

    .line 110
    const-string v5, "Finished waiting for service to get connected. Current state = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v2, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v2

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 103
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object p3, v6, v4

    const-string v4, "Failed to acquire connection after [%s %s]"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected createCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 123
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method

.method getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    iget-object v0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method

.method public getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61
    sget-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 61
    :goto_1
    const-string v1, "getService blocks and should not be called from the main thread."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    .line 65
    .local v0, "serviceContext":Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$2;->$SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State:[I

    iget-object v2, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NOT_STARTED state only possible before instance is created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v1

    return-object v1

    .line 76
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v1

    return-object v1

    .line 72
    :pswitch_3
    const/4 v1, 0x0

    return-object v1

    .line 67
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
