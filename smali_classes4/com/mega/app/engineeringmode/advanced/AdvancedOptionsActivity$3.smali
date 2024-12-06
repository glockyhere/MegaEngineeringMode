.class Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;
.super Ljava/lang/Object;
.source "AdvancedOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->onSTRRsp(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    .line 422
    iput-object p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 425
    invoke-static {}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSTRRsp runOnUiThread mSTRState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCheckSTR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$900(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 427
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v2, 0x7f0e00ad

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$900(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$902(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;Z)Z

    .line 430
    :cond_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$900(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 434
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v2, 0x7f0e00d0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v2, 0x7f0e00cf

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$902(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;Z)Z

    goto :goto_1

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 443
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v2, 0x7f0e0054

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->access$800(Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;)I

    move-result v0

    if-nez v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$3;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v2, 0x7f0e0044

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_6
    :goto_1
    return-void
.end method
