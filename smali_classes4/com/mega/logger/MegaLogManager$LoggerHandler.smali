.class Lcom/mega/logger/MegaLogManager$LoggerHandler;
.super Landroid/os/Handler;
.source "MegaLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/logger/MegaLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggerHandler"
.end annotation


# static fields
.field public static final MSG_UPDATE_PROGRESS:I = 0x0

.field public static final MSG_UPDATE_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mega/logger/MegaLogManager;


# direct methods
.method public constructor <init>(Lcom/mega/logger/MegaLogManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 166
    iput-object p1, p0, Lcom/mega/logger/MegaLogManager$LoggerHandler;->this$0:Lcom/mega/logger/MegaLogManager;

    .line 167
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    return-void
.end method

.method private handleUpdateProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerHandler;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$200(Lcom/mega/logger/MegaLogManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;

    .line 188
    .local v1, "callBack":Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;
    invoke-interface {v1, p1}, Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;->onProgress(I)V

    .line 189
    .end local v1    # "callBack":Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;
    goto :goto_0

    .line 190
    :cond_0
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUpdateState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerHandler;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$200(Lcom/mega/logger/MegaLogManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;

    .line 198
    .local v1, "callBack":Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;
    invoke-interface {v1, p1}, Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;->onCopyStateChanged(I)V

    .line 199
    .end local v1    # "callBack":Lcom/mega/logger/MegaLogManager$LoggerUpdateProgressCallBack;
    goto :goto_0

    .line 200
    :cond_0
    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->handleUpdateState(I)V

    .line 178
    goto :goto_0

    .line 174
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->handleUpdateProgress(I)V

    .line 175
    nop

    .line 182
    :goto_0
    return-void
.end method
