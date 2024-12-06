.class Lcom/mega/app/engineeringmode/log/LogActivity$3;
.super Landroid/os/Handler;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/log/LogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/log/LogActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/log/LogActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/log/LogActivity;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 110
    iput-object p1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, " retVal:"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$300(Lcom/mega/app/engineeringmode/log/LogActivity;)I

    move-result v1

    .line 130
    .local v1, "logid":I
    iget-object v3, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v3}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$500(Lcom/mega/app/engineeringmode/log/LogActivity;)I

    move-result v3

    .line 131
    .local v3, "logLevel":I
    iget-object v4, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v4}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$400(Lcom/mega/app/engineeringmode/log/LogActivity;)Lcom/mega/logger/MegaLogManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/mega/logger/MegaLogManager;->setLogLevel(II)Z

    move-result v0

    .line 132
    invoke-static {}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set log level logid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " logLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_0

    .line 124
    .end local v1    # "logid":I
    .end local v3    # "logLevel":I
    :cond_1
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$300(Lcom/mega/app/engineeringmode/log/LogActivity;)I

    move-result v1

    .line 125
    .restart local v1    # "logid":I
    iget-object v3, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v3}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$400(Lcom/mega/app/engineeringmode/log/LogActivity;)Lcom/mega/logger/MegaLogManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result v0

    .line 126
    invoke-static {}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear log logid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_0

    .line 118
    .end local v1    # "logid":I
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v3}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$300(Lcom/mega/app/engineeringmode/log/LogActivity;)I

    move-result v3

    .line 120
    .local v3, "logid":I
    iget-object v4, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v4}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$400(Lcom/mega/app/engineeringmode/log/LogActivity;)Lcom/mega/logger/MegaLogManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v0

    .line 121
    invoke-static {}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save to to patch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    nop

    .line 137
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "logid":I
    :goto_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$602(Lcom/mega/app/engineeringmode/log/LogActivity;Z)Z

    .line 138
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    new-instance v2, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;-><init>(Lcom/mega/app/engineeringmode/log/LogActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/log/LogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
