.class public Lcom/mega/nexus/view/MegaView;
.super Ljava/lang/Object;
.source "MegaView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationOnScreen(Landroid/view/View;)[I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    return-object v0
.end method
