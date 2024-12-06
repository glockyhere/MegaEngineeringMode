.class public Lcom/mega/nexus/view/MegaWindow;
.super Ljava/lang/Object;
.source "MegaWindow.java"


# static fields
.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I

.field public static final PRIVATE_FLAG_SKIP_SCREENSHOT:I

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    sget v0, Lcom/mega/nexus/view/MegaLayoutParamsAdapter;->PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I

    sput v0, Lcom/mega/nexus/view/MegaWindow;->PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 22
    const/high16 v0, 0x200000

    goto :goto_0

    .line 23
    :cond_0
    const/high16 v0, 0x100000

    :goto_0
    sput v0, Lcom/mega/nexus/view/MegaWindow;->PRIVATE_FLAG_SKIP_SCREENSHOT:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrivateFlags(Landroid/view/Window;I)V
    .locals 0
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flags"    # I

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 27
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .line 30
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 31
    return-void
.end method

.method public static addView(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .param p0, "manager"    # Landroid/view/WindowManager;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "displayId"    # I

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/mega/nexus/view/MegaWindowAdapter;->addView(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    .line 38
    return-void
.end method
