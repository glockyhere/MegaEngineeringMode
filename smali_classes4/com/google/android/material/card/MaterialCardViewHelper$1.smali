.class Lcom/google/android/material/card/MaterialCardViewHelper$1;
.super Landroid/view/ViewOutlineProvider;
.source "MaterialCardViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/card/MaterialCardViewHelper;->createOutlineProvider(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/card/MaterialCardViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 301
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 304
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$100(Lcom/google/android/material/card/MaterialCardViewHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 305
    invoke-static {v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$000(Lcom/google/android/material/card/MaterialCardViewHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 306
    invoke-static {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$000(Lcom/google/android/material/card/MaterialCardViewHelper;)I

    move-result v2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v4}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$000(Lcom/google/android/material/card/MaterialCardViewHelper;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v5}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$000(Lcom/google/android/material/card/MaterialCardViewHelper;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 304
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$200(Lcom/google/android/material/card/MaterialCardViewHelper;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$100(Lcom/google/android/material/card/MaterialCardViewHelper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->access$200(Lcom/google/android/material/card/MaterialCardViewHelper;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 311
    return-void
.end method
