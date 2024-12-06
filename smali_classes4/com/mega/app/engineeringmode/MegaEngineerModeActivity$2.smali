.class Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;
.super Ljava/lang/Object;
.source "MegaEngineerModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->showPwdLoginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

.field final synthetic val$dialogView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    .line 119
    iput-object p1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    iput-object p2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;->val$dialogView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    .line 123
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    .line 125
    .local v1, "isActive":Z
    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;->val$dialogView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->finish()V

    .line 129
    return-void
.end method
