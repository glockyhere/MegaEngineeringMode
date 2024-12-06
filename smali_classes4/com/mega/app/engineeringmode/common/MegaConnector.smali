.class public Lcom/mega/app/engineeringmode/common/MegaConnector;
.super Ljava/lang/Object;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;,
        Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;
    }
.end annotation


# static fields
.field private static final MISC:Ljava/lang/String; = "misc_service"

.field private static final TAG:Ljava/lang/String; = "MegaConnector"

.field private static sInstance:Lcom/mega/app/engineeringmode/common/MegaConnector;


# instance fields
.field private mCbMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field private mRxCallback:Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mCbMap:Ljava/util/Hashtable;

    .line 42
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/common/MegaConnector;->connect()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/common/MegaConnector;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 15
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mCbMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;
    .locals 2

    const-class v0, Lcom/mega/app/engineeringmode/common/MegaConnector;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/mega/app/engineeringmode/common/MegaConnector;->sInstance:Lcom/mega/app/engineeringmode/common/MegaConnector;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;-><init>()V

    sput-object v1, Lcom/mega/app/engineeringmode/common/MegaConnector;->sInstance:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 60
    :cond_0
    sget-object v1, Lcom/mega/app/engineeringmode/common/MegaConnector;->sInstance:Lcom/mega/app/engineeringmode/common/MegaConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;
    .param p2, "topic"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mRxCallback:Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;

    invoke-interface {v0, p2, v1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 69
    const-string v1, "MegaConnector"

    const-string v2, "add failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public connect()V
    .locals 3

    .line 47
    :try_start_0
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 48
    new-instance v0, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;-><init>(Lcom/mega/app/engineeringmode/common/MegaConnector;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mRxCallback:Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    const-string v1, "MegaConnector"

    const-string v2, "init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mRxCallback:Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;

    invoke-interface {v0, p1, v1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    const-string v1, "MegaConnector"

    const-string v2, "add failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public send(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 84
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>> Mega, topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 85
    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "MegaConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mega/app/engineeringmode/common/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    invoke-interface {v2, p1, p2}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    return v0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const-string v3, "send fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0
.end method
