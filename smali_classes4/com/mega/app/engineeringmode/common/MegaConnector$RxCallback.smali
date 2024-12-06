.class public Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/common/MegaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RxCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/common/MegaConnector;


# direct methods
.method public constructor <init>(Lcom/mega/app/engineeringmode/common/MegaConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 28
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;->this$0:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<< MsgCenter, topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 32
    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "MegaConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;->this$0:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/common/MegaConnector;->access$000(Lcom/mega/app/engineeringmode/common/MegaConnector;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;

    .line 34
    .local v0, "cb":Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;->this$0:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->access$000(Lcom/mega/app/engineeringmode/common/MegaConnector;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/mega/app/engineeringmode/common/MegaConnector$RxCallback;->this$0:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->access$000(Lcom/mega/app/engineeringmode/common/MegaConnector;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;

    invoke-interface {v1, p1, p2}, Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    :cond_0
    return-void
.end method
