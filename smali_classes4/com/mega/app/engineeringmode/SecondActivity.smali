.class public Lcom/mega/app/engineeringmode/SecondActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SecondActivity.java"


# static fields
.field private static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final MICROPHONE_FRAGMENT:Ljava/lang/String; = "MicrophoneFragment"

.field private static final SYSTEM_REBOOT_FRAGMENT:Ljava/lang/String; = "SystemRebootFragment"

.field private static final TAG:Ljava/lang/String;

.field private static final USB_MODE_SWITCH_FRAGMENT:Ljava/lang/String; = "UsbModeSwitchFragment"


# instance fields
.field private mEngineeringModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mega/app/engineeringmode/common/EngineeringModeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/mega/app/engineeringmode/SecondActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/SecondActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private commitFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 94
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/SecondActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 95
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 96
    .local v1, "ft":Landroidx/fragment/app/FragmentTransaction;
    const v2, 0x7f090151

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 97
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 98
    return-void
.end method

.method private getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6
    .param p1, "index"    # I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    sget-object v1, Lcom/mega/app/engineeringmode/SecondActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7b772e46

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x4f369155

    if-eq v2, v3, :cond_2

    const v3, 0x1ab93d44

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "SystemRebootFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_2
    const-string v2, "UsbModeSwitchFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "MicrophoneFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 85
    :cond_4
    new-instance v1, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;-><init>()V

    move-object v0, v1

    .line 86
    goto :goto_2

    .line 82
    :cond_5
    new-instance v1, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;-><init>()V

    move-object v0, v1

    .line 83
    goto :goto_2

    .line 79
    :cond_6
    new-instance v1, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;

    invoke-direct {v1}, Lcom/mega/app/engineeringmode/usb/UsbModeSwitchFragment;-><init>()V

    move-object v0, v1

    .line 80
    nop

    .line 90
    :goto_2
    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    const-string v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "pos":I
    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/SecondActivity;->showFragment(I)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/SecondActivity;->finish()V

    .line 63
    :goto_1
    return-void
.end method

.method private showFragment(I)V
    .locals 3
    .param p1, "position"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/mega/app/engineeringmode/SecondActivity;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 67
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v0, :cond_0

    .line 68
    sget-object v1, Lcom/mega/app/engineeringmode/SecondActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot show fragement, it is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/SecondActivity;->commitFragment(Landroidx/fragment/app/Fragment;)V

    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/SecondActivity;->setContentView(I)V

    .line 34
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "product":Ljava/lang/String;
    const-string v2, "ro.build.type"

    invoke-static {v2, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "buildType":Ljava/lang/String;
    sget-object v2, Lcom/mega/app/engineeringmode/SecondActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " buildType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "bigsur"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    const-string v2, "santamonica"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    const-string v2, "solvang"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    const-string v2, "saguaro"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "engineering_mode.json"

    invoke-static {p0, v2}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    const-string v2, "engineering_mode_solvang.json"

    invoke-static {p0, v2}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    const-string v2, "user"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    const-string v2, "engineering_mode_bigsur_user.json"

    invoke-static {p0, v2}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 43
    :cond_4
    const-string v2, "engineering_mode_bigsur.json"

    invoke-static {p0, v2}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 51
    :goto_2
    sget-object v2, Lcom/mega/app/engineeringmode/SecondActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Engineering Mode List size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mega/app/engineeringmode/SecondActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/SecondActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/SecondActivity;->handleIntent(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
