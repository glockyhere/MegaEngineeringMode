.class public final Lcom/mega/nexus/view/MegaSurfaceControl;
.super Ljava/lang/Object;
.source "MegaSurfaceControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/mega/nexus/view/MegaSurfaceControlAdapter;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
