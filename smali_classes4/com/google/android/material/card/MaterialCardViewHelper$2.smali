.class Lcom/google/android/material/card/MaterialCardViewHelper$2;
.super Landroid/graphics/drawable/InsetDrawable;
.source "MaterialCardViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/card/MaterialCardViewHelper;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/google/android/material/card/MaterialCardViewHelper;
    .param p2, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .line 474
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$2;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 479
    const/4 v0, 0x0

    return v0
.end method
