.class public Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;
.super Lcom/mega/app/engineeringmode/base/BaseFragment;
.source "UsbModeSwitchFragment.java"


# static fields
.field public static final ADB_SETTING_OFF:I = 0x0

.field public static final ADB_SETTING_ON:I = 0x1

.field private static final DEVICE:Ljava/lang/String; = "device"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final PERSIST_USB_MODE_PROPERTY:Ljava/lang/String; = "persist.vendor.usb.mode"

.field private static final SYS_USB_CONFIG:Ljava/lang/String; = "sys.usb.config"

.field private static final SYS_USB_MODE_PROPERTY:Ljava/lang/String; = "sys.usb.mode"

.field private static final USB_CONFIG_ADB:Ljava/lang/String; = "diag,adb"

.field private static final USB_CONFIG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mUsbModeButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    .line 25
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->switchUsbMode()V

    return-void
.end method

.method private initUsbMode()V
    .locals 3

    .line 79
    const-string v0, "sys.usb.mode"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "host"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    const v2, 0x7f0e0069

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    const v2, 0x7f0e0041

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 85
    :goto_0
    return-void
.end method

.method private switchUsbMode()V
    .locals 5

    .line 66
    const-string v0, "sys.usb.mode"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "sys.usb.device_mode"

    const-string v4, "host"

    if-nez v2, :cond_0

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "enable_oneshot"

    invoke-static {v3, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "device"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    const v2, 0x7f0e0041

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0, v4}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "disable_persist"

    invoke-static {v3, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    const v2, 0x7f0e0069

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 76
    :goto_0
    return-void
.end method

.method private writeAdbSetting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 88
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    nop

    .line 88
    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    iget-object v0, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    .line 43
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mImageView:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mTextView:Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->initUsbMode()V

    .line 46
    iget-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mUsbModeButton:Landroid/widget/Button;

    new-instance v2, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$1;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$1;-><init>(Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$2;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment$2;-><init>(Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v0
.end method
