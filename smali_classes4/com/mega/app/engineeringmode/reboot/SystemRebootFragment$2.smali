.class Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$2;
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

    .line 52
    iput-object p1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$2;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$2;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 57
    return-void
.end method
