.class Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$2;
.super Ljava/lang/Object;
.source "AdvancedOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;->onDDRRsp()V
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

    .line 403
    iput-object p1, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$2;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$2;->this$0:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;

    const v1, 0x7f0e0033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    return-void
.end method
