.class Lcom/mega/app/engineeringmode/log/LogActivity$3$1;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/log/LogActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mega/app/engineeringmode/log/LogActivity$3;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/log/LogActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mega/app/engineeringmode/log/LogActivity$3;

    .line 138
    iput-object p1, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;->this$1:Lcom/mega/app/engineeringmode/log/LogActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;->this$1:Lcom/mega/app/engineeringmode/log/LogActivity$3;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$600(Lcom/mega/app/engineeringmode/log/LogActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;->this$1:Lcom/mega/app/engineeringmode/log/LogActivity$3;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$700(Lcom/mega/app/engineeringmode/log/LogActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0001

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity$3$1;->this$1:Lcom/mega/app/engineeringmode/log/LogActivity$3;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/log/LogActivity$3;->this$0:Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->access$700(Lcom/mega/app/engineeringmode/log/LogActivity;)Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x7f0e0000

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    :goto_0
    return-void
.end method
