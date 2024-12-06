.class public Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;
.super Lcom/mega/app/engineeringmode/base/BaseFragment;
.source "SystemRebootFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    .line 23
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->reboot()V

    return-void
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;

    .line 23
    iget-object v0, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private reboot()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {}, Lcom/mega/app/engineeringmode/common/Util;->rebootConfig()Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/reboot_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    const v0, 0x7f0c0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "rebootView":Landroid/view/View;
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 32
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$1;-><init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$2;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment$2;-><init>(Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/reboot/SystemRebootFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v0
.end method
