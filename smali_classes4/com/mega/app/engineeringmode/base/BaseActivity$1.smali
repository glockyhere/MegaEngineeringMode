.class Lcom/mega/app/engineeringmode/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/base/BaseActivity;->addNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/base/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/base/BaseActivity;

    .line 32
    iput-object p1, p0, Lcom/mega/app/engineeringmode/base/BaseActivity$1;->this$0:Lcom/mega/app/engineeringmode/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/mega/app/engineeringmode/base/BaseActivity$1;->this$0:Lcom/mega/app/engineeringmode/base/BaseActivity;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->finish()V

    .line 36
    return-void
.end method
