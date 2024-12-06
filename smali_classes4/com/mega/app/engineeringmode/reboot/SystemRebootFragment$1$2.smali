.class Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$2;
.super Ljava/lang/Object;
.source "SystemRebootFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;

    .line 37
    iput-object p1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$2;->this$1:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 40
    invoke-static {}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger system reboot through engineering mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$2;->this$1:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;->this$0:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->access$100(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)V

    .line 42
    return-void
.end method
