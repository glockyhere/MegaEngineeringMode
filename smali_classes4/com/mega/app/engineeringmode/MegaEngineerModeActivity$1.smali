.class Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;
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

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$tvTips:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    .line 106
    iput-object p1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    iput-object p2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->val$tvTips:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "sha256":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->access$000(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;)Lcom/mega/app/engineeringmode/common/EngineeringModeNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/common/EngineeringModeNative;->getCertPwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->access$100(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->access$100(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->val$tvTips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->val$tvTips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;->this$0:Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method
