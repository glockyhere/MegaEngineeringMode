.class Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$2;
.super Ljava/lang/Object;
.source "UsbModeSwitchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    .line 54
    iput-object p1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$2;->this$0:Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$2;->this$0:Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 59
    return-void
.end method
