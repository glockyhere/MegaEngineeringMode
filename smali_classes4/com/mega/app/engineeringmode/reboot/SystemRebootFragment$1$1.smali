.class Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$1;
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

    .line 43
    iput-object p1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1$1;->this$1:Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    return-void
.end method
