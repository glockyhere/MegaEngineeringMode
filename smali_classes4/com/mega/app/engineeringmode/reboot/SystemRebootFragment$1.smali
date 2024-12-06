.class Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;
.super Ljava/lang/Object;
.source "SystemRebootFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    .line 32
    iput-object p1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-static {v1}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->access$200(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    .line 36
    const v2, 0x7f0e00e1

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    .line 37
    const v2, 0x7f0e00d7

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$2;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$2;-><init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$1;-><init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;)V

    .line 43
    const v2, 0x7f0e0021

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method
