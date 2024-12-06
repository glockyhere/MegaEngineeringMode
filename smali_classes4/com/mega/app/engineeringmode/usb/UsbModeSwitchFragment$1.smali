.class Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$1;
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

    .line 46
    iput-object p1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$1;->this$0:Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 49
    invoke-static {}, Lcom/mega/app/engineeringmode/common/Util;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$1;->this$0:Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->access$000(Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;)V

    .line 52
    :cond_0
    return-void
.end method
