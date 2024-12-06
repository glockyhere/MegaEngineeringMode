.class Lcom/mega/app/engineeringmode/debug/DebugActivity$4;
.super Landroid/os/Handler;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/debug/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 320
    iput-object p1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$4;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 323
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "textshow"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "dump":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$4;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 326
    .end local v0    # "dump":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "str1":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$4;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->access$200(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    nop

    .line 335
    .end local v0    # "str1":Ljava/lang/String;
    :goto_0
    return-void
.end method
