.class public Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;
.super Ljava/lang/Thread;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/debug/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioDumpThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;


# direct methods
.method public constructor <init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 351
    iput-object p1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "exit":Z
    :goto_0
    if-nez v0, :cond_4

    .line 356
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 357
    :goto_1
    const-string v1, "debug.audio.export_done"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "status":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "noudisk"

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    :cond_0
    const/4 v0, 0x1

    .line 360
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 361
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 362
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "textshow"

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0046

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 365
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0047

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_2
    :goto_2
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    iget-object v2, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-static {v2}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->access$300(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    const/4 v0, 0x1

    .line 372
    .end local v1    # "status":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 373
    :cond_4
    return-void
.end method
