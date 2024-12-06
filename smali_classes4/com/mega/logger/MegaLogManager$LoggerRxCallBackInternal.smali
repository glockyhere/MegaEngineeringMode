.class Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;
.super Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback$Stub;
.source "MegaLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/logger/MegaLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggerRxCallBackInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/logger/MegaLogManager;


# direct methods
.method private constructor <init>(Lcom/mega/logger/MegaLogManager;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-direct {p0}, Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/logger/MegaLogManager;
    .param p2, "x1"    # Lcom/mega/logger/MegaLogManager$1;

    .line 207
    invoke-direct {p0, p1}, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;-><init>(Lcom/mega/logger/MegaLogManager;)V

    return-void
.end method


# virtual methods
.method public onCopyStateChanged(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$300(Lcom/mega/logger/MegaLogManager;)Lcom/mega/logger/MegaLogManager$LoggerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 223
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 224
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v1}, Lcom/mega/logger/MegaLogManager;->access$300(Lcom/mega/logger/MegaLogManager;)Lcom/mega/logger/MegaLogManager$LoggerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

.method public onProgress(F)V
    .locals 2
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$300(Lcom/mega/logger/MegaLogManager;)Lcom/mega/logger/MegaLogManager$LoggerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "message":Landroid/os/Message;
    float-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 214
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iget-object v1, p0, Lcom/mega/logger/MegaLogManager$LoggerRxCallBackInternal;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v1}, Lcom/mega/logger/MegaLogManager;->access$300(Lcom/mega/logger/MegaLogManager;)Lcom/mega/logger/MegaLogManager$LoggerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mega/logger/MegaLogManager$LoggerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
