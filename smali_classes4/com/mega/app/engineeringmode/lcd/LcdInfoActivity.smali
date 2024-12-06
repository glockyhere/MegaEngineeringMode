.class public Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "LcdInfoActivity.java"

# interfaces
.implements Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;,
        Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;
    }
.end annotation


# static fields
.field private static final CLUSTER_PAYLOAD:Ljava/lang/String; = "1"

.field private static final DIS_REQ:Ljava/lang/String; = "update/dis/version/req"

.field private static final DIS_RES:Ljava/lang/String; = "update/dis/version/res"

.field private static final HUD_PAYLOAD:Ljava/lang/String; = "1"

.field private static final HUD_REQ:Ljava/lang/String; = "update/hud/version/req"

.field private static final HUD_RES:Ljava/lang/String; = "update/hud/version/res"

.field private static final IVI_PAYLOAD:Ljava/lang/String; = "2"

.field private static final MSG_CLUSTER:I = 0x0

.field private static final MSG_HUD:I = 0x2

.field private static final MSG_IVI:I = 0x1

.field private static final MSG_ROTATE:I = 0x3

.field private static final ROTATE_PAYLOAD:Ljava/lang/String; = "11"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCluster:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHud:Landroid/widget/TextView;

.field private mIVI:Landroid/widget/TextView;

.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

.field private mRotate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$1;-><init>(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    .line 19
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mCluster:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    .line 19
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mIVI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    .line 19
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHud:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;

    .line 19
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mRotate:Landroid/widget/TextView;

    return-object v0
.end method

.method private getData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getData, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v0
.end method

.method private requestVersionInfo()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "update/dis/version/req"

    invoke-virtual {v0, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 111
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v2, "2"

    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 112
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v2, "11"

    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 113
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "update/hud/version/req"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->setContentView(I)V

    .line 99
    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mCluster:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mIVI:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0901cd

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHud:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mRotate:Landroid/widget/TextView;

    .line 103
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 104
    const-string v1, "update/dis/version/res"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/hud/version/res"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->requestVersionInfo()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/dis/version/res"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "update/hud/version/res"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive topic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "update/dis/version/res"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;

    .line 137
    .local v1, "dvi":Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;
    iget v2, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_childid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 139
    :cond_0
    iget v2, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_childid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 141
    :cond_1
    iget v2, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_childid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 144
    .end local v1    # "dvi":Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;
    :cond_2
    const-string v1, "update/hud/version/res"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;

    .line 146
    .local v1, "hvi":Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;
    iget-object v2, p0, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 144
    .end local v1    # "hvi":Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$HudVersionInfo;
    :cond_3
    :goto_0
    nop

    .line 148
    :goto_1
    return-void
.end method
