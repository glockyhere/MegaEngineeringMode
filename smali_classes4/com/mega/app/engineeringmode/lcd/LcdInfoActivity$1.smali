.class Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;
.super Landroid/os/Handler;
.source "LcdInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    .line 70
    iput-object p1, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->access$400(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->access$300(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->access$200(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;->this$0:Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->access$100(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    nop

    .line 92
    :goto_0
    return-void
.end method
